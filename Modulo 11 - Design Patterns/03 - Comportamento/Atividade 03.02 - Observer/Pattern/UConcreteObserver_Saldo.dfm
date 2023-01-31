object fraSaldo: TfraSaldo
  Left = 0
  Top = 0
  Width = 320
  Height = 150
  TabOrder = 0
  DesignSize = (
    320
    150)
  object lblBalanço: TLabel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 310
    Height = 16
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Alignment = taCenter
    Caption = 'Balan'#231'o Financeiro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 119
  end
  object lblCreditos: TLabel
    Left = 25
    Top = 50
    Width = 63
    Height = 16
    Caption = 'Cr'#233'ditos :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDebitos: TLabel
    Left = 25
    Top = 75
    Width = 62
    Height = 16
    Caption = 'D'#233'bitos : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSaldos: TLabel
    Left = 25
    Top = 100
    Width = 51
    Height = 16
    Caption = 'Saldos :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblValorCredito: TLabel
    Left = 250
    Top = 50
    Width = 28
    Height = 16
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblValorDebito: TLabel
    Left = 250
    Top = 75
    Width = 28
    Height = 16
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblValorSaldo: TLabel
    Left = 250
    Top = 100
    Width = 28
    Height = 16
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
end
