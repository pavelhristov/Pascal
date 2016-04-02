unit ObjectAccessU;

interface

uses
  ClientU,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmAccessObject = class(TForm)
    btnCreate: TButton;
    btnFree: TButton;
    btnShow: TButton;
    lblCNameShow: TLabel;
    lblAccNoShow: TLabel;
    edtCNameIns: TEdit;
    edtAccNoIns: TEdit;
    lblCNameIns: TLabel;
    lblAccNoIns: TLabel;
    lstClients: TListBox;
    lblIndexShow: TLabel;
    procedure btnCreateClick(Sender: TObject);
    procedure btnFreeClick(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
    procedure lstClientsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    //NewClient: TClient;
  public
    { Public declarations }
  end;

var
  frmAccessObject: TfrmAccessObject;

implementation

{$R *.dfm}
//const
  //CName= 'Ivan Ivanov';
  //AccNo= '0898989898';

procedure TfrmAccessObject.btnCreateClick(Sender: TObject);
var
  NewClient:TClient;
  Dummy:Integer;
begin
  {If NewClient<>nil Then begin
      ShowMessage('Please Free existing Object first');
    end Else} If (not TryStrToInt(edtAccNoIns.Text, Dummy)) or (edtCNameIns.Text='') Then begin
      ShowMessage('Please enter a valid name and/or number');
      end Else begin
        NewClient:= TClient.Create(edtCNameIns.Text,edtAccNoIns.Text);
        {NewClient.SetAccNo(edtAccNoIns.Text);   //Not needed anymore
        NewClient.SetCName(edtCNameIns.Text); }  //Not needed anymore
        //edtAccNoIns.Text:='';
        //edtCNameIns.Text:='';
        //Add object to ListBox and create an additional reference
        lstClients.AddItem(NewClient.CName, NewClient);
        edtAccNoIns.Clear;
        edtCNameIns.Clear;
        edtCNameIns.SetFocus;
      end;
end;

procedure TfrmAccessObject.btnFreeClick(Sender: TObject);
var
  CurrentClient: TClient;
begin
  If lstClients.ItemIndex < 0 Then begin
    ShowMessage ('No Client Selected');
    exit;
  end;

  If MessageDlg ('Delete selected client?', mtConfirmation, mbOkCancel, 0) = mrOk Then begin
    //confirm Deletion exit;
    //Ok to delete so go ahead;
    CurrentClient:= lstClients.Items.Objects[lstClients.ItemIndex] as TClient;
    FreeAndNil(CurrentClient);
    lstClients.DeleteSelected;
    
    lblIndexShow.Caption := 'Item Index:';
    lblCNameShow.Caption := 'Name:';
    lblAccNoShow.Caption := 'Acc No:';
    end;

       // old btnFree, now acting as Delete from ListBox

  {If NewClient=nil Then begin
      ShowMessage('There is No Object to be Freed')
    end Else begin
      FreeAndNil(NewClient);  //combines Free method and seting value to nil
      //NewClient.Free;     //Not needed anymore
      //NewClient:=nil;      //Not needed anymore
      lblCNameShow.Caption:='';
      lblAccNoShow.Caption:='';
      edtCNameIns.SetFocus;
    end;}
end;


//btnShow not needed at the moment;
procedure TfrmAccessObject.btnShowClick(Sender: TObject);
begin
  {If NewClient<>nil Then begin
    //lblCNameShow.Caption:='Name: ' + (NewClient.GetCName);
    //lblAccNoShow.Caption:= 'Acc No: ' + (NewClient.GetAccNo);
    lblCNameShow.Caption:= 'Name: ' +  NewClient.CName;
    lblAccNoShow.Caption:= 'Acc No: ' + NewClient.AccNo;
    end Else begin
    ShowMessage('Please Create an Object First');
    end;}
end;


procedure TfrmAccessObject.lstClientsClick(Sender: TObject);
var
  CurrentClient:TClient;
begin
  lblIndexShow.Caption:= 'Item Index: ' + IntToStr(lstClients.ItemIndex);
  CurrentClient:= lstClients.Items.Objects[lstClients.ItemIndex] as TClient;
  lblCNameShow.Caption:= 'Name: ' + CurrentClient.CName;
  lblAccNoShow.Caption:= 'Acc No: ' + CurrentClient.AccNo;
end;


procedure TfrmAccessObject.FormCreate(Sender: TObject);
begin
  btnShow.Free;
end;

end.
