unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

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
    procedure imCompradoresClick(Sender: TObject);
    procedure imFornecedoresClick(Sender: TObject);
    procedure imPedidosClick(Sender: TObject);
    procedure imProdutosClick(Sender: TObject);
    procedure imUnMedidaClick(Sender: TObject);
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

end.
