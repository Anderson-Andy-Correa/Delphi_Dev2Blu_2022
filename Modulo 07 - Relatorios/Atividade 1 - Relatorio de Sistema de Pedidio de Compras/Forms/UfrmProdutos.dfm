object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 300
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 55
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 90
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 260
    Top = 55
    Width = 91
    Height = 13
    Caption = 'Unidade de Medida'
  end
  object DBNavigator: TDBNavigator
    Left = 20
    Top = 20
    Width = 240
    Height = 25
    DataSource = DataSource
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 20
    Top = 120
    Width = 390
    Height = 155
    DataSource = DataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idUnidadeMedida'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade Medida'
        Width = 80
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 20
    Top = 75
    Width = 50
    Height = 21
    DataField = 'Id'
    DataSource = DataSource
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 90
    Top = 75
    Width = 150
    Height = 21
    DataField = 'Descricao'
    DataSource = DataSource
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 260
    Top = 74
    Width = 145
    Height = 21
    DataField = 'idUnidadeMedida'
    DataSource = DataSource
    KeyField = 'Id'
    ListField = 'Descricao'
    ListSource = DataSource1
    TabOrder = 4
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 60
    Top = 170
  end
  object FDTable: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'produto'
    Left = 110
    Top = 170
    object FDTableId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object FDTableidUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
    object LookupUnidadeMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'Unidade Medida'
      LookupDataSet = FDTableLookup
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idUnidadeMedida'
      Size = 100
      Lookup = True
    end
  end
  object FDTableLookup: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'devs2blu.unidademedida'
    Left = 370
    Top = 10
    object FDTableLookupId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableLookupDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTableLookup
    Left = 300
    Top = 10
  end
end
