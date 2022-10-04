object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Contador de Luz'
  ClientHeight = 200
  ClientWidth = 400
  Color = 13682618
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 20
    Width = 394
    Height = 19
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Calculadora de Conta de Luz Simples'
    Color = 13682874
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ExplicitLeft = 0
    ExplicitWidth = 401
  end
  object btnProcessar: TButton
    Left = 250
    Top = 120
    Width = 120
    Height = 25
    Caption = 'Processar'
    TabOrder = 0
    OnClick = btnProcessarClick
  end
  object rdgTipo: TRadioGroup
    Left = 40
    Top = 60
    Width = 185
    Height = 105
    Caption = 'Tipo de Cliente'
    Color = 13682874
    Items.Strings = (
      'Recid'#234'ncia'
      'Com'#233'rcio'
      'Ind'#250'stria')
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
  end
  object edtValor: TEdit
    Left = 250
    Top = 80
    Width = 120
    Height = 20
    Hint = 'Digite o valor do Quilowatt/hora'
    Alignment = taCenter
    TabOrder = 2
    TextHint = 'Digite o valor (KW/h)'
  end
end
