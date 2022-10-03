object fmrPrincipal: TfmrPrincipal
  Left = 0
  Top = 0
  Caption = 'Arrays e Records'
  ClientHeight = 241
  ClientWidth = 219
  Color = 13224438
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmHistorico: TMemo
    Left = 16
    Top = 96
    Width = 185
    Height = 113
    Alignment = taCenter
    TabOrder = 0
  end
  object btnGravar: TButton
    Left = 112
    Top = 24
    Width = 89
    Height = 25
    Caption = 'Gravar'
    TabOrder = 1
    OnClick = btnGravarClick
  end
  object btnConsultar: TButton
    Left = 112
    Top = 55
    Width = 89
    Height = 26
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = btnConsultarClick
  end
  object edtDia: TEdit
    Left = 16
    Top = 24
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 3
    Text = 'Dia'
  end
  object edtTemperatura: TEdit
    Left = 16
    Top = 56
    Width = 80
    Height = 21
    Alignment = taCenter
    TabOrder = 4
    Text = 'Temperatura'
  end
end
