unit UfrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,

  UFabricaPrazos,
  UTipoPrazo;

type
  TfrmPrincipal = class(TForm)
    lblValorAtual: TLabel;
    lblQtdParcelas: TLabel;
    lblPrazoPagamento: TLabel;
    edtValorTotal: TEdit;
    edtQtdParcelas: TEdit;
    cmbPrazoPagamento: TComboBox;
    btnGerarProjecao: TButton;
    mmResultado: TMemo;
    procedure btnGerarProjecaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGerarProjecaoClick(Sender: TObject);
  var
    xTipoPrazo     : ITipoPrazo;
    xFactoryMethod : IFactoryMethod;
  begin
    // Instancia a Fábrica (Fectory Method)
    xFactoryMethod := TFabricaPrazo.Create;

    // Obtem o produto, baseado no parâmetro informado
    xTipoPrazo := xFactoryMethod.ConsultarPrazo
      (cmbPrazoPagamento.Items[cmbPrazoPagamento.ItemIndex]);

    with mmResultado.Lines do
      begin
        Clear;
        Add(xTipoPrazo.ConsultarDescricao);
        Add(xTipoPrazo.ConsultarJuros);
        Add(xTipoPrazo.ConsultarProjecao(StrToFloatDef(edtValorTotal.Text, 0),
          StrToIntDef(edtQtdParcelas.Text, 0)));
        Add(xTipoPrazo.ConsultarTotal);
        end;

  end;

end.
