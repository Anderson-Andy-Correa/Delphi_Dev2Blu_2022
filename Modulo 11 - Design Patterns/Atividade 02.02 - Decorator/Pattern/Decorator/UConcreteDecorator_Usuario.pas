unit UConcreteDecorator_Usuario;

interface

uses
  UDecorator;

type
  TusuarioDecorator = class(TDecorator)
    private
      function OberNomeUsuario: String;

    public
      function OBterDadosExcecao: String; override;
  end;

implementation

uses
  Winapi.Windows;

{ TusuarioDecorator }

function TusuarioDecorator.OberNomeUsuario: String;
  var
    xSize: DWord;
  begin
    xSize := 1024;
    SetLength(result, xSize);
    GetUserName(Pchar(Result), xSize);
    SetLength(Result, xSize - 1);
  end;

function TusuarioDecorator.OBterDadosExcecao: String;
  begin
    Result := Inherited OBterDadosExcecao;
    Result := Result + 'Usuário: ' + Self.OberNomeUsuario;
  end;

end.
