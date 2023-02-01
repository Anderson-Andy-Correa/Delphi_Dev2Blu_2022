unit UConcreteObserver_Log;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UObserver,
  UNotificacao;

type
  TfraLog = class(TFrame, IObserver)
    lblLog: TLabel;
    mmLog: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

{ TfrmLog }

procedure TfraLog.Atualizar(aNotificacao: TNotificacao);
  var
    xTextoLog: string;
  begin
    xTextoLog := Format('Uma operação de %s de %.2f foi adicionada',
      [aNotificacao.Operacao, aNotificacao.Valor]);

    mmLog.Lines.Add(xTextoLog);
  end;

end.
