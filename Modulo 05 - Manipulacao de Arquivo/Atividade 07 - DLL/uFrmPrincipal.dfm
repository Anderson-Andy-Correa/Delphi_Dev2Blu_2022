object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 469
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 104
    Height = 13
    Caption = 'Nome do Cumputador'
  end
  object Label2: TLabel
    Left = 56
    Top = 112
    Width = 81
    Height = 13
    Caption = 'Nome do Usu'#225'rio'
  end
  object Label3: TLabel
    Left = 56
    Top = 168
    Width = 96
    Height = 13
    Caption = 'Diret'#243'rio do Sistema'
  end
  object Label4: TLabel
    Left = 56
    Top = 229
    Width = 94
    Height = 13
    Caption = 'Diret'#243'rio do Windos'
  end
  object Label5: TLabel
    Left = 56
    Top = 288
    Width = 84
    Height = 13
    Caption = 'Pasta Tempor'#225'ria'
  end
  object Label6: TLabel
    Left = 56
    Top = 349
    Width = 94
    Height = 13
    Caption = 'Vers'#227'o do Windows'
  end
  object edtNomePC: TEdit
    Left = 56
    Top = 67
    Width = 417
    Height = 21
    TabOrder = 0
  end
  object edtNomeUser: TEdit
    Left = 56
    Top = 131
    Width = 417
    Height = 21
    TabOrder = 1
  end
  object edtDirSistema: TEdit
    Left = 56
    Top = 187
    Width = 417
    Height = 21
    TabOrder = 2
  end
  object edtDirWindows: TEdit
    Left = 56
    Top = 248
    Width = 417
    Height = 21
    TabOrder = 3
  end
  object edtDirTemp: TEdit
    Left = 56
    Top = 307
    Width = 417
    Height = 21
    TabOrder = 4
  end
  object edtVersaoWindows: TEdit
    Left = 56
    Top = 367
    Width = 417
    Height = 21
    TabOrder = 5
  end
  object btnInformações: TButton
    Left = 224
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Informa'#231#245'es'
    TabOrder = 6
    OnClick = btnInformaçõesClick
  end
end
