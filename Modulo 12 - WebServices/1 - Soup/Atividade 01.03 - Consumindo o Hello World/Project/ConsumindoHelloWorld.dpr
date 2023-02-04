program ConsumindoHelloWorld;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  IHello_World1 in '..\Unit\IHello_World1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
