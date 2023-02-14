unit UProduto;

interface

uses
  GBSwagger.model.Attributes;

type
  TProduto = class
    private
      FID           : Integer;
      FDescricao    : String;
      FUnidadeMedida: String;
      FPrecoVenda   : Real;

      procedure setDescricao(const Value: String);
      procedure SetID(const Value: Integer);
      procedure SetUnidadeMedida(const Value: String);
      procedure setPrecoVenda(const Value: Real);

    protected

    public
      [SwagProp('Produto Id', True)]
      property ID: Integer read FID write SetID;

      [SwagProp('Produto Descricao', True)]
      property Descricao: String read FDescricao write setDescricao;

      [SwagProp('Produto UnidadeMedida', True)]
      property UnidadeMedida: String read FUnidadeMedida write SetUnidadeMedida;

      [SwagProp('Produto PrecoVenda', True)]
      property PrecoVenda: Real read FPrecoVenda write setPrecoVenda;

  end;

  TAPIError = class
    private
      FError: String;
    public
      property Error: String read FError write FError;
  end;

implementation

{ Produtos }

procedure TProduto.setDescricao(const Value: String);
  begin
    FDescricao := Value;
  end;

procedure TProduto.SetID(const Value: Integer);
  begin
    FID := Value;
  end;

procedure TProduto.setPrecoVenda(const Value: Real);
  begin
    FPrecoVenda := Value;
  end;

procedure TProduto.SetUnidadeMedida(const Value: String);
  begin
    FUnidadeMedida := Value;
  end;

end.
