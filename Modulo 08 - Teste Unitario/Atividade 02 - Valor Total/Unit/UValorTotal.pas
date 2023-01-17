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
    property NomeProduto  : String  read FNomeProduto   write setNomeProduto;
    property Quantidade   : integer read FQuantidade    write setQuantidade;
    property PrecoUnitario: Double  read FPrecoUnitario write setPrecoUnitario;
    property ValorTotal   : Double  read FValorTotal;
    property Desconto     : Double  read FDesconto;
    Function RetornarValorTotal : Double;

  End;

implementation

uses
  System.SysUtils;

{ TValorTotal }

function TValorTotal.RetornarValorTotal: Double;
    begin
      if (FQuantidade > 0) and (FPrecoUnitario > 0) then
        begin
          case FQuantidade of
            1..10:
              begin
                FDesconto := 0;
                result := (FQuantidade * FPrecoUnitario);

              end;

            11..50:
              begin
                FDesconto := 10;
                result := (FQuantidade * FPrecoUnitario) * (100 - FDesconto) / 100;
              end

            else
              FDesconto := 25;
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
