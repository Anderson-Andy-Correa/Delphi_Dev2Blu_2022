program Aluguel;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UVehicle in '..\Model\Entities\UVehicle.pas',
  UInvoice in '..\Model\Entities\UInvoice.pas',
  UCarRental in '..\Model\Entities\UCarRental.pas',
  UBrazilTaxService in '..\Model\Services\UBrazilTaxService.pas',
  URentalService in '..\Model\Services\URentalService.pas';
var
  xCarModel: String;
  xStrStart, xStrFinish: String;
  xStart, xFinish: TDateTime;
  xCarRental: TCarRental;
  xStrPricePerHour, xStrPricePerDay: String;
  xPricePerHour, xPricePerDay: Double;
  xRentalService: TRentalService;

begin
  try
    Write('Entre com os dados do aluguel: ');
    Write('Modelo do Carro: ');
    ReadLn(xCarModel);

    Write('Retirada (dd/mm/yyyy hh:mm): ');
    ReadLn(xStrStart);
    TryStrToDateTime(xStrStart, xStart);

    Write('Retorno (dd/mm/yyyy hh:mm): ');
    ReadLn(xStrFinish);
    TryStrToDateTime(xStrFinish, xFinish);

    xCarRental := TCarRental.Create(xStart, xFinish, TVehicle.Create(xCarModel));

    Write('Entre com o preço por hora: ');
    ReadLn(xStrPricePerHour);
    TryStrToFloat(xStrPricePerHour, xPricePerHour);

    Write('Entre com o preço por dia: ');
    ReadLn(xStrPricePerDay);
    TryStrToFloat(xStrPricePerDay, xPricePerDay);

    xRentalService := TRentalService.Create(xPricePerDay, xPricePerHour)
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
