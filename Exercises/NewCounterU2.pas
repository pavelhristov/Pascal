unit NewCounterU2;

   // "Complex" adapter, no local processing or data


interface

  Uses
    Classes, OldCounterU;  // Contains adapted class

  Type
    TNewCounter= Class(TPersistent)
      Private
        FOldCounter:TCounter; // the adaptee, kept private
        FValue: String;
      Public
        Procedure Assign (ANewCounter: TPersistent) ; Override;
        //composition: must propagate create and destroy
        Constructor Create;
        Destructor Destroy; Override;
        //adapter methods providing the requared interface
        Procedure Add (ANumber: Integer);
        Procedure Clear;
        Function GetValue: Integer;

    end;

implementation

  Uses
    SysUtils;

{ TNewCounter }

procedure TNewCounter.Add(ANumber: Integer);
begin
  FValue:=FOldCounter.AddAndRead(ANumber);
end;

procedure TNewCounter.Assign(ANewCounter: TPersistent);
begin
  If ANewCounter is TNewCounter Then begin
    FValue:= IntToStr(TNewCounter(ANewCounter).GetValue);
    end Else begin
      Inherited Assign (ANewCounter);
    end;
end;

procedure TNewCounter.Clear;
begin
  FValue:=FOldCounter.ClearAndRead;
end;

constructor TNewCounter.Create;
begin
   Inherited;
   FOldCounter := TCounter.Create;
end;

destructor TNewCounter.Destroy;
begin
  FOldCounter.Free;
  inherited;
end;

function TNewCounter.GetValue: Integer;
begin
   Result:= StrToInt(FValue);
end;

end.
