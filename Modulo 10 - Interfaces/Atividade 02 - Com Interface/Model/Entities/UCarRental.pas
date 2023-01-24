unit UCarRental;

interface

uses UInvoice, UVehicle;

Type
  TCarRental = class
    private
      FStart : TDateTime;
      FFinish: TDateTime;

      FVehicle: TVehicle;
      FInvoice: TInvoice;

      procedure SetStart(const Value: TDateTime);
      procedure SetFinish(const Value: TDateTime);
      procedure SetVehicle(const Value: TVehicle);
      procedure SetInvoice(const Value: TInvoice);

      function GetStart: TDateTime;
      function GetFinish: TDateTime;
      function GetVehicle: TVehicle;
      function GetInvoice: TInvoice;

    protected

    public
      constructor Create(Const aStart, aFinish: TDateTime; aVehicle: TVehicle);

      property Start  : TDateTime read GetStart   write SetStart;
      property Finish : TDateTime read GetFinish  write SetFinish;
      property Vehicle: TVehicle  read GetVehicle write SetVehicle;
      property Invoice: TInvoice  read GetInvoice write SetInvoice;
  end;

implementation

{ TCarRental }


{ TCarRental }

constructor TCarRental.Create(const aStart, aFinish: TDateTime;
  aVehicle: TVehicle);
  begin
    FStart := aStart;
    FFinish := aFinish;
    FVehicle := aVehicle;
  end;

function TCarRental.GetFinish: TDateTime;
  begin
    Result := FFinish;
  end;

function TCarRental.GetInvoice: TInvoice;
  begin
    Result := FInvoice;
  end;

function TCarRental.GetStart: TDateTime;
  begin
    Result := FStart;
  end;

function TCarRental.GetVehicle: TVehicle;
  begin
    Result := FVehicle;
  end;

procedure TCarRental.SetFinish(const Value: TDateTime);
  begin
    FFinish := Value;
  end;

procedure TCarRental.SetInvoice(const Value: TInvoice);
  begin
    FInvoice := Value;
  end;

procedure TCarRental.SetStart(const Value: TDateTime);
  begin
    FStart := Value;
  end;

procedure TCarRental.SetVehicle(const Value: TVehicle);
  begin
    FVehicle := Value;
  end;

end.
