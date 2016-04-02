program QuickSortLibP;

uses
  Forms,
  QuickSortLibU in 'QuickSortLibU.pas' {frmSort};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSort, frmSort);
  Application.Run;
end.
