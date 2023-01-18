object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Enum To List'
  ClientHeight = 100
  ClientWidth = 200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cmbLista: TComboBox
    Left = 16
    Top = 16
    Width = 156
    Height = 21
    TabOrder = 0
  end
  object btnMes: TButton
    Left = 16
    Top = 56
    Width = 75
    Height = 25
    Caption = 'M'#234's'
    TabOrder = 1
    OnClick = btnMesClick
  end
  object btnDias: TButton
    Left = 97
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Dias'
    TabOrder = 2
    OnClick = btnDiasClick
  end
end
