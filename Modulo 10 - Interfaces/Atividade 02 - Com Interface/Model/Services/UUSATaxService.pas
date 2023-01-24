unit UUSATaxService;

interface

uses UTaxService;

Type
  TUSATaxService = class(TInterfacedObject, ITaxService)
    private

    protected

    public
      function Tax(const aAmount: Double): Double;
  end;

implementation

{ TBrazilTaxServices }

function TUSATaxService.Tax(const aAmount: Double): Double;
  begin
    if (aAmount <= 100) then
      Result := aAmount * 0.3
    else
      Result := aAmount * 0.2;
  end;

end.
