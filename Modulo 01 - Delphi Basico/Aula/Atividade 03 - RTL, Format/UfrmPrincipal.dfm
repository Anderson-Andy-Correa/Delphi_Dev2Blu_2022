object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Usando a RTL e Tipo de Dados'
  ClientHeight = 261
  ClientWidth = 384
  Color = 16448707
  Constraints.MaxHeight = 300
  Constraints.MaxWidth = 400
  Constraints.MinHeight = 300
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 30
    Top = 25
    Width = 327
    Height = 25
    Alignment = taCenter
    Caption = 'Usando a RTL e Tipos de Dados'
    Color = 16514243
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblValorString: TLabel
    Left = 155
    Top = 78
    Width = 68
    Height = 16
    Caption = 'Valor String'
    Color = 16514243
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object lblResultado: TLabel
    AlignWithMargins = True
    Left = 10
    Top = 212
    Width = 364
    Height = 39
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    Alignment = taCenter
    Caption = 'Resultado'
    Color = 16514243
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    ExplicitLeft = 0
    ExplicitTop = 222
    ExplicitWidth = 384
  end
  object edtValor: TEdit
    Left = 75
    Top = 100
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object btnInteiro: TButton
    Left = 80
    Top = 150
    Width = 100
    Height = 30
    Align = alCustom
    Caption = 'Inteiro'
    TabOrder = 1
    OnClick = btnInteiroClick
  end
  object btnPontoFlutuante: TButton
    Left = 190
    Top = 150
    Width = 100
    Height = 30
    Align = alCustom
    Caption = 'Ponto Flutuante'
    TabOrder = 2
    OnClick = btnPontoFlutuanteClick
  end
  object btnDataExtenso: TButton
    Left = 190
    Top = 186
    Width = 100
    Height = 30
    Align = alCustom
    Caption = 'Data (Extenso)'
    TabOrder = 3
    OnClick = btnDataExtensoClick
  end
  object bntData: TButton
    Left = 80
    Top = 186
    Width = 100
    Height = 30
    Align = alCustom
    Caption = 'Data'
    TabOrder = 4
    OnClick = bntDataClick
  end
end
