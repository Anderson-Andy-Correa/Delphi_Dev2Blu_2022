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
    procedure EscreverTexto(aValorTotal : TValorTotal);
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
    try
      LValorTotal := TValorTotal.Create(edtNome.Text,
                                        StrToInt(edtQuantidade.Text),
                                        StrToFloat(edtPrecoUnitario.Text));

      edtValorTotal.Text := LValorTotal.RetornarValorTotal.ToString;
      EscreverTexto(LValorTotal);

    finally
      FreeAndNil(LValorTotal);
    end;
  end;

procedure TfrmPrincipal.EscreverTexto(aValorTotal : TValorTotal);
  begin
    case aValorTotal.Quantidade of
      aValorTotal.QuantidadeMimSemDesconto:
        ShowMessage(Format('A compra de %d unidade do produto %s ' +
                  'o preço ficará R$%s. ',
                  [aValorTotal.Quantidade, aValorTotal.NomeProduto,
                  FormatFloat('0.##',(aValorTotal.Quantidade * aValorTotal.PrecoUnitario))]));

       // Valor minimo plural = 2 ( 1 + 1 )
      (aValorTotal.QuantidadeMimSemDesconto + 1)..aValorTotal.QuantidadeMaxSemDesconto:
       ShowMessage(Format('A compra de %d unidades do produto %s ' +
                  'o preço ficará R$%s. ',
                  [aValorTotal.Quantidade, aValorTotal.NomeProduto,
                  FormatFloat('0.##',(aValorTotal.Quantidade * aValorTotal.PrecoUnitario))]));
      else
       ShowMessage(Format('A compra de %d unidade(s) do produto %s com' +
              'o preço original de R$%s, passará para R$%s. Um desconto de R$%s.',
              [aValorTotal.Quantidade, aValorTotal.NomeProduto,
              FormatFloat('0.##',(aValorTotal.Quantidade * aValorTotal.PrecoUnitario)),
              FormatFloat('0.##',aValorTotal.ValorTotal),
              FormatFloat('0.##',(aValorTotal.Quantidade *  aValorTotal.PrecoUnitario) -
              aValorTotal.ValorTotal)]));
    end;

  end;

end.
