unit USubject;

interface

uses
  UObserver;

type
  ISubject = interface
    // Metodo para adicionar Observer à lista
    procedure AdicionarObserver(aObeserver: IObserver);

    // Método para remover Observers da lista
    procedure RemoverObserver(aObserver: IObserver);

    // Método responsável por notificar os Observers registrados
    procedure Notificar;
  end;

implementation

end.
