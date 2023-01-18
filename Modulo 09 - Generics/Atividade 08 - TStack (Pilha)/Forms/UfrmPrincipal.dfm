object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'TStack'
  ClientHeight = 275
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnPush: TButton
    Left = 18
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Push'
    TabOrder = 0
    OnClick = btnPushClick
  end
  object btnPop: TButton
    Left = 18
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Pop'
    TabOrder = 1
    OnClick = btnPopClick
  end
  object btnExtract: TButton
    Left = 18
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 2
    OnClick = btnExtractClick
  end
  object btnPeek: TButton
    Left = 18
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 3
    OnClick = btnPeekClick
  end
  object btnTrimExcess: TButton
    Left = 18
    Top = 172
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 4
    OnClick = btnTrimExcessClick
  end
  object btnCount: TButton
    Left = 18
    Top = 203
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 5
    OnClick = btnCountClick
  end
  object edtprincipal: TEdit
    Left = 18
    Top = 21
    Width = 75
    Height = 21
    TabOrder = 6
  end
  object mmResult: TMemo
    Left = 108
    Top = 21
    Width = 273
    Height = 238
    TabOrder = 7
  end
  object btnCapacity: TButton
    Left = 18
    Top = 234
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
    OnClick = btnCapacityClick
  end
end
