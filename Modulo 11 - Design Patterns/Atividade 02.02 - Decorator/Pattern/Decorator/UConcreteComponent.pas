unit UConcreteComponent;

interface

uses UInterfaceComponent, System.SysUtils;

type
  TLogExcecao = class(TInterfacedObject, ILogExcecao)
    private
      FExcecao: Exception;

      function OBterDadosExcecao: String;
    public
      constructor Create(aExcecao: Exception);
  end;

implementation

{ TLogExcecao }

constructor TLogExcecao.Create(aExcecao: Exception);
  begin
    FExcecao := aExcecao;
  end;

function TLogExcecao.OBterDadosExcecao: String;
  begin
    Result := 'Mensagem: ' + FExcecao.Message;
  end;

end.
