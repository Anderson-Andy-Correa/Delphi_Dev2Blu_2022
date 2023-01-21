unit URentalService;

interface

uses
  UBrazilTaxService, UCarRental;

type
  TRentalService = class
    private
      FPricePerDay : Double;
      FPricePerHour: Double;

      FTaxService: TBrazilTaxService;

    protected

    public
      constructor Create(const aPriceperDay, aPricePerHour: Double;
        aTaxService: TBrazilTaxService);
      destructor Destroy; override;

      procedure processInvoice(aCarRental: TCarRental);
  end;

implementation

uses
  Math, DateUtils, UInvoice, System.SysUtils;

{ TRentalService }

constructor TRentalService.Create(const aPriceperDay, aPricePerHour: Double;
  aTaxService: TBrazilTaxService);
  begin
    FPricePerDay  := aPriceperDay;
    FPricePerHour := aPricePerHour;
    FTaxService   := aTaxService;
  end;

destructor TRentalService.Destroy;
  begin
    FreeAndNil(FTaxService);
    inherited;
  end;

procedure TRentalService.processInvoice(aCarRental: TCarRental);
  var
    xHours       : Double;
    xBasicPayment: Double;
    XTax         : Double;
  begin
    xHours := DateUtils.MilliSecondsBetween(aCarRental.Finish, aCarRental.Start);

    if xHours <= 12 then
      xBasicPayment := FPricePerHour * Math.Ceil(xHours)
    else
      xBasicPayment := FPricePerDay * Math.Ceil(xHours / 24);

    xTax := FTaxService.Tax(xBasicPayment);

    aCarRental.Invoice := TInvoice.Create(xBasicPayment, XTax);
  end;

end.
