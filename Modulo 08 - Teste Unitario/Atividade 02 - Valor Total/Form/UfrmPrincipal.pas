unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UValorTotal, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
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
          end;

//        ShowMessage(Format('A compra de %d unidade(s) do produto %s com' +
//          'o preço original de R$%s, passará para R$%s. Um desconto de R$%s.',
//          [LValorTotal.Quantidade, LValorTotal.NomeProduto,
//          FormatFloat('0,##',(LValorTotal.Quantidade * LValorTotal.PrecoUnitario)),
//          LValorTotal.ValorTotal, FormatFloat('0,##',((LValorTotal.Quantidade * LValorTotal.PrecoUnitario *
//          (100 - LValorTotal.Desconto)/100)))]));

        ShowMessage(Format('A compra de %d unidade(s) do produto %s com' +
          'o preço original de R$%s, passará para R$%s. Um desconto de R$%s.',
          [LValorTotal.Quantidade, LValorTotal.NomeProduto,
          FormatFloat('0.##',(LValorTotal.Quantidade * LValorTotal.PrecoUnitario)),
          FormatFloat('0.##',LValorTotal.ValorTotal),
          FormatFloat('0.##',((LValorTotal.Quantidade * LValorTotal.PrecoUnitario *
          (100 - LValorTotal.Desconto)/100)))]));
      except
        ShowMessage('Erro de Conversão!');
      end;
    finally
      FreeAndNil(LValorTotal);
    end;
  end;

end.
