program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var

xEntrada: String;
xMeuNome: String;
xMinhaIdade: Byte;
xCasado: Boolean;
xCotacaoDolar: Currency;

begin

  try

    xMeuNome      := 'Anderson';
    xMinhaIdade   := 24;
    xCasado       := False;
    xCotacaoDolar := 5.25;

    Write ('Greeting, I am ' + xMeuNome + ' ');
    Write (InttoStr(xMinhaIdade) + ' year old, I was born and stil live in Blumenau. ');
    Writeln ('I am n' + BoolToStr(xCasado) + 't married yet, but pretending... ');
    Writeln ('The actual currency of Dollar is ' + FloatToStr(xCotacaoDolar)+ ' reais.');

    Readln(xEntrada)

  except

    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
