unit UCalculadora;

  interface

  type
    TCalculadora = Class
      private
      public
        function RetornarSoma( aNum1, aNum2: Integer): Integer;
    end;

  implementation

    {TCalculadora}

  function TCalculadora.RetornarSoma(aNum1: Integer; aNum2: Integer): Integer;
    begin
      Result := aNum1 + aNum2;
    end;

end.
