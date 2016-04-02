program FileTestP;

uses
  Forms,
  FileTestU in 'FileTestU.pas' {frmFileTest};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFileTest, frmFileTest);
  Application.Run;
end.
