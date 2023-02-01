unit UConcreteSubject;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Generics.Collections,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,

  Data.DB,
  Datasnap.DBClient,

  UObserver,
  USubject, UNotificacao;

type
  TOperacao = (tpCredito, tpDebito);
  TfraCadastro = class(TFrame, ISubject)
    lblOperacao: TLabel;
    lblCategoria: TLabel;
    lblValor: TLabel;
    cmbOperacao: TComboBox;
    cmbCategoria: TComboBox;
    edtValor: TEdit;
    shpGravar: TShape;
    btnGravar: TButton;
    dbgGravar: TDBGrid;
    cdsGravar: TClientDataSet;
    dtsGravar: TDataSource;
    cdsGravarOperação: TStringField;
    cdsGravarCategoria: TStringField;
    cdsGravarValor: TCurrencyField;
    procedure btnGravarClick(Sender: TObject);
    procedure cmbOperacaoChange(Sender: TObject);
  private
    { Private declarations }
    FObservers: TList<IObserver>;
    procedure Notificar;
    procedure CarregarCategorias;
  public
    { Public declarations }
    constructor create(AOwner: TComponent); override;
    destructor destroy; override;

    procedure AdicionarObserver(aObeserver: IObserver);
    procedure RemoverObserver(aObserver: IObserver);
  end;

implementation

{$R *.dfm}

{ TfraCadastro }

procedure TfraCadastro.AdicionarObserver(aObeserver: IObserver);
  begin
    FObservers.Add(aObeserver);
  end;

procedure TfraCadastro.btnGravarClick(Sender: TObject);
  begin
    // Adiciona um registro no DataSet conforme valores informados pelo usuário
    cdsGravar.AppendRecord(
      [cmbOperacao.text, cmbCategoria.Text, StrToFloatDef(edtValor.Text, 0)]);

    // Chama o método de notificação
    Self.Notificar;
  end;

procedure TfraCadastro.CarregarCategorias;
  begin
    cmbCategoria.Clear;

    case TOperacao(cmbOperacao.ItemIndex) of
      tpCredito:
        begin
          with cmbCategoria.Items do
            begin
              Add('Salário');
              Add('13°');
              Add('Restituição do IR');
              Add('Freelancing');
            end;
        end;

      tpDebito:
        begin
          with cmbCategoria.Items do
            begin
              Add('Aluguel');
              Add('Supermercado');
              Add('Farmácia');
              Add('Escola');
              Add('Combustível');
              Add('Alimentação');
              Add('Roupas');
              Add('Viagens');
            end;
        end;
    end;
  end;

procedure TfraCadastro.cmbOperacaoChange(Sender: TObject);
  begin
    Self.CarregarCategorias;
  end;

constructor TfraCadastro.create(AOwner: TComponent);
  begin
    inherited;
    FObservers := TList<IObserver>.Create;
  end;

destructor TfraCadastro.destroy;
  begin
    FObservers.Free;
    inherited;
  end;

procedure TfraCadastro.Notificar;
  var
    xNotificacao: TNotificacao;
    xObserver   : IObserver;
  begin
    xNotificacao.Operacao  := cdsGravar.FieldByName('Operação').AsString;
    xNotificacao.Categoria := cdsGravar.FieldByName('Categoria').AsString;
    xNotificacao.Valor     := cdsGravar.FieldByName('Valor').AsFloat;

    for xObserver in FObservers do
      begin
        xObserver.Atualizar(xNotificacao);
      end;
  end;

procedure TfraCadastro.RemoverObserver(aObserver: IObserver);
  begin
    FObservers.Delete(FObservers.IndexOf(aObserver));
  end;

end.
