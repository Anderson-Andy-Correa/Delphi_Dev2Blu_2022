unit UElevador;

interface

Type
  TElevador = class
  private
    FAndarAtual: Integer;
    FAndarTotal: Integer;
    FPessoa    : Integer;
    FCapacidade: Integer;
    FTotPessoas: Array of Integer;

    procedure SetAndarTotal(const Value: Integer);
    procedure SetCapacidade(const Value: Integer);
    procedure SetTotPessoas(Index: Integer; const Value: Integer);
    procedure SetTotPessoasCount(const Value: Integer);

    function GetTotPessoas(Index: Integer): Integer;
    function GetTotPessoasCount: Integer;

  public
    constructor Create(aCapacidade, aAndarTotal: Integer);

    property AndarAtual                : Integer read FAndarAtual;
    property AndarTotal                : Integer read FAndarTotal write SetAndarTotal;
    property Pessoa                    : Integer read FPessoa;
    property TotPessoas[Index: Integer]: Integer read GetTotPessoas write SetTotPessoas;
    property TotPessoasCount           : Integer read GetTotPessoasCount write SetTotPessoasCount;
    property Capacidade                : Integer read FCapacidade write SetCapacidade;

    procedure Entrar(aPessoas: Integer);
    procedure Sair  (aPessoas: Integer);
    function Subir  (aAndares: Integer): Integer;
    function Descer (aAndares: Integer): Integer;
  end;

implementation

uses
  System.SysUtils;

{ TElevador }

constructor TElevador.Create(aCapacidade, aAndarTotal: Integer);
  begin
    FCapacidade := aCapacidade;
    FAndarTotal := aAndarTotal;
    FAndarAtual := 0;
    FPessoa     := 0;
  end;

procedure TElevador.SetAndarTotal(const Value: Integer);
  begin
    FAndarTotal := Value;
  end;

procedure TElevador.SetCapacidade(const Value: Integer);
  begin
    FCapacidade := Value;
  end;

procedure TElevador.SetTotPessoas(Index: Integer; const Value: Integer);
  begin
    FTotPessoas[Index] := Value;
  end;

procedure TElevador.SetTotPessoasCount(const Value: Integer);
  begin
    SetLength(FTotPessoas, Value);
  end;

procedure TElevador.Entrar(aPessoas: Integer);
  begin
    if TotPessoasCount > Capacidade then
      raise Exception.Create('Valor maior que a Capacidade!');
    FPessoa := FPessoa + aPessoas;
  end;

function TElevador.GetTotPessoas(Index: Integer): Integer;
  begin
    Result := FTotPessoas[Index];
  end;

function TElevador.GetTotPessoasCount: Integer;
  begin
    Result := Length(FTotPessoas);
  end;

procedure TElevador.Sair(aPessoas: Integer);
  begin
    if TotPessoasCount <= 0 then
      raise Exception.Create('Não há pessoas!');
    FPessoa := FPessoa - aPessoas;
  end;

function TElevador.Subir(aAndares: Integer): Integer;
  begin
    if (TotPessoasCount <= 0) then
      raise Exception.Create('Fantasma no Elevadoooor!');
    if ((AndarAtual + aAndares) > AndarTotal) then
      raise Exception.Create('Já está no Terraço!');
    FAndarAtual := FAndarAtual + aAndares;
  end;

function TElevador.Descer(aAndares: Integer): Integer;
  begin
    if (TotPessoasCount <= 0) then
      raise Exception.Create('Fantasma no Elevadoooor!');
    if (AndarAtual - aAndares) < 0 then
      raise Exception.Create('Já está no Térreo!');
    FAndarAtual := FAndarAtual - aAndares;
  end;
end.
