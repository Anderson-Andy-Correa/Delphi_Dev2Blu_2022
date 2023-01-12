unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, UfrmRelUnidadeMedida, Vcl.Menus, UfrmRelCompradores,
  UfrmRelProdutos, UfrmRelFornecedores;

type
  TfrmPrincipal = class(TForm)
    pnTop: TPanel;
    imProdutos: TImage;
    imCompradores: TImage;
    imFornecedores: TImage;
    imUnMedida: TImage;
    imPedidos: TImage;
    imPrincipal: TImage;
    lblProdutos: TLabel;
    lblCompreadores: TLabel;
    lblFornecedores: TLabel;
    lblUnMedida: TLabel;
    lblPedidos: TLabel;
    imRelatorios: TImage;
    lblRelatorios: TLabel;
    PopupMenu1: TPopupMenu;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    Fornecedores1: TMenuItem;
    Fornecedores2: TMenuItem;
    Pedidos1: TMenuItem;
    procedure imCompradoresClick(Sender: TObject);
    procedure imFornecedoresClick(Sender: TObject);
    procedure imPedidosClick(Sender: TObject);
    procedure imProdutosClick(Sender: TObject);
    procedure imUnMedidaClick(Sender: TObject);
    procedure UnMedida1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Compradores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UfrmCompradores, UfrmFornecedores, UdmPedidos, UfrmProdutos, UfrmUnMedida,
  UfrmPedidos;

{$R *.dfm}

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
  begin
    if not assigned(frmRelFornecedores) then
      frmRelFornecedores := TfrmRelFornecedores.create(self);

    frmRelFornecedores.Show;
  end;

procedure TfrmPrincipal.imCompradoresClick(Sender: TObject);
  begin
    if not assigned(frmCompradores) then
      frmCompradores := TfrmCompradores.create(self);

    frmCompradores.Show;
  end;

procedure TfrmPrincipal.imFornecedoresClick(Sender: TObject);
  begin
    if not assigned(frmFornecedores) then
      frmFornecedores := TfrmFornecedores.create(self);

    frmFornecedores.Show;
  end;

procedure TfrmPrincipal.imPedidosClick(Sender: TObject);
  begin
    if not assigned(frmPedidos) then
      frmPedidos := TfrmPedidos.create(self);

    frmPedidos.Show;
  end;

procedure TfrmPrincipal.imProdutosClick(Sender: TObject);
  begin
    if not assigned(frmProdutos) then
      frmProdutos := TfrmProdutos.create(self);

    frmProdutos.Show;
  end;

procedure TfrmPrincipal.imUnMedidaClick(Sender: TObject);
  begin
    if not assigned(frmUnMedida) then
      frmUnMedida := TfrmUnMedida.create(self);

    frmUnMedida.Show;
  end;

procedure TfrmPrincipal.Pedidos1Click(Sender: TObject);
  begin
//    if not assigned(frmRelPedidos) then
//      frmRelPedidos := TfrmRelPedidos.create(self);
//
//    frmRelPedidos.Show;
  end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
  begin
    if not assigned(frmRelProdutos) then
      frmRelProdutos := TfrmRelProdutos.create(self);

    frmRelProdutos.Show;
  end;

procedure TfrmPrincipal.Compradores1Click(Sender: TObject);
  begin
    if not assigned(frmRelCompradores) then
      frmRelCompradores := TfrmRelCompradores.create(self);

    frmRelCompradores.Show;
  end;

procedure TfrmPrincipal.UnMedida1Click(Sender: TObject);
  begin
    if not assigned(frmRelUnidadeMedida) then
      frmRelUnidadeMedida := TfrmRelUnidadeMedida.create(self);

    frmRelUnidadeMedida.Show;
  end;

end.
