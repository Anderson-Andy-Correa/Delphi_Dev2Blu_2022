object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object lblObrigatorio: TLabel
    Left = 28
    Top = 41
    Width = 99
    Height = 13
    Caption = 'Lista de Convoca'#231#227'o'
  end
  object lblDespensado: TLabel
    Left = 219
    Top = 41
    Width = 104
    Height = 13
    Caption = 'Lista de Despensados'
  end
  object lblTotalObrigatorio: TLabel
    Left = 28
    Top = 155
    Width = 31
    Height = 13
    Caption = 'Total: '
  end
  object lblTotalDespensado: TLabel
    Left = 219
    Top = 155
    Width = 31
    Height = 13
    Caption = 'Total: '
  end
  object mmObrigatorio: TMemo
    Left = 28
    Top = 60
    Width = 185
    Height = 89
    ReadOnly = True
    ScrollBars = ssHorizontal
    TabOrder = 0
  end
  object mmDispensado: TMemo
    Left = 219
    Top = 60
    Width = 185
    Height = 89
    ReadOnly = True
    ScrollBars = ssHorizontal
    TabOrder = 1
  end
  object btnCadastrar: TButton
    Left = 70
    Top = 190
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btnCadastrarClick
  end
  object btnListar: TButton
    Left = 270
    Top = 190
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 3
    OnClick = btnListarClick
  end
end
