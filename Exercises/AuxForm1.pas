unit AuxForm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmAuxiliary = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxiliary: TfrmAuxiliary;

implementation

{$R *.dfm}

procedure TfrmAuxiliary.FormShow(Sender: TObject);
begin
  Left := Random(600);
  Top := Random(400);
end;

Initialization
  Randomize;

Finalization
  
end.
