object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Factory Method'
  ClientHeight = 500
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblValorAtual: TLabel
    Left = 24
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Valor Atual:'
  end
  object lblQtdParcelas: TLabel
    Left = 144
    Top = 8
    Width = 69
    Height = 13
    Caption = 'Qtd. Parcelas:'
  end
  object lblPrazoPagamento: TLabel
    Left = 264
    Top = 8
    Width = 103
    Height = 13
    Caption = 'Prazo de Pagamento:'
  end
  object edtValorTotal: TEdit
    Left = 24
    Top = 25
    Width = 100
    Height = 21
    TabOrder = 0
  end
  object edtQtdParcelas: TEdit
    Left = 144
    Top = 25
    Width = 100
    Height = 21
    TabOrder = 1
  end
  object cmbPrazoPagamento: TComboBox
    Left = 264
    Top = 25
    Width = 103
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Mensal'
      'Anual')
  end
  object btnGerarProjecao: TButton
    Left = 384
    Top = 23
    Width = 89
    Height = 25
    Caption = 'Gerar Proje'#231#227'o'
    TabOrder = 3
    OnClick = btnGerarProjecaoClick
  end
  object mmResultado: TMemo
    Left = 24
    Top = 64
    Width = 449
    Height = 417
    TabOrder = 4
  end
end
