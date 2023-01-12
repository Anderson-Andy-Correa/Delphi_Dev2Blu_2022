program Pedidos;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UdmPedidos in 'UdmPedidos.pas' {dnPedidos: TDataModule},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmPedidos in 'UfrmPedidos.pas' {frmPedidos},
  UfrmUnMedida in 'UfrmUnMedida.pas' {frmUnMedida},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompradores},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProdutos},
  UfrmRelProdutos in 'UfrmRelProdutos.pas' {frmRelProdutos},
  UfrmRelFornecedores in 'UfrmRelFornecedores.pas' {frmRelFornecedores},
  UfrmRelCompradores in 'UfrmRelCompradores.pas' {frmRelCompradores},
  UfrmRelUnidadeMedida in 'UfrmRelUnidadeMedida.pas' {frmRelUnidadeMedida};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdnPedidos, dnPedidos);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
