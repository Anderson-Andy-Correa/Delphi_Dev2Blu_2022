unit UfrmActorFilm;

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
  TfrmActorFilm = class(TForm)
    grbFiltro: TGroupBox;
    DBLookupActor: TDBLookupComboBox;
    btnVisualizar: TButton;
    btnExportar: TButton;
    lblActor: TLabel;
    QryActor: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    dtsLookUpActor: TDataSource;
    LookUpActor: TFDTable;
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
  frmActorFilm: TfrmActorFilm;

implementation

{$R *.dfm}

procedure TfrmActorFilm.btnExportarClick(Sender: TObject);
  var
    xCaminho: String;
  begin
    Self.PrepararFiltro;

    xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

    if not DirectoryExists(xcaminho) then
      ForceDirectories(xCaminho);

    frxPDFExport1.FileName := Format('%s\Actor_Films.pdf', [xCaminho]);
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
  end;

procedure TfrmActorFilm.btnVisualizarClick(Sender: TObject);
  begin
    self.PrepararFiltro;

    frxReport1.ShowReport;
  end;

procedure TfrmActorFilm.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
    Action := caFree;
    QryActor.Close;

    LookUpActor.Close;

    frmActorFilm := nil;
  end;

procedure TfrmActorFilm.FormCreate(Sender: TObject);
  begin
    LookUpActor.Open;
  end;

procedure TfrmActorFilm.PrepararFiltro;
  begin
    QryActor.Close;
    QryActor.ParamByName('ID').AsInteger  := 0;

    if DBLookupActor.text <> EmptyStr then
      QryActor.ParamByName('ID').AsInteger :=
        LookUpActor.FieldByName('ACTOR_ID').AsInteger;

    QryActor.Open;
  end;

end.
