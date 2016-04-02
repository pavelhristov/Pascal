program TwoUnits;

uses
  Forms,
  MainForm in 'MainForm.pas' {frmMain},
  AuxForm in 'AuxForm.pas' {frmAuxiliary};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAuxiliary, frmAuxiliary);
  Application.Run;
end.
