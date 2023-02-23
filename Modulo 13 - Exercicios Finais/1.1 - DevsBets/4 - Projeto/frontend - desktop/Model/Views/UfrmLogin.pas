unit UfrmLogin;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,

  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Objects,
  FMX.Layouts;

type
  TfrmLogin = class(TForm)
    recPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectRegistrar: TRectangle;
    lblRegistrar: TLabel;
    rectLogin: TRectangle;
    lblLogin: TLabel;
    rectSair: TRectangle;
    lblSair: TLabel;
    procedure rectSairClick(Sender: TObject);
    procedure rectLoginClick(Sender: TObject);
    procedure rectRegistrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AbrirLoginAuthentication;
    procedure AbrirLoginRegistry;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses
  UfrmLogin.Authentication,
  UfrmLogin.Registry;

procedure TfrmLogin.AbrirLoginAuthentication;
  begin
    if not Assigned(frmLoginAuthentication) then
      frmLoginAuthentication := TfrmLoginAuthentication.Create(Application);

      frmLoginAuthentication.Show;
      Application.MainForm := frmLoginAuthentication;
  end;

procedure TfrmLogin.AbrirLoginRegistry;
  begin
    if not Assigned(frmLoginRegistry) then
      frmLoginRegistry := TfrmLoginRegistry.Create(Application);

      frmLoginRegistry.Show;
      Application.MainForm := frmLoginRegistry;
  end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := TCloseAction.caFree;
    frmLogin := nil;
  end;

procedure TfrmLogin.rectLoginClick(Sender: TObject);
  begin
    Self.AbrirLoginAuthentication;
  end;

procedure TfrmLogin.rectRegistrarClick(Sender: TObject);
  begin
    Self.AbrirLoginRegistry;
  end;

procedure TfrmLogin.rectSairClick(Sender: TObject);
  begin
    Self.Close;
  end;

end.
