// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:9000/wsdl/ICalculadoraSoup
// Version  : 1.0
// (03/02/2023 19:49:00 - - $Rev: 103843 $)
// ************************************************************************ //

unit ICalculadoraSoup1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:CalculadoraSoupIntf-ICalculadoraSoup
  // soapAction: urn:CalculadoraSoupIntf-ICalculadoraSoup#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : ICalculadoraSoupbinding
  // service   : ICalculadoraSoupservice
  // port      : ICalculadoraSoupPort
  // URL       : http://localhost:9000/soap/ICalculadoraSoup
  // ************************************************************************ //
  ICalculadoraSoup = interface(IInvokable)
  ['{A6689209-1C8C-DD19-65B4-73544CC1F7F7}']
    function  Somar(const aNum1: Double; const aNum2: Double): Double; stdcall;
    function  Subtrair(const aNum1: Double; const aNum2: Double): Double; stdcall;
    function  Multiplicar(const aNum1: Double; const aNum2: Double): Double; stdcall;
    function  Dividir(const aNum1: Double; const aNum2: Double): Double; stdcall;
    function  TratarNumero(const aNum: string): Boolean; stdcall;
  end;

function GetICalculadoraSoup(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ICalculadoraSoup;


implementation
  uses System.SysUtils;

function GetICalculadoraSoup(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ICalculadoraSoup;
const
  defWSDL = 'http://localhost:9000/wsdl/ICalculadoraSoup';
  defURL  = 'http://localhost:9000/soap/ICalculadoraSoup';
  defSvc  = 'ICalculadoraSoupservice';
  defPrt  = 'ICalculadoraSoupPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ICalculadoraSoup);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { ICalculadoraSoup }
  InvRegistry.RegisterInterface(TypeInfo(ICalculadoraSoup), 'urn:CalculadoraSoupIntf-ICalculadoraSoup', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ICalculadoraSoup), 'urn:CalculadoraSoupIntf-ICalculadoraSoup#%operationName%');

end.