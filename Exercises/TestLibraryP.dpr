program TestLibraryP;

uses
  Forms,
  TestLibraryU in 'TestLibraryU.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
