object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'RTL'
  ClientHeight = 281
  ClientWidth = 418
  Color = 13415400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btlConfirmation: TButton
    Left = 32
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Confirmation'
    TabOrder = 0
    OnClick = btlConfirmationClick
  end
  object bltCustom: TButton
    Left = 113
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Custom'
    TabOrder = 1
    OnClick = bltCustomClick
  end
  object btnReplace: TButton
    Left = 32
    Top = 71
    Width = 156
    Height = 25
    Caption = 'StringReplace'
    TabOrder = 2
    OnClick = btnReplaceClick
  end
  object btnTrim: TButton
    Left = 32
    Top = 102
    Width = 156
    Height = 25
    Caption = 'Trim'
    TabOrder = 3
    OnClick = btnTrimClick
  end
end
