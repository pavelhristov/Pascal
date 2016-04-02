object frmAccessObject: TfrmAccessObject
  Left = 217
  Top = 212
  Width = 568
  Height = 436
  Caption = 'Access Object'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblCNameShow: TLabel
    Left = 275
    Top = 224
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object lblAccNoShow: TLabel
    Left = 275
    Top = 256
    Width = 39
    Height = 13
    Caption = 'Acc No:'
  end
  object lblCNameIns: TLabel
    Left = 32
    Top = 96
    Width = 96
    Height = 13
    Caption = 'Insert Client'#39's Name:'
  end
  object lblAccNoIns: TLabel
    Left = 32
    Top = 128
    Width = 119
    Height = 13
    Caption = 'Insert Account'#39's Number:'
  end
  object lblIndexShow: TLabel
    Left = 275
    Top = 192
    Width = 52
    Height = 13
    Caption = 'Item Index:'
  end
  object btnCreate: TButton
    Left = 32
    Top = 32
    Width = 145
    Height = 41
    Caption = '&Create'
    TabOrder = 0
    OnClick = btnCreateClick
  end
  object btnFree: TButton
    Left = 192
    Top = 32
    Width = 145
    Height = 41
    Caption = '&Free'
    TabOrder = 1
    OnClick = btnFreeClick
  end
  object btnShow: TButton
    Left = 256
    Top = 328
    Width = 145
    Height = 41
    Caption = '&Show'
    TabOrder = 2
    OnClick = btnShowClick
  end
  object edtCNameIns: TEdit
    Left = 192
    Top = 88
    Width = 225
    Height = 21
    TabOrder = 3
  end
  object edtAccNoIns: TEdit
    Left = 192
    Top = 120
    Width = 225
    Height = 21
    TabOrder = 4
  end
  object lstClients: TListBox
    Left = 32
    Top = 160
    Width = 201
    Height = 217
    ItemHeight = 13
    TabOrder = 5
    OnClick = lstClientsClick
  end
end
