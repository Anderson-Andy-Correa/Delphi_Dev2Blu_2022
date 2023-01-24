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
  begin
    xCalculatorService := TCalculatorService.Create(StrToFloatDef(edtNum1.text, 0),
      StrToFloatDef(edtNum2.text, 0), TCalculadoraServiceDefault.Create);

    lblResultado.Caption := (xCalculatorService.processCalc(TTypeCalc(cmbOperacao.itemindex))).ToString;
  end;

end.
