program Discovery;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
