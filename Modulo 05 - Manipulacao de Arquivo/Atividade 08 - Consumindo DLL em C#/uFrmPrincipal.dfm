object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 176
  ClientWidth = 418
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
    Left = 40
    Top = 32
    Width = 46
    Height = 13
    Caption = 'Numero 1'
  end
  object Label2: TLabel
    Left = 224
    Top = 32
    Width = 46
    Height = 13
    Caption = 'Numero 2'
  end
  object lblResultado: TLabel
    Left = 272
    Top = 128
    Width = 58
    Height = 13
    Caption = 'lblResultado'
  end
  object edtNumero1: TEdit
    Left = 40
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 224
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 152
    Top = 88
    Width = 75
    Height = 25
    Caption = 'btnCalcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
