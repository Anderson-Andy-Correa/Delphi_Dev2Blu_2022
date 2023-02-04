unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TfrmPrincipal = class(TForm)
    btnPingPong: TButton;
    btnHelloWorld: TButton;
    lblResultado: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure btnPingPongClick(Sender: TObject);
    procedure btnHelloWorldClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PingPong;
    procedure HelloWorld;
    procedure TratarResposta;

    const SUCESSO = 200;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnHelloWorldClick(Sender: TObject);
  begin
    Self.HelloWorld;
  end;

procedure TfrmPrincipal.btnPingPongClick(Sender: TObject);
  begin
    Self.PingPong;
  end;

procedure TfrmPrincipal.HelloWorld;
  begin
    RESTClient1.BaseURL := 'http://localhost:9090/helloworld';
    RESTRequest1.Execute;

    Self.TratarResposta;
  end;

procedure TfrmPrincipal.PingPong;
  begin
    RESTClient1.BaseURL := 'http://localhost:9090/ping';
    RESTRequest1.Execute;

    Self.TratarResposta;
  end;

procedure TfrmPrincipal.TratarResposta;
  begin
    if RESTResponse1.StatusCode = SUCESSO then
      lblResultado.Caption := 'Resultado: ' + RESTResponse1.Content
    else
      lblResultado.Caption := Format('Erro na Requisição: Status(%d)' ,
        [RESTResponse1.StatusCode]);
  end;

end.
