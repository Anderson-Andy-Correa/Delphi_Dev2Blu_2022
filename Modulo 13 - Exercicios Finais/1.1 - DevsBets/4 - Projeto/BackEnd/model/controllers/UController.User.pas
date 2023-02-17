unit UController.User;

interface

uses
  Horse,
  GBSWagger.Path.Attributes,
  UController.Base,
  UEntity.Users;

type
  [SwagPath('users', 'Usuários')]
  TControllerUser = class(TControllerBase)
    private

    public
      class function ValidarUser(const aUserName, aPassword: String): Boolean;

      [SwagGET('Listar Usuários', True)]
      [SwagResponse(200, TUser, 'Informações do Usuário', True)]
      [SwagResponse(404)]
      class procedure Gets  (Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

      [SwagGET('{id}', 'Procurar um Usuário')]
      [SwagParamPath('id', 'id do Usuário')]
      [SwagResponse(200, TUser, 'Informações do Usuário')]
      [SwagResponse(404)]
      class procedure Get   (Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

      [SwagPOST('Adicionar Novo Usuário')]
      [SwagParamBody('Informações do Usuário', TUser)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post  (Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

      [SwagDELETE('{id}', 'Deletar um Usuário')]
      [SwagParamPath('id', 'id do Usuário')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(400)]
      class procedure Delete(Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

  end;

implementation

uses
  UDAO.Users,
  UDAO.Intf;


{ TControllerUser }

class procedure TControllerUser.Delete(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOUsers.Create;
    inherited;
  end;

class procedure TControllerUser.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOUsers.Create;
    inherited;
  end;

class procedure TControllerUser.Gets(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOUsers.Create;
    inherited;
  end;

class procedure TControllerUser.Post(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOUsers.Create;
    inherited;
  end;

class function TControllerUser.ValidarUser(const aUserName,
  aPassword: String): Boolean;
  var
    xDAO: IDAO;
  begin
    xDAO := TDaoUsers.Create;
    Result := TDAOUsers(xDAO).ValidarLogin(aUserName, aPassword);
  end;

end.
