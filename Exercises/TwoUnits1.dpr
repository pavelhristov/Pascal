program TwoUnits1;

uses
  Forms,
  MainForm1 in 'MainForm1.pas' {frmMain},
  AuxForm1 in 'AuxForm1.pas' {frmAuxiliary};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
