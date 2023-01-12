object frmFornecedores: TfrmFornecedores
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Fornecedores'
  ClientHeight = 291
  ClientWidth = 428
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
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 260
    Top = 55
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit3
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
        FieldName = 'Nome'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 125
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
    DataField = 'Nome'
    DataSource = DataSource
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 260
    Top = 74
    Width = 150
    Height = 21
    DataField = 'CNPJ'
    DataSource = DataSource
    TabOrder = 4
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 290
    Top = 10
  end
  object FDTable: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'fornecedor'
    Left = 350
    Top = 10
    object FDTableId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object FDTableNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
  end
end
