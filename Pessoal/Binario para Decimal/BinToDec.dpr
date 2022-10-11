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
    while True do
      begin
        xAux   := '';
        xFinal := '';
        Write('Digite um número em decimal para covnerter em binário (Use 0 para sair): ');
        readln(xNum);

        xInicial := xNum;
        if xInicial = 0 then
          begin
            break
          end;

        while xNum > 0 do
          begin
            xAux := xAux + (IntToStr(xNum mod 2));
            xNum := xNum - (xNum div 2) - (xNum mod 2);
          end;
        for I := 0 to Length(xAux) - 1 do
          begin
            xFinal := xFinal + xAux[length(xAux) - I];
          end;
        WriteLn(Format('O valor inicial de %d em decimal é convertido para %s em binário.', [xInicial, xFinal]));
      end;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
