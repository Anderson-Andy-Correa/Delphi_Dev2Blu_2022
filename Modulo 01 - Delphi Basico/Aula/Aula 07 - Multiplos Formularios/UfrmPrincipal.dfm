object frmSistemaMenu: TfrmSistemaMenu
  Left = 0
  Top = 0
  Width = 516
  Height = 459
  BorderStyle = bsSingle
  Caption = 'Menu Principal'
  Color = 15593726
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Clientes2: TMenuItem
        Caption = 'Fornecedores'
        OnClick = Clientes2Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 30
  end
end
