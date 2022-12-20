unit uFrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, FMX.Objects, FMX.Effects;

type
  TfrmPrincipal = class(TForm)
    lyt_fundo: TLayout;
    lyt_altura: TLayout;
    edtAltura: TEdit;
    lblAltura: TLabel;
    LineAltura: TLine;
    lyt_peso: TLayout;
    lblPeso: TLabel;
    edtPeso: TEdit;
    LinePeso: TLine;
    lyt_titulo: TLayout;
    Rectangle1: TRectangle;
    lblTitulo: TLabel;
    lyt_resultado: TLayout;
    lblResultado: TLabel;
    lyt_calcular: TLayout;
    Rectangle2: TRectangle;
    btn_calcular: TSpeedButton;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    procedure btn_calcularClick(Sender: TObject);
  private
    procedure CalcularIMC;
  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.btn_calcularClick(Sender: TObject);
begin
  CalcularIMC;
end;

procedure TfrmPrincipal.CalcularIMC;
var
  xAltura, xPeso, xResultado: Double;
begin
  xAltura := 0;
  xPeso := 0;
  xResultado := 0;

  xAltura := StrToFloat(edtAltura.text) / 100;
  xPeso := StrToFloat(edtPeso.text);

  xResultado := xPeso/(xAltura * xAltura);

  lblResultado.Text := FloatToStr(xResultado);

  if xResultado < 18.5 then
    lblResultado.Text := 'MAGREZA (' + (FormatCurr('#,##0.00', (xResultado))) + ') GRAU 0'

  else if (xResultado >= 18.5) and (xResultado < 24.5) then
    lblResultado.Text := 'NORMAL (' + (FormatCurr('#,##0.00',(xResultado))) + ') GRAU 0'

  else if (xResultado >= 25.0) and (xResultado < 29.9) then
    lblResultado.Text := 'SOBREPESO (' + (FormatCurr('#,##0.00',(xResultado))) + ') GRAU I'

  else if (xResultado >= 30.0) and (xResultado < 39.9) then
    lblResultado.Text := 'OBESIDADE (' + (FormatCurr('#,##0.00',(xResultado))) + ') GRAU II'

  else if xResultado >= 40.0 then
    lblResultado.Text := 'OBESIDADE GRAVE (' + (FormatCurr('#,##0.00',(xResultado))) + ') GRAU III'

end;

end.
