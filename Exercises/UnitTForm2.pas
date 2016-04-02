unit UnitTForm2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
  ShowMessage ('Button ' + (Sender as TButton).Caption + ' clicked');
end;


procedure TForm2.FormCreate(Sender: TObject);
begin
  //Button1.Caption:= (Sender as TForm2).Caption;
end;

end.
