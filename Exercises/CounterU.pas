unit CounterU;

interface

  type

    TCounter = Class(TObject)
      Private
        FTotal: Integer;
      Public
        Property Total: Integer Read FTotal;
        Procedure Add(ANumber: Integer);
        Procedure Clear;
        Procedure Subtract (ANumber: Integer);
      end;

implementation

{ TCounter }

procedure TCounter.Add(ANumber: Integer);
begin
  Inc (FTotal,ANumber);
end;

procedure TCounter.Clear;
begin
  FTotal:= 0;
end;

procedure TCounter.Subtract(ANumber: Integer);
begin
  Inc (FTotal,-ANumber);
end;

end.
