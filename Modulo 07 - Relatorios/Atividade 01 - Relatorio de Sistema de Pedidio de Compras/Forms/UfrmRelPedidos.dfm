object frmRelPedidos: TfrmRelPedidos
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio - Pedidos'
  ClientHeight = 346
  ClientWidth = 400
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
  object grbFiltros: TGroupBox
    Left = 10
    Top = 10
    Width = 375
    Height = 127
    Caption = 'Filtros'
    TabOrder = 0
    object lblComprador: TLabel
      Left = 25
      Top = 17
      Width = 53
      Height = 13
      Caption = 'Comprador'
    end
    object lblFornecedor: TLabel
      Left = 25
      Top = 69
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object btnExportar: TButton
      Left = 275
      Top = 36
      Width = 75
      Height = 25
      Caption = 'Exportar'
      TabOrder = 0
      OnClick = btnExportarClick
    end
    object btnVisualizar: TButton
      Left = 275
      Top = 84
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 1
      OnClick = btnVisualizarClick
    end
    object DBLookupComprador: TDBLookupComboBox
      Left = 25
      Top = 36
      Width = 216
      Height = 21
      KeyField = 'Id'
      ListField = 'Nome'
      ListSource = dtsLookupComprador
      TabOrder = 2
    end
    object DBLookupFornecedor: TDBLookupComboBox
      Left = 25
      Top = 88
      Width = 216
      Height = 21
      KeyField = 'Id'
      ListField = 'Nome'
      ListSource = dtsLookupFornecedor
      TabOrder = 3
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 24
    Top = 208
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryPedido
    BCDToCurrency = False
    Left = 96
    Top = 152
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44937.792076550900000000
    ReportOptions.LastChange = 44938.897139351850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 24
    Top = 152
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      HGuides.Strings = (
        '134')
      VGuides.Strings = (
        '52,91342'
        '52,91342')
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio Informativo de Pedidos')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Comprador')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NUMERO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1DESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'DATAPEDIDO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATAPEDIDO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 7.559060000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataField = 'FORNECEDOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FORNECEDOR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 264.567100000000000000
          Top = 7.559060000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataField = 'COMPRADOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COMPRADOR"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Id. Produto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 7.559060000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'IDPRODUTO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."IDPRODUTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 7.559060000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRODUTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."QUANTIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object LookUpComprador: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 248
    Top = 152
  end
  object dtsLookupComprador: TDataSource
    DataSet = LookUpComprador
    Left = 312
    Top = 152
  end
  object dtsLookupFornecedor: TDataSource
    DataSet = LookUpFornecedor
    Left = 312
    Top = 200
  end
  object LookUpFornecedor: TFDTable
    IndexFieldNames = 'Id'
    Connection = dnPedidos.FDConexao
    TableName = 'devs2blu.fornecedor'
    Left = 248
    Top = 200
  end
  object QryPedido: TFDQuery
    Connection = dnPedidos.FDConexao
    SQL.Strings = (
      'SELECT PEDIDOCOMPRA.ID,'
      '       PEDIDOCOMPRA.NUMERO,'
      '       PEDIDOCOMPRA.DATAPEDIDO,'
      '       COMPRADOR.NOME COMPRADOR,'
      '       COMPRADOR.CARGO,'
      '       FORNECEDOR.NOME FORNECEDOR,'
      '       FORNECEDOR.CNPJ'
      'FROM PEDIDOCOMPRA'
      'LEFT JOIN COMPRADOR ON PEDIDOCOMPRA.IDCOMPRADOR = COMPRADOR.ID'
      
        'LEFT JOIN FORNECEDOR ON PEDIDOCOMPRA.IDFORNECEDOR = FORNECEDOR.I' +
        'D'
      
        'WHERE (IDCOMPRADOR = :IDCOMPRADOR OR COALESCE(:IDCOMPRADOR, 0) =' +
        ' 0)'
      
        'AND (IDFORNECEDOR = :IDFORNECEDOR OR COALESCE(:IDFORNECEDOR, 0) ' +
        '= 0)')
    Left = 96
    Top = 208
    ParamData = <
      item
        Name = 'IDCOMPRADOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDFORNECEDOR'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object QryItemCompra: TFDQuery
    IndexFieldNames = 'IDPEDIDOCOMPRA'
    MasterSource = dtsPedido
    MasterFields = 'ID'
    Connection = dnPedidos.FDConexao
    SQL.Strings = (
      'SELECT ITEMCOMPRA.IDPEDIDOCOMPRA,'
      '       ITEMCOMPRA.IDPRODUTO,'
      '       PRODUTO.DESCRICAO PRODUTO,'
      '       ITEMCOMPRA.QUANTIDADE'
      '  FROM ITEMCOMPRA'
      '  LEFT JOIN PRODUTO ON PRODUTO.ID = ITEMCOMPRA.IDPRODUTO')
    Left = 168
    Top = 207
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryItemCompra
    BCDToCurrency = False
    Left = 168
    Top = 152
  end
  object dtsPedido: TDataSource
    DataSet = QryPedido
    Left = 168
    Top = 264
  end
end
