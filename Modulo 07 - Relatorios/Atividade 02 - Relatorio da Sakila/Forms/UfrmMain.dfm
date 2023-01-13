object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main Menu'
  ClientHeight = 150
  ClientWidth = 400
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 394
    Height = 23
    Margins.Top = 50
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'It'#39's Show Time!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 136
    ExplicitTop = 120
    ExplicitWidth = 155
  end
  object MainMenu1: TMainMenu
    Left = 352
    Top = 56
    object Reports1: TMenuItem
      Caption = 'Reports'
      object Excercise01LastNamesActor1: TMenuItem
        Caption = 'Excercise 01 - Actor'#39's Last Name'
      end
      object Excercise02AddressesoftheCities1: TMenuItem
        Caption = 'Excercise 02 - Addresses of the Cities'
      end
      object QuantitieofMovieperActor1: TMenuItem
        Caption = 'Excercise 03 - Quantitie of Movie per Actor'
      end
    end
    object Reports2: TMenuItem
      Caption = 'Exit'
    end
  end
end
