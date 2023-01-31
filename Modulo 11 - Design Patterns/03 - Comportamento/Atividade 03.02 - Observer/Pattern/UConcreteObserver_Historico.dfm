object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 350
  Height = 200
  TabOrder = 0
  object lblDebitos: TLabel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 340
    Height = 16
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Alignment = taCenter
    Caption = 'D'#233'bitos agrupados por categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 214
  end
  object dbgDebitos: TDBGrid
    AlignWithMargins = True
    Left = 5
    Top = 26
    Width = 340
    Height = 169
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    DataSource = dtsDebitos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Categoria'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object cdsDebitos: TClientDataSet
    PersistDataPacket.Data = {
      5A0000009619E0BD0100000018000000020000000000030000005A0009436174
      65676F726961010049000000010005574944544802000200640005546F74616C
      080004000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 128
    object cdsDebitosCategoria: TStringField
      FieldName = 'Categoria'
      Size = 100
    end
    object cdsDebitosTotal: TCurrencyField
      FieldName = 'Total'
    end
  end
  object dtsDebitos: TDataSource
    DataSet = cdsDebitos
    Left = 96
    Top = 128
  end
end
