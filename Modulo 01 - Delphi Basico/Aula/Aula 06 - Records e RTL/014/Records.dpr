program Records;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Type
  TRegCliente = record
    Codigo: integer;
    Nome: String;
    Idade: Byte;
  end;
var
  xCliente: TRegCliente;
begin
  try
    Write('Entre com o Código do Cliente: ');
    ReadLn(xCliente.Codigo);

    Write('Entre com o Nome do cliente: ');
    ReadLn(xCliente.Nome);

    Write('Entre com a Idade do Cliente: ');
    Readln(xCliente.Idade);

    Writeln('Código: ' + xCliente.Codigo.ToString);
    WriteLn('Nome: ' + xCliente.Nome);
    WriteLn('Idade: ' + xCliente.Idade.ToString);

    WriteLn('Olá, ' + xCliente.Nome + '. Como vai você?');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
