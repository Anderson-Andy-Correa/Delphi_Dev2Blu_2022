unit UController.User;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  UController.Base,
  UEntity.Users;

type
  [SwagPath('users', 'Usu�rios')]
  TControllerUser = class(TControllerBase)
    private
    public
      class function ValidateUser(const aUserName, aPassWord: String): Boolean;

      [SwagGET('Listar Usu�rios', True)]
      [SwagResponse(200, TUser, 'Informa��es do Usu�rio', True)]
      [SwagResponse(404)]
      class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGET('{id}', 'Procurar um Usu�rio')]
      [SwagParamPath('id', 'id do Usu�rio')]
      [SwagResponse(200, TUser, 'Informa��es do Usu�rio')]
      [SwagResponse(404)]
      class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagPOST('Adicionar Novo Usu�rio')]
      [SwagParamBody('Informa��es do Usu�rio', TUser)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagDELETE('{id}', 'Deletar um Usu�rio')]
      [SwagParamPath('id', 'Id do Usu�rio')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;
  end;

var
  GIdUser: Integer;

implementation

{ TControllerUser }

uses
  UDAO.Users,
  UDAO.Intf;

class procedure TControllerUser.Delete(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOUsers.Create;
  Inherited;
end;

class procedure TControllerUser.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOUsers.Create;
  Inherited;
end;

class procedure TControllerUser.Gets(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOUsers.Create;
  Inherited;
end;

class procedure TControllerUser.Post(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOUsers.Create;
  Inherited;
end;

class function TControllerUser.ValidateUser(const aUserName,
  aPassWord: String): Boolean;
var
  xDAO: IDAO;
begin
  xDAO   := TDAOUsers.Create;

  GIdUser := TDAOUsers(xDAO).ValidarLogin(aUserName, aPassWord);

  Result := GIdUser > 0;
end;

end.
