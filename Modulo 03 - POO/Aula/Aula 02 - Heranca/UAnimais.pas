unit UAnimais;

interface

type
  TEnumAnimal = (stCachorro, stGato, stPassaro);

  //TObject - Primeira classe do Delphi - Toda classe herda dela
  TAnimal = class // Classe abstrata ou classe base
    private
      FPatas: Byte;

      function GetPatas: Byte;
      procedure SetPatas(const aValue: Byte);
    public
      //Método Abstrato
      //Virtual Abstract sempre são as filhas que terão a implementação
      function RetornarSom: String; virtual; abstract;
      property Patas: Byte read GetPatas write SetPatas;
  end;

  TCachorro = class(TAnimal)
    private
    public
      constructor Create;
      // Sobreescrita do método da classe pai
      function RetornarSom: String; override;
  end;

  TGato = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

  TPassaro = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

implementation

{ TAnimal }

function TAnimal.GetPatas: Byte;
  begin
    Result := FPatas;
  end;

procedure TAnimal.SetPatas(const aValue: Byte);
  begin
    FPatas := aValue;
  end;

{ TCachorro }

constructor TCachorro.Create;
  begin
    Patas := 4;
  end;

function TCachorro.RetornarSom: String;
  begin
    Result := 'Miau';
  end;

{ TGato }

constructor TGato.Create;
  begin
    Patas := 4;
  end;

function TGato.RetornarSom: String;
  begin
    Result := 'Glub';
  end;

{ TPassaro }

constructor TPassaro.Create;
  begin
    Patas := 2;
  end;

function TPassaro.RetornarSom: String;
  begin
    Result := 'Piru';
  end;

end.
