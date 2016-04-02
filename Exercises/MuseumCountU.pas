unit MuseumCountU;

//using delegation

interface

  uses
    CounterU;

  type
    TMuseumCount= Class(TObject)
      Private
        VEntered, VLeft: TCounter;   // Now only 2 counters
        Function GetEntered: Integer;
        Function GetInside: Integer;
        Function GetLeft: Integer;
      Public
        // 3 read-only, method mapped properties using delegation
        Property Entered:Integer read GetEntered;
        Property Inside:Integer read GetInside;
        Property Left:Integer read GetLeft;
        Constructor Create;
        Procedure Arrivals (ANumber: Integer);
        Procedure ClearAll;
        Procedure Departures (ANumber: Integer);

      end;

implementation

  { TMuseumCount }

procedure TMuseumCount.Arrivals(ANumber: Integer);
begin
  VEntered.Add(ANumber);
end;

procedure TMuseumCount.ClearAll;
begin
  VEntered.Clear;
  VLeft.Clear;
end;

Constructor TMuseumCount.Create;
    begin
      inherited Create;
      VEntered:= TCounter.Create;
      VLeft:= TCounter.Create;
    end;

procedure TMuseumCount.Departures(ANumber: Integer);
begin
  VLeft.Add(ANumber);
end;

function TMuseumCount.GetEntered: Integer;
begin
  Result:= VEntered.Total;
end;

function TMuseumCount.GetInside: Integer;
begin
  Result:= VEntered.Total - VLeft.Total;
end;

function TMuseumCount.GetLeft: Integer;
begin
  Result:= VLeft.Total;
end;

end.
