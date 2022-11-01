object frmCompradores: TfrmCompradores
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Compreadores'
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
    Left = 20
    Top = 105
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 20
    Top = 155
    Width = 29
    Height = 13
    Caption = 'Cargo'
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
    Top = 215
    Width = 390
    Height = 60
    DataSource = DataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
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
        FieldName = 'Cargo'
        Width = 125
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 20
    Top = 75
    Width = 150
    Height = 21
    DataField = 'Id'
    DataSource = DataSource
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 20
    Top = 124
    Width = 150
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 20
    Top = 175
    Width = 150
    Height = 21
    DataField = 'Cargo'
    DataSource = DataSource
    TabOrder = 4
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 290
    Top = 60
  end
  object FDTable: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 350
    Top = 60
    object FDTableId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTableCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
end
