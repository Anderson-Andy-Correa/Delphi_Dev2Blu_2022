object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'M'#233'dia de Notas'
  ClientHeight = 280
  ClientWidth = 200
  Color = 15255443
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtPrimeiraNota: TEdit
    Left = 25
    Top = 20
    Width = 150
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    Text = 'Digite Nota 01'
  end
  object edtSegundaNota: TEdit
    Left = 25
    Top = 50
    Width = 150
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    Text = 'Digite Nota 02'
  end
  object edtTerceiraNota: TEdit
    Left = 25
    Top = 80
    Width = 150
    Height = 21
    Alignment = taCenter
    TabOrder = 2
    Text = 'Digite Nota 03'
  end
  object edtMateria: TEdit
    Left = 25
    Top = 110
    Width = 150
    Height = 21
    Alignment = taCenter
    TabOrder = 3
    Text = 'Definar Mat'#233'ria (Opcional)'
  end
  object btnMedia: TButton
    Left = 25
    Top = 150
    Width = 150
    Height = 25
    Caption = 'Calcular M'#233'dia'
    TabOrder = 4
    OnClick = btnMediaClick
  end
  object mmHistorico: TMemo
    Left = 25
    Top = 190
    Width = 150
    Height = 71
    Alignment = taCenter
    ScrollBars = ssVertical
    TabOrder = 5
  end
end
