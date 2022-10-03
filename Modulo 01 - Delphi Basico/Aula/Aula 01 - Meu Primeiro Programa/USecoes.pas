unit USecoes;

interface

uses // Uses para a se��o inteface
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

var // Declara��o de vari�veis globais - Sempre escapar
  vGlobal: Integer;

  implementation

uses  // Uses para a se��o implementa��o
  Vcl.Dialogs;

  {TCachorro}

  // Coment�rio em linha

  {
  Coment�rio em bloco
   }

  (*
  Coment�rio em bloco
    *)

procedure TCachorro.MeuSomEh;
begin
  showMessage('Miau!');
end;

end.
