unit UpAndDownU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, MuseumCountU;

type
  TfrmAttendance = class(TForm)
    sedEnter: TSpinEdit;
    sedLeave: TSpinEdit;
    gpbVisitors: TGroupBox;
    btnEnter: TButton;
    btnLeave: TButton;
    lblVisitors: TLabel;
    gpbIn: TGroupBox;
    gpbOut: TGroupBox;
    lblIn: TLabel;
    lblOut: TLabel;
    procedure btnEnterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLeaveClick(Sender: TObject);
  private
    { Private declarations }
    MuseumCount: TMuseumCount;
  public
    { Public declarations }
  end;

var
  frmAttendance: TfrmAttendance;

implementation

{$R *.dfm}

procedure TfrmAttendance.btnEnterClick(Sender: TObject);
begin
  MuseumCount.Arrivals (sedEnter.Value);
  lblIn.Caption:= InttoStr(MuseumCount.Entered);
  lblVisitors.Caption:=InttoStr (MuseumCount.Inside);
  sedEnter.Value:=0;
end;

procedure TfrmAttendance.FormCreate(Sender: TObject);
begin
  MuseumCount:= TMuseumCount.Create;
end;

procedure TfrmAttendance.btnLeaveClick(Sender: TObject);
begin
  With MuseumCount Do begin
    Departures (sedLeave.Value);
    lblOut.Caption:= InttoStr(Left);  //** dangerous??
    lblVisitors.Caption:=InttoStr (Inside);
    end;
  sedLeave.Value:=0;
end;

end.
