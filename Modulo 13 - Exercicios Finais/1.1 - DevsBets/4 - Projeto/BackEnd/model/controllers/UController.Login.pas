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
      [SwagPost('Autentica��o do usu�rio')]
      [SwagParamBody('Informa��es do Login', TLogin)]
      [SwagResponse(200, 'Token (String)')]
      [SwagResponse(400)]
      class procedure PostLogin(Req: THorseRequest; Res: THorseResponse;
        Next: TProc);

  end;

implementation

{ TControllerLogin }

uses
  System.JSON,
  System.SysUtils;

class procedure TControllerLogin.PostLogin(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
  var
    xToken: TJWT;
    xCompactToken: String;
    xJSONLogin: TJSONObject;
    xUser, xPassword: String;
  begin
    xToken := TJWT.Create;
    try
      // Token Claims
      xToken.Claims.Issuer     := 'DevsBets';
      xToken.Claims.Subject    := 'Projeto Final';
      xToken.Claims.Expiration := Now + 1;

      xJSONLogin := Req.Body<TJSONObject>;

      if not Assigned(xJSONLogin) then
        begin
          Res.Status(THTTPStatus.BadRequest);
          Exit;
        end;

      if not xJSONLogin.TryGetValue<String>('login', xUser) then
        begin
          Res.Status(THTTPStatus.BadRequest);
          Exit;
        end;

      if not xJSONLogin.TryGetValue<String>('password', xPassword) then
        begin
          Res.Status(THTTPStatus.BadRequest);
          Exit;
        end;

      // Outros Claims
      xToken.Claims.SetClaimOfType<String>('Login', xUser);

      // Assinatura
      xCompactToken := TJOSE.SHA256CompactToken('KeyDevsBets', xToken);

      Res.Send(xCompactToken);
    finally
      FreeAndNil(xToken);
    end;
  end;

end.
