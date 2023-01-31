object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Command'
  ClientHeight = 300
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblProgramas: TLabel
    Left = 10
    Top = 64
    Width = 55
    Height = 13
    Caption = 'Programas:'
  end
  object lblProcessos: TLabel
    Left = 210
    Top = 64
    Width = 52
    Height = 13
    Caption = 'Processos:'
  end
  object lblVariaveis: TLabel
    Left = 415
    Top = 64
    Width = 110
    Height = 13
    Caption = 'Vari'#225'veis de Ambiente:'
  end
  object btnExecutar: TButton
    Left = 210
    Top = 24
    Width = 175
    Height = 25
    Caption = 'Executar Comandos'
    TabOrder = 0
    OnClick = btnExecutarClick
  end
  object mmProgramas: TMemo
    Left = 10
    Top = 83
    Width = 175
    Height = 209
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object mmProcessos: TMemo
    Left = 210
    Top = 83
    Width = 175
    Height = 209
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object mmVariaveis: TMemo
    Left = 415
    Top = 83
    Width = 175
    Height = 209
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 3
  end
end
