unit AdapterDemoU;

  //simple adapter

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    sedNewItems: TSpinEdit;
    btnAdd: TButton;
    btnClear: TButton;
    lblTotalItems: TLabel;
    btnCopy: TButton;
    btnShowCopy: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnShowCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

  Uses
    NewCounterU2;

  Var
    Items:TNewCounter;  //the adapter
    ItemsCopy:TNewCounter;

{$R *.dfm}

procedure TForm1.btnAddClick(Sender: TObject);
begin
  Items.Add(sedNewItems.Value);
  lblTotalItems.Caption:= 'Value is ' + IntToStr(Items.GetValue);
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  Items.Clear;
  lblTotalItems.Caption:= 'Value is ' + IntToStr(Items.GetValue);
end;

procedure TForm1.btnCopyClick(Sender: TObject);
begin
  ItemsCopy.Assign(Items);
  btnShowCopy.Click;
end;

procedure TForm1.btnShowCopyClick(Sender: TObject);
begin
  lblTotalItems.Caption := 'Copy value is ' + IntToStr (ItemsCopy.GetValue) ;
end;

Initialization
  Items:= TNewCounter.Create;
  ItemsCopy := TNewCounter.Create;

Finalization
  Items.Free;
  
end.
