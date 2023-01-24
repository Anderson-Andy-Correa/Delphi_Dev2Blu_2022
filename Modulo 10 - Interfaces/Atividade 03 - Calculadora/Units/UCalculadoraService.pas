unit UCalculadoraService;

interface

uses UCalculadoraServiceInterface;

Type
  TTypeCalc = (tpSum, tpSubtract, tpMultiply, tpDivide);
  TCalculatorService = class
    private
      FNum1 : Double;
      FNum2 : Double;

      FCalculadoraService: ICalculadoraService;
    protected

    public
      constructor Create(aNum1, aNum2 : Double;
        aCalculadoraService: ICalculadoraService);
      function processCalc(aTypeCalc: TTypeCalc): Double;
  end;

implementation

{ TCalculatorService }

constructor TCalculatorService.Create(aNum1, aNum2: Double;
  aCalculadoraService: ICalculadoraService);
  begin
    FNum1 := aNum1;
    FNum2 := aNum2;
    FCalculadoraService := aCalculadoraService;
  end;

function TCalculatorService.processCalc(aTypeCalc: TTypeCalc): Double;
  begin
    case aTypeCalc of
      tpSum:
        result := FCalculadoraService.Sum(FNum1, FNum2);
      tpSubtract:
        result := FCalculadoraService.Subtract(FNum1, FNum2);
      tpMultiply:
        result := FCalculadoraService.Multiply(FNum1, FNum2);
      tpDivide:
        result := FCalculadoraService.Divide(FNum1, FNum2);
    end;

  end;

end.
