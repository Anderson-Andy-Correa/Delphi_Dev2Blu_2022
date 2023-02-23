program DevsBets_FrontEnd;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmLogin.Authentication in '..\Model\Views\UfrmLogin.Authentication.pas' {frmLoginAuthentication},
  UfrmLogin in '..\Model\Views\UfrmLogin.pas' {frmLogin},
  UfrmLogin.Registry in '..\Model\Views\UfrmLogin.Registry.pas' {frmLoginRegistry},
  UEntity.Bets in '..\..\BackEnd\model\entities\UEntity.Bets.pas',
  UEntity.Logins in '..\..\BackEnd\model\entities\UEntity.Logins.pas',
  UEntity.Matchs in '..\..\BackEnd\model\entities\UEntity.Matchs.pas',
  UEntity.Teams in '..\..\BackEnd\model\entities\UEntity.Teams.pas',
  UEntity.Users in '..\..\BackEnd\model\entities\UEntity.Users.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
