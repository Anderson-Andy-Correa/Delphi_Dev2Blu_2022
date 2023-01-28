program Decorator;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  UInterfaceComponent in '..\Pattern\Decorator\UInterfaceComponent.pas',
  UConcreteComponent in '..\Pattern\Decorator\UConcreteComponent.pas',
  UDecorator in '..\Pattern\Decorator\UDecorator.pas',
  UConcreteDecorator_DataHora in '..\Pattern\Decorator\UConcreteDecorator_DataHora.pas',
  UConcreteDecorator_Usuario in '..\Pattern\Decorator\UConcreteDecorator_Usuario.pas',
  UConcreteDecorator_Windows in '..\Pattern\Decorator\UConcreteDecorator_Windows.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
