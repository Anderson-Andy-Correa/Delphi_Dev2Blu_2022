program DevsBets_FrontEnd;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmLogin.Authentication in '..\Model\Views\UfrmLogin.Authentication.pas' {frmLoginAuthentication},
  UfrmHome in '..\Model\Views\UfrmHome.pas' {frmHome},
  UfrmLogin.Registry in '..\Model\Views\UfrmLogin.Registry.pas' {frmLoginRegistry},
  UEntity.Bets in '..\..\BackEnd\model\entities\UEntity.Bets.pas',
  UEntity.Logins in '..\..\BackEnd\model\entities\UEntity.Logins.pas',
  UEntity.Matchs in '..\..\BackEnd\model\entities\UEntity.Matchs.pas',
  UEntity.Teams in '..\..\BackEnd\model\entities\UEntity.Teams.pas',
  UEntity.Users in '..\..\BackEnd\model\entities\UEntity.Users.pas',
  UService.intf in '..\Model\Services\UService.intf.pas',
  UService.Base in '..\Model\Services\UService.Base.pas',
  UService.User in '..\Model\Services\UService.User.pas',
  UUtils.Constants in '..\Model\Utils\UUtils.Constants.pas',
  UService.Login in '..\Model\Services\UService.Login.pas',
  UService.User.Authenticated in '..\Model\Services\UService.User.Authenticated.pas',
  UfrmLogin in '..\Model\Views\UfrmLogin.pas' {frmLogin},
  UUtils.Enums in '..\Model\Utils\UUtils.Enums.pas',
  UService.Match in '..\Model\Services\UService.Match.pas',
  UService.Team in '..\Model\Services\UService.Team.pas',
  UService.Bet in '..\Model\Services\UService.Bet.pas',
  UUtils.Functions in '..\Model\Utils\UUtils.Functions.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
