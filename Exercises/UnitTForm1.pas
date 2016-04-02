unit UnitTForm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnShowForms: TButton;
    procedure btnShowFormsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UnitTForm3, UnitTForm4;

{$R *.dfm}



procedure TForm1.btnShowFormsClick(Sender: TObject);
begin
  Form3.Show;
  Form4.Show;
end;

end.
