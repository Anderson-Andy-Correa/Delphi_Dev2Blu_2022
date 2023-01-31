unit UConcreteObserver_Saldo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UNotificacao,
  UObserver;

type
  TfraSaldo = class(TFrame, IObserver)
    lblBalanço: TLabel;
    lblCreditos: TLabel;
    lblDebitos: TLabel;
    lblSaldos: TLabel;
    lblValorCredito: TLabel;
    lblValorDebito: TLabel;
    lblValorSaldo: TLabel;
  private
    { Private declarations }
    FCreditos: Real;
    FDebitos : Real;
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

{ TfraSaldo }

procedure TfraSaldo.Atualizar(aNotificacao: TNotificacao);
  var
    xSaldo: Real;
  begin
    // Soma o valor à variável conforme o tipo de operação
    if aNotificacao.Operacao = 'Crédito' then
      FCreditos := FCreditos + aNotificacao.Valor
    else if aNotificacao.Operacao = 'Débito' then
      FDebitos := FDebitos + aNotificacao.Valor;

    //Calcula o Saldo
    xSaldo := FCreditos - FDebitos;

    lblValorCredito.Caption := FormatFloat('###,##0.00', FCreditos);
    lblValorDebito.Caption  := FormatFloat('###,##0.00', FDebitos);
    lblValorSaldo.Caption   := FormatFloat('###,##0.00', xSaldo);
  end;

end.
