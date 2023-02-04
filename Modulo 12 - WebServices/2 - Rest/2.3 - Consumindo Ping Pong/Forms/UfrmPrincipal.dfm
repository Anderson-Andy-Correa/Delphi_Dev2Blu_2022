object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumindo meu primeiro WS Rest'
  ClientHeight = 100
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
    100)
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 15
    Top = 64
    Width = 270
    Height = 13
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Resultado: '
  end
  object btnPingPong: TButton
    Left = 15
    Top = 24
    Width = 125
    Height = 25
    Caption = 'Ping Pong'
    TabOrder = 0
    OnClick = btnPingPongClick
  end
  object btnHelloWorld: TButton
    Left = 160
    Top = 24
    Width = 125
    Height = 25
    Caption = 'Hello World'
    TabOrder = 1
    OnClick = btnHelloWorldClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:9090/ping'
    Params = <>
    Left = 16
    Top = 88
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 72
    Top = 88
  end
  object RESTResponse1: TRESTResponse
    Left = 144
    Top = 88
  end
end
