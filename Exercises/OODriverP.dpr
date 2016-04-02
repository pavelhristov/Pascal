program OODriverP;

uses
  Forms,
  OODriverU in 'OODriverU.pas' {frmCount},
  ItemU in 'ItemU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCount, frmCount);
  Application.Run;
end.
