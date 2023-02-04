unit UCalculadora;

interface

uses
  UintCalculadora;

type
  TCalculadora = class(TInterfacedObject, ICalculadora)
    private
      FValor1: Double;
      FValor2: Double;
    protected

    public
      function Somar                                   : Double;
      function Subtrair                                : Double;
      function Multiplicar                             : Double;
      function Dividir                                 : Double;
      function TestarValores (aValor1, aValor2: String): Boolean;
      constructor Create (aValor1, aValor2: String; aParametros: Boolean);
  end;

implementation

uses
  System.SysUtils;

{ TCalculadora }

constructor TCalculadora.Create(aValor1, aValor2: String; aParametros: Boolean);
  begin
    if aParametros then
      raise Exception.Create('Parâmetros incorretos!');

    TestarValores(aValor1, aValor2);
  end;

function TCalculadora.Dividir: Double;
  begin
    if FValor2 = 0 then
      raise Exception.Create('Não se pode dividir por 0!');

    result := FValor1 / FValor2;
  end;

function TCalculadora.Multiplicar: Double;
  begin
    result := FValor1 * FValor2;
  end;

function TCalculadora.Somar: Double;
  begin
    result := FValor1 + FValor2;
  end;

function TCalculadora.Subtrair: Double;
  begin
    result := FValor1 - FValor2;
  end;

function TCalculadora.TestarValores(aValor1, aValor2: String): Boolean;
  begin
    if not TryStrToFloat(aValor1, FValor1) then
      raise Exception.Create('Erro ao inserir o primeiro valor');

    if not TryStrToFloat(aValor2, FValor2) then
      raise Exception.Create('Erro ao inserir o Segundo valor');

    Result := True;
  end;

end.
