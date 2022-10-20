unit UJogador;

interface

Type
  TJogador = class
    private
      FIdade    : Byte;
      FIdJogador: Integer;
      FNome     : String;
      FPosicao  : String;

      procedure SetIdade(const Value: Byte);
      procedure SetIDJogador(const Value: Integer);
      procedure SetNome(const Value: String);
      procedure SetPosicao(const Value: String);

    public
      property Idade    : Byte    read FIdade     write SetIdade;
      property IDJogador: Integer read FIDJogador write SetIDJogador;
      property Nome     : String  read FNome      write SetNome;
      property Posicao  : String  read FPosicao   write SetPosicao;

    end;

implementation

{ Jogador }

procedure TJogador.SetIdade(const Value: Byte);
  begin
    FIdade := Value;
  end;

procedure TJogador.SetIDJogador(const Value: Integer);
  begin
    FIDJogador := Value;
  end;

procedure TJogador.SetNome(const Value: String);
  begin
    FNome := Value;
  end;

procedure TJogador.SetPosicao(const Value: String);
  begin
    FPosicao := Value;
  end;

end.
