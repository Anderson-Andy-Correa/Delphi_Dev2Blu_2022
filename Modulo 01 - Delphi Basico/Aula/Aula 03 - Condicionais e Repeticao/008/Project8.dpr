program Project8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  xSaldo, xSangria: Currency;
  xContinuar: Byte;

begin
  try
    //Retirada de dinheiro da conta
    WriteLn('Retirada de dinheiro da conta');

    Write('Entre com o saldo da sua conta: ');
    ReadLN(xSaldo);

    while xSaldo > 0 do
    begin
      Writeln('Seu saldo atual �: ' + FloatToStr(xSaldo));
      Write('Qual ser� o valor da sua retirada? ');
      ReadLn(xSangria);

      if xSaldo >= xSangria then
        begin
          xsaldo := xsaldo - xSangria;
        end
      else
        begin
          WriteLn('Desculpe, o seu saldo n�o � suficiente para essa a��o.');
        end;

      Write('Deseja continuar com as returadas? (1 - Sim / 2 - N�o) ');
      ReadLn(xContinuar);

      if xContinuar <> 1 then
        break;
    end;

    Write('Seu saldo final �: ' + FloatToStr(xSaldo));
    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
