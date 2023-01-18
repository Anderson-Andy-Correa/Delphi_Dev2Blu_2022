unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UValorTotal, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNome: TEdit;
    edtQuantidade: TEdit;
    edtPrecoUnitario: TEdit;
    edtValorTotal: TEdit;
    btnCalcular: TButton;
    lblNome: TLabel;
    lblQuantidade: TLabel;
    lblPrecoUnitario: TLabel;
    lblValorTotal: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure EscreverTexto(aQtd: integer; aNome: String; aPreco, aValorTotal: Double);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
  var
    LValorTotal : TValorTotal;
  begin
    LValorTotal := TValorTotal.Create;
    try
      try
        with LValorTotal do
          begin
            NomeProduto := edtNome.Text;
            Quantidade := StrToInt(edtQuantidade.Text);
            PrecoUnitario := StrToFloat(edtPrecoUnitario.Text);
            edtValorTotal.Text := RetornarValorTotal.ToString;

            EscreverTexto(Quantidade, NomeProduto, PrecoUnitario, ValorTotal);
          end;

      except
        ShowMessage('Erro de Conversão!');
      end;
    finally
      FreeAndNil(LValorTotal);
    end;
  end;

procedure TfrmPrincipal.EscreverTexto(aQtd: integer; aNome: String; aPreco,
  aValorTotal: Double);
  begin
    case aQtd of
      1:
        ShowMessage(Format('A compra de %d unidade do produto %s ' +
                  'o preço ficará R$%s. ',
                  [aQtd, aNome, FormatFloat('0.##',(aQtd * aPreco))]));

      2..10:
       ShowMessage(Format('A compra de %d unidades do produto %s ' +
                  'o preço ficará R$%s. ',
                  [aQtd, aNome, FormatFloat('0.##',(aQtd * aPreco))]));
      else
       ShowMessage(Format('A compra de %d unidade(s) do produto %s com' +
              'o preço original de R$%s, passará para R$%s. Um desconto de R$%s.',
              [aQtd, aNome,
              FormatFloat('0.##',(aQtd * aPreco)),
              FormatFloat('0.##',aValorTotal),
              FormatFloat('0.##',((aQtd * aPreco -
              aValorTotal)))]));
    end;

  end;

end.
