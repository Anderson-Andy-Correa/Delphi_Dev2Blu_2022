object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Convers'#227'o de Temperatura'
  ClientHeight = 281
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 2
    Top = 15
    Width = 288
    Height = 19
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = 'Conversor Mundial de Temperatura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object edtCelcius: TEdit
    Left = 85
    Top = 50
    Width = 120
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    Text = 'Digite aqui em '#186'C'
  end
  object btnConverter: TButton
    Left = 110
    Top = 82
    Width = 75
    Height = 25
    Caption = 'Converter!!!'
    TabOrder = 1
    OnClick = btnConverterClick
  end
  object mmHistorico: TMemo
    Left = 25
    Top = 160
    Width = 240
    Height = 90
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object edtFahrenheit: TEdit
    Left = 85
    Top = 120
    Width = 120
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 3
    Text = 'Sua resposta em '#186'F'
  end
end
