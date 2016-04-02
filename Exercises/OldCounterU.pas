unit OldCounterU;

interface

  type

    TCounter = Class(TObject)
      Private
        FTotal: Integer;
      Public
        Function AddAndRead (Number : Integer): String;
        Function ClearAndRead: String;
      end;

implementation

{ TCounter }

uses
    SysUtils;
 
 function TCounter.AddAndRead (Number : Integer): string;
 begin
    FTotal := FTotal + Number;
    Result := IntToStr (FTotal) ;
 end;
 
 function TCounter.ClearAndRead: string;
 begin
    FTotal := 0;
    Result := IntToStr (FTotal) ;
 end;

end.
