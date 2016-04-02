unit NewCounterU;

   // "Simple" adapter, no local processing or data


interface

  Uses
    OldCounterU;  // Contains adapted class

  Type
    TNewCounter= Class(TObject)
      Private
        FOldCounter:TCounter; // the adaptee, kept private
      Public
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

  {TNewCounter}

{ TNewCounter }

procedure TNewCounter.Add(ANumber: Integer);
begin
  FOldCounter.AddAndRead(ANumber);
end;

procedure TNewCounter.Clear;
begin
  FOldCounter.ClearAndRead;
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
   Result:= StrToInt(FOldCounter.AddAndRead(0));
end;

end.
