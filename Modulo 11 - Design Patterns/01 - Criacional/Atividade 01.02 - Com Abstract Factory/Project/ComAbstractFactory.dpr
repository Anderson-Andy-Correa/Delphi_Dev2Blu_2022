program ComAbstractFactory;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Form\UfrmPrincipal.pas' {frmPrincipal},
  UApple in '..\Factorys\UApple.pas',
  UDell in '..\Factorys\UDell.pas',
  UInterfaces in '..\Factorys\UInterfaces.pas',
  UIMac in '..\Pattern\UIMac.pas',
  UInspiron in '..\Pattern\UInspiron.pas',
  UMacBook in '..\Pattern\UMacBook.pas',
  UVostro in '..\Pattern\UVostro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
