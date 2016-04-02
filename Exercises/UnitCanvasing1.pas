unit UnitCanvasing1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TPoint = class(TObject)
    canvas: TCanvas;
    Point :  Tpoint;
    Procedure Draw(x,y:Integer);
  end;

var
  Form1: TForm1;
  x,y:Integer;

implementation
  Procedure TPoint.Draw(x,y:Integer);
    begin
      //canvas.Pixels[x,y];

    end;
{$R *.dfm}
  procedure TForm1.Button1Click(Sender: TObject);

begin
  Form1.close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

   y:=y+ strtoint(edit2.text);
   x:=x+strtoint(edit1.Text);
   canvas.LineTo(x,y);
   Label1.caption := inttostr(x) ;
   Label2.caption := inttostr(y);
end;

Initialization
    x:=0;
    y:=0;
  Finalization
end.
 