unit UService.User;

interface

uses
  UEntity.Users,
  UService.Base;

type
  TServiceUser = class(TserviceBase)
    private
      FUser: TUSer;

    public
      constructor Create; overload;
      constructor Create(aUser: TUser); overload;
      destructor destroy; override;

      procedure Registrar; override;
      procedure Listar;    override;
      procedure Excluir;   override;

      function ObterRegistro(const aID: Integer): TObject; override;

  end;

implementation

uses
  REST.Types,

  UUtils.Constants,

  System.JSON,
  System.SysUtils,
  System.Classes,

  FireDAC.comp.Client,

  DataSet.Serialize;


{ TServiceUser }

constructor TServiceUser.Create;
  begin
    Inherited Create;
  end;

constructor TServiceUser.Create(aUser: TUser);
  begin
    FUser := aUser;
    Self.Create;
  end;

destructor TServiceUser.destroy;
  begin
    FreeAndNil(FUser);
    inherited;
  end;

procedure TServiceUser.Excluir;
  begin
    // Método sem implementação no momento
  end;

procedure TServiceUser.Listar;
  begin
    // Método sem implementação no momento
  end;

function TServiceUser.ObterRegistro(const aID: Integer): TObject;
  var
    xMemTable: TFDMemTable;
  begin
    Result := nil;

    xMemTable := TFDMemTable.Create(nil);

    try
      FRESTClient.BaseURL := URL_BASE_USER + '/' + aID.ToString;
      FRESTRequest.Method := rmGET;
      FRESTRequest.Execute;

      if FRESTResponse.StatusCode = API_SUCESSO then
        begin
          xMemTable.LoadFromJSON(FRESTResponse.Content);

          if xMemTable.FindFirst then
            Result := TUSer.Create(xMemTable.FieldByName('id').AsInteger);
        end;
    finally
      FreeAndNil(xMemTable);
    end;
  end;

procedure TServiceUser.Registrar;
  begin
    try
      FRESTClient.BaseURL := URL_BASE_USER;
      FRESTRequest.Method := rmPOST;
      FRESTRequest.Params.AddBody(FUser.JSON);
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
