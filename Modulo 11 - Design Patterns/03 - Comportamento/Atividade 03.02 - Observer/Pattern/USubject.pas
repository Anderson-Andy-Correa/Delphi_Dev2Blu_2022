unit USubject;

interface

uses
  UObserver;

type
  ISubject = interface
    // Metodo para adicionar Observer � lista
    procedure AdicionarObserver(aObeserver: IObserver);

    // M�todo para remover Observers da lista
    procedure RemoverObserver(aObserver: IObserver);

    // M�todo respons�vel por notificar os Observers registrados
    procedure Notificar;
  end;

implementation

end.
