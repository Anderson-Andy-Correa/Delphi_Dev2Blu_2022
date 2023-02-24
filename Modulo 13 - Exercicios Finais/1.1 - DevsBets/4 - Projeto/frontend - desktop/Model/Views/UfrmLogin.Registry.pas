unit UfrmLogin.Registry;

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
  TfrmLoginRegistry = class(TForm)
    recPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectRegistrar: TRectangle;
    lblRegistrar: TLabel;
    rectNome: TRectangle;
    rectLogin: TRectangle;
    rectSenha: TRectangle;
    edtLogin: TEdit;
    edtNOME: TEdit;
    edtSenha: TEdit;
    rectVoltar: TRectangle;
    lblVoltar: TLabel;
    procedure rectVoltarClick(Sender: TObject);
    procedure rectRegistrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure VoltarTela;
    procedure Registrar;
  public
    { Public declarations }
  end;

var
  frmLoginRegistry: TfrmLoginRegistry;

implementation

{$R *.fmx}

uses
  UfrmLogin,
  UEntity.Users,
  UService.intf,
  UService.User;

procedure TfrmLoginRegistry.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
    Action := TCloseAction.caFree;
    frmLoginRegistry := nil;
  end;

procedure TfrmLoginRegistry.rectRegistrarClick(Sender: TObject);
  begin
    Self.Registrar;
  end;

procedure TfrmLoginRegistry.rectVoltarClick(Sender: TObject);
  begin
    Self.VoltarTela;
  end;

procedure TfrmLoginRegistry.Registrar;
  var
    xServiceUser: IService;
  begin
    if Trim(edtNome.Text) = EmptyStr then
      raise Exception.Create('Informe o Nome.');

    if Trim(edtLogin.Text) = EmptyStr then
      raise Exception.Create('Informe o Login.');

    if Trim(edtSenha.Text) = EmptyStr then
      raise Exception.Create('Informe o Senha.');

    xServiceUser := TServiceUser.Create(
      TUser.Create(Trim(edtNome.Text),
                   Trim(edtLogin.Text),
                   Trim(edtSenha.Text)));

    try
      xServiceUser.Registrar;
      ShowMessage('Usuário registrado com Sucesso.');
      Self.VoltarTela;
    except on E: Exception do
      raise Exception.Create('Erro: ' + E.Message);
    end;
  end;

procedure TfrmLoginRegistry.VoltarTela;
  begin
    if not Assigned(frmLogin) then
      frmLogin := TfrmLogin.Create(Application);

    frmLogin.Show;
    Application.MainForm := frmLogin;
    Self.Close;
  end;

end.
