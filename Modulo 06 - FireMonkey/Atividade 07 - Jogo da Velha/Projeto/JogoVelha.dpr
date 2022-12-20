program JogoVelha;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in '..\Form\UfrmPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
