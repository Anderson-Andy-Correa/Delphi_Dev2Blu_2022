object frmActorsLastName: TfrmActorsLastName
  Left = 0
  Top = 0
  Caption = 'Ercercise 01 - Actor'#39's Last Name'
  ClientHeight = 150
  ClientWidth = 400
  Color = 16315612
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grbFiltro: TGroupBox
    Left = 8
    Top = 8
    Width = 380
    Height = 125
    Caption = 'Filtro'
    Color = 16315100
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object lblActorLastName: TLabel
      Left = 16
      Top = 21
      Width = 86
      Height = 13
      Caption = 'Actor'#39's Last Name'
      Color = 16315356
      ParentColor = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 40
      Width = 233
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 273
      Top = 40
      Width = 89
      Height = 21
      Caption = 'Button1'
      TabOrder = 1
    end
  end
  object Button2: TButton
    Left = 281
    Top = 88
    Width = 89
    Height = 21
    Caption = 'Button1'
    TabOrder = 1
  end
end
