program Observer;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Form\UfrmPrincipal.pas' {Form1},
  USubject in '..\Pattern\USubject.pas',
  UObserver in '..\Pattern\UObserver.pas',
  UNotificacao in '..\Pattern\UNotificacao.pas',
  UConcreteObserver_Log in '..\Pattern\UConcreteObserver_Log.pas' {frmLog: TFrame},
  UConcreteObserver_Saldo in '..\Pattern\UConcreteObserver_Saldo.pas' {fraSaldo: TFrame},
  UConcreteObserver_Historico in '..\Pattern\UConcreteObserver_Historico.pas' {Frame1: TFrame},
  UConcreteSubject in '..\Pattern\UConcreteSubject.pas' {Frame2: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
