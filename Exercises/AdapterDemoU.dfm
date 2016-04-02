object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTotalItems: TLabel
    Left = 200
    Top = 40
    Width = 113
    Height = 25
  end
  object sedNewItems: TSpinEdit
    Left = 48
    Top = 40
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object btnAdd: TButton
    Left = 48
    Top = 80
    Width = 121
    Height = 25
    Caption = '&Add'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnClear: TButton
    Left = 200
    Top = 80
    Width = 121
    Height = 25
    Caption = '&Clear'
    TabOrder = 2
    OnClick = btnClearClick
  end
  object btnCopy: TButton
    Left = 48
    Top = 120
    Width = 121
    Height = 25
    Caption = '&Copy'
    TabOrder = 3
    OnClick = btnCopyClick
  end
  object btnShowCopy: TButton
    Left = 200
    Top = 120
    Width = 121
    Height = 25
    Caption = '&Show Copy'
    TabOrder = 4
    OnClick = btnShowCopyClick
  end
end
