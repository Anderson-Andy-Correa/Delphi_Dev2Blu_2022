object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'N'#250'meros entre 10 e 150'
  ClientHeight = 300
  ClientWidth = 275
  Color = 13888238
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblMaiorIdade: TLabel
    Left = 20
    Top = 161
    Width = 72
    Height = 13
    Caption = 'Maior de Idade'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblMenorIdade: TLabel
    Left = 145
    Top = 161
    Width = 76
    Height = 13
    Caption = 'Menor de Idade'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblHistorico: TLabel
    Left = 145
    Top = 20
    Width = 89
    Height = 13
    Caption = 'Hist'#243'rico Completo'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblTotalHistorico: TLabel
    Left = 145
    Top = 132
    Width = 26
    Height = 13
    Caption = 'Tota:'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblTotalMaiorIdade: TLabel
    Left = 20
    Top = 275
    Width = 26
    Height = 13
    Caption = 'Tota:'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblTotalMenorIdade: TLabel
    Left = 145
    Top = 275
    Width = 26
    Height = 13
    Caption = 'Tota:'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object btnCadastrar: TButton
    Left = 20
    Top = 62
    Width = 97
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = btnCadastrarClick
  end
  object mmMaiorIdade: TMemo
    Left = 20
    Top = 180
    Width = 100
    Height = 89
    Alignment = taCenter
    Color = 16243179
    ScrollBars = ssBoth
    TabOrder = 1
    Visible = False
  end
  object mmMenorIdade: TMemo
    Left = 145
    Top = 180
    Width = 100
    Height = 89
    Alignment = taCenter
    Color = 16243179
    ScrollBars = ssBoth
    TabOrder = 2
    Visible = False
  end
  object mmHistorico: TMemo
    Left = 145
    Top = 36
    Width = 100
    Height = 89
    Alignment = taCenter
    Color = 16243179
    ScrollBars = ssBoth
    TabOrder = 3
    Visible = False
  end
end
