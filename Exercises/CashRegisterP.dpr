program CashRegisterP;

uses
  Forms,
  CashRegisterU in 'CashRegisterU.pas' {frmCashRegister},
  BulkMagsU in 'BulkMagsU.pas' {frmBulkMags};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCashRegister, frmCashRegister);
  Application.CreateForm(TfrmBulkMags, frmBulkMags);
  Application.Run;
end.
