object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'OOP'
  ClientHeight = 100
  ClientWidth = 200
  Color = 15853566
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblAnimal: TLabel
    Left = 25
    Top = 10
    Width = 50
    Height = 19
    Caption = 'Animal'
    Color = 15919102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object btnSom: TButton
    Left = 25
    Top = 60
    Width = 150
    Height = 25
    Caption = 'Que som eu fa'#231'o?'
    TabOrder = 0
    OnClick = btnSomClick
  end
  object cmbAnimal: TComboBox
    Left = 25
    Top = 33
    Width = 150
    Height = 21
    TabOrder = 1
    TextHint = 'Selecione o Animal...'
    Items.Strings = (
      'Cachorro'
      'Gato'
      'P'#225'ssaro')
  end
end
