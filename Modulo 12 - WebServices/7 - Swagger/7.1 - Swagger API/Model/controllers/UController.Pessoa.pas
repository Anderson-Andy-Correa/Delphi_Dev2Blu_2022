unit UController.Pessoa;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  UPessoa;

Type
  [SwagPath('pessoa', 'Pessoas')]
  TPessoaController = class
    private

    protected

    public
      [SwagGet('Listar Pessoas', True)]
      [SwagParamQuery('id', 'id da pessoa')]
      [SwagResponse(200, TPessoa, 'Informações da Pessoa', True)]
      class procedure GetPessoas(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagGet('{id}', 'Procurar uma pessoa')]
      [SwagParamPath('id', 'id da pessoa')]
      [SwagResponse(200, TPessoa, 'Informações da Pessoa')]
      [SwagResponse(404)]
      class procedure FindUser(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagPost('Adicionar Nova Pessoa')]
      [SwagParamBody('Informações da Pessoa', TPessoa)]
      [SwagResponse(200, TPessoa)]
      class procedure InsertUser(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagPut('{id}', 'Atualizar uma pessoa')]
      [SwagParamPath('id', 'id da pessoa')]
      [SwagParamBody('Informações da Pessoa', TPessoa)]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure UpdateUser(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagDelete('{id}', 'Deletar uma pessoa')]
      [SwagParamPath('id', 'id da pessoa')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure DeleteUser(Req: THorseRequest; Res: THorseResponse; Next: Tproc);
  end;

implementation

{ TPessoaController }

class procedure TPessoaController.DeleteUser(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Status(THTTPStatus.NoContent);
  end;

class procedure TPessoaController.FindUser(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Send('{"id": 1, "nome": "Anderson Corrêa"}');
  end;

class procedure TPessoaController.GetPessoas(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Send('[{"id": 1, "nome": "Anderson Corrêa"}]');
  end;

class procedure TPessoaController.InsertUser(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Send(Req.Body).Status(THTTPStatus.Created);
  end;

class procedure TPessoaController.UpdateUser(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Status(THTTPStatus.NoContent);
  end;

end.
