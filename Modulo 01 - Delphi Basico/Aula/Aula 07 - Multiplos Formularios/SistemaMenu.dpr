program SistemaMenu;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmSistemaMenu},
  UfrmCliente in 'UfrmCliente.pas' {frmCliente},
  UfrmFornecedor in 'UfrmFornecedor.pas' {frmFornecedor},
  UfrmProduto in 'UfrmProduto.pas' {frmProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSistemaMenu, frmSistemaMenu);
  Application.Run;
end.
