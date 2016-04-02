unit StudentListU;

interface

uses
  StudentU,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TfrmStudentList = class(TForm)
    btnCreate: TButton;
    edtStudentName: TEdit;
    edtMathNote: TEdit;
    lblStudentName: TLabel;
    lblMathNote: TLabel;
    lblProgNote: TLabel;
    edtProgNote: TEdit;
    lstStudents: TListBox;
    lstAvgNotes: TListBox;
    lblStudentsListInfo: TLabel;
    lblAvgNoteListInfo: TLabel;
    procedure btnCreateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStudentList: TfrmStudentList;

implementation

{$R *.dfm}
const
  N=100;
var
  i:Integer;
  //Students:Array of TStudent;

procedure TfrmStudentList.btnCreateClick(Sender: TObject);
var
  NewStudent:TStudent;
begin
  If (edtStudentName.Text<>'') and (((StrToFloat(edtMathNote.Text)>=2) and (StrToFloat(edtMathNote.Text)<=6))and ((StrToFloat(edtProgNote.Text)>=2) and (StrToFloat(edtProgNote.Text)<=6))) Then begin
    If i<=N Then begin
      NewStudent:= TStudent.Create(edtStudentName.Text, edtMathNote.Text, edtProgNote.Text);
      //Students[i]:=NewStudent;
      lstStudents.AddItem(NewStudent.Name + '  ' + NewStudent.MathNote + '  ' +NewStudent.ProgNote ,NewStudent);
      lstAvgNotes.AddItem(NewStudent.AvgNote,NewStudent);
      edtStudentName.Clear;
      edtMathNote.Clear;
      edtProgNote.Clear;
      edtStudentName.SetFocus;
      i:=i+1;
    end Else begin
      ShowMessage('list is full');
    end;
  end Else begin
    ShowMessage('incorrect information');
  end;
end;

procedure TfrmStudentList.FormCreate(Sender: TObject);
begin
  i:=0;
  //SetLength(Students,N);
end;

end.
 