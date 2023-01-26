unit UTipoPrazo;

interface

Type
  ITipoPrazo = interface
    ['{5E310373-0A48-421E-AA30-63554FAA7CE5}']
    function ConsultarDescricao   : String;
    function ConsultarJuros       : String;
    function ConsultarProjecao(const aValor: Real;
      const aQtdParcelas: integer): String;
    function ConsultarTotal       : String;
  end;

  IFactoryMethod = interface
    ['{0497844A-CA55-4F2A-80DD-EF9EFA5CA61C}']
    function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  end;
implementation

end.
