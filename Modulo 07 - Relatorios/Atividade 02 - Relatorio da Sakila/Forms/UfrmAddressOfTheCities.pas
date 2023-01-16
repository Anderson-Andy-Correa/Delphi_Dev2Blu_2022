unit UfrmAddressOfTheCities;

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
  TfrmAddressesOfTheCities = class(TForm)
    grbFiltro: TGroupBox;
    DBLookupCity: TDBLookupComboBox;
    btnVisualizar: TButton;
    btnExportar: TButton;
    lblAddressesOfTheCities: TLabel;
    QryAddress: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    dtsLookUpCity: TDataSource;
    LookUpCity: TFDTable;
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
  frmAddressesOfTheCities: TfrmAddressesOfTheCities;

implementation

{$R *.dfm}

procedure TfrmAddressesOfTheCities.btnExportarClick(Sender: TObject);
  var
    xCaminho: String;
  begin
    Self.PrepararFiltro;

    xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

    if not DirectoryExists(xcaminho) then
      ForceDirectories(xCaminho);

    frxPDFExport1.FileName := Format('%s\Addresses_Of_The_Cities.pdf', [xCaminho]);
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
  end;

procedure TfrmAddressesOfTheCities.btnVisualizarClick(Sender: TObject);
  begin
    self.PrepararFiltro;

    frxReport1.ShowReport;
  end;

procedure TfrmAddressesOfTheCities.FormClose(Sender: TObject;
  var Action: TCloseAction);
  begin
    Action := caFree;
    QryAddress.Close;

    LookUpCity.Close;

    frmAddressesOfTheCities := nil;
  end;

procedure TfrmAddressesOfTheCities.FormCreate(Sender: TObject);
  begin
    LookUpCity.Open;
  end;

procedure TfrmAddressesOfTheCities.PrepararFiltro;
  begin
    QryAddress.Close;
    QryAddress.ParamByName('CITY_ID').AsInteger  := 0;

    if DBLookupCity.text <> EmptyStr then
      QryAddress.ParamByName('CITY_ID').AsInteger :=
        LookUpCity.FieldByName('CITY_ID').AsInteger;

    QryAddress.Open;
  end;

end.
