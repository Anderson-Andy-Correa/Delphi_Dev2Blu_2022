{ Invokable implementation File for TCalculadoraSoup which implements ICalculadoraSoup }

unit CalculadoraSoupImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, CalculadoraSoupIntf;

type

  { TCalculadoraSoup }
  TCalculadoraSoup = class(TInvokableClass, ICalculadoraSoup)
  public
    function Somar(const aNum1, aNum2: Double): Double; stdcall;
    function Subtrair(const aNum1, aNum2: Double): Double; stdcall;
    function Multiplicar(const aNum1, aNum2: Double): Double; stdcall;
    function Dividir(const aNum1, aNum2: Double): Double; stdcall;
    function TratarNumero(const aNum: String): Boolean; stdcall;
  end;

implementation

uses
  System.SysUtils;

{ TCalculadoraSoup }

function TCalculadoraSoup.Dividir(const aNum1, aNum2: Double): Double;
  begin
    if aNum2 = 0 then
      raise Exception.Create('Impossível dividir por 0!');

    Result := aNum1 / aNum2;
  end;

function TCalculadoraSoup.Multiplicar(const aNum1, aNum2: Double): Double;
  begin
    Result := aNum1 * aNum2;
  end;

function TCalculadoraSoup.Somar(const aNum1, aNum2: Double): Double;
  begin
    Result := aNum1 + aNum2;
  end;

function TCalculadoraSoup.Subtrair(const aNum1, aNum2: Double): Double;
  begin
    Result := aNum1 - aNum2;
  end;

function TCalculadoraSoup.TratarNumero(const aNum: String): Boolean;
  var
    xNum: Double;
  begin
    Result := TryStrToFloat(aNum, xNum);
  end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TCalculadoraSoup);
end.

