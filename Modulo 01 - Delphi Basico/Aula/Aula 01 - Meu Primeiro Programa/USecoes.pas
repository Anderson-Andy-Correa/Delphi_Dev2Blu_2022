unit USecoes;

interface

uses // Uses para a seção inteface
  UAnimal;

type // Tipos definidos na unit
  TRegistro = record
    Id: Integer;
    Data: TDate;
    Hora: TTime;
    Obse: String;
  end;

  TCachorro = class (TAnimal)
    procedure MeuSomEh; override;
  end;

var // Declaração de variáveis globais - Sempre escapar
  vGlobal: Integer;

  implementation

uses  // Uses para a seção implementação
  Vcl.Dialogs;

  {TCachorro}

  // Comentário em linha

  {
  Comentário em bloco
   }

  (*
  Comentário em bloco
    *)

procedure TCachorro.MeuSomEh;
begin
  showMessage('Miau!');
end;

end.
