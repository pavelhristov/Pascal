object frmFileArray: TfrmFileArray
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'File Array'
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
  object lblArrayShow: TLabel
    Left = 464
    Top = 80
    Width = 3
    Height = 13
  end
  object btnFileArrayCreate: TButton
    Left = 72
    Top = 344
    Width = 169
    Height = 41
    Caption = '&File Array Create'
    TabOrder = 0
    OnClick = btnFileArrayCreateClick
  end
  object edtArrayLoad: TEdit
    Left = 72
    Top = 80
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object btnArrayShow: TButton
    Left = 464
    Top = 344
    Width = 185
    Height = 49
    Caption = 'Array Show'
    TabOrder = 2
    OnClick = btnArrayShowClick
  end
  object stgArrayInsert: TStringGrid
    Left = 88
    Top = 232
    Width = 265
    Height = 33
    ColCount = 4
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
  end
end
