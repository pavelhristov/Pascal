unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ERROR: TStaticText;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormActivate(Sender: TObject);
begin
  Button1.Caption := 'Go Back';
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Show;
  Form1.Button2.Show;
  Form2.Close;

end;

end.
