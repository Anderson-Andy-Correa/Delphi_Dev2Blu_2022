unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UCalculadoraService,
  UCalculadoraServiceDefault, UCalculadoraServiceInterface;

type
  TfrmPrincipal = class(TForm)
    edtNum1: TEdit;
    edtNum2: TEdit;
    cmbOperacao: TComboBox;
    lblResultado: TLabel;
    procedure cmbOperacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TfrmPrincipal.cmbOperacaoChange(Sender: TObject);
  var
    xCalculatorService : TCalculatorService;
    xNum1, xNum2: Double;
  begin
    if not TryStrToFloat(edtNum1.text, xNum1) then
      raise Exception.Create('Número 1 inválido');

    if not TryStrToFloat(edtNum2.text, xNum2) then
      raise Exception.Create('Número 2 inválido');

    xCalculatorService := TCalculatorService.Create(xNum1, xNum2, TCalculadoraServiceDefault.Create);
    Try
      lblResultado.Caption := (xCalculatorService.processCalc(TTypeCalc(cmbOperacao.itemindex))).ToString;
    Finally
      FreeAndNil(xCalculatorService);
    End;

  end;

end.
