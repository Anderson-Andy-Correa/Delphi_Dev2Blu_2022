unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TTipoCliente = (tpResidencia, tpComercio, tpIndustria);
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
  begin
    if VerificarNumero and VerificarTipo then
      begin
        xMultiplo:= CasoTipo(rdgTipo.ItemIndex);
        xValorFinal := ConverterNumero(edtValor.Text) * xMultiplo;
        ShowMessage(Format('A conta de luz desse cliente vai custar R$%n', [xValorFinal]));
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
        ShowMessage('O valor n�o pode ser inferior ou igual a 0!');
      end
    else if edtValor.Text = '' then
      begin
        ShowMessage('Por favor, informe um n�mero real!');
      end
    else
      begin
        ShowMessage('Por favor, informe apenas n�mero reais!');
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
        end;
  end;

function TfrmPrincipal.ConverterNumero(const aValor: String): Currency;
  begin
    if VerificarNumero then
      begin
        Result:= StrToCurr(aValor);
      end;

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
