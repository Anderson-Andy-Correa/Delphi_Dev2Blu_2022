unit UConcreteSubject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrame2 = class(TFrame)
    lblOperacao: TLabel;
    lblCategoria: TLabel;
    lblValor: TLabel;
    cmbOperacao: TComboBox;
    cmbCategoria: TComboBox;
    edtValor: TEdit;
    shpGravar: TShape;
    btnGravar: TButton;
    dbgGravar: TDBGrid;
    cdtGravar: TClientDataSet;
    dtsGravar: TDataSource;
    cdtGravarOperação: TStringField;
    cdtGravarCategoria: TStringField;
    cdtGravarValor: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
