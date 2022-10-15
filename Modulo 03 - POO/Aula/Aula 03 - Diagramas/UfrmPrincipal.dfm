object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Validador de CPF e CNPJ'
  ClientHeight = 220
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblCPF: TLabel
    Left = 20
    Top = 18
    Width = 27
    Height = 16
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblCPFResp: TLabel
    Left = 140
    Top = 40
    Width = 78
    Height = 16
    Caption = 'CPF Resposta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblCNPJ: TLabel
    Left = 20
    Top = 120
    Width = 33
    Height = 16
    Caption = 'CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblCNPJResp: TLabel
    Left = 140
    Top = 141
    Width = 84
    Height = 16
    Caption = 'CNPJ Resposta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object btnCPF: TButton
    Left = 20
    Top = 70
    Width = 100
    Height = 25
    Caption = 'Validar CPF'
    TabOrder = 0
    OnClick = btnCPFClick
  end
  object edtCPF: TEdit
    Left = 20
    Top = 40
    Width = 100
    Height = 20
    TabOrder = 1
    TextHint = 'Insira um CPF...'
  end
  object btnCNPJ: TButton
    Left = 20
    Top = 170
    Width = 100
    Height = 25
    Caption = 'Validar CPF'
    TabOrder = 2
    OnClick = btnCNPJClick
  end
  object edtCNPJ: TEdit
    Left = 20
    Top = 140
    Width = 100
    Height = 20
    TabOrder = 3
    TextHint = 'Insira um CNPJ...'
  end
end
