program TwoButtonsP;

uses
  Forms,
  TwoButtonsU in 'TwoButtonsU.pas' {frmStructureDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmStructureDemo, frmStructureDemo);
  Application.Run;
end.
