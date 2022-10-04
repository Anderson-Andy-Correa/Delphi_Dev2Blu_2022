unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TTipoCliente = (tpResidencia, tpComercio, tpIndustria, tpFazenda);
  TfrmPrincipal = class(TForm)
    lblTitulo: TLabel;
    btnProcessar: TButton;
    rdgTipo: TRadioGroup;
    edtValor: TEdit;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
    Function VerificarTipo: Boolean;
    Function VerificarNumero: Boolean;
    Function ConverterNumero (const aValor: String): Currency;
    Function CasoTipo(const aTipo: word): Double;
    function Desconto : Currency;

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnProcessarClick(Sender: TObject);
  var
    xMultiplo: Double;
    xValorFinal: Currency;
    xDesconto: Double;
  begin
    if VerificarNumero and VerificarTipo then
      begin
        xMultiplo:= CasoTipo(rdgTipo.ItemIndex);
        xDesconto := Desconto;
        if (ConverterNumero(edtValor.Text) * xMultiplo) > xDesconto then
          begin
            xValorFinal := ConverterNumero(edtValor.Text) * xMultiplo - xDesconto;
            ShowMessage(Format('A conta de luz desse cliente vai custar R$%n ', [xValorFinal]));
          end
        else
          begin
            xValorFinal := ConverterNumero(edtValor.Text) * xMultiplo;
            ShowMessage(Format('A conta de luz desse cliente vai custaria R$%n. Mas, valor do desconto de %n é maior que a fatura. Então, na próxima fatura, a fatura terá um desconto de %n.', [xValorFinal, xDesconto, (xDesconto - xValorFinal)]));
          end;
      end;
  end;

function TfrmPrincipal.VerificarNumero: Boolean;
  var
    xValor: Currency;
  begin
    Result := False;
    if (TryStrToCurr(edtValor.Text, xValor)) and (xValor > 0)then
      begin
        Result := True
      end
    else if xValor <= 0 then
      begin
        ShowMessage('O valor não pode ser inferior ou igual a 0!');
      end
    else if edtValor.Text = '' then
      begin
        ShowMessage('Por favor, informe um número real!');
      end
    else
      begin
        ShowMessage('Por favor, informe apenas número reais!');
      end;
  end;

function TfrmPrincipal.CasoTipo(const aTipo: word): Double;
  begin
    case TTipoCliente(aTipo) of
          tpResidencia:
            Result:= 0.60;
          tpComercio:
            Result:= 0.48;
          tpIndustria:
            Result:= 1.29;
          tpFazenda:
            Result := 2.18;
        end;
  end;

function TfrmPrincipal.ConverterNumero(const aValor: String): Currency;
  begin
    if VerificarNumero then
      begin
        Result:= StrToCurr(aValor);
      end;

  end;

function TfrmPrincipal.Desconto: Currency;
var
  xdesconto : Currency;

begin
  xDesconto := 0;
  Repeat
    if (TryStrToCurr(inputbox('Desconto a aplicar',
    'Informe o valor do desconto a aplicar, se houver', '0'), xDesconto))
    and (xDesconto >= 0) then
      begin
        result := xDesconto;
        break;
      end
     else
      begin
        ShowMessage('Informe um valor válido!');
      end;
  Until xDesconto > 0;

end;

function TfrmPrincipal.VerificarTipo: Boolean;
  begin
    Result := False;
    if rdgTipo.ItemIndex >= 0 then
      begin
        Result := True;
      end
    else
      begin
        ShowMessage('Por favor, selecione um tipo de cliente.');
      end;
  end;

end.
