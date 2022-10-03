object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumo M'#233'dio'
  ClientHeight = 281
  ClientWidth = 418
  Color = 9949166
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblSaudação: TLabel
    Left = 112
    Top = 24
    Width = 196
    Height = 23
    Caption = 'Ol'#225', seja bem vindo!'
    Color = 14740149
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblTitulo: TLabel
    Left = 80
    Top = 53
    Width = 264
    Height = 23
    Caption = 'Sistema de Consumo M'#233'dio'
    Color = 14740149
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblDividir: TLabel
    Left = 101
    Top = 123
    Width = 7
    Height = 23
    Caption = '/'
    Color = 14740149
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblIgual: TLabel
    Left = 217
    Top = 123
    Width = 14
    Height = 23
    Caption = '='
    Color = 14740149
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 280
    Top = 123
    Width = 82
    Height = 23
    Align = alCustom
    Alignment = taCenter
    Caption = 'Resultado'
    Color = 14740149
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object edtKm: TEdit
    Left = 48
    Top = 96
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    Text = 'Km'
  end
  object edtCombustivel: TEdit
    Left = 48
    Top = 152
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    Text = 'Litro'
  end
  object btnCalcular: TButton
    Left = 48
    Top = 189
    Width = 121
    Height = 25
    Caption = 'Calcular!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
