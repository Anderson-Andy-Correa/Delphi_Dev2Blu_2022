unit UCalculos;

interface
  function CalcularMedia(const aNota01, aNota02, aNota03: Double): Double;
  function Situacao(const aMedia: Double): String;


implementation

uses
  System.SysUtils;

  function CalcularMedia(const aNota01, aNota02, aNota03: Double): Double;
    var
      xMedia: Double;
    begin
      if (aNota01 >= 0) and (aNota01 <= 10) and
         (aNota02 >= 0) and (aNota02 <= 10) and
         (aNota03 >= 0) and (aNota03 <= 10) then
        begin
          xMedia := (aNota01 + aNota02 + aNota03) / 3;
          Result := xMedia;
        end
      else
        raise Exception.Create('Erro no valor das notas, tente novamente!');
    end;

  function Situacao(const aMedia: Double): String;
    begin
      if (aMedia >= 0) and (aMedia <= 5) then
      Result := 'Reprovado'
    else if (aMedia > 5) and (aMedia < 7) then
      Result := 'Recupera��o'
    else if (aMedia >= 7) and (aMedia <= 10) then
      Result := 'Aprovado'
    else
      raise Exception.Create('Erro no c�lculo da m�dia, tente novamente!');
    end;
end.
