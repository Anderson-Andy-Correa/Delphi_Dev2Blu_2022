object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Pre'#231'o e Custo'
  ClientHeight = 300
  ClientWidth = 275
  Color = 14019308
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblPreju: TLabel
    Left = 20
    Top = 161
    Width = 25
    Height = 13
    Caption = 'Preju'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblEmpate: TLabel
    Left = 145
    Top = 161
    Width = 36
    Height = 13
    Caption = 'Empate'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblLucro: TLabel
    Left = 145
    Top = 20
    Width = 26
    Height = 13
    Caption = 'Lucro'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblTotalLucro: TLabel
    Left = 145
    Top = 132
    Width = 26
    Height = 13
    Caption = 'Tota:'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblTotalpreju: TLabel
    Left = 20
    Top = 275
    Width = 26
    Height = 13
    Caption = 'Tota:'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblTotalEmpate: TLabel
    Left = 145
    Top = 275
    Width = 26
    Height = 13
    Caption = 'Tota:'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblMedioCusto: TLabel
    Left = 20
    Top = 65
    Width = 104
    Height = 13
    Caption = 'Pre'#231'o Medio de Custo'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblValorMedioCusto: TLabel
    Left = 20
    Top = 84
    Width = 13
    Height = 13
    Caption = 'R$'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblValorMedioVenda: TLabel
    Left = 20
    Top = 126
    Width = 13
    Height = 13
    Caption = 'R$'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object lblMedioVenda: TLabel
    Left = 20
    Top = 107
    Width = 106
    Height = 13
    Caption = 'Pre'#231'o Medio de Venda'
    Color = 14084843
    ParentColor = False
    Visible = False
  end
  object btnCadastrar: TButton
    Left = 20
    Top = 15
    Width = 97
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = btnCadastrarClick
  end
  object mmPreju: TMemo
    Left = 20
    Top = 180
    Width = 100
    Height = 89
    Alignment = taCenter
    Color = 16243179
    ScrollBars = ssVertical
    TabOrder = 1
    Visible = False
  end
  object mmEmpate: TMemo
    Left = 145
    Top = 180
    Width = 100
    Height = 89
    Alignment = taCenter
    Color = 16243179
    ScrollBars = ssVertical
    TabOrder = 2
    Visible = False
  end
  object mmLucro: TMemo
    Left = 145
    Top = 36
    Width = 100
    Height = 89
    Alignment = taCenter
    Color = 16243179
    ScrollBars = ssVertical
    TabOrder = 3
    Visible = False
  end
end
