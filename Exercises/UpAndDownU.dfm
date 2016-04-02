object frmAttendance: TfrmAttendance
  Left = 206
  Top = 225
  Width = 928
  Height = 480
  Caption = 'Museum Attendance'
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
  object sedEnter: TSpinEdit
    Left = 32
    Top = 112
    Width = 129
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object sedLeave: TSpinEdit
    Left = 184
    Top = 112
    Width = 137
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object gpbVisitors: TGroupBox
    Left = 128
    Top = 16
    Width = 89
    Height = 81
    Caption = 'Visitors'
    TabOrder = 2
    object lblVisitors: TLabel
      Left = 24
      Top = 32
      Width = 3
      Height = 13
    end
  end
  object btnEnter: TButton
    Left = 32
    Top = 160
    Width = 121
    Height = 41
    Caption = '&Enter'
    TabOrder = 3
    OnClick = btnEnterClick
  end
  object btnLeave: TButton
    Left = 192
    Top = 160
    Width = 129
    Height = 41
    Caption = '&Leave'
    TabOrder = 4
    OnClick = btnLeaveClick
  end
  object gpbIn: TGroupBox
    Left = 32
    Top = 16
    Width = 65
    Height = 73
    Caption = 'In'
    TabOrder = 5
    object lblIn: TLabel
      Left = 16
      Top = 32
      Width = 3
      Height = 13
    end
  end
  object gpbOut: TGroupBox
    Left = 256
    Top = 16
    Width = 81
    Height = 81
    Caption = 'Out'
    TabOrder = 6
    object lblOut: TLabel
      Left = 16
      Top = 32
      Width = 3
      Height = 13
    end
  end
end
