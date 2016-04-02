unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  p:Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  tb:tbutton;
begin
  If p <= 600 Then begin
    Label1.caption := 'fail';
    tb:=tButton.create(form1);
    tb.Left := 200 + p;
    tb.Top := 300 ;
    tb.width := 100 ;
    tb.Height := 50 ;
    tb.parent := Form1 ;
    tb.Caption := inttostr(p);
    p := p + 100 ;
  end Else
    Form1.close;
end;
  procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
  label1.Caption := 'noob';
end;
       canvas
Initialization
    P:=0

  Finalization
end.
