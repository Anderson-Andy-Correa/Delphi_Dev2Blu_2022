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
    procedure btnCalcularOOPClick(Sender: TObject);
  private
    { Private declarations }
    Function CalcularArea(const aValorA, aValorB, aValorC: Double): Double; overload;
    Function CalcularArea(const aValorA, aValorB, aValorC: String): String; overload;
    Procedure CalcularAreasOOP;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  UTriangulo;

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

procedure TfrmPrincipal.CalcularAreasOOP;
  var
    xTrianguloX, xTrianguloY: TTriangulo;
    xAreaX, xAreaY: Double;
  begin
    xTrianguloX := TTriangulo.Create;
    xTrianguloY := TTriangulo.Create;

    try
      //Primeiro Triagnulo
      xTrianguloX.a := StrToFloatDef(edtValorAX.Text, 0);
      xTrianguloX.b := StrToFloatDef(edtValorBX.Text, 0);
      xTrianguloX.c := StrToFloatDef(edtValorCX.Text, 0);

      xAreaX := xTrianguloX.Area;

      //Segundo Triagnulo
      xTrianguloY.a := StrToFloatDef(edtValorAY.Text, 0);
      xTrianguloY.b := StrToFloatDef(edtValorBY.Text, 0);
      xTrianguloY.c := StrToFloatDef(edtValorCY.Text, 0);

      xAreaX := xTrianguloY.Area;

      lblAreaX.Caption := 'Triangulo X Área: ' + FormatFloat('0.00', xAreaX);
      lblAreaY.Caption := 'Triangulo Y Área: ' + FormatFloat('0.00', xAreaX);

      if xAreaX > xAreaY then
        lblAreaMaior.Caption := 'A área do Triangulo X é maior.'
      else
        lblAreaMaior.Caption := 'A área do Triangulo Y é maior.';

    finally
      FreeAndNil(xTrianguloX);
      FreeAndNil(xTrianguloY);
    end;
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

procedure TfrmPrincipal.btnCalcularOOPClick(Sender: TObject);
  begin
    CalcularAreasOOP;
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
