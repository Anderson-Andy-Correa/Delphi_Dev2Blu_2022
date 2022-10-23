object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Margins.Left = 10
  Margins.Right = 10
  Margins.Bottom = 10
  BorderStyle = bsSingle
  Caption = 'Elevador'
  ClientHeight = 300
  ClientWidth = 350
  Color = 16250877
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
  object shPredio: TShape
    Left = 35
    Top = 60
    Width = 100
    Height = 200
    Brush.Color = clGreen
    Brush.Style = bsHorizontal
    Pen.Color = clBlue
    Pen.Mode = pmMask
    Shape = stRoundRect
  end
  object lblAndarAtual: TLabel
    Left = 25
    Top = 8
    Width = 61
    Height = 13
    Caption = 'Andar Atual:'
    Color = 16251901
    ParentColor = False
  end
  object lblPessoas: TLabel
    Left = 25
    Top = 27
    Width = 64
    Height = 13
    Caption = 'Qtd Pessoas:'
    Color = 16251901
    ParentColor = False
  end
  object Shape1: TShape
    Left = 270
    Top = 60
    Width = 40
    Height = 40
    Shape = stCircle
  end
  object Shape2: TShape
    Left = 180
    Top = 60
    Width = 40
    Height = 40
    Shape = stCircle
  end
  object lblCtrlPessoas: TLabel
    Left = 184
    Top = 41
    Width = 118
    Height = 13
    Caption = 'Controlador de Pessoas:'
    Color = 16251901
    ParentColor = False
  end
  object lblCapacidade: TLabel
    Left = 184
    Top = 8
    Width = 99
    Height = 13
    Caption = 'Capacidade M'#225'xima:'
    Color = 16251901
    ParentColor = False
  end
  object lblMais: TLabel
    Left = 180
    Top = 62
    Width = 40
    Height = 36
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Alignment = taCenter
    AutoSize = False
    Caption = '+'
    Color = 16251901
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    OnClick = lblMaisClick
  end
  object lblMenos: TLabel
    Left = 270
    Top = 60
    Width = 40
    Height = 40
    Alignment = taCenter
    AutoSize = False
    Caption = '-'
    Color = 16251901
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    OnClick = lblMenosClick
  end
  object shElevador: TShape
    Left = 75
    Top = 240
    Width = 20
    Height = 20
    Brush.Color = clAqua
    Shape = stRoundRect
  end
  object lblAndar: TLabel
    Left = 8
    Top = 240
    Width = 11
    Height = 19
    Caption = 'T'
    Color = 16251901
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 18
    Top = 250
    Width = 11
    Height = 19
    Caption = 'T'
    Color = 16251901
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object rdgAndar: TRadioGroup
    Left = 160
    Top = 106
    Width = 162
    Height = 100
    Caption = 'Selecione o Andar'
    Color = 16251133
    Columns = 2
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    OnClick = rdgAndarClick
  end
end
