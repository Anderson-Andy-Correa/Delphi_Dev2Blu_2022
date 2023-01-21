unit UBrazilTaxService;

interface

Type
  TBrazilTaxService = class
    private

    protected

    public
      function Tax (const aAmount: Double): Double;
  end;

implementation

{ TBrazilTaxServices }

function TBrazilTaxService.Tax(const aAmount: Double): Double;
  begin
    if (aAmount <= 100) then
      Result := aAmount * 0.2
    else
      Result := aAmount * 0.15;
  end;

end.
