unit UintCalculadora;

interface

type
  ICalculadora = interface
    ['{865947FD-309F-4B3A-A13A-30D34BC22AC8}']

    function Somar                                   : Double;
    function Subtrair                                : Double;
    function Multiplicar                             : Double;
    function Dividir                                 : Double;
    function TestarValores (aValor1, aValor2: String): Boolean;

  end;

implementation

end.
