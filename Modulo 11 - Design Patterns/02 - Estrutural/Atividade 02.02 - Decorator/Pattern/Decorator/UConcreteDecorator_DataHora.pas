unit UConcreteDecorator_DataHora;

interface

uses
  UDecorator;

type
  TDataHoraDecorator = class(TDecorator)
    protected
      function OBterDadosExcecao: String; Override;
  end;


implementation

uses
  System.SysUtils;

{ TDataHoraDecorator }

function TDataHoraDecorator.OBterDadosExcecao: String;
  begin
    Result := Inherited OBterDadosExcecao;
    Result := Result + 'Data/Hora: ' +
      FormatDateTime('dd/mm/yyy hh:mm:ss', Now);
  end;

end.
