object frmFuncionarios: TfrmFuncionarios
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Funcionarios'
  ClientHeight = 210
  ClientWidth = 410
  Color = 13158909
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmFuncionarios: TMemo
    Left = 0
    Top = 0
    Width = 300
    Height = 208
    Color = 14671853
    ReadOnly = True
    TabOrder = 0
  end
  object btnCadastrar: TButton
    Left = 310
    Top = 10
    Width = 90
    Height = 80
    Caption = 'Cadastrar Funcionarios'
    TabOrder = 1
    WordWrap = True
    OnClick = btnCadastrarClick
  end
  object btnListar: TButton
    Left = 310
    Top = 110
    Width = 90
    Height = 80
    Caption = 'Listar Funcion'#225'rios'
    Enabled = False
    TabOrder = 2
    WordWrap = True
    OnClick = btnListarClick
  end
end
