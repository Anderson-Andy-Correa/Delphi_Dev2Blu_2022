unit UController.UnidadeMedida;

interface

uses
  Horse;

type
  TControllerUnidadeMedida = class
    private
    public
      class procedure GetUnidadeMedidas  (Req: THorseRequest; Res: THorseResponse; Next: TProc);
      class procedure GetUnidadeMedida   (Req: THorseRequest; Res: THorseResponse; Next: TProc);
      class procedure PostUnidadeMedida  (Req: THorseRequest; Res: THorseResponse; Next: TProc);
      class procedure DeleteUnidadeMedida(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

{ TControllerProdutos }

uses UDAO.Intf, UDAO.UnidadeMedida, System.JSON, System.SysUtils;

class procedure TControllerUnidadeMedida.DeleteUnidadeMedida(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
  xId: Integer;
begin
  if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'], 0);

  xDAO := TDAOUnidadeMedida.Create;

  if xDAO.DeletarRegistro(xId) then
    Res.Status(THTTPStatus.NoContent)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

class procedure TControllerUnidadeMedida.GetUnidadeMedida(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDao: IDAO;
  xId: Integer;
begin
  if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'], 0);

  xDao := TDAOUnidadeMedida.Create;

  Res.Send<TJSONObject>(xDAO.ProcurarPorId(xId));
end;

class procedure TControllerUnidadeMedida.GetUnidadeMedidas(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
begin
  xDAO := TDAOUnidadeMedida.Create;

  Res.Send<TJSONArray>(xDAO.ObterRegistro);
end;

class procedure TControllerUnidadeMedida.PostUnidadeMedida(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xDAO: IDAO;
begin
  xDAO := TDAOUnidadeMedida.Create;

  if xDAO.AdicionarRegistro(Req.Body<TJSONObject>) then
    Res.Status(THTTPStatus.Created)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

end.
