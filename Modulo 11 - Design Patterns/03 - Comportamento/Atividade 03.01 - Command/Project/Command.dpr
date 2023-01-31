program Command;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Form\UfrmPrincipal.pas' {frmPrincipal},
  UCommand in '..\Pattern\UCommand.pas',
  UReceiver in '..\Pattern\UReceiver.pas',
  UInvoker in '..\Pattern\UInvoker.pas',
  UConcreteCommand in '..\Pattern\UConcreteCommand.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
