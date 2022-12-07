object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Criando Arquivo de Texto'
  ClientHeight = 100
  ClientWidth = 150
  Color = 14671862
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTítulo: TLabel
    Left = 13
    Top = 12
    Width = 87
    Height = 13
    Caption = 'Digite um n'#250'mero:'
  end
  object btnTabuada: TButton
    Left = 13
    Top = 58
    Width = 121
    Height = 25
    Caption = 'Tabuada'
    TabOrder = 0
    OnClick = btnTabuadaClick
  end
  object edtNumero: TEdit
    Left = 13
    Top = 31
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Digite aqui um n'#250'mero'
  end
end
