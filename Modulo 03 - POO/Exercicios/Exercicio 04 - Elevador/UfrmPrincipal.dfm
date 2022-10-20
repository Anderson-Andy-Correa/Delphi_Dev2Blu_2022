object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Elevador'
  ClientHeight = 310
  ClientWidth = 210
  Color = 16250877
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object shElevador: TShape
    Left = 95
    Top = 290
    Width = 20
    Height = 20
    Shape = stRoundRect
  end
  object shPredio: TShape
    Left = 55
    Top = 110
    Width = 100
    Height = 200
    Pen.Color = clBlue
    Pen.Mode = pmMask
    Shape = stRoundRect
  end
  object lblAndar: TLabel
    Left = 10
    Top = 11
    Width = 86
    Height = 13
    Caption = 'Selecione o Andar'
  end
  object lblTextAndarAtual: TLabel
    Left = 121
    Top = 11
    Width = 61
    Height = 13
    Caption = 'Andar Atual:'
    Color = 16251389
    ParentColor = False
  end
  object lblAndarAtual: TLabel
    Left = 121
    Top = 30
    Width = 29
    Height = 13
    Caption = 'Andar'
    Color = 16251645
    ParentColor = False
  end
  object Label1: TLabel
    Left = 121
    Top = 61
    Width = 58
    Height = 13
    Caption = 'Andar Final:'
    Color = 16251389
    ParentColor = False
  end
  object Label2: TLabel
    Left = 121
    Top = 80
    Width = 29
    Height = 13
    Caption = 'Andar'
    Color = 16251645
    ParentColor = False
  end
  object edtAndar: TEdit
    Left = 8
    Top = 30
    Width = 88
    Height = 21
    Alignment = taCenter
    NumbersOnly = True
    TabOrder = 0
    Text = '0'
  end
end
