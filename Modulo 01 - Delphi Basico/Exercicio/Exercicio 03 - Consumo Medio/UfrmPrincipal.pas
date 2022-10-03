unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblSaudação: TLabel;
    lblTitulo: TLabel;
    lblDividir: TLabel;
    lblIgual: TLabel;
    lblResultado: TLabel;
    edtKm: TEdit;
    edtCombustivel: TEdit;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    function KmPorLitro: String;

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
  begin
    lblResultado.Caption := FormatFloat('0.####' ,StrToFloat(KmporLitro)) + ' Km/Litro';
    lblResultado.Visible := True;
  end;

function TfrmPrincipal.KmPorLitro: String;
  var
    xKmPorLitro: Double;
  begin
    try
      xKmPorLitro := StrToFloat(edtKm.Text) / StrToFloat(edtCombustivel.Text);
      Result := xKmPorLitro.ToString;
    except
      lblResultado.Caption := 'Use apenas números Reais!';
      lblResultado.Visible := True;
    end;
  end;

end.
