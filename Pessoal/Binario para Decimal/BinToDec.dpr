program BinToDec;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
var
  xInicial, xNum, I: Integer;
  xAux, xFinal: String;
begin
  try
    xAux   := '';
    xFinal := '';
    Write('Digite um número em decimal para covnerter em binário: ');
    xNum :=(xNum);
    xInicial := xNum;

    while xNum > 1 do
      begin
        xAux := xAux + (IntToStr(xNum mod 2));
        xNum := xNum - (xNum div 2 * xNum);
      end;
    for I := 1 to Length(xAux) do
      begin
        xFinal := xFinal + xAux[length(xAux) - 1];
      end;
    WriteLn(Format('O valor inicial de %d em decimal é convertido para %d em binário.', [xInicial, xFinal]));

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
