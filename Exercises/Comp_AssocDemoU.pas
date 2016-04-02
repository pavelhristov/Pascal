unit Comp_AssocDemoU;

interface

uses
  CustomerU, SaleU,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmCompAssoc = class(TForm)
    gpbCustomerDetails: TGroupBox;
    gpbSaleDetails: TGroupBox;
    gbpDisplaySale: TGroupBox;
    gpbAmount: TGroupBox;
    gpbName: TGroupBox;
    gpbPhone: TGroupBox;
    btnCustomer: TButton;
    btnCreateSale: TButton;
    btnDisplaySale: TButton;
    lblName: TLabel;
    lblPhone: TLabel;
    lblAmount: TLabel;
    edtName: TEdit;
    edtPhone: TEdit;
    edtAmount: TEdit;
    procedure btnCustomerClick(Sender: TObject);
    procedure btnCreateSaleClick(Sender: TObject);
    procedure btnDisplaySaleClick(Sender: TObject);
  private
    { Private declarations }
    ThisCustomer: TCustomer;
    ThisSale: TSale;
  public
    { Public declarations }
  end;

var
  frmCompAssoc: TfrmCompAssoc;

implementation

{$R *.dfm}


procedure TfrmCompAssoc.btnCustomerClick(Sender: TObject);
begin
  If not assigned (ThisCustomer) Then ThisCustomer:= TCustomer.Create;
  ThisCustomer.Name:= edtName.Text;
  ThisCustomer.PhoneNo:= edtPhone.Text;
end;

procedure TfrmCompAssoc.btnCreateSaleClick(Sender: TObject);
begin
  If Assigned (ThisSale) Then ThisSale.Free;
  ThisSale:=TSale.Create(ThisCustomer, edtAmount.Text);
  btnDisplaySaleClick (self);
end;

procedure TfrmCompAssoc.btnDisplaySaleClick(Sender: TObject);
begin
  Try
    lblName.Caption := 'Name: ' + ThisSale.Name;
    lblPhone.Caption := 'Phone: ' + ThisSale.Phone;
    lblAmount.Caption := 'Amount: ' + ThisSale.Amount;
  except
    ShowMessage ('Invalid customer or sale.') ;
  end;
end;

end.
