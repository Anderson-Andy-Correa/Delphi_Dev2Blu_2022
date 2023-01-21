unit UVehicle;

interface

type
  TVehicle = class
    private
      FModel: String;

    function GetModel: String;
    procedure SetModel(const Value: String);

    public
      constructor Create(Const aModel: String);
      property Model: String read GetModel write SetModel;
  end;

implementation

{ TVehicle }

constructor TVehicle.Create(const aModel: String);
  begin
    FModel := aModel;
  end;

function TVehicle.GetModel: String;
  begin
    Result := FModel;
  end;

procedure TVehicle.SetModel(const Value: String);
  begin
    FModel := Value;
  end;

end.
