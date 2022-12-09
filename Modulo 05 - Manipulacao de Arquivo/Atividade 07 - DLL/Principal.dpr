program Principal;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  uInfoPC in 'uInfoPC.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
