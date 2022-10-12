object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Conta Corrente'
  ClientHeight = 281
  ClientWidth = 418
  Color = 16113399
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 59
    Top = 85
    Width = 41
    Height = 13
    Color = 16245495
    ParentColor = False
  end
  object lblSaldo: TLabel
    Left = 320
    Top = 85
    Width = 37
    Height = 13
    Color = 16179447
    ParentColor = False
  end
  object lblNumConta: TLabel
    Left = 173
    Top = 85
    Width = 31
    Height = 13
    Color = 16179447
    ParentColor = False
  end
  object lblTipoConta: TLabel
    Left = 50
    Top = 104
    Width = 75
    Height = 13
    Color = 16179447
    ParentColor = False
  end
  object btnCriarConta: TButton
    Left = 50
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Criar Conta'
    TabOrder = 0
    OnClick = btnCriarContaClick
  end
  object btnSacar: TButton
    Left = 161
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Sacar'
    Enabled = False
    TabOrder = 1
    Visible = False
    OnClick = btnSacarClick
  end
  object btnDepositar: TButton
    Left = 282
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Depositar'
    Enabled = False
    TabOrder = 2
    Visible = False
    OnClick = btnDepositarClick
  end
  object mmHistorico: TMemo
    Left = 50
    Top = 134
    Width = 307
    Height = 139
    Alignment = taCenter
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    object Iniciar1: TMenuItem
      Caption = 'Iniciar'
    end
    object Aes1: TMenuItem
      Caption = 'A'#231#245'es'
      object Sacar1: TMenuItem
        Caption = 'Sacar'
      end
      object Depositar1: TMenuItem
        Caption = 'Depositar'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
