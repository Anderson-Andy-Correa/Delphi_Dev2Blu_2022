object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Di'#225'rio de Classe'
  ClientHeight = 400
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    AlignWithMargins = True
    Left = 0
    Top = 15
    Width = 500
    Height = 16
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 16
  end
  object lblCodigo: TLabel
    AlignWithMargins = True
    Left = 15
    Top = 68
    Width = 116
    Height = 16
    Margins.Left = 50
    Margins.Top = 15
    Margins.Right = 50
    Margins.Bottom = 0
    Alignment = taCenter
    AutoSize = False
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDataNascimento: TLabel
    AlignWithMargins = True
    Left = 145
    Top = 68
    Width = 126
    Height = 16
    Margins.Left = 50
    Margins.Top = 15
    Margins.Right = 50
    Margins.Bottom = 0
    Alignment = taCenter
    AutoSize = False
    Caption = 'Data de Nascimento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object mmDiario: TMemo
    AlignWithMargins = True
    Left = 15
    Top = 120
    Width = 470
    Height = 265
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object edtNome: TEdit
    AlignWithMargins = True
    Left = 100
    Top = 36
    Width = 300
    Height = 21
    Margins.Left = 100
    Margins.Top = 5
    Margins.Right = 100
    Margins.Bottom = 10
    Align = alTop
    Alignment = taCenter
    TabOrder = 1
  end
  object btnLerPessoas: TButton
    Left = 391
    Top = 67
    Width = 80
    Height = 43
    Margins.Left = 200
    Margins.Top = 0
    Margins.Right = 200
    Margins.Bottom = 0
    Align = alCustom
    Caption = 'Ler Pessoas'
    TabOrder = 2
    OnClick = btnLerPessoasClick
  end
  object edtCodigo: TEdit
    AlignWithMargins = True
    Left = 15
    Top = 89
    Width = 116
    Height = 21
    Margins.Left = 100
    Margins.Top = 5
    Margins.Right = 100
    Margins.Bottom = 10
    Alignment = taCenter
    TabOrder = 3
  end
  object btnCadastrarPessoa: TButton
    Left = 290
    Top = 67
    Width = 81
    Height = 43
    Margins.Left = 200
    Margins.Top = 0
    Margins.Right = 200
    Margins.Bottom = 0
    Caption = 'Cadastrar Pessoa'
    TabOrder = 4
    WordWrap = True
    OnClick = btnCadastrarPessoaClick
  end
  object dtpNascimento: TDateTimePicker
    Left = 145
    Top = 89
    Width = 126
    Height = 21
    Date = 44901.000000000000000000
    Time = 0.894842395835439700
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
end
