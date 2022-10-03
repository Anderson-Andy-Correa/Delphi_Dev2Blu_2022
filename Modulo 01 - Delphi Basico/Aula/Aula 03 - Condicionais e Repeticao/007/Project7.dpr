program Project7;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  xQtdeEntrada: integer;
  xNumero: double;
  I: integer;
  xEntradaFloat: Double;
  xSoma: double;
  xMedia: double;

begin
  try
    xSoma := 0;

    //imprimir a soma da quanridade de número de entrada
    write('Entre com a quantidade total de números: ');
    Readln(xQtdeEntrada);

    for I := 1 to xQtdeEntrada do
      begin
        Write('Entre com o ' + IntToStr(I) + 'º número: ');
        ReadLn(xNumero);

        xSoma := xSoma + xNumero;
      end;
      xEntradaFloat := xQtdeEntrada;
      xMedia := xSoma div xEntradaFloat;
      Writeln('A média dos números é: ' + FloatToStr(xMedia));
      Write('Fim!');
      ReadLn;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
