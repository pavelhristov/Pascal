unit SenderParameterU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmSender = class(TForm)
    spdOne: TSpeedButton;
    spdTwo: TSpeedButton;
    spdThree: TSpeedButton;
    spdFour: TSpeedButton;
    spdFive: TSpeedButton;
    spdSix: TSpeedButton;
    pnlControl: TPanel;
    pnlReport: TPanel;
    lblInheritance: TLabel;
    procedure GeneralClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSender: TfrmSender;

implementation

{$R *.dfm}

procedure TfrmSender.GeneralClick(Sender: TObject);
begin
  If Sender is TComponent Then begin
    pnlReport.Caption:= 'You clicked on ' + TComponent(Sender).Name;
  end;

  //Color change;
  If Sender = spdFive Then begin
    Color:= clAqua;
  end Else begin
    Color:= clGreen;
  end;

  //Class relationships;
  lblInheritance.Caption:= 'Class Name: ' + Sender.ClassName;

  pnlControl.Caption:= 'TCustomControl descendant: ' + BoolToStr(Sender.InheritsFrom(TCustomControl),True);

  // Old no longer needed set up;
  {If Sender is TSpeedButton Then begin
    pnlReport.Caption:= 'You clicked on '  + (Sender as TSpeedButton).Name;
  end Else begin
    If Sender is TForm Then begin
      pnlReport.Caption:= 'You clicked on ' + (Sender as TForm).Name;
    end Else begin
      If Sender is TPanel Then begin
        pnlReport.Caption:= 'You clicked on ' + (Sender as TPanel).Name;
      end Else begin
        If Sender is TLabel Then begin
          pnlReport.Caption:= 'You clicked on ' + (Sender as TLabel).Name;
        end;
      end;
    end;
  end;}
end;

end.
