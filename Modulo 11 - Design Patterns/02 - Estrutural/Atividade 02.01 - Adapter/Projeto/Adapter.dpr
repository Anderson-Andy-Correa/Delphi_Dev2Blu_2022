program Adapter;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\Form\UfrmPrincipal.pas' {frmPrincipal},
  UAdapter in '..\Pattern\Adapter\UAdapter.pas',
  UWebServiceCorreios in '..\Pattern\Adapter\UWebServiceCorreios.pas',
  UInterfaceViaCep in '..\Pattern\Adapter\UInterfaceViaCep.pas',
  Utarget in '..\Pattern\Adapter\Utarget.pas',
  UWebServiceViaCEP in '..\Pattern\Adapter\UWebServiceViaCEP.pas',
  Adaptee in '..\Pattern\Adapter\Adaptee.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
