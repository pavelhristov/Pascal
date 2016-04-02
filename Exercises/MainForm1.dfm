object frmMain: TfrmMain
  Left = 191
  Top = 122
  Width = 315
  Height = 399
  Caption = 'Main'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object radAuxShow: TRadioButton
    Left = 64
    Top = 40
    Width = 137
    Height = 41
    Caption = '&AuxShow'
    TabOrder = 0
    OnClick = radAuxShowClick
  end
  object radAuxHide: TRadioButton
    Left = 64
    Top = 96
    Width = 137
    Height = 49
    Caption = '&AuxHide'
    TabOrder = 1
    OnClick = radAuxHideClick
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 192
    Width = 201
    Height = 137
    Caption = 'GroupBox1'
    TabOrder = 2
    object btnCreate: TButton
      Left = 16
      Top = 24
      Width = 97
      Height = 41
      Caption = '&Create'
      TabOrder = 0
      OnClick = btnCreateClick
    end
    object btnFree: TButton
      Left = 88
      Top = 80
      Width = 97
      Height = 41
      Caption = '&Free'
      TabOrder = 1
      OnClick = btnFreeClick
    end
  end
end
