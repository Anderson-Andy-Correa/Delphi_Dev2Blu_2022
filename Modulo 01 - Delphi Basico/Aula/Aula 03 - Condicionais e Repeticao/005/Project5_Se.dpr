program Project5_Se;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function MaiorIdade(const aIdade: Byte): Boolean;
begin
  if aIdade >= 18 then
    Result := True
  else
    Result := False;
end;
function Periodo(const aHora: Byte): String;
begin
  if aHora <12 then
    Result := 'Bom dia'
  else if aHora < 18 then
    Result := 'Boa tarde'
  else
    Result := 'Boa noite'
end;
begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
