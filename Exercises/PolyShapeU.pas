unit PolyShapeU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MyShapesU;

type
  TfrmPolyShape = class(TForm)
    cboShape: TComboBox;
    cboSize: TComboBox;
    btnDraw: TButton;
    imgDrawShape: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnDrawClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    MyEllipse: TMyEllipse;
    MyRectangle: TMyRectangle;
  public
    { Public declarations }
  end;

var
  frmPolyShape: TfrmPolyShape;

implementation

{$R *.dfm}

procedure TfrmPolyShape.FormCreate(Sender: TObject);
begin
  MyEllipse:= TMyEllipse.Create;
  MyRectangle:= TMyRectangle.Create;
end;

procedure TfrmPolyShape.btnDrawClick(Sender: TObject);
var
  Border: Integer;
  MyShape: TMyShape;
begin
   Case cboSize.ItemIndex of
     0: Border:= 10;
     1: Border:= 50;
   Else begin
     ShowMessage('Please select size');
     end;
   end;
   Case cboShape.ItemIndex of
     0: MyShape:= MyEllipse;
     1: MyShape:= MyRectangle;
   Else begin
     ShowMessage('Please select shape');
     end;
   end;
   If (cboSize.ItemIndex<0) And (cboShape.ItemIndex<0) Then begin
     ;
   end Else begin
     MyShape.Draw (imgDrawShape, Border);
   end;
end;

procedure TfrmPolyShape.FormDestroy(Sender: TObject);
begin
  MyEllipse.Free;
  MyRectangle.Free;
  Inherited;
end;

end.
