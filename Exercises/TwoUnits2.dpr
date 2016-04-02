program TwoUnits2;

uses
  Forms,
  MainForm2 in 'MainForm2.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
