unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TOperacao = (tpSomar, tpSubtrair, tpMultiplicar, tpDividir);
  TfrmPrincipal = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    cmbOperacao: TComboBox;
    btnCalcular: TButton;
    lblResultado: TLabel;
    procedure cmbOperacaoChange(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EscolherOperacao: String;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  ICalculadoraSoup1;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
  begin
    lblResultado.Caption := 'Resultado: ' + self.EscolherOperacao;
  end;

procedure TfrmPrincipal.cmbOperacaoChange(Sender: TObject);
  begin
    if btnCalcular.Enabled = False then
      btnCalcular.Enabled := True;
  end;


function TfrmPrincipal.EscolherOperacao;
  var
    xValor1, xValor2: Double;
  begin
    if not TryStrToFloat(edtValor1.Text, xValor1) then
      raise Exception.Create('Valor 1 inválido!');

    if not TryStrToFloat(edtValor2.Text, xValor2) then
      raise Exception.Create('Valor 2 inválido!');

    case TOperacao(cmbOperacao.ItemIndex) of
      tpSomar:
        Result := GetICalculadoraSoup.Somar(xValor1, xValor2).ToString;

      tpSubtrair:
        Result := GetICalculadoraSoup.Subtrair(xValor1, xValor2).ToString;

      tpMultiplicar:
        Result := GetICalculadoraSoup.Multiplicar(xValor1, xValor2).ToString;

      TpDividir:
        Result := GetICalculadoraSoup.Dividir(xValor1, xValor2).ToString;

      Else
        Result := 'Falta colocar no Enumerado!';
    end;
  end;

end.
