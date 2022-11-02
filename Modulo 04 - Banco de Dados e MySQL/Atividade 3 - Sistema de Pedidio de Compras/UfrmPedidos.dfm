object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pedidos'
  ClientHeight = 450
  ClientWidth = 600
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
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 260
    Top = 55
    Width = 58
    Height = 13
    Caption = 'Data Pedido'
  end
  object Label4: TLabel
    Left = 20
    Top = 105
    Width = 53
    Height = 13
    Caption = 'Comprador'
  end
  object Label5: TLabel
    Left = 20
    Top = 155
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label6: TLabel
    Left = 140
    Top = 215
    Width = 128
    Height = 19
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object DBNavigator: TDBNavigator
    Left = 20
    Top = 20
    Width = 240
    Height = 25
    DataSource = DTSPedido
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 20
    Top = 250
    Width = 390
    Height = 175
    DataSource = DTSItemPedido
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProduto'
        Title.Caption = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookUpProduto'
        Title.Caption = 'Descri'#231#227'o Produto'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Width = 60
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 20
    Top = 75
    Width = 50
    Height = 21
    DataField = 'Id'
    DataSource = DTSPedido
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 90
    Top = 75
    Width = 150
    Height = 21
    DataField = 'Numero'
    DataSource = DTSPedido
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 20
    Top = 124
    Width = 390
    Height = 21
    DataField = 'idComprador'
    DataSource = DTSPedido
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DTSComprador
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 20
    Top = 174
    Width = 390
    Height = 21
    DataField = 'idFornecedor'
    DataSource = DTSPedido
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DTSFornecedor
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 260
    Top = 74
    Width = 150
    Height = 21
    DataField = 'DataPedido'
    DataSource = DTSPedido
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 416
    Top = 250
    Width = 25
    Height = 175
    DataSource = DTSItemPedido
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 7
  end
  object DTSItemPedido: TDataSource
    DataSet = FDTItemPedido
    Left = 470
    Top = 320
  end
  object FDTItemPedido: TFDTable
    BeforePost = FDTItemPedidoBeforePost
    IndexFieldNames = 'Id'
    MasterSource = DTSPedido
    MasterFields = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'itemcompra'
    Left = 540
    Top = 320
    object FDTItemPedidoId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTItemPedidoQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
    object FDTItemPedidoidPedidoCompra: TLongWordField
      FieldName = 'idPedidoCompra'
      Origin = 'idPedidoCompra'
      Required = True
    end
    object FDTItemPedidoidProduto: TLongWordField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object FDTItemPedidoLookUpProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'LookUpProduto'
      LookupDataSet = FDTProduto
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idProduto'
      Size = 250
      Lookup = True
    end
  end
  object FDTLookUpFornecedor: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'fornecedor'
    Left = 530
    Top = 80
    object FDTLookUpFornecedorId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTLookUpFornecedorCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object FDTLookUpFornecedorNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
  end
  object DTSFornecedor: TDataSource
    DataSet = FDTLookUpFornecedor
    Left = 460
    Top = 80
  end
  object FDTLookUpComprador: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'comprador'
    Left = 530
    Top = 20
    object FDTLookUpCompradorId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTLookUpCompradorNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTLookUpCompradorCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object DTSComprador: TDataSource
    DataSet = FDTLookUpComprador
    Left = 460
    Top = 20
  end
  object DTSPedido: TDataSource
    DataSet = FDTPedido
    Left = 310
    Top = 10
  end
  object FDTPedido: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'pedidocompra'
    Left = 380
    Top = 10
    object FDTPedidoId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTPedidoNumero: TLongWordField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
    end
    object FDTPedidoDataPedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPedido'
      Origin = 'DataPedido'
    end
    object FDTPedidoidComprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idComprador'
      Origin = 'idComprador'
    end
    object FDTPedidoidFornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idFornecedor'
      Origin = 'idFornecedor'
    end
  end
  object FDTProduto: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'produto'
    Left = 540
    Top = 380
    object FDTProdutoId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTProdutoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object FDTProdutoidUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
  end
end
