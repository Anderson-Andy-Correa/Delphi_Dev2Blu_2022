unit UInterfaceViaCep;

interface

type
  IWebServiceViaCEP = interface
    ['{440320B6-BDE1-4029-91B0-5A8B0687112F}']
    procedure ConsultarEnderecoWebService(const aCep: String);
    function  ObterLogradouro: String;
    function  ObterBairro    : String;
    function  ObterCidade    : String;
  end;

implementation

end.
