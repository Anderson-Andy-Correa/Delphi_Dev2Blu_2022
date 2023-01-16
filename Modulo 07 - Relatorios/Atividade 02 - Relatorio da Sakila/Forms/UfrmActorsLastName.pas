unit UfrmActorsLastName;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, UdmShowTime, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF;

type
  TfrmActorsLastName = class(TForm)
    grbFiltro: TGroupBox;
    DBLookupLastName: TDBLookupComboBox;
    btnVisualizar: TButton;
    btnExportar: TButton;
    lblActorLastName: TLabel;
    QryActor: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    dtsLookUpActor: TDataSource;
    LookUpLastName: TFDTable;
    procedure btnVisualizarClick(Sender: TObject);
    procedure PrepararFiltro;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActorsLastName: TfrmActorsLastName;

implementation

{$R *.dfm}

procedure TfrmActorsLastName.btnExportarClick(Sender: TObject);
  var
    xCaminho: String;
  begin
    Self.PrepararFiltro;

    xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

    if not DirectoryExists(xcaminho) then
      ForceDirectories(xCaminho);

    frxPDFExport1.FileName := Format('%s\Last_Name.pdf', [xCaminho]);
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
  end;

procedure TfrmActorsLastName.btnVisualizarClick(Sender: TObject);
  begin
    self.PrepararFiltro;

    frxReport1.ShowReport;
  end;

procedure TfrmActorsLastName.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
    Action := caFree;
    QryActor.Close;

    LookUpLastName.Close;

    frmActorsLastName := nil;
  end;

procedure TfrmActorsLastName.FormCreate(Sender: TObject);
  begin
    LookUpLastName.Open;
  end;

procedure TfrmActorsLastName.PrepararFiltro;
  begin
    QryActor.Close;
    QryActor.ParamByName('LAST_NAME').AsString  := '';

    if DBLookupLastName.text <> EmptyStr then
      QryActor.ParamByName('LAST_NAME').AsString :=
        LookUpLastName.FieldByName('LAST_NAME').AsString;

    QryActor.Open;
  end;

end.