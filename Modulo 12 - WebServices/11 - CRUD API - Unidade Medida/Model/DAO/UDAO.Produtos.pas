unit UDAO.Produtos;

interface

uses
  System.JSON, UDAO.Intf, DataSet.Serialize;

type
  TDAOProdutos = class(TInterfacedObject, IDAO)
    function ObterRegistro: TJSONArray;
    function ProcurarPorId(const aIdentificador: Integer)
  : TJSONObject;
    function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  end;

implementation

{ TDAOProdutos }

uses UUtil.Banco, System.SysUtils, FireDAC.Comp.Client;

function TDAOProdutos.AdicionarRegistro(aRegistro: TJSONObject): Boolean;
begin
  try
    Result := TUtilBanco.AdicionarRegistro('PRODUTOS', aRegistro.ToJSON);
  except
    on e: Exception do
      raise Exception.Create('Erro ao Adicionar Registro: ' + e.Message);
  end;
end;

function TDAOProdutos.DeletarRegistro(const aIdentificador: Integer): Boolean;
begin
  try
    Result := TUtilBanco.RemoverRegistro('PRODUTOS', aIdentificador);
  except
    on e: Exception do
      raise Exception.Create('Erro ao Remover Registro: ' + e.Message);
  end;
end;

function TDAOProdutos.ObterRegistro: TJSONArray;
var
  xQuery: TFDQuery;
begin
  xQuery := nil;
  try
    try
      xQuery := TUtilBanco.ExecutarConsulta('SELECT * FROM PRODUTOS');

      Result := xQuery.ToJSONArray();
    except
      on e: Exception do
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

function TDAOProdutos.ProcurarPorId(const aIdentificador: Integer)
  : TJSONObject;
var
  xQuery: TFDQuery;
begin
  xQuery := nil;
  try
    try
      xQuery := TUtilBanco.ExecutarConsulta(Format('SELECT * FROM PRODUTOS WHERE ID = %d', [aIdentificador]));

      Result := xQuery.toJSONObject();
      except
        on e: Exception do
          raise Exception.Create('Erro ao Obter Registro: ' + e.Message);
    end;

  finally
     FreeAndNil(xQuery);
  end;
end;

end.
