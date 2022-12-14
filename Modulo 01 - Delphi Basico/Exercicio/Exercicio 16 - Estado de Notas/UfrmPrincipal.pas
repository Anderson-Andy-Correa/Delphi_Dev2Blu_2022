unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    edtNota01: TEdit;
    lblNotas: TLabel;
    edtNota02: TEdit;
    edtNota03: TEdit;
    lblSituacao: TLabel;
    lblRespSituacao: TLabel;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  Ucalculos;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
  var
    xMedia: Double;
    xNota01: Double;
    xNota02: Double;
    xNota03: Double;
    xSituacao: String;
    xNome: String; 
  begin
    if not (TryStrToFloat(edtNota01.Text, xNota01)) or
       not (TryStrToFloat(edtNota02.Text, xNota02)) or
       not (TryStrToFloat(edtNota03.Text, xNota03)) then
    raise Exception.Create('Erro ao recebimento de notas, tente novamente!');
    
    xNome := edtNome.Text;
    xMedia := CalcularMedia(xNota01, xNota02, xNota03);
        
    xSituacao := Situacao(xMedia);
    lblRespSituacao.Caption := Format('%s, %f, %s', [xNome, xMedia, xSituacao]);
    lblSituacao.Visible := True;
    lblRespSituacao.Visible := True;
  end;

end.
