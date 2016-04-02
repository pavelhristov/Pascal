unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit1, jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Image1Click(Sender: TObject);
begin
  Form1.Show;
  Form1.Button3.Show;
  Form4.Hide;
end;

end.
