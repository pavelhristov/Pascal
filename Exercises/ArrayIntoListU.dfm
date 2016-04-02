object frmArrayintoList: TfrmArrayintoList
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Array into List'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblWriteList: TLabel
    Left = 48
    Top = 112
    Width = 3
    Height = 13
  end
  object btnArrayIntoList: TButton
    Left = 48
    Top = 32
    Width = 153
    Height = 49
    Caption = '&Array Into List'
    TabOrder = 0
    OnClick = btnArrayIntoListClick
  end
  object btnLoadArray: TButton
    Left = 64
    Top = 240
    Width = 177
    Height = 57
    Caption = '&Load Array'
    TabOrder = 1
    OnClick = btnLoadArrayClick
  end
end
