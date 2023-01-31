unit UObserver;

interface

uses
  UNotificacao;

type
  IObserver = interface
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

end.
