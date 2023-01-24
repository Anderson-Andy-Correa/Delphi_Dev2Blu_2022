unit UCalculadoraServiceDefault;

interface

uses UCalculadoraServiceInterface;

type
  TCalculadoraServiceDefault = class(TInterfacedObject, ICalculadoraService)
    private

    protected

    public
      function Sum     (aNum1, aNum2: Double): Double;
      function Subtract(aNum1, aNum2: Double): Double;
      function Multiply(aNum1, aNum2: Double): Double;
      function Divide  (aNum1, aNum2: Double): Double;
  end;

implementation

{ TCalculadoraServiceDefault }

function TCalculadoraServiceDefault.Divide(aNum1, aNum2: Double): Double;
  begin
    if aNum2 <> 0 then
      Result := aNum1 / aNum2;
  end;

function TCalculadoraServiceDefault.Multiply(aNum1, aNum2: Double): Double;
  begin
    Result := aNum1 * aNum2;
  end;

function TCalculadoraServiceDefault.Subtract(aNum1, aNum2: Double): Double;
  begin
    Result := aNum1 - aNum2;
  end;

function TCalculadoraServiceDefault.Sum(aNum1, aNum2: Double): Double;
  begin
    Result := aNum1 + aNum2;
  end;

end.
