object frmPolyShape: TfrmPolyShape
  Left = 192
  Top = 124
  Width = 327
  Height = 353
  Caption = 'Poly Shape'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object imgDrawShape: TImage
    Left = 16
    Top = 104
    Width = 289
    Height = 201
  end
  object cboShape: TComboBox
    Left = 160
    Top = 8
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'Shape'
    Items.Strings = (
      'Ellipse'
      'Rectangle')
  end
  object cboSize: TComboBox
    Left = 16
    Top = 8
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'Size'
    Items.Strings = (
      'Big'
      'Small')
  end
  object btnDraw: TButton
    Left = 88
    Top = 40
    Width = 129
    Height = 41
    Caption = '&Draw'
    TabOrder = 2
    OnClick = btnDrawClick
  end
end
