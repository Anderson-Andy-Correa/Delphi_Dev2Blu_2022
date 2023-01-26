object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sem Abstract Factory'
  ClientHeight = 300
  ClientWidth = 200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cmbMarca: TComboBox
    Left = 25
    Top = 21
    Width = 150
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Dell'
      'Apple')
  end
  object btnExibir: TButton
    Left = 25
    Top = 56
    Width = 150
    Height = 25
    Caption = 'Exibir'
    TabOrder = 1
    OnClick = btnExibirClick
  end
  object gbDadosNotebook: TGroupBox
    Left = 25
    Top = 103
    Width = 150
    Height = 74
    Caption = 'Dados do Notebook'
    TabOrder = 2
    object lblTamonhoTela: TLabel
      Left = 16
      Top = 24
      Width = 74
      Height = 13
      Caption = 'lblTamonhoTela'
    end
    object lblMemoriaRam: TLabel
      Left = 16
      Top = 43
      Width = 74
      Height = 13
      Caption = 'lblTamonhoTela'
    end
  end
  object gbDadosDesktop: TGroupBox
    Left = 25
    Top = 191
    Width = 150
    Height = 74
    Caption = 'Dados do Desktop'
    TabOrder = 3
    object lblProcessador: TLabel
      Left = 16
      Top = 24
      Width = 69
      Height = 13
      Caption = 'lblProcessador'
    end
    object lblTamanhoHD: TLabel
      Left = 16
      Top = 43
      Width = 68
      Height = 13
      Caption = 'lblTamanhoHD'
    end
  end
end
