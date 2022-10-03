object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 273
  ClientWidth = 282
  Color = 14932118
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbAnimal: TLabel
    Left = 43
    Top = 25
    Width = 188
    Height = 23
    Caption = 'Que animal sou eu?'
    Color = 10724553
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object mmHistorico: TMemo
    Left = 43
    Top = 144
    Width = 188
    Height = 89
    Color = 11382494
    TabOrder = 0
  end
  object btProcessar: TButton
    Left = 43
    Top = 104
    Width = 188
    Height = 25
    Caption = 'Processar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btProcessarClick
  end
  object cmbAnimal: TComboBox
    Left = 43
    Top = 64
    Width = 188
    Height = 21
    Color = 11382233
    TabOrder = 2
    Items.Strings = (
      'Cachorro'
      'P'#225'ssaro'
      'Gato'
      'Peixe')
  end
  object btLimpar: TButton
    Left = 104
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Limpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btLimparClick
  end
end
