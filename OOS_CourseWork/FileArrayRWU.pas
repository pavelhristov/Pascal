unit FileArrayRWU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TfrmFileArray = class(TForm)
    btnFileArrayCreate: TButton;
    edtArrayLoad: TEdit;
    lblArrayShow: TLabel;
    btnArrayShow: TButton;
    stgArrayInsert: TStringGrid;
    procedure btnFileArrayCreateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnArrayShowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFileArray: TfrmFileArray;

implementation

{$R *.dfm}
   const
     n=4;
   type
     Vector= Array of Integer;
   var
     F1,F2:TextFile;
     M:Vector;
     z:String;

procedure TfrmFileArray.btnFileArrayCreateClick(Sender: TObject);
var
  i,j:Integer;
begin
  If FileExists('ArrayInsert.txt') Then begin
    ShowMessage('The array already exists please wait for it to be sorted');
  end Else begin
    For i:=0 To stgArrayInsert.RowCount-1 Do begin
      For j:=0 To stgArrayInsert.ColCount-1 Do begin
        z:=z + stgArrayInsert.Cells[j,i] + ' ';
      end;
    end;
    AssignFile(F1,'ArrayInsert.txt');
    ReWrite(F1);
    Write(F1, z);
    CloseFile(F1);
    ShowMessage('The Array has been set, please wait for it to be sorted!');
  end;
end;

procedure TfrmFileArray.FormCreate(Sender: TObject);
begin
  stgArrayInsert.ColCount := N;
  SetLength(M,N);
  ShowMessage('Моля въведете стойностите на масива за сортиране');
end;

procedure TfrmFileArray.btnArrayShowClick(Sender: TObject);
var
  z:String;
begin
  If FileExists('ArrayLoad.txt') Then begin
    AssignFile(F2,'ArrayLoad.txt');
    Reset(F2);
    Read(F2,z);
    edtArrayLoad.Text:= z;
    CloseFile(F2);
    Erase(f2);
  end Else begin
    ShowMessage('Array has not beed sort yet');
  end;
end;

end.
