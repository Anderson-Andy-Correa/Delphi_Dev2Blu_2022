unit UBomba;

interface

Type
  TTipo = (tpGasolinaComum, tpGasolinaAdtivada, tpDiesel, tpAlcool);
  TBomba = class
    private
      FTipoCombustivel : String;
      FValorPorLitro : Currency;
      FQtdCombustivel : Double;
      procedure SetQtdCombustivel(const Value: Double);
      procedure SetTipoCombustivel(const Value: String);
      procedure SetValorPorLitro(const Value: Currency);
      function GetQtdCombustivel: Double;
      function GetTipoCombustivel: String;
      function GetValorPorLitro: Currency;

    public
     property TipoCombustivel: String   read GetTipoCombustivel write SetTipoCombustivel;
     property ValorPorLitro:   Currency read GetValorPorLitro   write SetValorPorLitro;
     property QtdCombustivel:  Double   read GetQtdCombustivel  write SetQtdCombustivel;
     function AbastecerPorValor (aValor: String): String;
     function AbastecerPorLitro (aLitro: String): String;
     function AlterarValor (aValor: String): String;
     function AlterarCombustivel (aTipo: Byte): String;
     function AlterarQtdCombustivel (aQtd: String): String;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TBomba }

function TBomba.AbastecerPorLitro(aLitro: String): String;
  var
    xLitro: Double;
    xCusto: Currency;
  begin
    if (QtdCombustivel > 0) then
      begin
        if (TryStrToFloat(aLitro, xLitro)) and (xLitro > 0) and (xLitro <= QtdCombustivel) then
          begin
            xCusto := ValorPorLitro * xLitro;
            Result := (Format('Abastecendo %n litro(s), deve-se pagar R$%n.', [xLitro, xCusto]));
            QtdCombustivel := QtdCombustivel - xLitro;
          end
        else
          begin
            Result := 'Quantidade inválida ou maior que a quantidade atual da bomba.';
          end;
      end
    else
      begin
        Result := 'Bomba Vazia!';
      end;
  end;

function TBomba.AbastecerPorValor(aValor: String): String;
  var
    xLitro: Double;
    xCusto: Currency;
  begin
    if (QtdCombustivel > 0) then
      begin
        if (TryStrToCurr(aValor, xCusto)) and (xCusto > 0) and ((ValorPorLitro * xCusto) <= QtdCombustivel) then
          begin
            xLitro := xCusto / ValorPorLitro;
            Result := (Format('Abastecendo R$%n, irá ser preenchido %n litro(s).', [xCusto, xLitro]));
            QtdCombustivel := QtdCombustivel - xLitro;
          end
        else
          begin
            Result := 'Quantidade inválida ou maior que a quantidade atual da bomba.';
          end;
      end
    else
      begin
        Result := 'Bomba Vazia!';
      end;
  end;

function TBomba.AlterarCombustivel(aTipo: Byte): String;
  begin
    case TTipo(aTipo) of
      tpGasolinaComum:
        begin
          Result := 'Tipo = Gasolina Comum';
          ValorPorLitro := 5.641;
        end;

      tpGasolinaAdtivada:
        begin
          Result := 'Tipo = Gasolina Adtivada';
          ValorPorLitro := 6.90;
        end;

      tpDiesel:
        begin
          Result := 'Tipo = Diesel';
          ValorPorLitro := 4.492;
        end;

      tpAlcool:
        begin
          Result := 'Tipo = Álcool';
          ValorPorLitro := 5.39;
        end;
    end;
  end;

function TBomba.AlterarQtdCombustivel(aQtd: String): String;
  var
    xQtd: Double;
  begin
    if TryStrToFloat(aQtd, xQtd) then
      begin
        FValorPorLitro := xQtd;
        Result := aQtd;
      end
    else
      begin
        Result := 'Quantidade inválida.';
      end;
  end;

function TBomba.AlterarValor(aValor: String): String;
  var
    xValor: Currency;
  begin
    if TryStrToCurr(aValor, xValor) then
      begin
        FValorPorLitro := xValor;
        Result := aValor;
      end
    else
      begin
        Result := 'Valor inválido.';
      end;
  end;

function TBomba.GetQtdCombustivel: Double;
  begin
    Result := FQtdCombustivel;
  end;

function TBomba.GetTipoCombustivel: String;
  begin
    Result := FTipoCombustivel;
  end;

function TBomba.GetValorPorLitro: Currency;
  begin
    Result := FValorPorLitro;
  end;

procedure TBomba.SetQtdCombustivel(const Value: Double);
  begin
    FQtdCombustivel := Value;
  end;

procedure TBomba.SetTipoCombustivel(const Value: String);
  begin
    FTipoCombustivel := Value;
  end;

procedure TBomba.SetValorPorLitro(const Value: Currency);
  begin
    FValorPorLitro := Value;
  end;

end.
