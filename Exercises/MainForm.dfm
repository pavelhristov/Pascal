object frmMain: TfrmMain
  Left = 191
  Top = 122
  Width = 928
  Height = 480
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
end
