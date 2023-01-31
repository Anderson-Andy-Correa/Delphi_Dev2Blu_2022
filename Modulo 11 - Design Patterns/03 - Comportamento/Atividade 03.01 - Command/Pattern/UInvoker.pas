unit UInvoker;

interface

uses
  System.Classes, UCommand;

type
  TInvoker = class
    private
      // Lista para armazenar os comandos
      FComandos: TInterfaceList;

    public
      constructor Create;
      procedure Add(aComando: ICommand);
      procedure ExtrairInformacoes;
  end;

implementation

{ Tinvoler }

procedure TInvoker.Add(aComando: ICommand);
  begin
    // Adiciona o comando na lista
    FComandos.Add(aComando);
  end;

constructor TInvoker.Create;
  begin
    FComandos := TInterfaceList.Create;
  end;

procedure TInvoker.ExtrairInformacoes;
  var
    xContador: Integer;
  begin
    // Percorre a lista de comandos armazenados,
    // executando a opera��o de cada um
    for xContador := 0 to Pred(FComandos.Count) do
      begin
        ICommand(FComandos[xContador]).Execute;
      end;
  end;

end.
