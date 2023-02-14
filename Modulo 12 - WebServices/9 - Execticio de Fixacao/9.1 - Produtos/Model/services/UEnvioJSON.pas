unit UEnvioJSON;

interface

uses
  System.JSON;

type
  TEnvioJSON = class
    private
      FNomeArquivo: String;
      FJSON: TJSONArray;

      procedure SalvarDados;
      procedure CarregarDados;

    public
      constructor Create(const aNomeArquivo: String);

      function AdicionarRegistro(aJSON: TJSONObject): Boolean;
      function RemoverRegistro(const aIdentificador: Integer): Boolean;

      property JSON: TJSONArray read FJSON;
  end;

implementation

uses
  System.Classes, System.SysUtils;

{ TEnvioJSON }

function TEnvioJSON.AdicionarRegistro(aJSON: TJSONObject): Boolean;
  begin
    try
      if not Assigned(FJSON) then
        FJSON := TJSONArray.Create;

      FJSON.AddElement(aJSON);

      Self.SalvarDados;

      Result := True;

    except on E: Exception do
      raise Exception.Create('Não foi possivel adicionar o registro: '
        + E.Message);
    end;
  end;

procedure TEnvioJSON.CarregarDados;
  var
    xMeuArquivo: THandle;
    xStringList: TStringList;
  begin
    xStringList := TStringList.Create;
    try
      try
        if not FileExists(FNomeArquivo) then
          begin
            xMeuArquivo := FileCreate(FNomeArquivo);
            if xMeuArquivo <> INVALID_HANDLE_VALUE then
              FileClose(xMeuArquivo);
          end;

        xStringList.LoadFromFile(FNomeArquivo);
        FJSON :=
          TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(xStringList.Text),
          0) as TJSONArray;
      except
        on E: Exception do
          raise Exception.Create('Não foi possível Carregar os Dados: ' + E.Message);
      end;
    finally
      FreeAndNil(xStringList);
    end;
  end;

constructor TEnvioJSON.Create(const ANomeArquivo: String);
  begin
    FNomeArquivo := ANomeArquivo;
    Self.CarregarDados;
  end;

function TEnvioJSON.RemoverRegistro(const aIdentificador: Integer): Boolean;
  var
    I: Integer;
    xJSON: TJSONObject;
  begin
    if not Assigned(FJSON) then
      raise Exception.Create('Dados não encontrado.');

    try
      for I := 0 to Pred(FJSON.Count) do
        begin
          xJSON := TJSONObject.ParseJSONValue(
            TEncoding.ASCII.GetBytes(FJSON[I].toJSON), 0) as TJSONObject;

          if xJSON.GetValue('id').Value.ToInteger = aIdentificador then
            begin
              FJSON.Remove(I).Free;
              Self.SalvarDados;

              Result := True;
              Break;
            end;
        end;
    except
      on E: Exception do
        raise Exception.Create('Não foi possível remover o registro: ' + E.Message);
    end;
  end;

procedure TEnvioJSON.SalvarDados;
  var
    xStringList: TStringList;
  begin
    xStringList := TStringList.Create;
    try
      try
        xStringList.Add(FJSON.ToString);
        xStringList.SaveToFile(FNomeArquivo);
      except on E: Exception do
        raise Exception.Create(E.Message);
      end;
    finally
      FreeAndNil(xStringList);
    end;
  end;
end.
