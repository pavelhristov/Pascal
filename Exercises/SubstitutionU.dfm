object frmSubstitution: TfrmSubstitution
  Left = 192
  Top = 124
  Width = 362
  Height = 393
  Caption = 'Substitution'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblKind: TLabel
    Left = 48
    Top = 216
    Width = 33
    Height = 13
  end
  object rgbFurniture: TRadioGroup
    Left = 24
    Top = 24
    Width = 137
    Height = 177
    Caption = 'Furniture'
    Items.Strings = (
      'Furniture'
      'Chair'
      'Table'
      'Coffee Table'
      'Kitchen Table')
    TabOrder = 0
    OnClick = rgbFurnitureClick
  end
  object btnKind: TButton
    Left = 200
    Top = 40
    Width = 105
    Height = 49
    Caption = '&Kind'
    TabOrder = 1
    OnClick = btnKindClick
  end
  object btnFree: TButton
    Left = 200
    Top = 112
    Width = 105
    Height = 49
    Caption = '&Free'
    TabOrder = 2
    OnClick = btnFreeClick
  end
end
