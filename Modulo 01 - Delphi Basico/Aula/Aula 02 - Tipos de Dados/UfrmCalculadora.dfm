object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 126
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 18
    Width = 306
    Height = 24
    Caption = 'CALCULADORA +DEVS2BLU - DELPHI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sitka Small'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 258
    Top = 55
    Width = 9
    Height = 17
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Wide Latin'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmbOperador: TComboBox
    Left = 106
    Top = 56
    Width = 65
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir'
      'Resto'
      'Divis'#227'o Inteira')
  end
  object edtNumerador: TEdit
    Left = 25
    Top = 56
    Width = 75
    Height = 21
    Alignment = taCenter
    TabOrder = 1
  end
  object edtDenominador: TEdit
    Left = 177
    Top = 56
    Width = 75
    Height = 21
    Alignment = taCenter
    TabOrder = 2
  end
  object edtResultado: TEdit
    Left = 273
    Top = 56
    Width = 75
    Height = 21
    Alignment = taCenter
    TabOrder = 3
  end
  object Button1: TButton
    Left = 144
    Top = 93
    Width = 99
    Height = 25
    Caption = 'CALCULAR'
    TabOrder = 4
    OnClick = Button1Click
  end
end
