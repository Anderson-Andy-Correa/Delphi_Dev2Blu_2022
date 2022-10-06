unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math;

type
  TfrmPrincipal = class(TForm)
    lblTituloX: TLabel;
    edtValorAX: TEdit;
    edtValorBX: TEdit;
    edtValorCX: TEdit;
    lblTituloY: TLabel;
    edtValorAY: TEdit;
    edtValorBY: TEdit;
    edtValorCY: TEdit;
    btnCalcular: TButton;
    btnCalcularOOP: TButton;
    lblAreaX: TLabel;
    lblAreaY: TLabel;
    lblAreaMaior: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
    Function CalcularArea(const aValorA, aValorB, aValorC: Double): Double; overload;
    Function CalcularArea(const aValorA, aValorB, aValorC: String): String; overload;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

function TfrmPrincipal.CalcularArea(const aValorA, aValorB,
  aValorC: String): String;
  var
    xP: Double;
    xA, xB, xC: Double;
  begin
    xA := StrToFloat(aValorA);
    xB := StrToFloat(aValorB);
    xC := StrToFloat(aValorC);
    xP := (xA + xB + xC) / 2;
    Result := Sqrt((xP * (xP - xA) * (xP - xB) * (xP - xC))).ToString;
  end;

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
  var
    xAreaX, xAreaY: Double;
  begin
    xAreaX := StrToFloat(CalcularArea(edtValorAX.Text, edtValorBX.Text, edtValorCX.Text));
    lblAreaX.Caption := Format('Triângulo X Área: %n', [xAreaX]);

    xAreaY := StrToFloat(CalcularArea(edtValorAY.Text, edtValorBY.Text, edtValorCY.Text));
    lblAreaY.Caption := Format('Triângulo X Área: %n', [xAreaY]);

    if xAreaX > xAreaY then
      begin
        lblAreaMaior.Caption := 'A área do Triangulo X é maior.';
      end
    else
      begin
        lblAreaMaior.Caption := 'A área do Triangulo Y é maior.';
      end;

  end;

function TfrmPrincipal.CalcularArea(const aValorA, aValorB,
  aValorC: Double): Double;
  var
    xP: Double;
  begin
    xP := (aValorA + aValorB + aValorC) / 2;
    Result := Sqrt((xP * (xP - aValorA) * (xP - aValorB) * (xP - aValorC)));
  end;

end.
