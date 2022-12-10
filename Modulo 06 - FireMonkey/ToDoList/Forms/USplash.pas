unit USplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts;

type
  TfrmSplash = class(TForm)
    Timer1: TTimer;
    Layout1: TLayout;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.fmx}

uses UfrmPrincipal;
{$R *.NmXhdpiPh.fmx ANDROID}

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.MainForm := frmPrincipal;
  frmPrincipal.show;

  Timer1.Enabled := False;

  Self.close;
end;

end.
