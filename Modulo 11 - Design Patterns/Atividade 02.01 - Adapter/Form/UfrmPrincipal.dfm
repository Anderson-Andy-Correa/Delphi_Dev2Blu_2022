object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Adapter'
  ClientHeight = 200
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCEP: TLabel
    Left = 24
    Top = 16
    Width = 26
    Height = 13
    Caption = 'CEP: '
  end
  object lblLogradouro: TLabel
    Left = 24
    Top = 100
    Width = 89
    Height = 16
    Caption = 'lblLogradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblBairro: TLabel
    Left = 24
    Top = 122
    Width = 53
    Height = 16
    Caption = 'lblBairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCidade: TLabel
    Left = 24
    Top = 144
    Width = 57
    Height = 16
    Caption = 'lblCidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnConsultarViaCep: TButton
    Left = 168
    Top = 33
    Width = 115
    Height = 25
    Caption = 'Consultar ViaCep'
    TabOrder = 0
    OnClick = btnConsultarViaCepClick
  end
  object btnConsultarCorreios: TButton
    Left = 168
    Top = 64
    Width = 115
    Height = 25
    Caption = 'Consultar Correios'
    TabOrder = 1
    OnClick = btnConsultarCorreiosClick
  end
  object edtCEP: TEdit
    Left = 24
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
