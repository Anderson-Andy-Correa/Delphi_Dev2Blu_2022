object frmUnMedida: TfrmUnMedida
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Unidade de Medida'
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
        Width = 340
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
    Width = 320
    Height = 21
    DataField = 'Descricao'
    DataSource = DataSource
    TabOrder = 3
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 290
    Top = 10
  end
  object FDTable: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'devs2blu.unidademedida'
    Left = 350
    Top = 10
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
      Size = 100
    end
  end
end
