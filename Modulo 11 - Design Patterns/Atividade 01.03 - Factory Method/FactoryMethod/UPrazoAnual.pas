unit UPrazoAnual;

interface

uses
  UTipoPrazo;

Type
  TPrazoAnual = class(TInterfacedObject, ITipoPrazo)
    private
      FValorTotal: Real;
    public
      function ConsultarDescricao   : String;
      function ConsultarJuros       : String;
      function ConsultarProjecao(const aValor: Real;
        const aQtdParcelas: integer): String;
      function ConsultarTotal       : String;
  end;
implementation

uses
  System.SysUtils,
  System.Classes;

{ TprazoAnual }

function TPrazoAnual.ConsultarDescricao: String;
  begin
    Result := 'Prazo Anual para pagamento';
  end;

function TPrazoAnual.ConsultarJuros: String;
  begin
    Result := 'Juros de 10,5% somples ao ano' + sLineBreak;
  end;

function TPrazoAnual.ConsultarProjecao(const aValor: Real;
  const aQtdParcelas: integer): String;
  var
    xProjecao      : TStringList;
    xContador      : smallint;
    xValorAjustado : real;
    xDataParcela   : TDateTime;
  begin
    xValorAjustado := aValor;
    xDataParcela   := Date;
    xProjecao      := TStringList.Create;
    try
      for xContador := 1 to aQtdParcelas do
        begin
          xValorAjustado := xValorAjustado + (aValor * 1.105);
          xDataParcela   := IncMonth(xDataParcela, 12);

          xProjecao.Add(Format('Parcela %.2d (%s) : %m1',
            [xContador, DateToStr(xDataParcela), xValorAjustado]));

          FValorTotal := FValorTotal + xValorAjustado;
        end;

        Result := xProjecao.Text;
    finally
      FreeAndNil(xProjecao);
    end;
  end;

function TPrazoAnual.ConsultarTotal: String;
  begin
    Result := 'Total ' + FormatFloat('###,##0.00', FValorTotal);
  end;

end.
