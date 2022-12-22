program PopularDrink;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in '..\Forms\UfrmPrincipal.pas' {frmPrincipal},
  ULatte in '..\Forms\ULatte.pas' {frmLatte};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
