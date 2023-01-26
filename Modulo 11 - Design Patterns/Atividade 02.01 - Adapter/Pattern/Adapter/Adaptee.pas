unit Adaptee;

interface

uses
  UWebServiceCorreios, System.Classes;

Type
  TWebServicesCorreios = class
    private
      FParametros: consultaCEP;
      FResposta  : enderecoERP;

      procedure BeforeExecute(const aMethodName: string; aSOAPRequest: TStream);
    public
      destructor Destroy; override;
      procedure DefinirParametrosConsulta(const aCep: String);
      procedure ConsutarCep;
      function ObterResposta(const aInformacao: String): String;
  end;

implementation

uses
  Soap.SOAPHTTPClient, System.SysUtils;


{ TWebServicesCorreios }

procedure TWebServicesCorreios.BeforeExecute(const aMethodName: string;
  aSOAPRequest: TStream);
  var
    xRequest : TStringList;
  begin
    // sobrescreve a requisição SOAP para deixá-la de acordo com a estrutura
    // exigida pelo WebService

    xRequest := TStringList.Create;
    try
       xRequest.Text :=
      '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:cli="http://cliente.bean.master.sigep.bsb.correios.com.br/">' +
      '  <soapenv:Header/>' +
      '    <soapenv:Body>' +
      '      <cli:consultaCEP>' +
      '        <cep>' + FParametros.cep + '</cep>' +
      '      </cli:consultaCEP>' +
      '    </soapenv:Body>' +
      '</soapenv:Envelope>';

      aSOAPRequest.Position := 0;
      aSOAPRequest.Size := Length(xRequest.Text);
      xRequest.SaveToStream(aSOAPRequest);
    finally
      FreeAndNil(xRequest);
    end;
  end;

procedure TWebServicesCorreios.ConsutarCep;
begin

end;

procedure TWebServicesCorreios.DefinirParametrosConsulta(const aCep: String);
begin

end;

destructor TWebServicesCorreios.Destroy;
begin

  inherited;
end;

function TWebServicesCorreios.ObterResposta(const aInformacao: String): String;
begin

end;

end.
