object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Maior e Menor'
  ClientHeight = 280
  ClientWidth = 690
  Color = 15200982
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 690
    Height = 27
    Margins.Top = 50
    Align = alTop
    Alignment = taCenter
    Caption = 'Testador Num'#233'rico'
    Color = 15266520
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 186
  end
  object lblPositivo: TLabel
    Left = 20
    Top = 131
    Width = 37
    Height = 13
    Caption = 'Positivo'
    Color = 15332313
    ParentColor = False
  end
  object lblMaior801: TLabel
    Left = 130
    Top = 131
    Width = 62
    Height = 13
    Caption = 'Maior que 80'
    Color = 15332313
    ParentColor = False
  end
  object lbl40: TLabel
    Left = 240
    Top = 131
    Width = 73
    Height = 13
    Caption = 'Exatamente 40'
    Color = 15332313
    ParentColor = False
  end
  object lblMenor25: TLabel
    Left = 350
    Top = 131
    Width = 66
    Height = 13
    Caption = 'Menor que 25'
    Color = 15397849
    ParentColor = False
  end
  object lblZero: TLabel
    Left = 460
    Top = 131
    Width = 22
    Height = 13
    Caption = 'Zero'
    Color = 15397849
    ParentColor = False
  end
  object lblNegativo: TLabel
    Left = 570
    Top = 131
    Width = 43
    Height = 13
    Caption = 'Negativo'
    Color = 15332313
    ParentColor = False
  end
  object lblNegativoTotal: TLabel
    Left = 570
    Top = 255
    Width = 37
    Height = 13
    Caption = 'Total: 0'
    Color = 15397849
    ParentColor = False
  end
  object lblZeroTotal: TLabel
    Left = 460
    Top = 255
    Width = 37
    Height = 13
    Caption = 'Total: 0'
    Color = 15397849
    ParentColor = False
  end
  object lblMenor25Total: TLabel
    Left = 350
    Top = 255
    Width = 37
    Height = 13
    Caption = 'Total: 0'
    Color = 15397849
    ParentColor = False
  end
  object lbl40Total: TLabel
    Left = 240
    Top = 255
    Width = 37
    Height = 13
    Caption = 'Total: 0'
    Color = 15397849
    ParentColor = False
  end
  object lblMaior80Total: TLabel
    Left = 130
    Top = 255
    Width = 37
    Height = 13
    Caption = 'Total: 0'
    Color = 15397849
    ParentColor = False
  end
  object lblPositivoTotal: TLabel
    Left = 20
    Top = 255
    Width = 37
    Height = 13
    Caption = 'Total: 0'
    Color = 15397849
    ParentColor = False
  end
  object mmPositivo: TMemo
    Left = 20
    Top = 150
    Width = 100
    Height = 100
    Alignment = taCenter
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object mmMaior80: TMemo
    Left = 130
    Top = 150
    Width = 100
    Height = 100
    Alignment = taCenter
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object mm40: TMemo
    Left = 240
    Top = 150
    Width = 100
    Height = 100
    Alignment = taCenter
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object mmMenor25: TMemo
    Left = 350
    Top = 150
    Width = 100
    Height = 100
    Alignment = taCenter
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object mmZero: TMemo
    Left = 460
    Top = 150
    Width = 100
    Height = 100
    Alignment = taCenter
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object edtDigito: TEdit
    Left = 295
    Top = 40
    Width = 100
    Height = 21
    TabOrder = 5
    TextHint = 'Digite um n'#250'mero...'
  end
  object btnTestar: TButton
    Left = 295
    Top = 70
    Width = 100
    Height = 25
    Caption = 'Testar'
    TabOrder = 6
    OnClick = btnTestarClick
  end
  object mmNegativo: TMemo
    Left = 570
    Top = 150
    Width = 100
    Height = 100
    Alignment = taCenter
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 7
  end
end
