program ProjectTForms;

uses
  Forms,
  UnitTForm1 in 'UnitTForm1.pas' {Form1},
  UnitTForm2 in 'UnitTForm2.pas' {Form2},
  UnitTForm3 in 'UnitTForm3.pas' {Form3},
  UnitTForm4 in 'UnitTForm4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
