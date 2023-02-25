unit UService.Match;

interface

uses
  UEntity.Matchs,
  UService.Base,
  Generics.Collections;

type
  TServiceMatch = class(TServiceBase)
    private
      FMatch: TMatch;
      FMatchs: TObjectList<TMatch>;
      // Ao limpar objeto, não precisa limpar os filhos. Por padrão já faz
      //Diferente do TList<TTeam>

      function GetMatchs: TObjectList<TMatch>;

      procedure preencherMatchs(const aJSONMatchs: String);
    public
      constructor Create; overload;
      constructor Create(aTeam: TMatch); overload;
      destructor Destroy; override;

      procedure Registrar; override;
      procedure Listar;    override;
      procedure Excluir;   override;

      function ObterRegistro(const aID: Integer): TObject; override;

      property Matchs: TObjectList<TMatch> read GetMatchs;

  end;

implementation

{ TServiceTeam }

uses
  System.SysUtils,
  System.JSON,
  UUtils.Constants,
  DataSet.Serialize,
  FireDAC.Comp.Client,
  REST.Types;

constructor TServiceMatch.Create;
  begin
    inherited Create;

    FMatchs := TObjectList<TMatch>.Create;
  end;

constructor TServiceMatch.Create(aTeam: TMatch);
  begin
    FMatch := aTeam;

    Self.Create;
  end;

destructor TServiceMatch.Destroy;
  begin
    FreeAndNil(FMatch);
    FreeAndNil(FMatchs);
    inherited;
  end;

procedure TServiceMatch.Excluir;
  begin
    if (not Assigned(FMatch)) or (FMatch.Id = 0) then
      raise Exception.Create('Nenhum time foi escolhido para exclusão.');

    try
      FRESTClient.BaseURL := Format(URL_BASE_MATCH + '/%d', [FMatch.Id]);
      FRESTRequest.Method := rmDelete;
      FRESTRequest.Execute;

      case FRESTResponse.StatusCode of
        API_SUCESSO_SEM_RETORNO:
          Exit;

        API_NAO_AUTORIZADO:
          raise Exception.Create('Usuário não autorizado.');

        else
          raise Exception.Create('Erro não catalogado.');
      end;

    except on E: Exception do
      raise Exception.Create(E.Message);
    end;
  end;

function TServiceMatch.GetMatchs: TObjectList<TMatch>;
  begin
    Result := FMatchs;
  end;

procedure TServiceMatch.Listar;
  var
    xMemTable: TFDMemTable;
  begin
    FMatchs.Clear;

    xMemTable := TFDMemTable.Create(nil);

    try
      try
        FRESTClient.BaseURL := URL_BASE_TEAM;
        FRESTRequest.Method := rmGet;
        FRESTRequest.Execute;

        case FRESTResponse.StatusCode of
          API_SUCESSO:
            begin
//              xMemTable.LoadFromJSON(FRESTResponse.Content);
//
//              while not xMemTable.Eof do
//                begin
//                  FMatchs.Add(TMatch.Create(xMemTable.FieldByName('id').AsInteger,
//                                           xMemTable.FieldByName('name').AsString));
//
//                  xMemTable.Next;
//                end;
            end;

          API_NAO_AUTORIZADO:
            raise Exception.Create('Usuário não autorizado.');

          else
            raise Exception.Create('Erro ao carregar a lista de Times. ' +
            'Código do Erro: ' + FRESTResponse.StatusCode.ToString);
        end;
      except on E: Exception do
        raise Exception.Create(E.Message);
      end;
    finally
      FreeAndNil(xMemTable);
    end;

  end;

function TServiceMatch.ObterRegistro(const aID: Integer): TObject;
  var
    xMemTable: TFDMemTable;
  begin
    Result := nil;

    xMemTable := TFDMemTable.Create(nil);

    try
      FRESTClient.BaseURL := URL_BASE_TEAM + '/' + aID.ToString;
      FRESTRequest.Method := rmGET;
      FRESTRequest.Execute;

      if FRESTResponse.StatusCode = API_SUCESSO then
        begin
          xMemTable.LoadFromJSON(FRESTResponse.Content);

          if xMemTable.FindFirst then
            Result := TMatch.Create(xMemTable.FieldByName('id').AsInteger);
        end;
    finally
      FreeAndNil(xMemTable);
    end;
  end;

procedure TServiceMatch.preencherMatchs(const aJSONMatchs: String);
  begin
  //
  end;

procedure TServiceMatch.Registrar;
  begin
    try
      FRESTClient.BaseURL := URL_BASE_MATCH;
      FRESTRequest.Method := rmPOST;
      FRESTRequest.Params.AddBody(FMatch.JSON);
      FRESTRequest.Execute;

      case FRESTResponse.StatusCode of
        API_CRIADO:
          Exit;

        API_NAO_AUTORIZADO:
          raise Exception.Create('Usuário não autorizado.');

        else
          raise Exception.Create('Usuário não catalogado.');
      end;
    except on E: Exception do
      raise Exception.Create(E.Message);
    end;
  end;

end.
