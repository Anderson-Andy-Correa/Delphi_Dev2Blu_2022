unit UDecorator;

interface

uses UInterfaceComponent;

type
  TDecorator = class(TInterfacedObject, ILogExcecao)
    protected
      FLogExcecao: ILogExcecao;

      function OBterDadosExcecao: String; virtual;

    public
      constructor Create(aLogExcecao: ILogExcecao);

  end;

implementation

{ TDecorator }

constructor TDecorator.Create(aLogExcecao: ILogExcecao);
  begin
    FLogExcecao := aLogExcecao;
  end;

function TDecorator.OBterDadosExcecao: String;
  begin
    Result := FLogExcecao.OBterDadosExcecao;
    Result := Result + #13#10;
  end;

end.
