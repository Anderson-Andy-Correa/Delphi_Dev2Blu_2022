object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumindo Calculadora WS Rest'
  ClientHeight = 150
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    300
    150)
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 17
    Top = 112
    Width = 256
    Height = 13
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Resultado:'
  end
  object edtValor1: TEdit
    Left = 17
    Top = 25
    Width = 120
    Height = 21
    Anchors = [akTop]
    TabOrder = 0
    TextHint = 'Digite um N'#250'mero...'
  end
  object edtValor2: TEdit
    Left = 153
    Top = 25
    Width = 120
    Height = 21
    Anchors = [akTop]
    TabOrder = 1
    TextHint = 'Digite um N'#250'mero...'
  end
  object cmbOperacao: TComboBox
    Left = 17
    Top = 72
    Width = 120
    Height = 21
    Anchors = [akTop]
    TabOrder = 2
    TextHint = 'Selecione uma opera'#231#227'o...'
    OnChange = cmbOperacaoChange
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object btnCalcular: TButton
    Left = 153
    Top = 70
    Width = 120
    Height = 25
    Anchors = [akTop]
    Caption = 'Calcular!'
    Enabled = False
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:9090/somar/1/2'
    Params = <>
    Left = 32
    Top = 144
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 104
    Top = 144
  end
  object RESTResponse1: TRESTResponse
    Left = 184
    Top = 144
  end
end
