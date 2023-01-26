program FactoryMethod;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Form\UfrmPrincipal.pas' {frmPrincipal},
  UTipoPrazo in '..\FactoryMethod\UTipoPrazo.pas',
  UPrazoAnual in '..\FactoryMethod\UPrazoAnual.pas',
  UPrazoMensal in '..\FactoryMethod\UPrazoMensal.pas',
  UFabricaPrazos in '..\FactoryMethod\UFabricaPrazos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
