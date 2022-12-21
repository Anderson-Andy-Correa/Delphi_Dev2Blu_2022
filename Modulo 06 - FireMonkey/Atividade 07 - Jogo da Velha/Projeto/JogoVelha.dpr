program JogoVelha;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in '..\Form\UfrmPrincipal.pas' {frmPrincipal},
  UJogoVelha in '..\Units\UJogoVelha.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
