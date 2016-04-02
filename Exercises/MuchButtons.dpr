program MuchButtons;

uses
  Forms,
  UnitMuchButtons in 'UnitMuchButtons.pas' {frmCount};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCount, frmCount);
  Application.Run;
end.
