object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Consumindo DLL do Delphi'
  ClientHeight = 210
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTexto: TLabel
    Left = 20
    Top = 20
    Width = 79
    Height = 13
    Caption = 'Digite um Texto:'
  end
  object Label2: TLabel
    Left = 280
    Top = 210
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object lblNumero: TLabel
    Left = 20
    Top = 121
    Width = 97
    Height = 13
    Caption = 'Escolha um N'#250'mero:'
  end
  object lblResultado: TLabel
    Left = 165
    Top = 121
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object edtTexto: TEdit
    Left = 20
    Top = 39
    Width = 270
    Height = 21
    TabOrder = 0
  end
  object edtNumero: TSpinEdit
    Left = 20
    Top = 140
    Width = 125
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object btnMaiusculas: TButton
    Left = 20
    Top = 66
    Width = 125
    Height = 25
    Caption = 'Mai'#250'sculas'
    TabOrder = 2
    OnClick = btnMaiusculasClick
  end
  object btnConverter: TButton
    Left = 105
    Top = 175
    Width = 100
    Height = 25
    Caption = 'Converter'
    TabOrder = 3
    OnClick = btnConverterClick
  end
  object btnMinusculas: TButton
    Left = 165
    Top = 66
    Width = 125
    Height = 25
    Caption = 'Min'#250'sculas'
    TabOrder = 4
    OnClick = btnMinusculasClick
  end
  object edtTextoConvertido: TEdit
    Left = 165
    Top = 140
    Width = 125
    Height = 21
    TabOrder = 5
  end
end
