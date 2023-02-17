unit UUtil.Banco;

interface

uses
  FireDac.Comp.Client,
  FireDac.Phys.Mysql,
  FireDac.DApt,
  FireDac.Stan.Def,
  FireDac.Stan.Async,
  Data.DB,
  DataSet.Serialize;

type
  TUtilBanco = class
    private
      class function Conexao: TFDConnection;
    public
      class function ExecutarConsulta(const aSQL: String): TFDQuery;
      class function AdicionarRegistro(const aTabela, aJSON: String): Boolean;
      class function RemoverRegistro(const aTabela: String; const aIdentificador: Integer): Boolean;
end;

implementation

uses
  System.SysUtils;

{ TUtilBanco }

class function TUtilBanco.AdicionarRegistro(const aTabela,
  aJSON: String): Boolean;
const
  COMANDO_INSERT = 'Insert Into %s(%s) Values (%s)';  
var
  I: Integer;
  xMemTable: TFDMemTable;
  xQuery: TFDQuery;
  xColunas: String;
  xValores: String;
begin
  xQuery := TFDQuery.Create(nil);
  xMemTable := TFDMemTable.Create(nil);
  try
    try
      xMemTable.LoadFromJSON(aJSON);

      for I := 0 to Pred(xMemTable.FieldCount) do
      begin
        xColunas := xColunas + xMemTable.Fields[I].FieldName + ',';

        if xMemTable.Fields[I].DataType = ftFloat then
          xValores := xValores + StringReplace(FloatToStr(xMemTable.Fields[I].AsFloat), ',', '.', [rfReplaceAll]) + ','
        else
          xValores := xValores + QuotedStr(xMemTable.Fields[I].AsString) + ',';
      end;

      xColunas := Copy(xColunas, 1, Length(xColunas)-1);
      xValores := Copy(xValores, 1, Length(xValores)-1);

      xQuery.Connection := Self.Conexao;
      xQuery.SQL.Clear;
      xQuery.SQL.Add(Format(COMANDO_INSERT, [aTabela, xColunas, xValores]));
      xQuery.ExecSQL;

      Result := True;
    except
      on e: Exception do 
        raise Exception.Create(e.Message);
  end;
  finally
    FreeAndNil(xQuery);
    FreeAndNil(xMemTable);
  end;

end;

class function TUtilBanco.Conexao: TFDConnection;
var
  xDriver: TFDPhysMySQLDriverLink;
begin
  xDriver := TFDPhysMySQLDriverLink.Create(nil);
  Result := TFDConnection.Create(nil);

  //driver de conexao do MySQL
  xDriver.VendorLib := ExtractFilePath(Paramstr(0)) + 'libmysql.dll';

  //parametros de configuracao do banco
  Result.DriverName := 'MySQL';
  Result.LoginPrompt := False;
  Result.Params.Add('Database=api');
  Result.Params.add('User_Name=root');
  Result.Params.Add('Password=root');
  Result.Params.Add('Server=localhost');
  Result.Params.Add('DriverID=MySQL');
  Result.Open;
end;

class function TUtilBanco.ExecutarConsulta(const aSQL: String): TFDQuery; //Nunca dar FreeandNil no objeto que vai ser usado fora da classe 
var
  xQuery: TFDQuery;
begin
  xQuery := TFDQuery.Create(nil);
  try
    xQuery.Connection := Self.Conexao;
    xQuery.Open(aSQL);

    Result := xQuery;
  except
    on e: Exception do
      raise Exception.Create(E.Message);
  end;
end;

class function TUtilBanco.RemoverRegistro(const aTabela: String;
  const aIdentificador: Integer): Boolean;
const
  COMANDO_DELETE = 'DELETE FROM %s WHERE ID =%d';
var
  xQuery: TFDQuery;
begin
  xQuery := TFDQuery.Create(nil);
  try
    try
      xQuery.Connection := Self.Conexao;
      xQuery.SQL.Clear;
      xQuery.SQL.Add(Format(COMANDO_DELETE, [aTabela, aIdentificador]));
      xQuery.ExecSQL;

      Result := True;
    except
      on e: Exception do
        raise Exception.Create(e.Message);
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

end.
