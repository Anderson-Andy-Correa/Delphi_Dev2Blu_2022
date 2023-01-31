unit UfrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,

  UWebServiceViaCEP,
  Utarget,
  UInterfaceViaCep,
  UAdapter,
  UWebServiceCorreios,
  Adaptee;

type
  TfrmPrincipal = class(TForm)
    btnConsultarViaCep: TButton;
    btnConsultarCorreios: TButton;
    lblCEP: TLabel;
    lblLogradouro: TLabel;
    edtCEP: TEdit;
    lblBairro: TLabel;
    lblCidade: TLabel;
    procedure btnConsultarViaCepClick(Sender: TObject);
    procedure btnConsultarCorreiosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

procedure TfrmPrincipal.btnConsultarCorreiosClick(Sender: TObject);
  var
    xWebServiceCorreios: TWebServiceCorreios;
    xAdapter: IWebServiceViaCEP;
    xComunicador: TComunicador;
    xRetorno: TStringList;
  begin
    // Instancia o objeto de consulta dos Correios (Adaptee)
    xWebServiceCorreios := TWebServiceCorreios.Create;

    // Intancia o Adaptador (Adapter)
    xAdapter := TAdapter.Create(xWebServiceCorreios);

    // Intancia o comunicador (Target), injetando o adaptador
    xComunicador := TComunicador.Create(xAdapter);

    xRetorno := TStringList.Create;
    Try
      // O Target consulta o endereço (utilizando o objeto injetado) e retorna os dados
      xRetorno := xComunicador.ConsultarEndereco(edtCEP.Text);

      lblLogradouro.Caption := xRetorno.Values['Logradouro'];
      lblBairro.Caption := xRetorno.Values['Bairro'];
      lblCidade.Caption := xRetorno.Values['Cidade'];
    Finally
      FreeAndNil(xRetorno);
      FreeAndNil(xComunicador);
      FreeAndNil(xWebServiceCorreios);
    End;
  end;

procedure TfrmPrincipal.btnConsultarViaCepClick(Sender: TObject);
  var
    xWebServiceViaCEP: IWebServiceViaCEP;
    xComunicador     : TComunicador;
    xRetorno         : TStringList;
  begin
    // Intancia o objeto da classe de consulta
    xWebServiceViaCEP := TWebServiceViaCEP.Create;

    // Instancia o comunicador (Target), injetando o objeto de consulta
    xComunicador := TComunicador.Create(xWebServiceViaCEP);

    xRetorno := TStringList.Create;

    try
      // O Targer consulta o endereço (utilizando o objeto injetado) e retorna os dados
      xRetorno := xComunicador.ConsultarEndereco(edtCEP.Text);

      lblLogradouro.Caption := xRetorno.Values['Logradouro'];
      lblBairro.Caption := xRetorno.Values['Bairro'];
      lblCidade.Caption := xRetorno.Values['Cidade'];
    finally
      FreeAndNil(xRetorno);
      FreeAndNil(xComunicador);
    end;
  end;

end.
