object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Vereador e Comiss'#227'o'
  ClientHeight = 280
  ClientWidth = 300
  Color = 15657466
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtNome: TEdit
    Left = 50
    Top = 30
    Width = 200
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    Text = 'Digite aqui seu nome'
    OnChange = edtNomeChange
  end
  object edtSalario: TEdit
    Left = 50
    Top = 70
    Width = 200
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    Text = 'Digite aqui seu sal'#225'rio (R$)'
    OnChange = edtSalarioChange
  end
  object edtVendas: TEdit
    Left = 50
    Top = 110
    Width = 200
    Height = 21
    Alignment = taCenter
    TabOrder = 2
    Text = 'Digite aqui total de vendas (R$)'
    OnChange = edtVendasChange
  end
  object mmTotal: TMemo
    Left = 50
    Top = 163
    Width = 200
    Height = 89
    Lines.Strings = (
      '')
    ScrollBars = ssHorizontal
    TabOrder = 3
  end
end
