object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 250
  ClientWidth = 175
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNum1: TLabel
    Left = 24
    Top = 13
    Width = 56
    Height = 13
    Caption = 'N'#250'mero 01:'
  end
  object lblOperacao: TLabel
    Left = 24
    Top = 123
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object lblNum2: TLabel
    Left = 24
    Top = 69
    Width = 56
    Height = 13
    Caption = 'N'#250'mero 02:'
  end
  object lblResultado: TLabel
    Left = 24
    Top = 212
    Width = 65
    Height = 16
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNum2: TEdit
    Left = 24
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 24
    Top = 169
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object edtNum1: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object cmbOperacao: TComboBox
    Left = 24
    Top = 142
    Width = 121
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
end
