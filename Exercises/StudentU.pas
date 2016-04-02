unit StudentU;

interface

  Uses
    Dialogs, SysUtils;
    
  type
    TStudent = Class(TObject)
    Private
      FMathNote: Real;
      FProgNote:Real;
      FSName: String;
    Public
      Function GetMathNote: String;
      Function GetProgNote: String;
      Function GetAvgNote: String;
      Constructor Create(ASName, AMathNote, AProgNote: String);
      Property MathNote: string read GetMathNote;
      Property ProgNote: string read GetProgNote;
      Property Name: String Read FSName;
      Property AvgNote: String read GetAvgNote;
    end;

implementation

  {TStudent}

  Constructor TStudent.Create(ASName, AMathNote, AProgNote: String);
    begin
      inherited Create;
      FMathNote:= StrToFloat(AMathNote);
      FProgNote:= StrToFloat(AProgNote);
      FSName:= ASName;
    end;

  
  function TStudent.GetAvgNote: String;
    begin
      Result := FloatToStr((FMathNote+FProgNote)/2);
    end;

  Function TStudent.GetMathNote: String;
    begin
        Result := FloatToStr(FMathNote) ;
    end;

  Function TStudent.GetProgNote: String;
    begin
        Result := FloatToStr(FProgNote) ;
    end;
end.
 