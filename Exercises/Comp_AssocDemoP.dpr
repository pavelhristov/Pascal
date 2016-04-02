program Comp_AssocDemoP;

uses
  Forms,
  Comp_AssocDemoU in 'Comp_AssocDemoU.pas' {frmCompAssoc},
  CustomerU in 'CustomerU.pas',
  SaleU in 'SaleU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCompAssoc, frmCompAssoc);
  Application.Run;
end.
