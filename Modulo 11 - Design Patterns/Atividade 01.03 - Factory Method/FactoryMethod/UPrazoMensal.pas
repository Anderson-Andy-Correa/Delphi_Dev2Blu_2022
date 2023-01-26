unit UPrazoMensal;

interface

uses
  UTipoPrazo;

Type
  TPrazoMensal = class(TInterfacedObject, ITipoPrazo)
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
  System.SysUtils, System.Classes;

{ UPrazoMensal }

function TPrazoMensal.ConsultarDescricao: String;
  begin
    Result := 'Prazo Mensal para pagamento';
  end;

function TPrazoMensal.ConsultarJuros: String;
  begin
    Result := 'Juros de 3,1% somples ao mês' + sLineBreak;
  end;

function TPrazoMensal.ConsultarProjecao(const aValor: Real;
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
          xValorAjustado := xValorAjustado + (aValor * 0.031);
          xDataParcela   := IncMonth(xDataParcela, 1);

          xProjecao.Add(Format('Parcela %.2d (%s) : %m1',
            [xContador, DateToStr(xDataParcela), xValorAjustado]));

            FValorTotal := FValorTotal + xValorAjustado;
        end;

        Result := xProjecao.Text;
    finally
      FreeAndNil(xProjecao);
    end;
  end;

function TPrazoMensal.ConsultarTotal: String;
  begin
    Result := 'Total ' + FormatFloat('###,##0.00', FValorTotal);
  end;

end.

