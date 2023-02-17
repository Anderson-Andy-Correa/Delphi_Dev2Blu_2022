unit UController.Bet;

interface

uses
  Horse,
  GBSWagger.Path.Attributes,
  UController.Base,
  UEntity.Bets,
  UDAO.Bets;

type
  [SwagPath('bets', 'Apostas')]
  TControllerBet = class(TControllerBase)
    private

    public

      [SwagGET('Listar Apostas', True)]
      [SwagResponse(200, TBet, 'Informações da Aposta', True)]
      [SwagResponse(404)]
      class procedure Gets  (Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

      [SwagGET('{id}', 'Procurar uma Aposta')]
      [SwagParamPath('id', 'id da Aposta')]
      [SwagResponse(200, TBet, 'Informações da Aposta')]
      [SwagResponse(404)]
      class procedure Get   (Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

      [SwagPOST('Adicionar Nova Aposta')]
      [SwagParamBody('Informações da Aposta', TBet)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post  (Req: THorseRequest; Res: THorseResponse;
        Next: TProc); override;

      [SwagDELETE('{id}', 'Deletar uma Aposta')]
      [SwagParamPath('id', 'id da Aposta')]
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

class procedure TControllerBet.Delete(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOBets.Create;
    inherited;
  end;

class procedure TControllerBet.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOBets.Create;
    inherited;
  end;

class procedure TControllerBet.Gets(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOBets.Create;
    inherited;
  end;

class procedure TControllerBet.Post(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
  begin
    FDAO := TDAOBets.Create;
    inherited;
  end;

end.
