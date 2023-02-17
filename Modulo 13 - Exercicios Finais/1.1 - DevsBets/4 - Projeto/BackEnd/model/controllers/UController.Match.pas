unit UController.Match;

interface

uses
  Horse,
  GBSWagger.Path.Attributes,
  UController.Base,
  UEntity.Matchs,
  UDAO.Matchs;

type
  [SwagPath('matchs', 'Partidas')]
  TControllerMatch = class(TControllerBase)
    private

    public

      [SwagGET('Listar Partidas', True)]
      [SwagResponse(200, TMatch, 'Informações da Partida', True)]
      [SwagResponse(404)]
      class procedure Gets  (Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

      [SwagGET('{id}', 'Procurar uma Partida')]
      [SwagParamPath('id', 'id da Partidas')]
      [SwagResponse(200, TMatch, 'Informações da Partida')]
      [SwagResponse(404)]
      class procedure Get   (Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

      [SwagPOST('Adicionar Nova Partida')]
      [SwagParamBody('Informações da Partida', TMatch)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post  (Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

      [SwagDELETE('{id}', 'Deletar uma Partida')]
      [SwagParamPath('id', 'id da Partida')]
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

class procedure TControllerMatch.Delete(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOMatchs.Create;
    inherited;
  end;

class procedure TControllerMatch.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOMatchs.Create;
    inherited;
  end;

class procedure TControllerMatch.Gets(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOMatchs.Create;
    inherited;
  end;

class procedure TControllerMatch.Post(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOMatchs.Create;
    inherited;
  end;

end.
