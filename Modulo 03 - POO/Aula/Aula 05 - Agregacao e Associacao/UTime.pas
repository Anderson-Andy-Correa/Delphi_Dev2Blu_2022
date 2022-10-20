unit UTime;

interface

Uses
  UJogador, System.Generics.Collections;

type
  TTime = class
    private
      FNomeTime: String;
      FTecnico: String;
      FIDTime: Integer;
      FAnoFuncacao: TDate;
      FJogadores: TList<TJogador>;

      procedure SetAnoFuncacao(const Value: TDate);
      procedure SetIDTime(const Value: Integer);
      procedure SetNomeTime(const Value: String);
      procedure SetTecnico(const Value: String);

    public
      constructor Create(aJogadores: TList<TJogador>);

      property AnoFuncacao: TDate           read FAnoFuncacao write SetAnoFuncacao;
      property NomeTime   : String          read FNomeTime    write SetNomeTime;
      property Tecnico    : String          read FTecnico     write SetTecnico;
      property IDTime     : Integer         read FIDTime      write SetIDTime;
      property Jogadores  : TList<TJogador> read FJogadores;
  end;

implementation

{ Time }

constructor TTime.Create(aJogadores: TList<TJogador>);
  begin
    inherited create;

    FJogadores := aJogadores;
  end;

procedure TTime.SetAnoFuncacao(const Value: TDate);
  begin
    FAnoFuncacao := Value;
  end;

procedure TTime.SetIDTime(const Value: Integer);
  begin
    FIDTime := Value;
  end;

procedure TTime.SetNomeTime(const Value: String);
  begin
    FNomeTime := Value;
  end;

procedure TTime.SetTecnico(const Value: String);
  begin
    FTecnico := Value;
  end;

end.
