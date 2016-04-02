unit BulkMagsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmBulkMags = class(TForm)
    gpbPriceKg: TGroupBox;
    procedure FormCreate(Sender: TObject);
  private
    edtPriceKg: TEdit;
    Function GetPriceKg: double;
  public
    { Public declarations }
    Property PriceKg: double Read GetPriceKg;
  end;

var
  frmBulkMags: TfrmBulkMags;

implementation

{$R *.dfm}

procedure TfrmBulkMags.FormCreate(Sender: TObject);
begin
  edtPriceKg:= TEdit.Create(self);
  With edtPriceKg Do begin
    Parent:= gpbPriceKg;
    Left:=24;
    Top:=24;
    Width:=121;
    Height:=21;
    Text:='11.99' ;
  end;
end;

function TfrmBulkMags.GetPriceKg: double;
begin
  //delegate retrieval
  Result:=StrToFloat(edtPriceKg.Text);
end;

end.
