unit UIMac;

interface

uses
  UInterfaces;

Type
  TImac = class(TInterfacedObject, IDesktop)
    Function BuscarNomeProcessador : String;
    function BuscarTamanhoHD       : String;
  end;

implementation

{ TImac }

function TImac.BuscarNomeProcessador: String;
  begin
    Result := 'Intel Core i7';
  end;

function TImac.BuscarTamanhoHD: String;
  begin
    Result := '500 GB';
  end;

end.
