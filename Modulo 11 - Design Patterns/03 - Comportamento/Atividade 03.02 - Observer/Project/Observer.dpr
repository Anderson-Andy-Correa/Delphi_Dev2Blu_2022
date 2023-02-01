program Observer;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Form\UfrmPrincipal.pas' {frmPrincipal},
  USubject in '..\Pattern\USubject.pas',
  UObserver in '..\Pattern\UObserver.pas',
  UNotificacao in '..\Pattern\UNotificacao.pas',
  UConcreteObserver_Log in '..\Pattern\UConcreteObserver_Log.pas' {fraLog: TFrame},
  UConcreteObserver_Saldo in '..\Pattern\UConcreteObserver_Saldo.pas' {fraSaldo: TFrame},
  UConcreteObserver_Historico in '..\Pattern\UConcreteObserver_Historico.pas' {fraHistorico: TFrame},
  UConcreteSubject in '..\Pattern\UConcreteSubject.pas' {fraCadastro: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
