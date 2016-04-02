program TwoUnits4;

uses
  Forms,
  MainForm4 in 'MainForm4.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
