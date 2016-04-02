program StudentListP;

uses
  Forms,
  StudentListU in 'StudentListU.pas' {frmStudentList};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmStudentList, frmStudentList);
  Application.Run;
end.
