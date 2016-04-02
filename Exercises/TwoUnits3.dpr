program TwoUnits3;

uses
  Forms,
  MainForm3 in 'MainForm3.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
