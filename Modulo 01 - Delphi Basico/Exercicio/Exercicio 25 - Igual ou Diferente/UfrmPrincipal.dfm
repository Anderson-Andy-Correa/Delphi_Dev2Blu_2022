object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Igual ou DIferente'
  ClientHeight = 200
  ClientWidth = 270
  Color = 15778777
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNumero01: TLabel
    Left = 20
    Top = 150
    Width = 100
    Height = 19
    Alignment = taCenter
    Caption = 'Numero01'
    Color = 15844571
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblNumero02: TLabel
    Left = 150
    Top = 150
    Width = 100
    Height = 19
    Alignment = taCenter
    Caption = 'Numero02'
    Color = 15844571
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblSinal: TLabel
    Left = 110
    Top = 150
    Width = 51
    Height = 19
    Alignment = taCenter
    Caption = 'Sinal'
    Color = 15844571
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblResposta: TLabel
    Left = 110
    Top = 173
    Width = 51
    Height = 19
    Alignment = taCenter
    Caption = 'Resp'
    Color = 15845598
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object edtNumero01: TEdit
    Left = 20
    Top = 50
    Width = 100
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    TextHint = 'Digite um N'#250'mero...'
  end
  object edtNumero02: TEdit
    Left = 150
    Top = 50
    Width = 100
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    TextHint = 'Digite um N'#250'mero...'
  end
  object btnTestar: TButton
    Left = 85
    Top = 90
    Width = 100
    Height = 25
    Caption = 'Testar N'#250'meros'
    TabOrder = 2
    OnClick = btnTestarClick
  end
end
