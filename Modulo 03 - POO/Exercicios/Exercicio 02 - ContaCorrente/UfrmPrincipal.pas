unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, UConta;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Iniciar1: TMenuItem;
    Aes1: TMenuItem;
    Sair1: TMenuItem;
    Sacar1: TMenuItem;
    Depositar1: TMenuItem;
    btnCriarConta: TButton;
    btnSacar: TButton;
    btnDepositar: TButton;
    lblNome: TLabel;
    lblSaldo: TLabel;
    lblNumConta: TLabel;
    lblTipoConta: TLabel;
    mmHistorico: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCriarContaClick(Sender: TObject);
    procedure btnSacarClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
  private
    { Private declarations }
    xConta: TConta;
    procedure Atualizar;


    procedure AlterarNome;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.AlterarNome;
begin
  Atualizar;
end;

procedure TfrmPrincipal.Atualizar;
begin
  lblNome.Caption       := 'Nome: ' + xConta.Nome;
  lblSaldo.Caption      := 'Saldo: ' + CurrToStr(xConta.Saldo);
  lblNumConta.Caption   := 'N�mero Conta: ' + xConta.NumeroConta;
  lblTipoConta.Caption  := 'Tipo da Conta: ' + xConta.Tipo;
end;

procedure TfrmPrincipal.btnCriarContaClick(Sender: TObject);
  begin
    xConta := TConta.Create('999999', 'Anderson', 'CC', 1000);

    Atualizar;

    btnCriarConta.Enabled := False;
    btnSacar.Enabled := True;
    btnSacar.Visible := True;
    btnDepositar.Enabled := True;
    btnDepositar.Visible := True;
  end;

procedure TfrmPrincipal.btnDepositarClick(Sender: TObject);
  begin
    xConta.Depositar;
    Atualizar;
  end;

procedure TfrmPrincipal.btnSacarClick(Sender: TObject);
  begin
    mmhistorico.Lines := xConta.Sacar;
    Atualizar;

  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    FreeAndNil(xConta);
  end;

end.
