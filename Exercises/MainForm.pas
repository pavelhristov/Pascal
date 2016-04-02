unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmMain = class(TForm)
    radAuxShow: TRadioButton;
    radAuxHide: TRadioButton;
    procedure radAuxHideClick(Sender: TObject);
    procedure radAuxShowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

  Uses AuxForm;

{$R *.dfm}

procedure TfrmMain.radAuxHideClick(Sender: TObject);
begin
  frmAuxiliary.Hide;
end;

procedure TfrmMain.radAuxShowClick(Sender: TObject);
begin
  frmAuxiliary.Show;
end;

end.
