unit UfrmRelPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UdmPedidos, Vcl.DBCtrls;

type
  TfrmRelPedidos = class(TForm)
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    grbFiltros: TGroupBox;
    btnExportar: TButton;
    btnVisualizar: TButton;
    DBLookupComprador: TDBLookupComboBox;
    DBLookupFornecedor: TDBLookupComboBox;
    LookUpComprador: TFDTable;
    dtsLookupComprador: TDataSource;
    dtsLookupFornecedor: TDataSource;
    LookUpFornecedor: TFDTable;
    QryPedido: TFDQuery;
    QryItemCompra: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    lblComprador: TLabel;
    lblFornecedor: TLabel;
    dtsPedido: TDataSource;
    procedure btnVisualizarClick(Sender: TObject);
    procedure PrepararFiltro;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frmRelPedidos: TfrmRelPedidos;

implementation

{$R *.dfm}

procedure TfrmRelPedidos.btnExportarClick(Sender: TObject);
  var
    xCaminho: String;
  begin
    Self.PrepararFiltro;

    xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

    if not DirectoryExists(xcaminho) then
      ForceDirectories(xCaminho);

    frxPDFExport1.FileName := Format('%s\Pedidos.pdf', [xCaminho]);
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
  end;

procedure TfrmRelPedidos.btnVisualizarClick(Sender: TObject);
  begin
    Self.PrepararFiltro;

    frxReport1.ShowReport;
  end;

procedure TfrmRelPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
    Action := caFree;
    QryPedido.Close;
    QryItemCompra.Close;

    LookUpComprador.Close;
    LookUpFornecedor.Close;

    frmRelPedidos := nil;
  end;

procedure TfrmRelPedidos.FormCreate(Sender: TObject);
  begin
    LookUpComprador.Open;
    LookUpFornecedor.Open;
  end;

procedure TfrmRelPedidos.PrepararFiltro;
  begin
    QryPedido.Close;
    QryPedido.ParamByName('IDCOMPRADOR').AsInteger  := 0;
    QryPedido.ParamByName('IDFORNECEDOR').AsInteger := 0;

    if DBLookupComprador.text <> EmptyStr then
      QryPedido.ParamByName('IDCOMPRADOR').AsInteger :=
        LookUpComprador.FieldByName('ID').AsInteger;

    if DBLookupFornecedor.text <> EmptyStr then
      QryPedido.ParamByName('IDFORNECEDOR').AsInteger :=
        LookUpFornecedor.FieldByName('ID').AsInteger;

    QryPedido.Open;

    QryItemCompra.Close;
    QryItemCompra.Open;
  end;

end.
