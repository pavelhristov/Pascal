unit MainForm4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmMain = class(TForm)
    radAuxShow: TRadioButton;
    radAuxHide: TRadioButton;
    GroupBox1: TGroupBox;
    btnCreate: TButton;
    btnFree: TButton;
    procedure radAuxHideClick(Sender: TObject);
    procedure radAuxShowClick(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure btnFreeClick(Sender: TObject);
  private
    frmAuxiliary: TForm; // Composition
    // event handler
    procedure frmAuxiliaryShow(Sender: TObject);
    //helper method
    procedure FormRefFail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

  const  //unit level constant
    Mssgs: Array[0..1] of string = ('Auxiliary Form does not exist', 'Auxiliary Form already exists');


procedure TfrmMain.radAuxHideClick(Sender: TObject);
begin
  If frmAuxiliary <> nil Then begin
    frmAuxiliary.Hide;
  end Else begin
    FormrefFail;
  end;
end;

procedure TfrmMain.radAuxShowClick(Sender: TObject);
begin
  If frmAuxiliary <> nil Then begin
    frmAuxiliary.Show;
  end Else begin
    FormrefFail;
  end;
end;

procedure TfrmMain.btnCreateClick(Sender: TObject);
begin
  If frmAuxiliary = nil Then
    begin
      frmAuxiliary := TForm.Create(nil) ;
      frmAuxiliary.Caption := 'frmAuxiliary' ;
      frmAuxiliary.Height := 150 ;
      frmAuxiliary.Width := 180 ;
      frmAuxiliary.Left := Random(600) ;
      frmAuxiliary.Top := Random (400) ;
    end
  else
  ShowMessage(Mssgs[1]);
end;

procedure TfrmMain.btnFreeClick(Sender: TObject);
begin
  If frmAuxiliary <> nil Then begin
    frmAuxiliary.Hide;
    frmAuxiliary.Free;
    frmAuxiliary := nil;
  end Else begin
    FormRefFail;
  end;
end;

procedure TfrmMain.frmAuxiliaryShow(Sender: TObject);
  begin
    frmAuxiliary.Left := Random(600);
    frmAuxiliary.Top := Random(400);
  end;

procedure TfrmMain.FormRefFail;
begin
  ShowMessage(Mssgs [0]);
  radAuxHide.Checked := False;
  radAuxShow.Checked := False;
end;

initialization
  Randomize;
  
end.
