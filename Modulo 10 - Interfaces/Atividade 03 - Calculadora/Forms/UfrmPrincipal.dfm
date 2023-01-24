object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Interface de Calculadora'
  ClientHeight = 189
  ClientWidth = 166
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 22
    Top = 152
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtNum1: TEdit
    Left = 22
    Top = 18
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Digite um n'#250'mero...'
  end
  object edtNum2: TEdit
    Left = 22
    Top = 66
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Digite um n'#250'mero...'
  end
  object cmbOperacao: TComboBox
    Left = 22
    Top = 114
    Width = 121
    Height = 21
    TabOrder = 2
    OnChange = cmbOperacaoChange
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
end
