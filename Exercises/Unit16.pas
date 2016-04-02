unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);

    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x: Integer;

implementation

{$R *.dfm}
var
  z,k,m,p:Integer;

procedure TForm1.Button1Click(Sender: TObject);
  var
    t:Tbutton;
begin
  If z<4 Then begin
    p := p+1;
    z := z+1 ;
    t := Tbutton.create(Form1);
    Button1.Caption := inttostr(p) ;
    t.Top := 50+75*z;
    t.left := 100+75*z + k;
    t.Width := 100 ;
    t.Height := 50 ;
    t.parent := Form1;
    t.Caption := 'New Button ' + Button1.Caption ;
    t.OnClick :=  Button1Click;
    Label2.Caption := 'New Button has been created';
    If z=4 Then begin
      Button1.Caption := 'Exit';
      Label2.Caption := 'Space is full, If proceed all operations will abort';
    end;  
  end Else begin
    Form1.close;
  end;

end;


procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label1.caption:= 'Space Used ' +inttostr(z + m*4) +' ';
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Label2.Caption := 'Welcome';
  Button1.Caption := 'Create a New Button';
  Button2.Caption := 'Add Extra Space';
  Button3.Caption := 'Exit';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   z:= 0;
   k:= k+100;
   Label2.Caption := 'Extra Space Found';
   m:=m+1;
   Button1.Caption := 'Create a New Button';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.Close;
end;

Initialization
  p:=0;
  z:=0;
  k:=0;
  m:=0;
Finalization

end.
