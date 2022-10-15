unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UPessoa;

type
  TfrmPrincipal = class(TForm)
    btnCPF: TButton;
    lblCPF: TLabel;
    edtCPF: TEdit;
    lblCPFResp: TLabel;
    btnCNPJ: TButton;
    lblCNPJ: TLabel;
    edtCNPJ: TEdit;
    lblCNPJResp: TLabel;
    procedure btnCPFClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCNPJClick(Sender: TObject);
  private
    { Private declarations }
  public
    xPessoa: TPessoa;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCNPJClick(Sender: TObject);
  begin
    xPessoa := TPessoaJuridica.Create;
    if xPessoa.ValidarDocumento(edtCNPJ.Text) then
      lblCNPJResp.Caption := xPessoa.imprimeDocumento(edtCNPJ.Text)
    else
      lblCNPJResp.Caption := 'CNPJ Inválido';
    lblCNPJResp.Visible := True;
  end;

procedure TfrmPrincipal.btnCPFClick(Sender: TObject);
  begin
    xPessoa := TPessoaFisica.Create;
    if xPessoa.ValidarDocumento(edtCPF.Text) then
      begin

        lblCPFResp.Caption := xPessoa.imprimeDocumento(edtCPF.Text)
      end
    else
      lblCPFResp.Caption := 'CPF Inválido';
    lblCPFResp.Visible := True;
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    FreeAndNil(xPessoa);
  end;

end.
