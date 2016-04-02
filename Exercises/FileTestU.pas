unit FileTestU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmFileTest = class(TForm)
    btnCreate: TButton;
    btnDestroy: TButton;
    procedure btnCreateClick(Sender: TObject);
    procedure btnDestroyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFileTest: TfrmFileTest;

implementation

  var
    FileName:String;
    F:TextFile;

{$R *.dfm}

procedure TfrmFileTest.btnCreateClick(Sender: TObject);
begin
  If FileExists(FileName) Then begin
    ShowMessage('File already exists');
    end Else begin
      AssignFile(F, FileName);
      ReWrite(F);
      WriteLn(F, 'Hello');
      CloseFile(F);
    end;
end;

procedure TfrmFileTest.btnDestroyClick(Sender: TObject);
begin
  If FileExists(FileName) Then begin
    DeleteFile(FileName);
    end Else begin
      ShowMessage('File doesn`t exists');
    end;
end;


Initialization
  FileName:= 'FileTest.txt';

end.
