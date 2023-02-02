{ Invokable interface ICalculadoraSoup }

unit CalculadoraSoupIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type

  TEnumTest = (etNone, etAFew, etSome, etAlot);

  TDoubleArray = array of Double;

  TMyEmployee = class(TRemotable)
  private
    FLastName: UnicodeString;
    FFirstName: UnicodeString;
    FSalary: Double;
  published
    property LastName: UnicodeString read FLastName write FLastName;
    property FirstName: UnicodeString read FFirstName write FFirstName;
    property Salary: Double read FSalary write FSalary;
  end;

  { Invokable interfaces must derive from IInvokable }
  ICalculadoraSoup = interface(IInvokable)
  ['{B2BC0ECD-A176-4E5D-9496-129E7CD07D4B}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function Somar(const aNum1, aNum2: Double): Double; stdcall;
    function Subtrair(const aNum1, aNum2: Double): Double; stdcall;
    function Multiplicar(const aNum1, aNum2: Double): Double; stdcall;
    function Dividir(const aNum1, aNum2: Double): Double; stdcall;
    function TratarNumero(const aNum: String): Boolean; stdcall;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ICalculadoraSoup));

end.
