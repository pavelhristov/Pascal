unit MainForm3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmMain = class(TForm)
    Auxiliary: TGroupBox;
    radAuxShow: TRadioButton;
    radAuxHide: TRadioButton;
    radCreate: TRadioButton;
    radFree: TRadioButton;
    procedure radAuxHideClick(Sender: TObject);
    procedure radAuxShowClick(Sender: TObject);
    procedure AuxShowClick(Sender: TObject);
    procedure AuxHideClick(Sender: TObject);
    procedure radFreeClick(Sender: TObject);
    procedure radCreateClick(Sender: TObject);
  private
    //frmAuxiliary: TForm; // Composition
    // event handler
    procedure FormRefFail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
  Uses TwoButtonsU;

  const  //unit level constant
    Mssgs: Array[0..1] of string = ('Auxiliary Form does not exist', 'Auxiliary Form already exists');
  var
    frmAuxiliary: TfrmStructureDemo;

procedure TfrmMain.radAuxHideClick(Sender: TObject);
begin
  try
  frmAuxiliary.Hide;
  except
  FormrefFail;
end;
end;

procedure TfrmMain.radAuxShowClick(Sender: TObject);
begin
  try
  frmAuxiliary.Show;
  except
  FormrefFail;
end;
end;

procedure TfrmMain.FormRefFail;
begin
  ShowMessage(Mssgs [0]);
  radAuxHide.Checked := False;
  radAuxShow.Checked := False;
end;

procedure TfrmMain.AuxShowClick(Sender: TObject);
  begin
    frmAuxiliary.Show;
  end;

procedure TfrmMain.AuxHideClick(Sender: TObject);
  begin
    frmAuxiliary.Hide;
  end;

procedure TfrmMain.radFreeClick(Sender: TObject);
begin
  try
  frmAuxiliary.Hide;
  frmAuxiliary.Free;
  frmAuxiliary := nil;
  except
  FormRefFail;
  end;
end;

procedure TfrmMain.radCreateClick(Sender: TObject);
begin
  If frmAuxiliary = nil Then
    begin
      frmAuxiliary := TfrmStructureDemo.Create(nil) ;
      frmAuxiliary.Caption := 'frmAuxiliary' ;
      frmAuxiliary.Height := 250 ;
      frmAuxiliary.Width := 350 ;
      frmAuxiliary.Left := Random(600) ;
      frmAuxiliary.Top := Random (400) ;
    end
  else
  ShowMessage(Mssgs[1]);
end;

initialization
  Randomize;
finalization

end.
