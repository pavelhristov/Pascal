unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

   button1.Hide;
   Form2.Show;
   Form1.Hide;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form1.Hide;
  Form5.Show;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  button2.Hide;
  button3.Hide;
  Button1.Caption := 'Натисни тук' ;
  Button2.Caption := 'Пробвай тук'        ;
  Button3.Caption := 'Или тук'  ;
  Form2.hide ;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  button3.Show;
  button2.Hide;
  Form4.Show;
  Form1.Hide;
end;

end.
