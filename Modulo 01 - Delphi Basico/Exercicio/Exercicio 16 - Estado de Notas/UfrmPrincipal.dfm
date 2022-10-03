object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'M'#233'dia e Estado das Notas'
  ClientHeight = 300
  ClientWidth = 200
  Color = 16447199
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 40
    Top = 20
    Width = 31
    Height = 13
    Caption = 'Nome:'
    Color = 16447457
    ParentColor = False
  end
  object lblNotas: TLabel
    Left = 40
    Top = 70
    Width = 32
    Height = 13
    Caption = 'Notas:'
    Color = 16447971
    ParentColor = False
  end
  object lblSituacao: TLabel
    Left = 65
    Top = 217
    Width = 70
    Height = 19
    Caption = 'Situa'#231#227'o'
    Color = 16447715
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblRespSituacao: TLabel
    Left = 8
    Top = 250
    Width = 40
    Height = 19
    Align = alCustom
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = 'Resp'
    Color = 16447971
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    Visible = False
  end
  object edtNome: TEdit
    Left = 40
    Top = 40
    Width = 121
    Height = 20
    TabOrder = 0
    TextHint = 'Digite aqui...'
  end
  object edtNota01: TEdit
    Left = 40
    Top = 90
    Width = 121
    Height = 20
    TabOrder = 1
    TextHint = 'Digite sua primeira nota'
  end
  object edtNota02: TEdit
    Left = 40
    Top = 116
    Width = 121
    Height = 20
    TabOrder = 2
    TextHint = 'Digite sua segunda nota'
  end
  object edtNota03: TEdit
    Left = 40
    Top = 142
    Width = 121
    Height = 20
    TabOrder = 3
    TextHint = 'Digite sua terceira nota'
  end
  object btnCalcular: TButton
    Left = 65
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Calcular!!!'
    TabOrder = 4
    OnClick = btnCalcularClick
  end
end
