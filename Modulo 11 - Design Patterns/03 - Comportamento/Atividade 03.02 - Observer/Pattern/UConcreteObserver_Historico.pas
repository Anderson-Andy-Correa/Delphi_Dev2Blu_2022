unit UConcreteObserver_Historico;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,

  Data.DB,
  Datasnap.DBClient,

  UNotificacao,
  UObserver;

type
  TfraHistorico = class(TFrame, IObserver)
    lblDebitos: TLabel;
    cdsDebitos: TClientDataSet;
    dbgDebitos: TDBGrid;
    dtsDebitos: TDataSource;
    cdsDebitosCategoria: TStringField;
    cdsDebitosTotal: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

{ TFrame1 }

procedure TfraHistorico.Atualizar(aNotificacao: TNotificacao);
  begin
    if aNotificacao.Operacao = 'Crédito' then
      exit;

    // Encontra a categoria de débito para somar o valor
    if cdsDebitos.Locate('Categoria', aNotificacao.Categoria, []) then
      begin
        cdsDebitos.Edit;

        cdsDebitos.FieldByName('Total').AsFloat :=
          cdsDebitos.FieldByName('Total').AsFloat + aNotificacao.Valor;
        cdsDebitos.Post;

        exit;
      end;

    // Cadastra a categoria caso ela ainda não exista no agrupamento
    cdsDebitos.AppendRecord([aNotificacao.Categoria, aNotificacao.Valor]);
  end;

end.
