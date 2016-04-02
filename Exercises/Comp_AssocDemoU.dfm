object frmCompAssoc: TfrmCompAssoc
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Composition - Association'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gpbCustomerDetails: TGroupBox
    Left = 32
    Top = 32
    Width = 193
    Height = 185
    Caption = 'Customer Details'
    TabOrder = 0
    object gpbName: TGroupBox
      Left = 24
      Top = 24
      Width = 137
      Height = 41
      Caption = 'Name'
      TabOrder = 0
      object edtName: TEdit
        Left = 16
        Top = 16
        Width = 105
        Height = 21
        TabOrder = 0
      end
    end
    object gpbPhone: TGroupBox
      Left = 24
      Top = 80
      Width = 137
      Height = 41
      Caption = 'Phone'
      TabOrder = 1
      object edtPhone: TEdit
        Left = 16
        Top = 16
        Width = 105
        Height = 21
        TabOrder = 0
      end
    end
    object btnCustomer: TButton
      Left = 24
      Top = 136
      Width = 137
      Height = 33
      Caption = '&Customer'
      TabOrder = 2
      OnClick = btnCustomerClick
    end
  end
  object gpbSaleDetails: TGroupBox
    Left = 264
    Top = 32
    Width = 193
    Height = 185
    Caption = 'Sale Details'
    TabOrder = 1
    object gpbAmount: TGroupBox
      Left = 24
      Top = 32
      Width = 145
      Height = 49
      Caption = 'Amount'
      TabOrder = 0
      object edtAmount: TEdit
        Left = 16
        Top = 16
        Width = 113
        Height = 21
        TabOrder = 0
      end
    end
    object btnCreateSale: TButton
      Left = 24
      Top = 128
      Width = 145
      Height = 41
      Caption = 'Create Sale'
      TabOrder = 1
      OnClick = btnCreateSaleClick
    end
  end
  object gbpDisplaySale: TGroupBox
    Left = 264
    Top = 256
    Width = 193
    Height = 105
    Caption = 'Display Sale'
    TabOrder = 2
    object lblName: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Name: '
    end
    object lblPhone: TLabel
      Left = 16
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Phone: '
    end
    object lblAmount: TLabel
      Left = 16
      Top = 80
      Width = 42
      Height = 13
      Caption = 'Amount: '
    end
  end
  object btnDisplaySale: TButton
    Left = 48
    Top = 288
    Width = 161
    Height = 41
    Caption = 'Display Sale'
    TabOrder = 3
    OnClick = btnDisplaySaleClick
  end
end
