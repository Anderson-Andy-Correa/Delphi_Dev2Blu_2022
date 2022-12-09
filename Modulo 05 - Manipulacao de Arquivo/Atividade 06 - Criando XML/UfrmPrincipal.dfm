object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Lendo Arquivo XML'
  ClientHeight = 310
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmResultado: TMemo
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 400
    Height = 265
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnExecutar: TButton
    AlignWithMargins = True
    Left = 150
    Top = 280
    Width = 110
    Height = 25
    Margins.Left = 150
    Margins.Top = 5
    Margins.Right = 150
    Margins.Bottom = 5
    Align = alBottom
    Caption = 'Executar'
    TabOrder = 1
    OnClick = btnExecutarClick
    ExplicitLeft = 155
  end
  object XMLDoc: TXMLDocument
    Left = 370
    Top = 280
  end
end
