unit MainForm5;

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
    btnMoneyGreen, btnSkyBlue:TButton;
    frmAuxiliary: TForm; // Composition
    // event handler
    procedure FormRefFail;
//    procedure btnBlueClick(Sender: TObject);
   // procedure btnGreenClick(Sender: TObject);
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

procedure TfrmMain.FormRefFail;
begin
  ShowMessage(Mssgs [0]);
  radAuxHide.Checked := False;
  radAuxShow.Checked := False;
  radFree.Checked := False;
  radCreate.Checked := False;
end;

procedure TfrmMain.AuxShowClick(Sender: TObject);
  begin
    If frmAuxiliary <> nil Then begin
      frmAuxiliary.Show;
    end Else begin
      FormRefFail;
    end;
  end;

procedure TfrmMain.AuxHideClick(Sender: TObject);
  begin
    If frmAuxiliary <> nil Then begin
      frmAuxiliary.Hide;
    end Else begin
      FormRefFail;
    end;
  end;

procedure TfrmMain.radFreeClick(Sender: TObject);
begin
  If frmAuxiliary <> nil Then begin
    frmAuxiliary.Hide;
    frmAuxiliary.Free;
    frmAuxiliary := nil;
  end Else begin
    FormRefFail;
  end;
end;

procedure TfrmMain.radCreateClick(Sender: TObject);
begin
  If frmAuxiliary = nil Then
    begin
      frmAuxiliary := TForm.Create(frmMain) ;
      frmAuxiliary.Caption := 'frmAuxiliary' ;
      frmAuxiliary.Height := 250 ;
      frmAuxiliary.Width := 350 ;
      frmAuxiliary.Left := Random(600) ;
      frmAuxiliary.Top := Random (400) ;
     {
      btnMoneyGreen.Create(frmAuxiliary);
      btnMoneyGreen.Parent:= frmAuxiliary;
      btnMoneyGreen.Top:= 50;
      btnMoneyGreen.Left:= 50;
      btnMoneyGreen.Height:= 50;
      btnMoneyGreen.Width:= 100;
     // btnMoneyGreen.OnClick:= btnGreenClick;
      btnMoneyGreen.Caption:= '&Money Green';

      btnSkyBlue.Create(frmAuxiliary);
      btnSkyBlue.Parent:= frmAuxiliary;
      btnSkyBlue.Top:= 250;
      btnSkyBlue.Left:= 50;
      btnSkyBlue.Height:= 50;
      btnSkyBlue.Width:= 100;
      //btnSkyBlue.OnClick:= btnBlueClick;
      btnSkyBlue.Caption:= '&SkyBlue';
       }
    end
  else
  ShowMessage(Mssgs[1]);
end;

{procedure btnGreenClick(Sender: TObject);
begin
  //frmAuxiliary.Color:= clMoneyGreen;
end;

procedure btnBlueClick(Sender: TObject);
begin
  //((Sender as TButton).Parent as TForm).Color:= clSkyBlue;
end; }

initialization
  Randomize;
finalization

end.
