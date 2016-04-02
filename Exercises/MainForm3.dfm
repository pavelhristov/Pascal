object frmMain: TfrmMain
  Left = 191
  Top = 123
  Width = 293
  Height = 192
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
  object Auxiliary: TGroupBox
    Left = 8
    Top = 8
    Width = 257
    Height = 137
    Caption = 'Auxiliary Form'
    TabOrder = 0
    object radAuxShow: TRadioButton
      Left = 16
      Top = 32
      Width = 113
      Height = 41
      Caption = 'AuxShow'
      TabOrder = 0
      OnClick = AuxShowClick
    end
    object radAuxHide: TRadioButton
      Left = 16
      Top = 80
      Width = 113
      Height = 41
      Caption = 'AuxHide'
      TabOrder = 1
      OnClick = AuxHideClick
    end
    object radCreate: TRadioButton
      Left = 152
      Top = 24
      Width = 105
      Height = 49
      Caption = 'Create'
      TabOrder = 2
      OnClick = radCreateClick
    end
    object radFree: TRadioButton
      Left = 152
      Top = 80
      Width = 105
      Height = 41
      Caption = 'Free'
      TabOrder = 3
      OnClick = radFreeClick
    end
  end
end
