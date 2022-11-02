unit UfrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmProdutos = class(TForm)
    DBNavigator: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    FDTable: TFDTable;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    FDTableId: TFDAutoIncField;
    FDTableDescricao: TStringField;
    FDTableidUnidadeMedida: TLongWordField;
    DBLookupComboBox1: TDBLookupComboBox;
    FDTableLookup: TFDTable;
    FDTableLookupId: TFDAutoIncField;
    FDTableLookupDescricao: TStringField;
    DataSource1: TDataSource;
    LookupUnidadeMedida: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := caFree;
    FDTable.Close;
    FDTableLookup.Close;

    frmProdutos := nil;
  end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
  begin
    FDTable.Open;
    FDTableLookup.Open;
  end;

end.
