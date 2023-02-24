unit UService.intf;

interface

type
  IService = interface
    procedure CarregarToken;
    procedure Registrar;
    procedure Listar;
    procedure Excluir;

    function ObterRegistro(const aID: Integer): TObject;
  end;

implementation

end.
