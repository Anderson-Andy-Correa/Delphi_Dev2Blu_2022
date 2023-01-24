unit URentalService;

interface

uses
  UCarRental, UTaxService;

type
  TRentalService = class
    private
      FPricePerDay : Double;
      FPricePerHour: Double;

      FTaxService: ITaxService;

    protected

    public
      constructor Create(const aPriceperDay, aPricePerHour: Double;
        aTaxService: ITaxService);
      destructor Destroy; override;

      procedure processInvoice(aCarRental: TCarRental);
  end;

implementation

uses
  Math, DateUtils, UInvoice, System.SysUtils;

{ TRentalService }

constructor TRentalService.Create(const aPriceperDay, aPricePerHour: Double;
  aTaxService: ITaxService);
  begin
    FPricePerDay  := aPriceperDay;
    FPricePerHour := aPricePerHour;
    FTaxService   := aTaxService;
  end;

destructor TRentalService.Destroy;
  begin
    // Variáveis/Atributos do Tipo interface não precisam liberar da memória
    // O Delphi faz isso para a gente
    //FreeAndNil(FTaxService);
    inherited;
  end;

procedure TRentalService.processInvoice(aCarRental: TCarRental);
  var
    xHours       : Double;
    xBasicPayment: Double;
    XTax         : Double;
  begin
    xHours := DateUtils.MilliSecondsBetween(aCarRental.Finish, aCarRental.Start)
    / 1000 / 60 / 60;

    if xHours <= 12 then
      xBasicPayment := FPricePerHour * Math.Ceil(xHours)
    else
      xBasicPayment := FPricePerDay  * Math.Ceil(xHours / 24);

    xTax := FTaxService.Tax(xBasicPayment);

    aCarRental.Invoice := TInvoice.Create(xBasicPayment, XTax);
  end;

end.
