program ValorTotal;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Form\UfrmPrincipal.pas' {frmPrincipal},
  UValorTotal in '..\Unit\UValorTotal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
