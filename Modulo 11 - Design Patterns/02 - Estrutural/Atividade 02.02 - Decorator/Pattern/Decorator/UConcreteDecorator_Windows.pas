unit UConcreteDecorator_Windows;

interface

uses
  UDecorator;

type
  TWindowsDecorator = class(TDecorator)
    private
      function OBterDadosWindows: String;
    protected
      function OBterDadosExcecao: String; Override;
  end;

implementation

uses
  System.SysUtils, Windows, Registry;

{ TWindowsDecorator }

function TWindowsDecorator.OBterDadosExcecao: String;
  begin
    Result := inherited ObterDadosExcecao;
    Result := Result + 'Versão do Sistema Operacional: ' +
      Self.OBterDadosWindows;
  end;

function TWindowsDecorator.OBterDadosWindows: String;
  var
    xRegistro: TRegistry;
    xMajorVersion: Byte;
    xMinorVersion: Byte;
  begin
    // No Windows 10, a aplicação deve ser executada como Administrador
    xRegistro := TRegistry.Create;
    Try
      xRegistro.RootKey := HKEY_LOCAL_MACHINE;
      xRegistro.OpenKey('Software\Microsoft\Windows NT\CurrentVersion', False);
      xMajorVersion := xRegistro.ReadInteger('CurrentMajorVersionNumber');
      xMinorVersion := xRegistro.ReadInteger('CurrentMinorVersionNumber');

      case xMajorVersion of
        5:
          case xMinorVersion of
            1: Result := 'Windows XP';
          end;

        6:
          case xMinorVersion of
            0: Result := 'Windows Vista';
            1: Result := 'Windows 7';
            2: Result := 'Windows 8';
            3: Result := 'Windows 8.1';
          end;

        10:
          case xMinorVersion of
            0: Result := 'Windows 10';
          end;

      end;

    Finally
      FreeAndNil(xRegistro);
    End;
  end;

end.
