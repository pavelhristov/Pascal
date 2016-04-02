program FileArrayRWP;

uses
  Forms,
  FileArrayRWU in 'FileArrayRWU.pas' {frmFileArray};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFileArray, frmFileArray);
  Application.Run;
end.
