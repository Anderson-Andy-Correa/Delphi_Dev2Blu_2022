unit UfrmLogin.Authentication;

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
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Layouts,
  FMX.Edit;

type
  TfrmLoginAuthentication = class(TForm)
    recPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectLogar: TRectangle;
    lblLogar: TLabel;
    rectVoltar: TRectangle;
    lblVoltar: TLabel;
    rectLogin: TRectangle;
    rectSenha: TRectangle;
    edtLogin: TEdit;
    edtSenha: TEdit;
    procedure rectVoltarClick(Sender: TObject);
    procedure rectLogarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure Logar;
    procedure AbrirHome;
    procedure VoltarTela;
  public
    { Public declarations }
  end;

var
  frmLoginAuthentication: TfrmLoginAuthentication;

implementation

{$R *.fmx}

uses
  UfrmLogin,
//  UfrmHome,
  UEntity.Logins,
  UService.Intf,
  UService.Login;

procedure TfrmLoginAuthentication.AbrirHome;
  begin
    ShowMessage('Usuário Autenticado');
//    if not Assigned(frmHome) then
//      frmHome := TfrmHome.Create;
//
//    frmHome.Show;
//    Application.MainForm := frmHome;
//    Self.Close;
  end;

procedure TfrmLoginAuthentication.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
    Action := TCloseAction.caFree;
    frmLoginAuthentication := nil;
  end;

procedure TfrmLoginAuthentication.Logar;
  var
    xServiceLogin: IService;
  begin
    if Trim(edtLogin.Text) = EmptyStr then
      raise Exception.Create('Informe o Login.');

    if Trim(edtSenha.Text) = EmptyStr then
      raise Exception.Create('Informe a Senha.');

    xServiceLogin := TServiceLogin.Create(
      TLogin.Create(Trim(edtLogin.Text),
             Trim(edtSenha.Text)));

    try
      TServiceLogin(xServiceLogin).Autenticar;
      Self.AbrirHome;
    except on E: Exception do
      raise Exception.Create('Erro: ' + E.Message);
    end;
  end;

procedure TfrmLoginAuthentication.rectLogarClick(Sender: TObject);
  begin
    Self.Logar;
  end;

procedure TfrmLoginAuthentication.rectVoltarClick(Sender: TObject);
  begin
    Self.VoltarTela;
  end;

procedure TfrmLoginAuthentication.VoltarTela;
  begin
    if not Assigned(frmLogin) then
      frmLogin := TfrmLogin.Create(Application);

    frmLogin.Show;
    Application.MainForm := frmLogin;
    Self.Close;
  end;

end.
