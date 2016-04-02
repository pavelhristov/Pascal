object frmStudentList: TfrmStudentList
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'frmStudentList'
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
  object lblStudentName: TLabel
    Left = 56
    Top = 24
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object lblMathNote: TLabel
    Left = 56
    Top = 48
    Width = 53
    Height = 13
    Caption = 'Math Note:'
  end
  object lblProgNote: TLabel
    Left = 56
    Top = 72
    Width = 51
    Height = 13
    Caption = 'Prog Note:'
  end
  object lblStudentsListInfo: TLabel
    Left = 88
    Top = 120
    Width = 148
    Height = 13
    Caption = 'Name / Math Note / ProgNote:'
  end
  object lblAvgNoteListInfo: TLabel
    Left = 376
    Top = 120
    Width = 69
    Height = 13
    Caption = 'Avarage Note:'
  end
  object btnCreate: TButton
    Left = 360
    Top = 16
    Width = 161
    Height = 65
    Caption = '&Create'
    TabOrder = 0
    OnClick = btnCreateClick
  end
  object edtStudentName: TEdit
    Left = 136
    Top = 16
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object edtMathNote: TEdit
    Left = 136
    Top = 40
    Width = 201
    Height = 21
    TabOrder = 2
  end
  object edtProgNote: TEdit
    Left = 136
    Top = 64
    Width = 201
    Height = 21
    TabOrder = 3
  end
  object lstStudents: TListBox
    Left = 80
    Top = 144
    Width = 249
    Height = 281
    ItemHeight = 13
    TabOrder = 4
  end
  object lstAvgNotes: TListBox
    Left = 368
    Top = 144
    Width = 225
    Height = 281
    ItemHeight = 13
    TabOrder = 5
  end
end
