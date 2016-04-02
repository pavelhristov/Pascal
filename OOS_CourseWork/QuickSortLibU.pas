unit QuickSortLibU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TfrmSort = class(TForm)
    btnSort: TButton;
    lblSort: TLabel;
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure btnSortClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSort: TfrmSort;


implementation

{$R *.dfm}

  Const
    n=8;

  type
    item = integer;

  var
    //DllHandle: THandle;
   //M:array[1..n] of item;
    M:array of item;
    i:Integer;

  Procedure straight_selection(var a:array of Integer; n:Integer); stdcall; External 'QuickSortLib.dll'

{procedure straight_selection(var a:array of Integer; n:Integer);
var
  i, j, k: Integer;
  x: item;
begin
  for i := 0 to n-2 do begin
    k := i;
    x := a[i];
    for j := i+1 to n do begin
      if a[j] < x then begin
        k := j;
        x := a[j];
      end;
    end;
    a[k] := a[i];
    a[i] := x;
  end;
end; }


procedure TfrmSort.btnSortClick(Sender: TObject);
var
  i:Integer;
begin
  lblSort.Caption:='';
    //If DllHandle<>0 Then begin
      Straight_Selection(M,N);
    //end Else begin
      //ShowMessage('Library not found');
    //end;
  for i := 0 to n-1 do begin
    lblSort.Caption:=lblSort.Caption + IntToStr(M[i])+ '; ';
  end;
end;

procedure TfrmSort.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //FreeLibrary(DllHandle);
end;

procedure TfrmSort.Button1Click(Sender: TObject);
var
  i,j:Integer;
begin

  For i:=0 To StringGrid1.RowCount-1 Do begin
    For j:=0 To StringGrid1.ColCount-1 Do begin
      //StringGrid1.Cells[j,i] := IntToStr(i+1)+','+ IntToStr(j+1) ;
      StringGrid1.Cells[j,i] := IntToStr(m[j]);
    end;
  end;
end;

procedure TfrmSort.FormCreate(Sender: TObject);
begin
  //DllHandle:=LoadLibrary('QuickSortLib.dll');
  SetLength(M,N);
  For i:=0 To N-1 Do begin
    M[i]:=2-i;
  end;
  StringGrid1.ColCount := N;
end;

Initialization


Finalization
  
end.
 