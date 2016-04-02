unit CashRegisterU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfrmCashRegister = class(TForm)
    gpbWeightKg: TGroupBox;
    gpbTotalPrice: TGroupBox;
    edtWeightKg: TEdit;
    lblTotalPrice: TLabel;
    btnCalculate: TButton;
    bmbResset: TBitBtn;
    procedure btnCalculateClick(Sender: TObject);
    procedure bmbRessetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashRegister: TfrmCashRegister;

implementation

// specifies the other form, frmBulkMags
 uses BulkMagsU;

{$R *.dfm}

procedure TfrmCashRegister.btnCalculateClick(Sender: TObject);
var
  PriceKg, NoOfKgs, TotalPrice: double;
begin
  // encapsulation maintained through the Text property
    NoOfKgs := StrToFloat (edtWeightKg.Text) ;
    TotalPrice := frmBulkMags.PriceKg * NoOfKgs;
    lblTotalPrice.Caption := FloatToStrF(TotalPrice,ffCurrency,10,2) ;
    bmbResset.SetFocus;
end;

procedure TfrmCashRegister.bmbRessetClick(Sender: TObject);
begin
  lblTotalPrice.Caption:='';
  edtWeightKg.Text:='';
  edtWeightKg.SetFocus;
end;

procedure TfrmCashRegister.FormShow(Sender: TObject);
begin
  frmBulkMags.show;
end;

end.
