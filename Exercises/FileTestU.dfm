object frmFileTest: TfrmFileTest
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'File Test'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnCreate: TButton
    Left = 40
    Top = 344
    Width = 75
    Height = 25
    Caption = '&Create'
    TabOrder = 0
    OnClick = btnCreateClick
  end
  object btnDestroy: TButton
    Left = 128
    Top = 344
    Width = 75
    Height = 25
    Caption = '&Destroy'
    TabOrder = 1
    OnClick = btnDestroyClick
  end
end
