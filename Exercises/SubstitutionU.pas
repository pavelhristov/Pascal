unit SubstitutionU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FurnitureU;

type
  TfrmSubstitution = class(TForm)
    rgbFurniture: TRadioGroup;
    btnKind: TButton;
    btnFree: TButton;
    lblKind: TLabel;
    procedure btnKindClick(Sender: TObject);
    procedure btnFreeClick(Sender: TObject);
    procedure rgbFurnitureClick(Sender: TObject);
  private
    { Private declarations }
    MyFurniture: TFurniture;
  public
    { Public declarations }
  end;

var
  frmSubstitution: TfrmSubstitution;

implementation

{$R *.dfm}

procedure TfrmSubstitution.btnKindClick(Sender: TObject);
begin
  If MyFurniture = nil Then begin
    lblKind.Caption:= 'Object not defined';
  end Else begin
    lblKind.Caption:= MyFurniture.GetKind;
  end;
end;

procedure TfrmSubstitution.btnFreeClick(Sender: TObject);
begin
  If MyFurniture = nil Then begin
    lblKind.Caption:= 'Object does not exist';
  end Else begin
    FreeAndNil(MyFurniture);
    lblKind.Caption:= 'Object freed';
  end;
  rgbFurniture.ItemIndex:= -1;
end;

procedure TfrmSubstitution.rgbFurnitureClick(Sender: TObject);
begin
  FreeAndNil(MyFurniture);
  Case rgbFurniture.ItemIndex of
    0: MyFurniture:= TFurniture.Create;
    1: MyFurniture:= TChair.Create;
    2: MyFurniture:= TTable.Create;
    3: MyFurniture:= TCoffeeTable.Create;
    4: MyFurniture:= TKitchenTable.Create;
  end;
  lblKind.Caption:= '';
end;

end.
