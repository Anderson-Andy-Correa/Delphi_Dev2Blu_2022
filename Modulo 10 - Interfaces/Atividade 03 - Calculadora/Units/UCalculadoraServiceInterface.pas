unit UCalculadoraServiceInterface;

interface

type
  ICalculadoraService = interface
    ['{70C396D2-B44F-4AFB-A434-15C4B2F4D663}']

    function Sum     (aNum1, aNum2: Double): Double;
    function Subtract(aNum1, aNum2: Double): Double;
    function Multiply(aNum1, aNum2: Double): Double;
    function Divide  (aNum1, aNum2: Double): Double;
  end;

implementation

end.
