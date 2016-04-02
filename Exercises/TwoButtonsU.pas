unit TwoButtonsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmStructureDemo = class(TForm)
    btnYellow: TButton;
    btnBlue: TButton;
    procedure btnBlueClick(Sender: TObject);
    procedure btnYellowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStructureDemo: TfrmStructureDemo;

implementation

{$R *.dfm}

procedure TfrmStructureDemo.btnBlueClick(Sender: TObject);
begin
  frmStructureDemo.Color := clBlue;
end;

procedure TfrmStructureDemo.btnYellowClick(Sender: TObject);
begin
  frmStructureDemo.Color := clYellow ;
end;

end.
                            