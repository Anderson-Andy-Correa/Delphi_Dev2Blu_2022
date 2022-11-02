unit UfrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPedidos = class(TForm)
    DBNavigator: TDBNavigator;
    DBGrid1: TDBGrid;
    DTSItemPedido: TDataSource;
    FDTItemPedido: TFDTable;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    FDTLookUpFornecedor: TFDTable;
    DTSFornecedor: TDataSource;
    FDTLookUpComprador: TFDTable;
    DTSComprador: TDataSource;
    DTSPedido: TDataSource;
    FDTPedido: TFDTable;
    FDTProduto: TFDTable;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    FDTLookUpCompradorId: TFDAutoIncField;
    FDTLookUpCompradorNome: TStringField;
    FDTLookUpCompradorCargo: TStringField;
    FDTLookUpFornecedorId: TFDAutoIncField;
    FDTLookUpFornecedorCNPJ: TStringField;
    FDTLookUpFornecedorNome: TStringField;
    DBNavigator1: TDBNavigator;
    FDTItemPedidoId: TFDAutoIncField;
    FDTItemPedidoQuantidade: TFloatField;
    FDTItemPedidoidPedidoCompra: TLongWordField;
    FDTItemPedidoidProduto: TLongWordField;
    FDTPedidoId: TFDAutoIncField;
    FDTPedidoNumero: TLongWordField;
    FDTPedidoDataPedido: TDateField;
    FDTPedidoidComprador: TLongWordField;
    FDTPedidoidFornecedor: TLongWordField;
    FDTProdutoId: TFDAutoIncField;
    FDTProdutoDescricao: TStringField;
    FDTProdutoidUnidadeMedida: TLongWordField;
    FDTItemPedidoLookUpProduto: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FDTItemPedidoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmPedidos.FDTItemPedidoBeforePost(DataSet: TDataSet);
  begin
    FDTItemPedidoId.AsInteger := FDTPedidoId.AsInteger;
  end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := caFree;

    FDTItemPedido.Close;
    FDTProduto.Close;
    FDTPedido.close;
    FDTProduto.close;

    FDTLookUpComprador.Close;
    FDTLookUpFornecedor.Close;

    frmPedidos := nil;
  end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
  begin
    FDTItemPedido.Open;
    FDTProduto.Open;
    FDTPedido.open;
    FDTProduto.open;

    FDTLookUpComprador.Open;
    FDTLookUpFornecedor.Open;
  end;

end.
