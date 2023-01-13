unit UfrmFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFornecedores = class(TForm)
    DBNavigator: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    FDTable: TFDTable;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    FDTableId: TFDAutoIncField;
    FDTableCNPJ: TStringField;
    FDTableNome: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := caFree;
    FDTable.Close;

    frmfornecedores := nil;
  end;

procedure TfrmFornecedores.FormCreate(Sender: TObject);
  begin
    FDTable.Open;
  end;

end.
