program UpAndDownP;

uses
  Forms,
  UpAndDownU in 'UpAndDownU.pas' {frmAttendance},
  CounterU in 'CounterU.pas',
  MuseumCountU in 'MuseumCountU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAttendance, frmAttendance);
  Application.Run;
end.
