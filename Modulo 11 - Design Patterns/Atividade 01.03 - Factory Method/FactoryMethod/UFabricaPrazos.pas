unit UFabricaPrazos;

interface

uses
  UTipoPrazo, UPrazoAnual, UPrazoMensal;

Type
  TFabricaPrazo = class(TInterfacedObject, IFactoryMethod)
    function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  end;

implementation

{ TFabricaPrazo }

function TFabricaPrazo.ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  begin
    if aPrazo = 'Mensal' then
      Result := TPrazoMensal.Create
    else if aPrazo = 'Anual' then
      Result := TPrazoAnual.Create;
  end;

end.
