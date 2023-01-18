object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'C'#225'lculo de desconto'
  ClientHeight = 200
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 16
    Top = 21
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lblQuantidade: TLabel
    Left = 160
    Top = 21
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object lblPrecoUnitario: TLabel
    Left = 16
    Top = 75
    Width = 91
    Height = 13
    Caption = 'Pre'#231'o Unit'#225'rio (R$)'
  end
  object lblValorTotal: TLabel
    Left = 160
    Top = 75
    Width = 75
    Height = 13
    Caption = 'Valor Total (R$)'
  end
  object edtNome: TEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtQuantidade: TEdit
    Left = 160
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtPrecoUnitario: TEdit
    Left = 16
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtValorTotal: TEdit
    Left = 160
    Top = 96
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object btnCalcular: TButton
    Left = 16
    Top = 144
    Width = 265
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = btnCalcularClick
  end
end
