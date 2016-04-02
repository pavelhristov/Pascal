program ArrayIntoListP;

uses
  Forms,
  ArrayIntoListU in 'ArrayIntoListU.pas' {frmArrayintoList};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmArrayintoList, frmArrayintoList);
  Application.Run;
end.
