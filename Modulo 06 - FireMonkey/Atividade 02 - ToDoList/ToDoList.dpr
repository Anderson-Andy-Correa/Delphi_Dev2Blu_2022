program ToDoList;

uses
  System.StartUpCopy,
  FMX.Forms,
  SharedPreference in 'Utils\SharedPreference.pas',
  UfrmPrincipal in 'Forms\UfrmPrincipal.pas' {frmPrincipal},
  USplash in 'Forms\USplash.pas' {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.Run;
end.
