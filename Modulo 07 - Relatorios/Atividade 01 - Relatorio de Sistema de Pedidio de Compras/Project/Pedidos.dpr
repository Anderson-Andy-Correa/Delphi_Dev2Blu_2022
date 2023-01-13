program Pedidos;

uses
  Vcl.Forms,
  UfrmCompradores in '..\Forms\UfrmCompradores.pas' {frmCompradores},
  UfrmFornecedores in '..\Forms\UfrmFornecedores.pas' {frmFornecedores},
  UfrmPedidos in '..\Forms\UfrmPedidos.pas' {frmPedidos},
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  UfrmRelCompradores in '..\Forms\UfrmRelCompradores.pas' {frmRelCompradores},
  UfrmRelFornecedores in '..\Forms\UfrmRelFornecedores.pas' {frmRelFornecedores},
  UfrmRelUnidadeMedida in '..\Forms\UfrmRelUnidadeMedida.pas' {frmRelUnidadeMedida},
  UfrmUnMedida in '..\Forms\UfrmUnMedida.pas' {frmUnMedida},
  UdmPedidos in '..\DataModule\UdmPedidos.pas' {dnPedidos: TDataModule},
  UfrmRelPedidos in '..\Forms\UfrmRelPedidos.pas' {frmRelPedidos},
  UfrmProdutos in '..\Forms\UfrmProdutos.pas' {frmProdutos},
  UfrmRelProdutos in '..\Forms\UfrmRelProdutos.pas' {frmRelProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdnPedidos, dnPedidos);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
