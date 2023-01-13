unit UfrmRelCompradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UdmPedidos;

type
  TfrmRelCompradores = class(TForm)
    FDQuery1: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    grbFiltros: TGroupBox;
    btnExportar: TButton;
    btnVisualizar: TButton;
    edtNome: TEdit;
    lblNome: TLabel;
    procedure btnVisualizarClick(Sender: TObject);
    procedure PrepararFiltro;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frmRelCompradores: TfrmRelCompradores;

implementation

{$R *.dfm}

procedure TfrmRelCompradores.btnExportarClick(Sender: TObject);
  var
    xCaminho: String;
  begin
    Self.PrepararFiltro;

    xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

    if not DirectoryExists(xcaminho) then
      ForceDirectories(xCaminho);

    frxPDFExport1.FileName := Format('%s\Compradores.pdf', [xCaminho]);
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
  end;

procedure TfrmRelCompradores.btnVisualizarClick(Sender: TObject);
  begin
    Self.PrepararFiltro;

    frxReport1.ShowReport;
  end;

procedure TfrmRelCompradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
    Action := caFree;
    FDQuery1.Close;

    frmRelCompradores := nil;
  end;

procedure TfrmRelCompradores.PrepararFiltro;
  begin
    FDQuery1.Close;
    FDQuery1.ParamByName('NOME').AsString := '';
    if Trim(edtNome.text) <> EmptyStr then
      FDQuery1.ParamByName('NOME').AsString := '%' + Trim(edtNome.text) + '%';
    FDQuery1.Open;
  end;

end.
