unit UElevador;

interface

Type
  TElevador = class
  private
    FAndarAtual: Byte;
    FAndarTotal: Byte;
    FPessoas: Byte;
    FCapacidade: Byte;

    procedure SetAndarTotal(const Value: Byte);
    procedure SetCapacidade(const Value: Byte);

  public
    constructor Create(aCapacidade, aAndarTotal: Byte);

    property AndarAtual: Byte read FAndarAtual;
    property AndarTotal: Byte read FAndarTotal write SetAndarTotal;
    property Pessoas   : Byte read FPessoas;
    property Capacidade: Byte read FCapacidade write SetCapacidade;

    procedure Entrar(aPessoas: Byte);
    procedure Sair  (aPessoas: Byte);
    function Subir (aAndares: Byte): Byte;
    function Descer(aAndares: Byte): Byte;
  end;

implementation

uses
  System.SysUtils;

{ TElevador }

constructor TElevador.Create(aCapacidade, aAndarTotal: Byte);
  begin
    FCapacidade := aCapacidade;
    FAndarTotal := aAndarTotal;
    FAndarAtual := 0;
    FPessoas    := 0;
  end;

procedure TElevador.SetAndarTotal(const Value: Byte);
  begin
    FAndarTotal := Value;
  end;

procedure TElevador.SetCapacidade(const Value: Byte);
  begin
    FCapacidade := Value;
  end;

procedure TElevador.Entrar(aPessoas: Byte);
  begin
    if (Pessoas + aPessoas) > Capacidade then
      raise Exception.Create('Valor maior que a Capacidade!');
    FPessoas := FPessoas + aPessoas;
  end;

procedure TElevador.Sair(aPessoas: Byte);
  begin
    if (Pessoas + aPessoas) < 0 then
      raise Exception.Create('Valor menor 0!');
    FPessoas := FPessoas - aPessoas;
  end;

function TElevador.Subir(aAndares: Byte): Byte;
  begin
    if (AndarAtual + aAndares) > AndarTotal then
      raise Exception.Create('Valor menor que o Terraço!');
    FAndarAtual := FAndarAtual + aAndares;
  end;

function TElevador.Descer(aAndares: Byte): Byte;
  begin
    if (AndarAtual - aAndares) < 0 then
      raise Exception.Create('Valor menor que o Térreo!');
    FAndarAtual := FAndarAtual - aAndares;
  end;
end.
