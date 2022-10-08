unit UPessoa;

interface

type
  TPessoa = class
    private
      FNome: String;
      FDataNascimento: Tdate;
      FAltura: Double;
      FIdade: Word;

      function GetNome: String;
      function GetDataNascimento: Tdate;
      function GetAltura: Double;
      function GetIdade: Word;
      procedure SetNome(const aValue: String);
      procedure SetDataNascimento(const aValue: Tdate);
      procedure SetAltura(const aValue: Double);

    public
      function DadosPessoais: String;
      function CalcularIdade: Word;
      property Nome: String read GetNome write SetNome;
      property DataNascimento Tdate read GetDataNascimento write SetDataNascimento;
      property Altura: Double read GetAltura write SetAltura;
      property Idade: Word read GetIdade;
    end;

implementation

{ TPessoa }

function TPessoa.CalcularIdade: Word;
  var
  xData: TDate;
  begin

  end;

function TPessoa.DadosPessoais: String;
begin

end;

function TPessoa.GetAltura: Double;
  begin
    Result := FAltura;
  end;

function TPessoa.GetDataNascimento: Tdate;
  begin
    Result := FDataNascimento;
  end;

function TPessoa.GetIdade: Word;
  begin
    Result := FIdade;
  end;

function TPessoa.GetNome: String;
  begin
    Result := FNome;
  end;

procedure TPessoa.SetAltura(const aValue: Double);
  begin
    FAltura := aValue;
  end;

procedure TPessoa.SetDataNascimento(const aValue: Tdate);
  begin
    FDataNascimento := aValue;
  end;

procedure TPessoa.SetNome(const aValue: String);
  begin
    FNome := aValue;
  end;

end.
