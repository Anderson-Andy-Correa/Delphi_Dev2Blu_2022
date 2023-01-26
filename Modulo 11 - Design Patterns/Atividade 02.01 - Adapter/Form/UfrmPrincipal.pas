unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UWebServiceViaCEP,
  System.Classes, Utarget, UInterfaceViaCep, UAdapter;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

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
