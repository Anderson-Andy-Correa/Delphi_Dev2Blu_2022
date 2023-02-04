object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumindo Meu Primeiro WS SOAP'
  ClientHeight = 100
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblValor: TLabel
    Left = 20
    Top = 15
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object lblResultado: TLabel
    Left = 158
    Top = 70
    Width = 70
    Height = 16
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnEchoDouble: TButton
    Left = 158
    Top = 33
    Width = 75
    Height = 25
    Caption = 'EchoDouble'
    TabOrder = 0
    OnClick = btnEchoDoubleClick
  end
  object btnHelloWorld: TButton
    Left = 239
    Top = 33
    Width = 75
    Height = 25
    Caption = 'HelloWorld'
    TabOrder = 1
    OnClick = btnHelloWorldClick
  end
  object edtValor: TEdit
    Left = 20
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
