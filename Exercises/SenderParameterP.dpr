program SenderParameterP;

uses
  Forms,
  SenderParameterU in 'SenderParameterU.pas' {frmSender};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSender, frmSender);
  Application.Run;
end.
