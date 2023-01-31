unit UConcreteCommand;

interface

uses UCommand, UReceiver;

type
  { Concrete Command }
  TProcessos         = class(TInterfacedObject, ICommand)
    private
      // Variável para armazanar a referência do Receiver
      FRecevier: TReceiver;

    public
      constructor Create(aRecevier: TReceiver);

      // Assinatura da interface - Método de execução da operação
      procedure Execute;

  end;

  { Concrete Command }
  TProgramas         = class(TInterfacedObject, ICommand)
    private
      // Variável para armazanar a referência do Receiver
      FRecevier: TReceiver;

    public
      constructor Create(aRecevier: TReceiver);

      // Assinatura da interface - Método de execução da operação
      procedure Execute;

    end;

  { Concrete Command }
  TVariaveisAmbiente = class(TInterfacedObject, ICommand)
    private
      // Variável para armazanar a referência do Receiver
      FRecevier: TReceiver;

    public
      constructor Create(aRecevier: TReceiver);

      // Assinatura da interface - Método de execução da operação
      procedure Execute;

    end;

implementation

{ TProcessos }

constructor TProcessos.Create(aRecevier: TReceiver);
  begin
    FRecevier := aRecevier;
  end;

procedure TProcessos.Execute;
  begin
    FRecevier.ExtrairProcessos;
  end;

{ TProgramas }

constructor TProgramas.Create(aRecevier: TReceiver);
  begin
    FRecevier := aRecevier;
  end;

procedure TProgramas.Execute;
  begin
    FRecevier.ExtrairProgramas;
  end;

{ TVariaveisAmbiente }

constructor TVariaveisAmbiente.Create(aRecevier: TReceiver);
  begin
    FRecevier := aRecevier;
  end;

procedure TVariaveisAmbiente.Execute;
  begin
    FRecevier.ExtrairVariaveisAmbiente;
  end;


end.
