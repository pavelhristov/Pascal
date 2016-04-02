program AdapterDemoP;

uses
  Forms,
  AdapterDemoU in 'AdapterDemoU.pas' {Form1},
  NewCounterU2 in 'NewCounterU2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
