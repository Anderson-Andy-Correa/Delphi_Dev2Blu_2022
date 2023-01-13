program SakilaReport;

uses
  Vcl.Forms,
  UfrmMain in '..\Forms\UfrmMain.pas' {frmMain},
  UfrmActorsLastName in '..\Forms\UfrmActorsLastName.pas' {frmActorsLastName},
  UdmShowTime in '..\DataModule\UdmShowTime.pas' {DmShowTime};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
