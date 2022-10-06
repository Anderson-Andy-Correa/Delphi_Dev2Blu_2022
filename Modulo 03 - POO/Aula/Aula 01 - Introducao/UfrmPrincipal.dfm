object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Minha Primeira Classe'
  ClientHeight = 300
  ClientWidth = 400
  Color = 16440572
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTituloX: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 10
    Width = 394
    Height = 19
    Margins.Top = 10
    Align = alTop
    Alignment = taCenter
    Caption = 'Triangulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 82
  end
  object lblTituloY: TLabel
    Left = 160
    Top = 83
    Width = 83
    Height = 19
    Align = alCustom
    Alignment = taCenter
    Caption = 'Triangulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAreaX: TLabel
    Left = 35
    Top = 210
    Width = 131
    Height = 19
    Caption = 'Triangulo X '#193'rea: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAreaY: TLabel
    Left = 35
    Top = 235
    Width = 131
    Height = 19
    Caption = 'Triangulo X '#193'rea: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAreaMaior: TLabel
    Left = 35
    Top = 260
    Width = 77
    Height = 19
    Caption = #193'rea Maior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtValorAX: TEdit
    AlignWithMargins = True
    Left = 35
    Top = 42
    Width = 100
    Height = 23
    Margins.Left = 35
    Margins.Top = 10
    Margins.Bottom = 235
    Align = alLeft
    Alignment = taCenter
    TabOrder = 0
    TextHint = 'Valor '#39'a'#39
    ExplicitHeight = 21
  end
  object edtValorBX: TEdit
    AlignWithMargins = True
    Left = 148
    Top = 42
    Width = 100
    Height = 23
    Margins.Left = 10
    Margins.Top = 10
    Margins.Bottom = 235
    Align = alLeft
    Alignment = taCenter
    TabOrder = 1
    TextHint = 'Valor '#39'b'#39
    ExplicitHeight = 21
  end
  object edtValorCX: TEdit
    AlignWithMargins = True
    Left = 261
    Top = 42
    Width = 100
    Height = 23
    Margins.Left = 10
    Margins.Top = 10
    Margins.Bottom = 235
    Align = alLeft
    Alignment = taCenter
    TabOrder = 2
    TextHint = 'Valor '#39'c'#39
    ExplicitHeight = 21
  end
  object edtValorAY: TEdit
    Left = 35
    Top = 115
    Width = 100
    Height = 21
    Margins.Left = 35
    Margins.Top = 10
    Margins.Bottom = 235
    Align = alCustom
    Alignment = taCenter
    TabOrder = 3
    TextHint = 'Valor '#39'a'#39
  end
  object edtValorBY: TEdit
    Left = 148
    Top = 115
    Width = 100
    Height = 21
    Margins.Left = 10
    Margins.Top = 10
    Margins.Bottom = 235
    Align = alCustom
    Alignment = taCenter
    TabOrder = 4
    TextHint = 'Valor '#39'b'#39
  end
  object edtValorCY: TEdit
    Left = 261
    Top = 115
    Width = 100
    Height = 21
    Margins.Left = 10
    Margins.Top = 10
    Margins.Bottom = 235
    Align = alCustom
    Alignment = taCenter
    TabOrder = 5
    TextHint = 'Valor '#39'c'#39
  end
  object btnCalcular: TButton
    Left = 100
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btnCalcularClick
  end
  object btnCalcularOOP: TButton
    Left = 220
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Calcular OOP'
    TabOrder = 7
    OnClick = btnCalcularOOPClick
  end
end
