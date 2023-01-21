unit UfrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Generics.Collections,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

  UPaciente, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    imgBackGround: TImage;
    edtCPF: TEdit;
    edtNome: TEdit;
    edtEspecialidade: TEdit;
    btnAdicionar: TButton;
    btnChamarProcimo: TButton;
    Shape1: TShape;
    Shape2: TShape;
    lblChamados: TLabel;
    lblUltimoNome: TLabel;
    lblUltimoEspecialidade: TLabel;
    lblProximo: TLabel;
    lblProximoNome: TLabel;
    lblProximoEspecialidade: TLabel;
    lblFila: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnChamarProcimoClick(Sender: TObject);
    procedure LimparCampos;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FFila : TFila;
    FPessoa: TPaciente;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAdicionarClick(Sender: TObject);
  var
    xPessoa: TPaciente;
  begin
    xPessoa := TPaciente.Create;
    try
      with xPessoa do
        begin
          Nome          := edtNome.Text;
          CPF           := edtCPF.Text;
          Especialidade := edtEspecialidade.Text;
        end;

      ShowMessage(FFila.Adicionar(xPessoa));
      lblFila.Caption := 'Na Fila: ' + FFila.Contar.ToString;
      Self.LimparCampos;
    except
      FreeAndNil(xPessoa);
    end;
  end;

procedure TfrmPrincipal.btnChamarProcimoClick(Sender: TObject);
  var
    xPessoa: TPaciente;
  begin
    lblUltimoNome.Caption := lblProximoNome.Caption;
    lblUltimoEspecialidade.Caption := lblProximoEspecialidade.Caption;

    if FFila.Contar > 0 then
      begin
        xPessoa := FFila.Proximo;
        lblFila.Caption := 'Na Fila: ' + FFila.Contar.ToString;
        lblProximoNome.Caption := xPessoa.Nome;
        lblProximoEspecialidade.Caption := xPessoa.Especialidade;
      end
    else
      begin
        lblProximoNome.Caption := '-';
        lblProximoEspecialidade.Caption := '-';
      end;
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    if assigned(FFila) then
      begin
        //FFila.Clear;
        FreeAndNil(FFila);
      end;
    //if assigned(xPessoa) then FreeAndNil(xPessoa);
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
    FFila := TFila.Create;
    lblFila.Caption := 'Na Fila: ' + FFila.Contar.ToString;
  end;

procedure TfrmPrincipal.LimparCampos;
  begin
    edtCPF.Text := '';
    edtNome.Text := '';
    edtEspecialidade.Text := '';
  end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
  begin
    Application.Terminate;
  end;

end.
