unit UCalculadora;

interface

Type
  TOperacoa = (opSomar, opSubtrair, opMultiplicar, opDividir);
  TCalculadora = class
    private
    protected
    public
      function TestarNumero (const aNum1, aNum2: String): Boolean;
      function somar        (const aNum1, aNum2: Double): Double;
      function Subtrair     (const aNum1, aNum2: Double): Double;
      function Multiplicar  (const aNum1, aNum2: Double): Double;
      function Dividir      (const aNum1, aNum2: Double): Double;
  end;

implementation

uses
  System.SysUtils;

{ TCalculadora }

function TCalculadora.Dividir(const aNum1, aNum2: Double): Double;
  begin
      Result := aNum1 / aNum2;
  end;

function TCalculadora.Multiplicar(const aNum1, aNum2: Double): Double;
  begin
    Result := aNum1 * aNum2;
  end;

function TCalculadora.somar(const aNum1, aNum2: Double): Double;
  begin
    Result := aNum1 + aNum2;
  end;

function TCalculadora.Subtrair(const aNum1, aNum2: Double): Double;
  begin
    Result := aNum1 - aNum2;
  end;

function TCalculadora.TestarNumero(const aNum1, aNum2: String): Boolean;
  var
    LNum1, LNum2: Double;
  begin
    Result := False;
    if (TryStrToFloat(aNum1, LNum1) and TryStrToFloat(aNum2, LNum2)) then
      Result := True;
  end;

end.
