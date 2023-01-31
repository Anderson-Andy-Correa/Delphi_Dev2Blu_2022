unit UAdapter;

interface

uses Adaptee, UWebServiceViaCEP, UInterfaceViaCep;

type
  TAdapter = class(TInterfacedObject, IWebServiceViaCEP)
    private
      FWebServiceCorreios : TWebServiceCorreios;

    public
      constructor Create(AWebServicesCorreios: TWebServiceCorreios);
      procedure ConsultarEnderecoWebService(const aCep: String);
      function  ObterLogradouro: String;
      function  ObterBairro    : String;
      function  ObterCidade    : String;

  end;

implementation

{ TAdapter }

procedure TAdapter.ConsultarEnderecoWebService(const aCep: String);
  begin
    FWebServiceCorreios.DefinirParametrosConsulta(aCep);
    FWebServiceCorreios.ConsutarCep;
  end;

constructor TAdapter.Create(AWebServicesCorreios: TWebServiceCorreios);
  begin
    FWebServiceCorreios := AWebServicesCorreios;
  end;

function TAdapter.ObterBairro: String;
  begin
    Result := FWebServiceCorreios.ObterResposta('Bairro');
  end;

function TAdapter.ObterCidade: String;
  begin
    Result := FWebServiceCorreios.ObterResposta('Cidade');
  end;

function TAdapter.ObterLogradouro: String;
  begin
    Result := FWebServiceCorreios.ObterResposta('Logradouro');
  end;

end.
