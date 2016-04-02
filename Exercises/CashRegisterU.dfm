object frmCashRegister: TfrmCashRegister
  Left = 203
  Top = 161
  Width = 928
  Height = 480
  Caption = 'Cash Register'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gpbWeightKg: TGroupBox
    Left = 32
    Top = 32
    Width = 185
    Height = 89
    Caption = 'Weight in Kg'
    TabOrder = 0
    object edtWeightKg: TEdit
      Left = 24
      Top = 40
      Width = 129
      Height = 21
      TabOrder = 0
    end
  end
  object gpbTotalPrice: TGroupBox
    Left = 32
    Top = 152
    Width = 185
    Height = 89
    Caption = 'Total Price'
    TabOrder = 1
    object lblTotalPrice: TLabel
      Left = 32
      Top = 40
      Width = 3
      Height = 13
    end
  end
  object btnCalculate: TButton
    Left = 264
    Top = 56
    Width = 153
    Height = 49
    Caption = '&Calculate'
    TabOrder = 2
    OnClick = btnCalculateClick
  end
  object bmbResset: TBitBtn
    Left = 264
    Top = 168
    Width = 153
    Height = 49
    Caption = 'Resset'
    TabOrder = 3
    OnClick = bmbRessetClick
  end
end
