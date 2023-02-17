program CRUD;

{$APPTYPE CONSOLE}

uses
  Horse,
  horse.Jhonson,
  horse.Query,
  System.SysUtils,
  UUtil.Banco in 'Model\Utils\UUtil.Banco.pas',
  UDAO.Intf in 'Model\DAO\UDAO.Intf.pas',
  UDAO.UnidadeMedida in 'Model\DAO\UDAO.UnidadeMedida.pas',
  UDAO.Produtos in 'Model\DAO\UDAO.Produtos.pas',
  UController.UnidadeMedida in 'Model\Controllers\UController.UnidadeMedida.pas',
  UController.Produtos in 'Model\Controllers\UController.Produtos.pas',
  UfrmPrincipal in 'Model\Forms\UfrmPrincipal.pas' {frmPrincipal};

procedure Registry;
begin
  THorse.Group.Prefix('v1')
    .Get('/produtos', TControllerProdutos.GetProdutos)
    .Get('/produtos/:id', TControllerProdutos.GetProduto)
    .Post('/produtos', TControllerProdutos.PostProduto)
    .Delete('/produtos/:id', TControllerProdutos.DeleteProduto);

  THorse.Group.Prefix('v2')
    .Get('/unidademedida', TControllerUnidadeMedida.GetUnidadeMedidas)
    .Get('/unidademedida/:id', TControllerUnidadeMedida.GetUnidadeMedida)
    .Post('/unidademedida', TControllerUnidadeMedida.PostUnidadeMedida)
    .Delete('/unidademedida/:id', TControllerUnidadeMedida.DeleteUnidadeMedida);
end;

begin
  THorse.Use(Jhonson);
  THorse.Use(Query);

  Registry;

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.