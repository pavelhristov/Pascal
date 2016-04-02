unit OODriverU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfrmCount = class(TForm)
    btnAddItem: TButton;
    btnDisplay: TButton;
    lblTotal: TLabel;
    gpbItems: TGroupBox;
    bmbResset: TBitBtn;
    btnAddBox: TButton;
    procedure bmbRessetClick(Sender: TObject);
    procedure btnAddItemClick(Sender: TObject);
    procedure btnDisplayMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnDisplayMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnAddBoxClick(Sender: TObject);
  private
    { Private declarations }
    //Count: Integer;
  public
    { Public declarations }
  end;

var
  frmCount: TfrmCount;

implementation

uses ItemU;

{$R *.dfm}

var
  ItemCount:TItemBox;


procedure TfrmCount.bmbRessetClick(Sender: TObject);
begin
  ItemCount.ZeroCount;
end;

procedure TfrmCount.btnAddItemClick(Sender: TObject);
begin
   ItemCount.AddItem;
end;

procedure TfrmCount.btnDisplayMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   lblTotal.Caption := IntToStr (ItemCount.GetCount) ;
end;

procedure TfrmCount.btnDisplayMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   lblTotal.Caption := '';
end;

procedure TfrmCount.btnAddBoxClick(Sender: TObject);
begin
  ItemCount.AddBox;
end;

Initialization
  ItemCount:=TItemBox.Create;

Finalization
  ItemCount.Free;

end.
