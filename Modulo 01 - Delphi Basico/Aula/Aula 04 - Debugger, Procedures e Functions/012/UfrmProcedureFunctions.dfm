object frmProcedureFunctions: TfrmProcedureFunctions
  Left = 0
  Top = 0
  Caption = 'Procedures e Functions'
  ClientHeight = 281
  ClientWidth = 418
  Color = 14907823
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnProcedure: TButton
    Left = 24
    Top = 16
    Width = 81
    Height = 25
    Caption = 'Procedure'
    TabOrder = 0
    OnClick = btnProcedureClick
  end
  object btnFunction: TButton
    Left = 111
    Top = 16
    Width = 82
    Height = 25
    Caption = 'Function'
    TabOrder = 1
    OnClick = btnFunctionClick
  end
  object btnParametrosReferencia: TButton
    Left = 24
    Top = 47
    Width = 169
    Height = 25
    Caption = 'Parametros de Refer'#234'ncia'
    TabOrder = 2
    OnClick = btnParametrosReferenciaClick
  end
  object btnParametrosConstantes: TButton
    Left = 24
    Top = 78
    Width = 169
    Height = 25
    Caption = 'Parametros Constantes'
    TabOrder = 3
    OnClick = btnParametrosConstantesClick
  end
  object btnArrayAberto: TButton
    Left = 216
    Top = 47
    Width = 169
    Height = 25
    Caption = 'Array Aberto'
    TabOrder = 4
    OnClick = btnArrayAbertoClick
  end
  object btnArrayVariante: TButton
    Left = 216
    Top = 16
    Width = 169
    Height = 25
    Caption = 'Array Aberto Variante'
    TabOrder = 5
    OnClick = btnArrayVarianteClick
  end
  object btnFormat: TButton
    Left = 24
    Top = 109
    Width = 169
    Height = 25
    Caption = 'Format'
    TabOrder = 6
    OnClick = btnFormatClick
  end
  object btnDataFormatada: TButton
    Left = 24
    Top = 140
    Width = 169
    Height = 25
    Caption = 'Data Formatada'
    TabOrder = 7
    OnClick = btnDataFormatadaClick
  end
  object btnSobrecarga: TButton
    Left = 216
    Top = 78
    Width = 169
    Height = 25
    Caption = 'Sobrecarga de Fun'#231#245'es'
    TabOrder = 8
    OnClick = btnSobrecargaClick
  end
  object btnDefault: TButton
    Left = 216
    Top = 109
    Width = 169
    Height = 25
    Caption = 'Parametros Default'
    TabOrder = 9
    OnClick = btnDefaultClick
  end
  object btnForward: TButton
    Left = 216
    Top = 140
    Width = 169
    Height = 25
    Caption = 'Declara'#231#227'o Forward'
    TabOrder = 10
    OnClick = btnForwardClick
  end
end
