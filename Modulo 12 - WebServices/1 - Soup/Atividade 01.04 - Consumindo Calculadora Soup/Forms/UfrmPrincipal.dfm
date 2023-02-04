object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumindo Calculadora Soup'
  ClientHeight = 150
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    300
    150)
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 72
    Top = 112
    Width = 145
    Height = 13
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Resultado:'
  end
  object edtValor1: TEdit
    Left = 17
    Top = 25
    Width = 120
    Height = 21
    Anchors = [akTop]
    TabOrder = 0
    TextHint = 'Digite um N'#250'mero...'
  end
  object edtValor2: TEdit
    Left = 153
    Top = 25
    Width = 120
    Height = 21
    Anchors = [akTop]
    TabOrder = 1
    TextHint = 'Digite um N'#250'mero...'
  end
  object cmbOperacao: TComboBox
    Left = 17
    Top = 72
    Width = 120
    Height = 21
    Anchors = [akTop]
    TabOrder = 2
    TextHint = 'Selecione uma opera'#231#227'o...'
    OnChange = cmbOperacaoChange
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object btnCalcular: TButton
    Left = 153
    Top = 70
    Width = 120
    Height = 25
    Anchors = [akTop]
    Caption = 'Calcular!'
    Enabled = False
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
