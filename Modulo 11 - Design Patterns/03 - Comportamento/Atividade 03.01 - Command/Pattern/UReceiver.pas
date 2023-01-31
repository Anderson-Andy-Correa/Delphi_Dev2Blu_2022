unit UReceiver;

interface

type
  TReceiver = class
    public
      procedure ExtrairProcessos;
      procedure ExtrairProgramas;
      procedure ExtrairVariaveisAmbiente;
  end;

implementation

uses
  Dialogs, Messages, Windows, Tlhelp32, psAPI,
  SysUtils, Registry, Classes;

{ TReceiver }

procedure TReceiver.ExtrairProcessos;
  var
    xHandle        : THandle;
    xProcessEntry  : TProcessEntry32;
    xListaProcessos: TStringList;
  begin
    //M�todo respons�vel por extrair a lista de processsos em execu��o

    xHandle         := CreateToolHelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    xListaProcessos := TStringList.Create;

    try
      xProcessEntry.dwSize := SizeOf(TProcessEntry32);
      Process32Next(xHandle, xProcessEntry);

      // Percorre os processos que est�o em execu��o,
      // adicionando-os na vari�vel ListaProcessos
      repeat
        xListaProcessos.Add(xProcessEntry.szExeFile);
      until not Process32Next(xHandle, xProcessEntry);

      // Grava a lista de processos no arquivo "Processos.txt"
      xListaProcessos.SaveToFile(GetCurrentDir + '\Processos.txt');
    finally
      CloseHandle(xHandle);
      FreeAndNil(xListaProcessos);
    end;
  end;

procedure TReceiver.ExtrairProgramas;
  const
    CHAVE_REGISTRO =
      '\Software\Microsoft\Windows\CurrentVersion\Uninstall\';
  var
    xRegistro      : TRegistry;
    xContador      : integer;
    xListaChaves   : TStringList;
    xListaProgramas: TStringList;
  begin
    // M�todo respons�vel por extarir a lista de programas instalados
    // Obs: a aplica��o deve ser executada como Administrador

    xRegistro       := TRegistry.Create;
    xListaChaves    := TStringList.Create;
    xListaProgramas := TStringList.Create;
    try
      // Obt�m a lista de chaves existentes no caminho do registro
      // que armazena as informa��es de programas instalados
      xRegistro.RootKey := HKEY_LOCAL_MACHINE;
      xRegistro.OpenKey(CHAVE_REGISTRO, false);
      xRegistro.GetKeyNames(xListaChaves);
      xRegistro.CloseKey;

      // Percorre a lista de chaves para acessar o
      // valor do atributo "DisplayName"
      for xContador := 0 to Pred(xListaChaves.count) do
        begin
          xRegistro.RootKey := HKEY_LOCAL_MACHINE;
          xRegistro.OpenKey(CHAVE_REGISTRO + xListaChaves[xContador], false);

          if xRegistro.ReadString('DisplayName') <> EmptyStr then
            // Adiciona o nome do programa na vari�vel ListaPrograma
            xListaProgramas.Add(xRegistro.ReadString('DisplayName'));

          xRegistro.CloseKey;
        end;

      // Grava a lista de processos no arquivo "Programas.txt"
      xListaProgramas.SaveToFile(GetCurrentDir + '\Programas.txt');

    finally
      // Libera os objetos na mem�ria
      FreeAndNil(xListaProgramas);
      FreeAndNil(xListaChaves);
      FreeAndNil(xRegistro);
    end;
  end;

procedure TReceiver.ExtrairVariaveisAmbiente;
  var
    xVariavel      : PChar;
    xlistaVariaveis: TStringList;
  begin
    // M�todo respons�vel por extrair a lista das vari�veis de ambiente

    xListaVariaveis := TStringlist.Create;
    try
      // Obt�m a lista das vari�veis de ambiente
      xVariavel := GetEnvironmentStrings;
      while xVariavel^ <> #0 do
        begin
          xlistaVariaveis.Add(StrPas(xVariavel));
          xlistaVariaveis.Add(EmptyStr);
          Inc(xVariavel, lstrlen(xVariavel + 1));
        end;
      FreeEnvironmentStrings(xVariavel);

      // Grava a lista de vari�veis no arquivo "Variaveis.txt"
      xlistaVariaveis.SaveToFile(GetCurrentDir + '\Variaveis.txt');
    finally
      // Libera o objeto da mem�ria
      FreeAndNil(xlistaVariaveis);
    end;
  end;

end.
