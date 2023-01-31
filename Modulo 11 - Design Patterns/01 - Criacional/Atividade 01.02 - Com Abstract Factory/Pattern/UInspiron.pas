unit UInspiron;

interface

uses
  UInterfaces;

Type
  TInspiron = class(TInterfacedObject, IDesktop)
    Function BuscarNomeProcessador : String;
    function BuscarTamanhoHD       : String;
  end;

implementation

{ TInspiron }

function TInspiron.BuscarNomeProcessador: String;
  begin
    Result := 'Intel Core i5';
  end;

function TInspiron.BuscarTamanhoHD: String;
  begin
    Result := '1 TB';
  end;

end.
