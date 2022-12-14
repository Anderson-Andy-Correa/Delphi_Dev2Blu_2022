unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmSistemaMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Sair1: TMenuItem;
    Clientes1: TMenuItem;
    Clientes2: TMenuItem;
    Produtos1: TMenuItem;
    PopupMenu1: TPopupMenu;
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSistemaMenu: TfrmSistemaMenu;

implementation

uses
  UfrmCliente, UfrmFornecedor, UfrmProduto;

{$R *.dfm}

procedure TfrmSistemaMenu.Clientes1Click(Sender: TObject);
  begin
    if frmCliente = nil then
      frmCliente := TfrmCliente.Create(Self);

    frmCliente.Show;
  end;

procedure TfrmSistemaMenu.Clientes2Click(Sender: TObject);
  begin
    if frmFornecedor = nil then
      frmFornecedor := TfrmFornecedor.Create(Self);

    frmFornecedor.Show;
  end;

procedure TfrmSistemaMenu.Produtos1Click(Sender: TObject);
  begin
    if frmProduto = nil then
      frmProduto := TfrmProduto.Create(Self);

    frmProduto.Show;
  end;

procedure TfrmSistemaMenu.Sair1Click(Sender: TObject);
  begin
    self.Close;
  end;

end.
