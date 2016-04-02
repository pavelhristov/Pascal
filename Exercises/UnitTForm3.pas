unit UnitTForm3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitTForm2, StdCtrls;

type
  TForm3 = class(TForm2)
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject) ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses UnitTForm1;

{$R *.dfm}


procedure TForm3.FormCreate(Sender: TObject);
begin
  Button1.Caption:= 'Form3';
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
  inherited;
  If CheckBox1.Checked Then begin
    Form1.Top:=10;
  end;
end;

procedure TForm3.Button1Click(Sender: TObject) ;
begin
  inherited;
  ShowMessage ('Another msg from ' + (Sender as TButton).Caption) ;
end;


end.
