unit MainForm2;

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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

  //Uses AuxForm2;

{$R *.dfm}

procedure TfrmMain.radAuxHideClick(Sender: TObject);
begin
  try
  frmAuxiliary.Hide;
  except
  ShowMessage('Aux.Form does not exist');
  radAuxHide.Checked := False;
end;
end;

procedure TfrmMain.radAuxShowClick(Sender: TObject);
begin
  try
  frmAuxiliary.Show;
  except
  ShowMessage('Aux.Form does not exist');
  radAuxShow.Checked := False;
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
  ShowMessage('Aux.Form already exist');
end;

procedure TfrmMain.btnFreeClick(Sender: TObject);
begin
  try
  frmAuxiliary.Hide;
  frmAuxiliary.Free;
  frmAuxiliary := nil;
  except
  ShowMessage ('Form does not exist');
  end;
end;

end.
