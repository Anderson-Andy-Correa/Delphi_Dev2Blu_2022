program ConsumindoCalculadora;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  ICalculadoraSoup1 in '..\Units\ICalculadoraSoup1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
