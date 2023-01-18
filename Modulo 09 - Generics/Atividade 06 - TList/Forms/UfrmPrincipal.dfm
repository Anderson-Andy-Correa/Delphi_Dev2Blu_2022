object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'TList'
  ClientHeight = 250
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
  object btnAdd: TButton
    Left = 18
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = btnAddClick
  end
  object btnRemove: TButton
    Left = 18
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 1
    OnClick = btnRemoveClick
  end
  object btnListar: TButton
    Left = 18
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 2
    OnClick = btnListarClick
  end
  object btnCapacity: TButton
    Left = 18
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 3
    OnClick = btnCapacityClick
  end
  object btnCount: TButton
    Left = 18
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 4
    OnClick = btnCountClick
  end
  object btnOnNotify: TButton
    Left = 18
    Top = 203
    Width = 75
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 5
    OnClick = btnOnNotifyClick
  end
  object edtprincipal: TEdit
    Left = 18
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object mmResult: TMemo
    Left = 145
    Top = 21
    Width = 240
    Height = 207
    TabOrder = 7
  end
end
