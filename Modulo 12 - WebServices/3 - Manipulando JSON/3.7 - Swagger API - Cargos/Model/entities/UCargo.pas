unit UCargo;

interface

uses
  GBSwagger.Model.Attributes;

type
  TCargo = class
    private
      FID: Integer;
      FDescricao: String;

    public
      [SwagProp('Cargo Id', True)]
      property Id: Integer read FID write FID;

      [SwagProp('Cargo Descrição', True)]
      property Descricao: String read FDescricao write FDescricao;
  end;

  TAPIError = class
    private
      FError: String;
    public
      property Error: String read FError write FError;
  end;

implementation

end.
