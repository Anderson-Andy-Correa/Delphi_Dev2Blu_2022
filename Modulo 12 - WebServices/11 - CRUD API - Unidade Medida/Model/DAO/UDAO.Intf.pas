unit UDAO.Intf;

interface

uses
  System.JSON;

type
  IDAO = interface
    function ObterRegistro: TJSONArray;
    function ProcurarPorId(const aIdentificaador: Integer): TJSONObject;
    function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  end;
implementation

end.
