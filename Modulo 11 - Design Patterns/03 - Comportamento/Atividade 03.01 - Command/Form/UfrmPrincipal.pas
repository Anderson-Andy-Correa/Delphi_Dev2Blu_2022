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

  UInvoker,
  UReceiver,
  UCommand,
  UConcreteCommand;

type
  TfrmPrincipal = class(TForm)
    btnExecutar: TButton;
    mmProgramas: TMemo;
    mmProcessos: TMemo;
    mmVariaveis: TMemo;
    lblProgramas: TLabel;
    lblProcessos: TLabel;
    lblVariaveis: TLabel;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnExecutarClick(Sender: TObject);
  var
    xReceiver: TReceiver;
    xInvoker : TInvoker;
  begin
    // Cria o Receiver (objeto que cont�m a codifica��o das opera��es)
    xReceiver := TReceiver.Create;

    // Cria o Invoker (objeto que Armazena os comandos para execut�-los)
    xInvoker := TInvoker.Create;

    try
      // Armazena o comando de extra��o de programas no Invoker
      xInvoker.Add(TProgramas.Create(xReceiver));

      // Armazena o comando de extra��o de processos no Invoker
      xInvoker.Add(TProcessos.Create(xReceiver));

      // Armazena o comando de extra��o das Vari�veis de Ambiente no Invoker
      xInvoker.Add(TVariaveisAmbiente.Create(xReceiver));

      // Solicita ao Invoker que execute todos os comandos armazenados
      xInvoker.ExtrairInformacoes;

    finally
      // libera os objetos da mem�ria
      FreeAndNil(xInvoker);
      FreeAndNil(xReceiver);
    end;

    mmProgramas.Lines.LoadFromFile(GetCurrentDir + '\Programas.txt');
    mmProcessos.Lines.LoadFromFile(GetCurrentDir + '\Processos.txt');
    mmVariaveis.Lines.LoadFromFile(GetCurrentDir + '\Variaveis.txt');
  end;

end.
