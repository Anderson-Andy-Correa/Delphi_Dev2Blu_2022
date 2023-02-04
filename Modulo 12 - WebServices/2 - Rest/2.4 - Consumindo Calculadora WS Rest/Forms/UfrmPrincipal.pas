unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TOperacoes = (tpSomar, tpSubtrair, tpMultiplicar, tpDividir);
  TfrmPrincipal = class(TForm)
    lblResultado: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    cmbOperacao: TComboBox;
    btnCalcular: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure cmbOperacaoChange(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    const SUCESSO = 200;
    procedure EscolherOpercacao;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
  begin
    Self.EscolherOpercacao;
  end;

procedure TfrmPrincipal.cmbOperacaoChange(Sender: TObject);
  begin
    if btnCalcular.Enabled = false then
      btnCalcular.Enabled := True;
  end;

procedure TfrmPrincipal.EscolherOpercacao;
  var
    xResposta: String;
  begin

    case TOperacoes(cmbOperacao.ItemIndex) of
      tpSomar:
        xResposta := 'somar';

      tpSubtrair:
        xResposta := 'subtrair';

      tpMultiplicar:
        xResposta := 'multiplicar';

      tpDividir:
        xResposta := 'dividir';

    end;
    RESTClient1.BaseURL := Format('http://localhost:9090/%s/%s/%s',
      [xResposta, edtValor1.Text, edtValor2.Text]);
    RESTRequest1.Execute;

    if RESTResponse1.StatusCode = SUCESSO then
      lblResultado.Caption := 'Resultado: ' + RESTResponse1.Content
    else
      lblResultado.Caption := Format('Erro na Requisição: Status(%d)' ,
        [RESTResponse1.StatusCode]);
  end;

end.
