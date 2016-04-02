unit ArrayIntoListU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ListU, StdCtrls;

type
  TfrmArrayintoList = class(TForm)
    btnArrayIntoList: TButton;
    lblWriteList: TLabel;
    btnLoadArray: TButton;
    procedure btnArrayIntoListClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLoadArrayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArrayintoList: TfrmArrayintoList;

implementation

{$R *.dfm}
  Const
    n=4;
  var
    M:array of Te;
    p:PList;
    listPtr : PList;
    nextPtr : PList;
    k:string;
    F1,F2: TextFile;
    q:char;
    z:string;
    Flag:Boolean ;


  {Procedure Init(var p:PList);  stdcall;  external('ListLib.dll');
  Procedure InList(var list: PList; x: Te; var fl:boolean); stdcall;  external('ListLib.dll');
  Procedure OutList(var list: plist; x:te ;var fl:boolean); stdcall;  external('ListLib.dll');
  Procedure WriteItem(x: Te; var k:string); stdcall;  external('ListLib.dll');
  Procedure Scan(list: PList; var k:string); stdcall;  external('ListLib.dll');
  Function Empty(p: PList):boolean; stdcall;  external('ListLib.dll'); }

  Procedure straight_selection(var a:array of Integer; n:Integer); stdcall; External 'QuickSortLib.dll'
  
procedure TfrmArrayintoList.btnArrayIntoListClick(Sender: TObject);
var
  i:Integer;
  //fl:boolean;
begin
  lblWriteList.Caption:='';
  If flag Then begin
    //If p=nil Then begin
      Straight_Selection(m,n);
      //Init(p);
      For i:=0 to (length(M)-1) Do begin
        //fl:=false;
        k:=k + IntToStr(M[i]) +' ';
        //InList(p, M[i], fl);
      end;
      //Scan(p,k);
      lblWriteList.Caption:= k;
      AssignFile(F2,'ArrayLoad.txt');
      Rewrite(F2);
      Write(F2,k);
      CloseFile(F2);
    end Else begin
      ShowMessage('Вече е зареден списък, моля освобедете го преди да заредите нов');
    end;
  {end ELse begin
    ShowMEssage('Please load the array first');
  end; }
end;

procedure TfrmArrayintoList.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i:Integer;
begin
   {listPtr := p;
    while listPtr <> nil do
    begin
        nextPtr := listPtr^.next;
        dispose (listPtr);
        listPtr := nextPtr;
    end;
    p := nil; }
end;

procedure TfrmArrayintoList.btnLoadArrayClick(Sender: TObject);
var
  i,j:Integer;
begin
  lblWriteList.Caption:='';
  z:='';
  i:=0;
  If FileExists('ArrayInsert.txt') Then begin
    AssignFile(F1, 'ArrayInsert.txt');
    Reset(F1);
    While(i<10)and (not EoLn(F1)) Do begin
      Read(F1,q);
      If q=' ' Then begin
        M[i]:=StrToInt(z);
        z:='';
        i:=i+1;        
      end Else begin
        z:=z+q;
      end;
    end;
    CloseFile(F1);
    Erase(f1);
    Flag:=True;
  end Else begin
    ShowMessage('File does not exist');
  end;
  For j:=0 To (length(M)-1) Do begin
  lblWriteList.Caption:= lblWriteList.Caption + IntToStr(M[j]) + ' ';
  end;
end;

procedure TfrmArrayintoList.FormCreate(Sender: TObject);
var
 i:Integer;
begin
  Flag:=false;
  SetLength(m,4);
  For i:=0 To (Length(m)-1) Do begin
    M[i]:=0;
  end;
end;

Initialization

Finalization

end.
 