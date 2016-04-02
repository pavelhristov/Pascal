unit UnitTForm4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitTForm2, ComCtrls;

type
  TForm4 = class(TForm2)
    UpDown1: TUpDown;
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Button1Click (Sender:TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses UnitTForm1, UnitTForm3;

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
  Button1.Caption:= 'Form4';
end;

procedure TForm4.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  inherited;
  If Button=btNext Then begin
    Form1.Top:= Form1.Top - 20;
  end Else begin
    Form1.Top:= Form1.Top + 20;
  end;
  Form3.Checkbox1.Checked:= False;
end;

procedure TForm4.Button1Click(Sender: TObject) ;
begin
  Form1.Top := 300;
end;

end.
