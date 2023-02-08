unit UController.Cargo;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  UCargo;

Type
  [SwagPath('cargo', 'Cargos')]
  TCargoController = class
    private

    protected

    public
      [SwagGet('Listar Cargos', True)]
      [SwagParamQuery('id', 'id do cargo')]
      [SwagResponse(200, TCargo, 'Informações do Cargo', True)]
      class procedure GetOffice(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagGet('{id}', 'Procurar um cargo')]
      [SwagParamPath('id', 'id do cargo')]
      [SwagResponse(200, TCargo, 'Informações do Cargo')]
      [SwagResponse(404)]
      class procedure FindOffice(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagPost('Adicionar Novo Cargo')]
      [SwagParamBody('Informações do Cargo', TCargo)]
      [SwagResponse(200, TCargo)]
      class procedure InsertOffice(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagPut('{id}', 'Atualizar um cargo')]
      [SwagParamPath('id', 'id do cargo')]
      [SwagParamBody('Informações do Cargo', TCargo)]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure UpdateOffice(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagDelete('{id}', 'Deletar um cargo')]
      [SwagParamPath('id', 'id do cargo')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure DeleteOffice(Req: THorseRequest; Res: THorseResponse; Next: Tproc);
  end;

implementation

{ TPessoaController }

class procedure TCargoController.DeleteOffice(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Status(THTTPStatus.NoContent);
  end;

class procedure TCargoController.FindOffice(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Send('{"id": 1, "descricao": "Eletrecista"}');
  end;

class procedure TCargoController.GetOffice(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Send('[{"id": 1, "descricao": "Eletrecista"}]');
  end;

class procedure TCargoController.InsertOffice(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Send(Req.Body).Status(THTTPStatus.Created);
  end;

class procedure TCargoController.UpdateOffice(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Status(THTTPStatus.NoContent);
  end;

end.
