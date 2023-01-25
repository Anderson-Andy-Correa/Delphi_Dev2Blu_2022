unit UMacBook;

interface

uses
  UInterfaces;

Type
  TMacBook = class(TInterfacedObject, INoteBook)
    Function BuscarTamanhoTela : String;
    function BuscarMemoriaRam  : String;
  end;

implementation

{ TMacBook }

function TMacBook.BuscarTamanhoTela: String;
  begin
    Result := '4GB DDR3';
  end;

function TMacBook.BuscarMemoriaRam: String;
  begin
    Result := '11.6 Polegadas';
  end;

end.
