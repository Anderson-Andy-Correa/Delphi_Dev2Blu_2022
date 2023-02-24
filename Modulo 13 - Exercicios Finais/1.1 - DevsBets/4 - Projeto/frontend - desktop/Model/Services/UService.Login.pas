unit UService.Login;

interface

uses
  UEntity.Logins,
  UService.Base;

type
  TServiceLogin = class(TServiceBase)
    private
      FLogin: TLogin;

      procedure SalvatToken;
      procedure UsuarioAutenticado;

    public
      constructor Create(aLogin: TLogin);
      destructor Destroy; override;

      procedure Registrar; override;
      procedure Listar;    override;
      procedure Excluir;   override;

      function ObterRegistro(const aID: Integer): TObject; override;

      procedure Autenticar;

  end;

implementation

uses
  REST.Authenticator.Basic,
  REST.Types,
  System.JSON,
  System.SysUtils,
  System.Classes,
  UUtils.Constants,
  UService.intf,
  UService.User,
  UService.User.Authenticated,
  UEntity.Users,
  JOSE.Core.JWT,
  JOSE.Core.Builder;

{ TServiceLogin }

procedure TServiceLogin.Autenticar;
  var
    xJSONBody:     TJSONObject;
    xHTTPBasicAut: THTTPBasicAuthenticator;
  begin
    xJSONBody     := TJSONObject.Create;
    xHTTPBasicAut := THTTPBasicAuthenticator.Create(FLogin.Login, FLogin.Password);

    try
      try
        FRESTClient.Authenticator := xHTTPBasicAut;
        FRESTClient.BaseURL       := URL_BASE_LOGIN;

        xJSONBody.AddPair('login', FLogin.Login);
        xJSONBody.AddPair('password', FLogin.Password);

        FRESTRequest.Method := rmPOST;
        FRESTRequest.Params.AddBody(xJSONBody);
        FRESTRequest.Execute;

        case FRESTResponse.StatusCode of
          API_SUCESSO:
            begin
              FLogin.Token := FRESTResponse.Content;
              Self.SalvatToken;
              Self.UsuarioAutenticado;
            end;

          API_NAO_AUTORIZADO:
            raise Exception.Create('Usuário não autorizado.');

          else
            raise Exception.Create('usuário não catalogado.');
        end;

      except on E: Exception do
        raise Exception.Create(E.Message);
      end;

    finally
        FreeAndNil(xJSONBody);
        FreeAndNil(xHTTPBasicAut);
    end;
  end;

constructor TServiceLogin.Create(aLogin: TLogin);
  begin
    Inherited Create;

    FLogin := aLogin;
  end;

destructor TServiceLogin.Destroy;
  begin
    FreeAndNil(FLogin);
    inherited;
  end;

procedure TServiceLogin.Excluir;
  begin
    inherited;
    // Método sem implementação no momento
  end;

procedure TServiceLogin.Listar;
  begin
    inherited;
    // Método sem implementação no momento
  end;

function TServiceLogin.ObterRegistro(const aID: Integer): TObject;
  begin
    Result := nil;
    // Método sem implementação no momento
  end;

procedure TServiceLogin.Registrar;
  begin
    inherited;
    // Método sem implementação no momento
  end;

procedure TServiceLogin.SalvatToken;
  var
    xStringList: TStringList;
  begin
    xStringList := TStringList.Create;
    try
      xStringList.Add(FLogin.Token);
      xStringList.SaveToFile('Token.jwt');
    finally
      FreeAndNil(xStringList);
    end;
  end;

procedure TServiceLogin.UsuarioAutenticado;
  var
    xServiceUser: IService;
    xJWT: TJWT;
    xIDUser: Integer;
    xUserAuthenticated: TUserAuthenticated;
  begin
    xJWT := TJOSE.DeserializeCompact('KeyDevsBets', FLogin.Token);

    try
      if not xJWT.Claims.JSON.TryGetValue<Integer>('id', xIDUser) then
        raise Exception.Create('Não foi possível registrar autenticação.');

      xServiceUser := TServiceUser.Create;

      xUserAuthenticated      := TUserAuthenticated.GetInstance;
      xUserAuthenticated.User := TUser(xServiceUser.ObterRegistro(xIDUser));
    finally
      FreeAndNil(xJWT);
    end;
  end;

end.
