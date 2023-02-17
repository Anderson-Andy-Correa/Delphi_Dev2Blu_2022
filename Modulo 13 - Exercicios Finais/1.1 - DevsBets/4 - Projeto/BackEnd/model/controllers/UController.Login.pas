unit UController.Login;

interface

uses
  Horse,
  JOSE.Core.JWT,
  JOSE.Core.Builder,
  GBSwagger.Path.Attributes,
  UController.Base,
  UEntity.Logins;

type
  [SagPath('login', 'Login')]
  TControllerLogin = class(TControllerBase)
    private

    public
      [SwagPost('Autenticação do usuário')]
      [SwagParamBody('Informações do Login', TLogin)]
      [SwagResponse(200, 'Token (String)')]
      [SwagResponse(400)]
      class procedure PostLogin(Req: THorseRequest; Res: THorseResponse;
        Next: TProc);

  end;

implementation

{ TControllerLogin }

uses


class procedure TControllerLogin.PostLogin(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
  begin

  end;

end.
