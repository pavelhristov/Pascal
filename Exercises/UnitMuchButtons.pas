unit UnitMuchButtons;

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
    procedure bmbRessetClick(Sender: TObject);
    procedure btnAddItemClick(Sender: TObject);
    procedure btnDisplayMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnDisplayMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    Count: Integer;
  public
    { Public declarations }
  end;

var
  frmCount: TfrmCount;

implementation

{$R *.dfm}

//var
  //Count: integer = 0;

procedure TfrmCount.bmbRessetClick(Sender: TObject);
begin
  Count := 0;
end;

procedure TfrmCount.btnAddItemClick(Sender: TObject);
begin
   Inc(Count);
end;

procedure TfrmCount.btnDisplayMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   lblTotal.Caption := IntToStr (Count) ;
end;

procedure TfrmCount.btnDisplayMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   lblTotal.Caption := '';
end;

end.
