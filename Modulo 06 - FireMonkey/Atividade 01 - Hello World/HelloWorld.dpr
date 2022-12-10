program HelloWorld;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in '..\Atividade 01\UfrmPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
