object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Comandos Condicionais - IF e Case'
  ClientHeight = 200
  ClientWidth = 418
  Color = 13816572
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblIfCase: TLabel
    Left = 40
    Top = 27
    Width = 336
    Height = 23
    Caption = 'Comandos Condicionais - IF e Case'
    Color = 13816828
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object btnIf: TButton
    Left = 40
    Top = 128
    Width = 75
    Height = 25
    Caption = 'IF'
    TabOrder = 0
    OnClick = btnIfClick
  end
  object btnCase: TButton
    Left = 128
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Case'
    TabOrder = 1
    OnClick = btnCaseClick
  end
  object edtText: TEdit
    Left = 40
    Top = 88
    Width = 163
    Height = 21
    Color = 15791811
    TabOrder = 2
  end
  object rdgNivel: TRadioGroup
    Left = 224
    Top = 72
    Width = 160
    Height = 105
    Caption = 'N'#237'vel'
    Color = 15857349
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Estagi'#225'rio'
      'Junior'
      'Pleno'
      'S'#234'nior')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
end
