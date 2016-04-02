object Form1: TForm1
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 464
    Top = 32
    Width = 5
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 464
    Top = 80
    Width = 56
    Height = 24
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 80
    Top = 40
    Width = 257
    Height = 49
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
    OnMouseMove = Button1MouseMove
  end
  object Button2: TButton
    Left = 24
    Top = 368
    Width = 201
    Height = 49
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 808
    Top = 8
    Width = 97
    Height = 33
    Caption = 'Button3'
    TabOrder = 2
    OnClick = Button3Click
  end
end
