unit UController.Produto;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  System.JSON,
  UProduto,
  UEnvioJSON,
  System.SysUtils;

type
  [SwagPath('produto', 'Produtos')]
  TProdutoController = class
    private

    protected

    public
      [SwagGet('Listar produtos', True)]
      [SwagParamQuery('id', 'id do produto')]
      [SwagResponse(200, TProduto, 'Informações do Produto', True)]
      class procedure GetProduct(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagGet('{id}', 'Procurar um produto')]
      [SwagParamPath('id', 'id do produto')]
      [SwagResponse(200, TProduto, 'Informações do Preoduto')]
      [SwagResponse(404)]
      class procedure FindProduct(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagPost('Adicionar Nova Pessoa')]
      [SwagParamBody('Informações do Preoduto', TProduto)]
      [SwagResponse(200, TProduto)]
      class procedure InsertProduct(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagPut('{id}', 'Atualizar um produto')]
      [SwagParamPath('id', 'id do produto')]
      [SwagParamBody('Informações do Preoduto', TProduto)]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure UpdateProduct(Req: THorseRequest; Res: THorseResponse; Next: Tproc);

      [SwagDelete('{id}', 'Deletar um produto')]
      [SwagParamPath('id', 'id do produto')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure DeleteProduct(Req: THorseRequest; Res: THorseResponse; Next: Tproc);
  end;

implementation

{ TProdutoController }

class procedure TProdutoController.DeleteProduct(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
    var
      xID: Integer;
      xEnvioJSON: TEnvioJSON;
    begin
      xEnvioJSON := TEnvioJSON.Create('Produto.json');
      try
        xID := StrToInt(Req.Params.Items['id']);

        if xEnvioJSON.RemoverRegistro(xID) then
          Res.Status(THTTPStatus.NoContent)
        else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xEnvioJSON.Free;
      end;
    end;

class procedure TProdutoController.FindProduct(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Send('{"id": 0, "Descricao": "Lâmina",' +
      '"UnidadeMedida": "Un", "PrecoVenda": "20"}');
  end;

class procedure TProdutoController.GetProduct(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
    var
      xEnvioJSON: TEnvioJSON;
    begin
      xEnvioJSON := TEnvioJSON.Create('Produto.json');
      try
        Res.Send<TJSONArray>(xEnvioJSON.JSON);
      finally
        xEnvioJSON.Free;
      end;
    end;

class procedure TProdutoController.InsertProduct(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  var
      xEnvioJSON: TEnvioJSON;
    begin
      xEnvioJSON := TEnvioJSON.Create('Produto.json');
      try
        if xEnvioJSON.AdicionarRegistro(Req.Body<TJSONObject>) then
          Res.Status(THTTPStatus.OK)
        else
          Res.Status(THTTPStatus.InternalServerError);
      finally
        xEnvioJSON.Free;
      end;
    end;

class procedure TProdutoController.UpdateProduct(Req: THorseRequest;
  Res: THorseResponse; Next: Tproc);
  begin
    Res.Status(THTTPStatus.NoContent);
  end;

end.
