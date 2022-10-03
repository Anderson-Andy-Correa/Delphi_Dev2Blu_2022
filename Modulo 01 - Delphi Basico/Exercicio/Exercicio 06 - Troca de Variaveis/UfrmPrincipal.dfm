object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Troca de Vari'#225'veis'
  ClientHeight = 150
  ClientWidth = 400
  Color = 11382470
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTituloInicial: TLabel
    Left = 30
    Top = 57
    Width = 144
    Height = 23
    Alignment = taCenter
    Caption = 'Valores iniciais'
    Color = 11514054
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblTituloFinal: TLabel
    Left = 235
    Top = 57
    Width = 129
    Height = 23
    Alignment = taCenter
    Caption = 'Valores finais'
    Color = 11645638
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblAInicial: TLabel
    Left = 50
    Top = 86
    Width = 98
    Height = 19
    Alignment = taCenter
    Caption = 'Valor A inicial'
    Color = 11645638
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblBInicial: TLabel
    Left = 52
    Top = 111
    Width = 96
    Height = 19
    Alignment = taCenter
    Caption = 'Valor B inicial'
    Color = 11711429
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblAFinal: TLabel
    Left = 255
    Top = 86
    Width = 88
    Height = 19
    Alignment = taCenter
    Caption = 'Valor A final'
    Color = 11711429
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblBFinal: TLabel
    Left = 255
    Top = 111
    Width = 86
    Height = 19
    Alignment = taCenter
    Caption = 'Valor B final'
    Color = 11711685
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object edtVariavelA: TEdit
    Left = 50
    Top = 25
    Width = 100
    Height = 20
    Alignment = taCenter
    TabOrder = 0
    Text = 'Vari'#225'vel A'
  end
  object edtVariavelB: TEdit
    Left = 160
    Top = 25
    Width = 100
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    Text = 'Vari'#225'vel B'
  end
  object btlProcessar: TButton
    Left = 270
    Top = 25
    Width = 75
    Height = 22
    Caption = 'Processar'
    TabOrder = 2
    OnClick = btlProcessarClick
  end
end
