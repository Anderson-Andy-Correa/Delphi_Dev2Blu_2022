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
    {Function CalcularArea(const aValorA, aValorB, aValorC: Double): Double; overload;}
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
    Result := Sqrt(xP * (xP - xA) * (xP - xB) * (xP - xC)).ToString;
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
      xTrianguloX.A := StrToFloatDef(edtValorAX.Text, 0);
      xTrianguloX.B := StrToFloatDef(edtValorBX.Text, 0);
      xTrianguloX.C := StrToFloatDef(edtValorCX.Text, 0);

      //xTrianguloX.D := 10; N�o � poss�vel

      {ShowMessage(xTrianguloX.D.ToString); // Property Somente leitura
      ShowMessage(xTrianguloX.A.ToString);}

      xAreaX := xTrianguloX.Area;

      //Segundo Triagnulo
      xTrianguloY.A := StrToFloatDef(edtValorAY.Text, 0);
      xTrianguloY.B := StrToFloatDef(edtValorBY.Text, 0);
      xTrianguloY.C := StrToFloatDef(edtValorCY.Text, 0);

      xAreaY := xTrianguloY.Area;

      lblAreaX.Caption := 'Tri�ngulo X �rea: ' + FormatFloat('0.00', xAreaX);
      lblAreaY.Caption := 'Tri�ngulo Y �rea: ' + FormatFloat('0.00', xAreaY);

      if xAreaX > xAreaY then
        begin
          lblAreaMaior.Caption := 'A �rea do Tri�ngulo X � maior.'
        end
      else if xAreaY > xAreaX then
        begin
          lblAreaMaior.Caption := 'A �rea do Tri�ngulo Y � maior.';
        end
      else
        begin
          lblAreaMaior.Caption := 'As �reas dos Tri�ngulos s�o iguais.';
        end;

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
    lblAreaX.Caption := Format('Tri�ngulo X �rea: %n', [xAreaX]);

    xAreaY := StrToFloat(CalcularArea(edtValorAY.Text, edtValorBY.Text, edtValorCY.Text));
    lblAreaY.Caption := Format('Tri�ngulo Y �rea: %n', [xAreaY]);

    if xAreaX > xAreaY then
      begin
        lblAreaMaior.Caption := 'A �rea do Tri�ngulo X � maior.';
      end
    else if xAreaY > xAreaX then
      begin
        lblAreaMaior.Caption := 'A �rea do Tri�ngulo Y � maior.';
      end
    else
      begin
        lblAreaMaior.Caption := 'As �reas dos Tri�ngulos s�o iguais.';
      end;
  end;

procedure TfrmPrincipal.btnCalcularOOPClick(Sender: TObject);
  begin
    CalcularAreasOOP;
  end;

{function TfrmPrincipal.CalcularArea(const aValorA, aValorB,
  aValorC: Double): Double;
  var
    xP: Double;
  begin
    xP := (aValorA + aValorB + aValorC) / 2;
    Result := Sqrt(xP * (xP - aValorA) * (xP - aValorB) * (xP - aValorC));
  end;}

end.
