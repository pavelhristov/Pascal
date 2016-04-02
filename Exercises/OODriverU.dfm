object frmCount: TfrmCount
  Left = 315
  Top = 138
  Width = 316
  Height = 338
  Caption = 'Count'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnAddItem: TButton
    Left = 16
    Top = 16
    Width = 81
    Height = 40
    Caption = 'Add &Item'
    TabOrder = 0
    OnClick = btnAddItemClick
  end
  object btnDisplay: TButton
    Left = 16
    Top = 264
    Width = 265
    Height = 25
    Caption = '&Display'
    TabOrder = 1
    OnMouseDown = btnDisplayMouseDown
    OnMouseUp = btnDisplayMouseUp
  end
  object gpbItems: TGroupBox
    Left = 16
    Top = 80
    Width = 265
    Height = 161
    Caption = '&Items'
    TabOrder = 2
    object lblTotal: TLabel
      Left = 64
      Top = 40
      Width = 6
      Height = 32
      Caption = ' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object bmbResset: TBitBtn
    Left = 200
    Top = 16
    Width = 73
    Height = 41
    Caption = '&Reset'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bmbRessetClick
    Kind = bkRetry
  end
  object btnAddBox: TButton
    Left = 112
    Top = 16
    Width = 73
    Height = 41
    Caption = 'Add &Box'
    TabOrder = 4
    OnClick = btnAddBoxClick
  end
end
