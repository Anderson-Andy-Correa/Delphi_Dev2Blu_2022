object frmDebugger: TfrmDebugger
  Left = 0
  Top = 0
  Caption = 'Explorando o Debugger'
  ClientHeight = 235
  ClientWidth = 418
  Color = 15201685
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 48
    Top = 16
    Width = 321
    Height = 23
    Caption = 'Explorando o Debugger do Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mmCmdEsquerda: TMemo
    Left = 16
    Top = 56
    Width = 185
    Height = 130
    Color = 10659050
    Lines.Strings = (
      'F7              - Trace Into'
      'Ctrl + F7    - Evaluate/Modify'
      'F8              - Debug - Step Over'
      'F9              - Run'
      'Ctrl +  F9   - Compile Project'
      'F11            - Object Inspector'
      'F12            - Toggle Form/Unit'
      'Ctrl + F12  - Search Units'
      'Shift + F12 - Search Forms')
    TabOrder = 0
  end
  object mmCmdDireita: TMemo
    Left = 217
    Top = 56
    Width = 185
    Height = 130
    Color = 10016493
    Lines.Strings = (
      'Ctrl + Alt + B   - BreakPoints'
      'Ctrl + Alt + S   - Call Stack'
      'Ctrl + Alt + W  - Watches'
      'Ctrl + Alt + T   - Threads')
    TabOrder = 1
  end
  object btnProcessar: TButton
    Left = 112
    Top = 200
    Width = 195
    Height = 24
    Caption = 'Processar'
    TabOrder = 2
    OnClick = btnProcessarClick
  end
end
