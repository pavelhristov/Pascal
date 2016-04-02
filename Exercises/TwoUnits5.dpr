program TwoUnits5;

uses
  Forms,
  MainForm5 in 'MainForm5.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
