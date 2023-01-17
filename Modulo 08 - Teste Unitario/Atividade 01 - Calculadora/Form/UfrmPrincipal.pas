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
            lblResultado.Caption :=
              Calculadora.somar(StrToFloat(edtNum1.Text),
                StrToFloat(edtNum2.Text)).ToString;

          opSubtrair:
            lblResultado.Caption :=
              Calculadora.subtrair(StrToFloat(edtNum1.Text),
                StrToFloat(edtNum2.Text)).ToString;

          opMultiplicar:
            lblResultado.Caption :=
              Calculadora.multiplicar(StrToFloat(edtNum1.Text),
                StrToFloat(edtNum2.Text)).ToString;

          opDividir:
            begin
              if (edtNum2.Text = '0') then
                lblResultado.Caption := 'Não pode dividir por 0!'
              else
                lblResultado.Caption :=
                  Calculadora.dividir(StrToFloat(edtNum1.Text),
                    StrToFloat(edtNum2.Text)).ToString;
            end;

        end
      else
        lblResultado.Caption := 'Erro de Converção';
    finally
      FreeAndNil(Calculadora);
    end;
  end;

end.
