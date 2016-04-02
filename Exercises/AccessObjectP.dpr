program AccessObjectP;

uses
  Forms,
  ObjectAccessU in 'ObjectAccessU.pas' {frmAccessObject},
  ClientU in 'ClientU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAccessObject, frmAccessObject);
  Application.Run;
end.
