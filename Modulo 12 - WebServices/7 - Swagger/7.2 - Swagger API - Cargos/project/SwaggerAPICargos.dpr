program SwaggerAPICargos;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  System.SysUtils,
  UPessoa in '..\Model\entities\UPessoa.pas',
  UController.Pessoa in '..\Model\controllers\UController.Pessoa.pas',
  UCargo in '..\Model\entities\UCargo.pas',
  UController.Cargo in '..\Model\controllers\UController.Cargo.pas';

procedure SwaggerConfig;
  begin
    // Programação Funcional
    // Usa Interfaces
    Swagger
      .Register
        .SchemaOnError(TAPIError)
      .&End
      .Info
        .Title('Minha Primeira API Documentada')
        .Version('v1.1.0')
        .Description('API Horse')
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
    THorse.Group.Prefix('v1.0')
      .Get('/pessoas', TPessoaController.GetPessoas)
      .Get('/pessoas/:id', TPessoaController.FindUser)
      .Post('/pessoas', TpessoaController.InsertUser)
      .Put('/pessoas/:id', TPessoaController.UpdateUser)
      .Delete('/pessoas/:id', TPessoaController.DeleteUser);

    THorse.Group.Prefix('v1.1.0')
      .Get('/cargos', TCargoController.GetOffice)
      .Get('/cargos/:id', TCargoController.FindOffice)
      .Post('/cargos', TCargoController.InsertOffice)
      .Put('/cargos/:id', TCargoController.UpdateOffice)
      .Delete('/cargos/:id', TCargoController.DeleteOffice);
  end;

begin
  THorse
    .USE(CORS)
    .USE(HorseSwagger);

  // http://localhost:9090/swagger/doc/html
  SwaggerConfig;

  THorseGBSwaggerRegister.RegisterPath(TCargoController);
  THorseGBSwaggerRegister.RegisterPath(TPessoaController);

  Registry;


  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.