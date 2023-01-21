unit UValorTotal;

interface
Type
TValorTotal = Class
  private
    FNomeProduto   : String;
    FQuantidade    : Integer;
    FPrecoUnitario : Double;
    FValorTotal    : Double;
    FDesconto      : Double;
    procedure setNomeProduto  (const Value: String);
    procedure setQuantidade   (const Value: integer);
    procedure setPrecoUnitario(const Value: Double);





  protected

  public
    constructor Create(aNome : String; aQuantidade: Integer; aPreco: Double);

    property NomeProduto  : String  read FNomeProduto   write setNomeProduto;
    property Quantidade   : integer read FQuantidade    write setQuantidade;
    property PrecoUnitario: Double  read FPrecoUnitario write setPrecoUnitario;
    property ValorTotal   : Double  read FValorTotal;
    property Desconto     : Double  read FDesconto;
    Function RetornarValorTotal : Double;

    const Zero = 0;
    const DescontoMinimo = 10;
    const DescontoMaximo = 25;

    const QuantidadeMimSemDesconto    = 1;
    const QuantidadeMaxSemDesconto    = 10;
    const QuantidadeMimDescontoMinimo = 11;
    const QuantidadeMaxDescontoMinimo = 50;
    const QuantidadeMaxDescontoMaximo = 51;
  End;

implementation

uses
  System.SysUtils;

{ TValorTotal }

constructor TValorTotal.Create(aNome: String;
  aQuantidade: Integer; aPreco: Double);
  begin
    try
      FNomeProduto := aNome;
      FQuantidade := aQuantidade;
      FPrecoUnitario := aPreco;
    except
      raise Exception.Create('Erro de Conversão!');

    end;
  end;

function TValorTotal.RetornarValorTotal: Double;
  begin
    if (FQuantidade > Zero) and (FPrecoUnitario > Zero) then
      begin
        case FQuantidade of
          QuantidadeMimSemDesconto..QuantidadeMaxSemDesconto:
            begin
              FDesconto := Zero;
              result := (FQuantidade * FPrecoUnitario);

            end;

          QuantidadeMimDescontoMinimo..QuantidadeMaxDescontoMinimo:
            begin
              FDesconto := DescontoMinimo;
              result := (FQuantidade * FPrecoUnitario) * (100 - FDesconto) / 100;
            end

          else
            FDesconto := DescontoMaximo;
            result := (FQuantidade * FPrecoUnitario) * (100 - FDesconto) / 100;
        end;
        FValorTotal := result;
      end
    else
      raise Exception.Create('Erro de Conversão!');
  end;

procedure TValorTotal.setNomeProduto(const Value: String);
  begin
    FNomeProduto := Value;
  end;

procedure TValorTotal.setPrecoUnitario(const Value: Double);
  begin
      FPrecoUnitario := Value
  end;

procedure TValorTotal.setQuantidade(const Value: Integer);
  begin
      FQuantidade := Value
  end;

end.
