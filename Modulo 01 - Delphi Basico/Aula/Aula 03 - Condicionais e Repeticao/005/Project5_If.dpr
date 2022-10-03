program Project5_If;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  THora = (opMeioDia = 12, opMeiaNoite = 18);
  TIdade = (opMenor = 16, opOpcional = 18, opMaior = 65);

function MaiorIdade(const aIdade: Byte): Boolean; // Por padr�o, tipo booleando � falso
begin
  if (TIdade(aIdade) < TIdade.opMenor) then
    begin
      Result := False
    end

  else if (TIdade(aIdade) < TIdade.opOpcional) then
    begin
      Result := False
    end
  else
    begin
      Result := True;
    end;
end;
function Periodo(const aHora: Byte): String;
begin
  if aHora <12 then
    begin
      Result := 'Bom dia'
    end

  else if aHora < 18 then
    begin
      Result := 'Boa tarde'
    end

  else
    begin
      Result := 'Boa noite'
    end;
end;

var
  xIdade: Byte;
  xHora: Byte;
  xStrPeriodo: String;
  xEntrada: String;

begin
  try
    writeln('Ol� entre com a sua idade:');
    Readln(xIdade);

    writeln('Entre com o hor�rio');
    Readln(xHora);

    xStrPeriodo :=  Periodo(xHora);

    if MaiorIdade(xIdade) then
      writeln(xStrPeriodo + '! Voc� � maior de idade e deve se alistar IMEDIATAMENTE!!!.')
    else
      writeln(xStrPeriodo + '! Voc� n�o � maior de idade.');

      Readln(xEntrada)

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
