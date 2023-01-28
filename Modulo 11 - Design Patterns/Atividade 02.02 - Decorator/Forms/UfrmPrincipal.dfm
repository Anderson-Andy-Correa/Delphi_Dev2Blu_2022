object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Decorator'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnExcecao: TButton
    Left = 80
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Exce'#231#227'o'
    TabOrder = 0
    OnClick = btnExcecaoClick
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 216
    Top = 80
  end
end
