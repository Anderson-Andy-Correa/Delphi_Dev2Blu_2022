program SakilaReport;

uses
  Vcl.Forms,
  UfrmMain in '..\Forms\UfrmMain.pas' {frmMain},
  UfrmActorFilm in '..\Forms\UfrmActorFilm.pas' {frmActorFilm},
  UdmShowTime in '..\DataModule\UdmShowTime.pas' {DmShowTime: TDataModule},
  UfrmLastNameActor in '..\Forms\UfrmLastNameActor.pas' {frmActorsLastName},
  UfrmAddressOfTheCities in '..\Forms\UfrmAddressOfTheCities.pas' {frmAddressesOfTheCities};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmShowTime, DmShowTime);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
