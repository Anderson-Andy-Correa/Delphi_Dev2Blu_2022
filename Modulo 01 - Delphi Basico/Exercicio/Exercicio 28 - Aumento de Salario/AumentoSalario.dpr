program AumentoSalario;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UFuncionarios in 'UFuncionarios.pas' {frmFuncionarios},
  UMetodos in 'UMetodos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.Run;
end.
