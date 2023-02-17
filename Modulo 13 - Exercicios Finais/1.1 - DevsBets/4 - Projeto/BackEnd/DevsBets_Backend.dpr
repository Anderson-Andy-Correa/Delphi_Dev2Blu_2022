program DevsBets_Backend;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UEntity.Users in 'model\entities\UEntity.Users.pas',
  UEntity.Logins in 'model\entities\UEntity.Logins.pas',
  UEntity.Teams in 'model\entities\UEntity.Teams.pas',
  UEntity.Matchs in 'model\entities\UEntity.Matchs.pas',
  UEntity.Bets in 'model\entities\UEntity.Bets.pas',
  UDAO.Intf in 'model\dao\UDAO.Intf.pas',
  UDAO.Base in 'model\dao\UDAO.Base.pas',
  UUtil.Banco in 'model\utils\UUtil.Banco.pas',
  UDAO.Users in 'model\dao\UDAO.Users.pas',
  UDAO.Bets in 'model\dao\UDAO.Bets.pas',
  UDAO.Matchs in 'model\dao\UDAO.Matchs.pas',
  UDAO.Teams in 'model\dao\UDAO.Teams.pas',
  UController.Base in 'model\controllers\UController.Base.pas',
  UController.User in 'model\controllers\UController.User.pas',
  UController.Team in 'model\controllers\UController.Team.pas',
  UController.Match in 'model\controllers\UController.Match.pas',
  UController.Bet in 'model\controllers\UController.Bet.pas',
  UController.Login in 'model\controllers\UController.Login.pas';

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.