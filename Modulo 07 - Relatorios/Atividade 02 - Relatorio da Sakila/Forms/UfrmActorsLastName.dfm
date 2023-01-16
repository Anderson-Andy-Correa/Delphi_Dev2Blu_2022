object frmActorsLastName: TfrmActorsLastName
  Left = 0
  Top = 0
  Caption = 'Ercercise 01 - Actor'#39's Last Name'
  ClientHeight = 150
  ClientWidth = 400
  Color = 16315612
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
  object grbFiltro: TGroupBox
    Left = 8
    Top = 8
    Width = 380
    Height = 134
    Caption = 'Filtro'
    Color = 16315100
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object lblActorLastName: TLabel
      Left = 16
      Top = 21
      Width = 86
      Height = 13
      Caption = 'Actor'#39's Last Name'
      Color = 16315356
      ParentColor = False
    end
    object DBLookupLastName: TDBLookupComboBox
      Left = 16
      Top = 40
      Width = 233
      Height = 21
      KeyField = 'actor_id'
      ListField = 'last_name'
      ListSource = dtsLookUpActor
      TabOrder = 0
    end
    object btnVisualizar: TButton
      Left = 273
      Top = 40
      Width = 89
      Height = 21
      Caption = 'Visualizar'
      TabOrder = 1
      OnClick = btnVisualizarClick
    end
  end
  object btnExportar: TButton
    Left = 281
    Top = 88
    Width = 89
    Height = 21
    Caption = 'Exportar'
    TabOrder = 1
    OnClick = btnExportarClick
  end
  object QryActor: TFDQuery
    Connection = DmShowTime.FDConnection1
    SQL.Strings = (
      
        'SELECT ACTOR.ACTOR_ID, ACTOR.FIRST_NAME, ACTOR.LAST_NAME FROM AC' +
        'TOR'
      'WHERE (LAST_NAME = :LAST_NAME OR COALESCE(:LAST_NAME, '#39#39') = '#39#39');')
    Left = 16
    Top = 168
    ParamData = <
      item
        Name = 'LAST_NAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
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
    Left = 88
    Top = 168
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryActor
    BCDToCurrency = False
    Left = 168
    Top = 168
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44939.773139652800000000
    ReportOptions.LastChange = 44939.773139652800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 248
    Top = 168
    Datasets = <
      item
        DataSet = frxDBDataset1
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
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Informative Actor'#39's Names Report')
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
        object frxDBDataset1ACTOR_ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 7.559060000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FIRST NAME')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 7.559060000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'LAST NAME')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'ACTOR_ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ACTOR_ID"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 7.559060000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FIRST_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 7.559060000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'LAST_NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LAST_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dtsLookUpActor: TDataSource
    DataSet = LookUpLastName
    Left = 16
    Top = 232
  end
  object LookUpLastName: TFDTable
    IndexFieldNames = 'last_name'
    Connection = DmShowTime.FDConnection1
    TableName = 'sakila.actor'
    Left = 88
    Top = 232
  end
end
