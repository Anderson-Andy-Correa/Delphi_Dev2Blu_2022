object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Observer'
  ClientHeight = 550
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline fraCadastro1: TfraCadastro
    Left = -7
    Top = -2
    Width = 350
    Height = 547
    TabOrder = 0
    ExplicitLeft = -7
    ExplicitTop = -2
    ExplicitHeight = 547
    inherited dbgGravar: TDBGrid
      Height = 444
    end
  end
  inline fraSaldo1: TfraSaldo
    Left = 329
    Top = 4
    Width = 320
    Height = 150
    TabOrder = 1
    ExplicitLeft = 329
    ExplicitTop = 4
  end
  inline fraLog1: TfraLog
    Left = 335
    Top = 345
    Width = 307
    Height = 200
    TabOrder = 2
    ExplicitLeft = 335
    ExplicitTop = 345
    ExplicitWidth = 307
    inherited lblLog: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 297
      Height = 17
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Log de Opera'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited mmLog: TMemo
      AlignWithMargins = True
      Left = 5
      Top = 27
      Width = 297
      Height = 168
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Lines.Strings = ()
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitWidth = 292
    end
  end
  inline fraHistorico1: TfraHistorico
    Left = 335
    Top = 152
    Width = 307
    Height = 200
    TabOrder = 3
    ExplicitLeft = 335
    ExplicitTop = 152
    ExplicitWidth = 307
    inherited lblDebitos: TLabel
      Width = 297
      ExplicitLeft = 13
      ExplicitTop = 2
      ExplicitWidth = 340
    end
    inherited dbgDebitos: TDBGrid
      Width = 297
    end
  end
end
