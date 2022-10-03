program Project11;

  {$APPTYPE CONSOLE}

  {$R *.res}

  uses
    System.SysUtils;

  var
    x,y: Integer;

    begin
      try
        x := 5; // Bookmark com Ctrl + Shift + 1
        y:= 0;

        Writeln('X começa com o valor ' + IntToStr(x) + ' e Y começa com '
        + IntToStr(y));

        while (x >2) do
          begin

            //if x = 4 then
              //continue; Tomar muito cuidado para não ocorrer loop infinito.

            writeLn('X = ' + IntToStr(x));

            y:= y + x; // Pular para o Bookmark com Ctrl e o número
            x:= x - 1;

            //if x = 3 then
              //break;

          end;
        WriteLn('No final, X contém o valor de ' + IntToStr(x) + ' e Y com ' + IntToStr(y));
        Readln;
      except
        on E: Exception do
          Writeln(E.ClassName, ': ', E.Message);
    end;
end.
