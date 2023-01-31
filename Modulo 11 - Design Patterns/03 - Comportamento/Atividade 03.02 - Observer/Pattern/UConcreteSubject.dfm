object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 350
  Height = 240
  TabOrder = 0
  object lblOperacao: TLabel
    Left = 20
    Top = 22
    Width = 60
    Height = 16
    Alignment = taRightJustify
    Caption = 'Opera'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblCategoria: TLabel
    Left = 20
    Top = 47
    Width = 60
    Height = 16
    Alignment = taRightJustify
    Caption = 'Categoria:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblValor: TLabel
    Left = 45
    Top = 72
    Width = 35
    Height = 16
    Alignment = taRightJustify
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object shpGravar: TShape
    Left = 230
    Top = 22
    Width = 3
    Height = 70
  end
  object cmbOperacao: TComboBox
    Left = 90
    Top = 21
    Width = 120
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
  end
  object cmbCategoria: TComboBox
    Left = 90
    Top = 46
    Width = 120
    Height = 21
    TabOrder = 1
  end
  object edtValor: TEdit
    Left = 90
    Top = 71
    Width = 120
    Height = 21
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 260
    Top = 19
    Width = 75
    Height = 73
    Caption = 'Gravar'
    TabOrder = 3
  end
  object dbgGravar: TDBGrid
    Left = 15
    Top = 98
    Width = 320
    Height = 127
    DataSource = dtsGravar
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Opera'#231#227'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Categoria'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end>
  end
  object cdtGravar: TClientDataSet
    PersistDataPacket.Data = {
      790000009619E0BD01000000180000000300000000000300000079000A4F7065
      7261C3A7C3A36F01004900000001000557494454480200020064000943617465
      676F72696101004900000001000557494454480200020064000556616C6F7208
      0004000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 168
    object cdtGravarOperação: TStringField
      FieldName = 'Opera'#231#227'o'
      Size = 100
    end
    object cdtGravarCategoria: TStringField
      FieldName = 'Categoria'
      Size = 100
    end
    object cdtGravarValor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object dtsGravar: TDataSource
    DataSet = cdtGravar
    Left = 128
    Top = 168
  end
end
