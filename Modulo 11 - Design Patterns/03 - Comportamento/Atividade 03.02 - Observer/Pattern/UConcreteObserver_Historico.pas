unit UConcreteObserver_Historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.StdCtrls, UNotificacao, UObserver;

type
  TFrame1 = class(TFrame, IObserver)
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

procedure TFrame1.Atualizar(aNotificacao: TNotificacao);
  begin
    if aNotificacao.Operacao = 'Cr�dito' then
      exit;

    // Encontra a categoria de d�bito para somar o valor
    if cdsDebitos.Locate('Categoria', aNotificacao.Categoria, []) then
      begin
        cdsDebitos.Edit;

        cdsDebitos.FieldByName('Total').AsFloat :=
          cdsDebitos.FieldByName('Total').AsFloat + aNotificacao.Valor;
        cdsDebitos.Post;

        exit;
      end;

    // Cadastra a categoria caso ela ainda n�o exista no agrupamento
    cdsDebitos.AppendRecord([aNotificacao.Categoria, aNotificacao.Valor]);
  end;

end.
