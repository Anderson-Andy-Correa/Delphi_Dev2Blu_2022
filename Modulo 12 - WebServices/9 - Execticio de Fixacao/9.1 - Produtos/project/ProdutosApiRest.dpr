program ProdutosApiRest;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.BasicAuthentication,
  Horse.Commons,
  System.SysUtils,
  System.JSON,
  Horse.CORS,
  Horse.GBSwagger,
  UProduto in '..\Model\entities\UProduto.pas',
  UController.Produto in '..\Model\controllers\UController.Produto.pas',
  UEnvioJSON in '..\Model\services\UEnvioJSON.pas';

procedure SwaggerConfig;
  begin
    // Programação Funcional
    // Usa Interfaces
    Swagger
      .Register
        .SchemaOnError(TAPIError)
      .&End
      .Info
        .Title('API de Produtos')
        .Description('API Horse')
        .Version('v1.0.0')
        .Contact
          .Name('Anderson Corrêa')
          .Email('email@gmail.com')
          .URL('http://www.mypage.com.br')
        .&End
      .&End
      .BasePath('v1');
  end;

procedure Registry;
  begin
    // v1 -> Versionamento da API
    THorse.Group.Prefix('v1')
      .Get('/products', TProdutoController.GetProduct)
      .Get('/products/:id', TProdutoController.FindProduct)
      .Post('/products', TProdutoController.InsertProduct)
      .Put('/products/:id', TProdutoController.UpdateProduct)
      .Delete('/products/:id', TProdutoController.DeleteProduct);

  end;

begin
  THorse.Use(Jhonson());

  THorse.Use(HorseBasicAuthentication(
    function (const aUserName, aPassword: String): Boolean
      begin
        // Aqui teria a nossa lógica para validar o usuário do banco de dados

        Result := aUserName.Equals('user') and aPassword.Equals('password');
      end));

  THorse
    .USE(CORS)
    .USE(HorseSwagger);

  // http://localhost:9090/swagger/doc/html
  SwaggerConfig;
  THorseGBSwaggerRegister.RegisterPath(TProdutoController);

  Registry;

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.