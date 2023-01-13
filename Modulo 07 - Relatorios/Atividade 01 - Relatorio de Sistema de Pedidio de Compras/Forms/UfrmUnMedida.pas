unit UfrmUnMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TfrmUnMedida = class(TForm)
    DBNavigator: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    FDTable: TFDTable;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    FDTableId: TFDAutoIncField;
    FDTableDescricao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnMedida: TfrmUnMedida;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmUnMedida.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := caFree;
    FDTable.Close;

    frmUnMedida := nil;
  end;

procedure TfrmUnMedida.FormCreate(Sender: TObject);
  begin
    FDTable.Open;
  end;

end.
