program InterfaceCalculadora;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  UCalculadoraServiceDefault in '..\Units\UCalculadoraServiceDefault.pas',
  UCalculadoraServiceInterface in '..\Units\UCalculadoraServiceInterface.pas',
  UCalculadoraService in '..\Units\UCalculadoraService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
