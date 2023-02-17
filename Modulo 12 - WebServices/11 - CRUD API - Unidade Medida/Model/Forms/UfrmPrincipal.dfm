object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'CRUD Simples'
  ClientHeight = 281
  ClientWidth = 418
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
  object cmbProcesso: TComboBox
    Left = 40
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 0
    TextHint = 'Escolha uma Base'
    OnChange = cmbProcessoChange
  end
  object cmbFuncao: TComboBox
    Left = 40
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 1
    TextHint = 'Escolha uma Fun'#231#227'o'
    Visible = False
    OnChange = cmbFuncaoChange
  end
  object nmbNumero: TNumberBox
    Left = 40
    Top = 104
    Width = 41
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object btnFuncao: TButton
    Left = 40
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Fun'#231#227'o'
    TabOrder = 3
    Visible = False
  end
end
