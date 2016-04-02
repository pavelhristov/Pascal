program SubstitutionP;

uses
  Forms,
  SubstitutionU in 'SubstitutionU.pas' {frmSubstitution},
  FurnitureU in 'FurnitureU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSubstitution, frmSubstitution);
  Application.Run;
end.
