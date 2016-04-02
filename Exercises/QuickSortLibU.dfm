object frmSort: TfrmSort
  Left = 218
  Top = 130
  Width = 928
  Height = 474
  Caption = 'Sort'
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
  object lblSort: TLabel
    Left = 376
    Top = 48
    Width = 3
    Height = 13
  end
  object btnSort: TButton
    Left = 64
    Top = 96
    Width = 233
    Height = 81
    Caption = '&Sort'
    TabOrder = 0
    OnClick = btnSortClick
  end
  object StringGrid1: TStringGrid
    Left = 360
    Top = 112
    Width = 409
    Height = 121
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
  end
  object Button1: TButton
    Left = 608
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
