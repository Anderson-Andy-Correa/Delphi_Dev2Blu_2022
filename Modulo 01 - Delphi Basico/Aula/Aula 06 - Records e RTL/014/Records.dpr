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
    Write('Entre com o C�digo do Cliente: ');
    ReadLn(xCliente.Codigo);

    Write('Entre com o Nome do cliente: ');
    ReadLn(xCliente.Nome);

    Write('Entre com a Idade do Cliente: ');
    Readln(xCliente.Idade);

    Writeln('C�digo: ' + xCliente.Codigo.ToString);
    WriteLn('Nome: ' + xCliente.Nome);
    WriteLn('Idade: ' + xCliente.Idade.ToString);

    WriteLn('Ol�, ' + xCliente.Nome + '. Como vai voc�?');

    ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
