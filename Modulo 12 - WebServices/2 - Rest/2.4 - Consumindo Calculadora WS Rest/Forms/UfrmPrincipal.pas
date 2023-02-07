unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TOperacoes = (somar, subtrair, multiplicar, dividir);
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
    procedure FormShow(Sender: TObject);
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

uses
  System.TypInfo;

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
    xNumerador, xDenominador: double;
    xResposta: String;
  begin
    if not TryStrToFloat(edtValor1.Text, xNumerador) then
      raise Exception.Create('Erro de Conversão no valor de Numerador!');

    if not TryStrToFloat(edtValor2.Text, xDenominador) then
      raise Exception.Create('Erro de Conversão no valor de Denominador!');

    xResposta := GetEnumName(TypeInfo(TOperacoes), cmbOperacao.ItemIndex);

    RESTClient1.BaseURL := Format('http://localhost:9090/%s/%f/%f',
      [xResposta, xNumerador, xDenominador]);
    RESTRequest1.Execute;

    if RESTResponse1.StatusCode = SUCESSO then
      lblResultado.Caption := RESTResponse1.Content
    else
      lblResultado.Caption := Format('Erro na Requisição: Status(%d)' ,
        [RESTResponse1.StatusCode]);
  end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
    I: TOperacoes;
    pos: Integer;
  begin
    pos := 0;
    for I := low(TOperacoes) to high(TOperacoes) do
      begin
        cmbOperacao.Items.Add(GetEnumName(TypeInfo(TOperacoes), pos));
        inc(pos);
      end;
  end;

end.
