unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UCalculadora;

type
  TfrmPrincipal = class(TForm)
    edtNum2: TEdit;
    btnCalcular: TButton;
    lblNum1: TLabel;
    lblOperacao: TLabel;
    edtNum1: TEdit;
    lblNum2: TLabel;
    lblResultado: TLabel;
    cmbOperacao: TComboBox;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Calculadora: Tcalculadora;
    function somar        (const aNum1, aNum2: String): String;
    function Subtrair     (const aNum1, aNum2: String): String;
    function Multiplicar  (const aNum1, aNum2: String): String;
    function Dividir      (const aNum1, aNum2: String): String;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation


{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
  begin
    Calculadora := TCalculadora.create;
    try
      if (cmbOperacao.ItemIndex < 0) or
        (cmbOperacao.ItemIndex >= cmbOperacao.Items.Count) then
          lblResultado.Caption := 'Erro na operação'
      else if Calculadora.TestarNumero(edtNum1.Text, edtNum2.Text) then
        case TOperacoa(cmbOperacao.ItemIndex) of
          opSomar:
            Somar(edtNum1.Text, edtNum2.Text);

          opSubtrair:
            lblResultado.Caption :=
              Subtrair(edtNum1.Text, edtNum2.Text);

          opMultiplicar:
            lblResultado.Caption :=
              Multiplicar(edtNum1.Text, edtNum2.Text);

          opDividir:
            begin
              if (edtNum2.Text = '0') then
                lblResultado.Caption := 'Não pode dividir por 0!'
              else
                lblResultado.Caption :=
                  Dividir(edtNum1.Text, edtNum2.Text);
            end;

        end
      else
        lblResultado.Caption := 'Erro de Converção';
    finally
      FreeAndNil(Calculadora);
    end;
  end;

function TfrmPrincipal.Dividir(const aNum1, aNum2: String): String;
  begin
    Result := Calculadora.Dividir(StrToFloat(aNum1),
                  StrToFloat(aNum2)).ToString;
  end;

function TfrmPrincipal.Multiplicar(const aNum1, aNum2: String): String;
  begin
    Result := Calculadora.Multiplicar(StrToFloat(aNum1),
                  StrToFloat(aNum2)).ToString;
  end;

function TfrmPrincipal.somar(const aNum1, aNum2: String): String;
  begin
    Result := Calculadora.somar(StrToFloat(aNum1),
                  StrToFloat(aNum2)).ToString;
  end;

function TfrmPrincipal.Subtrair(const aNum1, aNum2: String): String;
begin
    Result := Calculadora.Subtrair(StrToFloat(aNum1),
                  StrToFloat(aNum2)).ToString;
  end;

end.
