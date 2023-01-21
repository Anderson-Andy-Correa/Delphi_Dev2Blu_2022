object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'TDicionario'
  ClientHeight = 375
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
  object lblCPF: TLabel
    Left = 120
    Top = 29
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object lblNome: TLabel
    Left = 232
    Top = 29
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object btnTryGetValue: TButton
    Left = 18
    Top = 48
    Width = 87
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 0
    OnClick = btnTryGetValueClick
  end
  object btnRemove: TButton
    Left = 18
    Top = 79
    Width = 87
    Height = 25
    Caption = 'Remove'
    TabOrder = 1
    OnClick = btnRemoveClick
  end
  object btnTrimExpress: TButton
    Left = 18
    Top = 110
    Width = 87
    Height = 25
    Caption = 'TrimExpress'
    TabOrder = 2
    OnClick = btnTrimExpressClick
  end
  object btnContainKey: TButton
    Left = 18
    Top = 141
    Width = 87
    Height = 25
    Caption = 'ContainKey'
    TabOrder = 3
    OnClick = btnContainKeyClick
  end
  object btnAddOrSetValue: TButton
    Left = 18
    Top = 172
    Width = 87
    Height = 25
    Caption = 'AddOrSetValue'
    TabOrder = 4
    OnClick = btnAddOrSetValueClick
  end
  object btnListaKey: TButton
    Left = 18
    Top = 203
    Width = 87
    Height = 25
    Caption = 'ListaKey'
    TabOrder = 5
    OnClick = btnListaKeyClick
  end
  object mmResult: TMemo
    Left = 120
    Top = 81
    Width = 260
    Height = 271
    TabOrder = 6
  end
  object btnListaValue: TButton
    Left = 18
    Top = 234
    Width = 87
    Height = 25
    Caption = 'ListaValue'
    TabOrder = 7
    OnClick = btnListaValueClick
  end
  object edtCPF: TEdit
    Left = 120
    Top = 48
    Width = 89
    Height = 25
    TabOrder = 8
  end
  object edtNome: TEdit
    Left = 232
    Top = 48
    Width = 148
    Height = 25
    TabOrder = 9
  end
  object btnAdd: TButton
    Left = 18
    Top = 17
    Width = 87
    Height = 25
    Caption = 'Add'
    TabOrder = 10
    OnClick = btnAddClick
  end
  object btnClear: TButton
    Left = 18
    Top = 265
    Width = 87
    Height = 25
    Caption = 'Clear'
    TabOrder = 11
    OnClick = btnClearClick
  end
  object btnOnKeyNotify: TButton
    Left = 18
    Top = 296
    Width = 87
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 12
    OnClick = btnOnKeyNotifyClick
  end
  object btnOnValueNotify: TButton
    Left = 18
    Top = 327
    Width = 87
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 13
    OnClick = btnOnValueNotifyClick
  end
end
