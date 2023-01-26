unit UVostro;

interface

uses
  UInterfaces;

Type
  TVostro = class(TInterfacedObject, INoteBook)
    Function BuscarTamanhoTela : String;
    function BuscarMemoriaRam  : String;
  end;

implementation

{ TVostro }

function TVostro.BuscarTamanhoTela: String;
  begin
    Result := '3GB DDR3';
  end;

function TVostro.BuscarMemoriaRam: String;
  begin
    Result := '15 Polegadas';
  end;

end.
