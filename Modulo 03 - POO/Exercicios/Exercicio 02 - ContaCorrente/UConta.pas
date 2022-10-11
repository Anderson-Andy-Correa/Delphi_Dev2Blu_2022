unit UConta;

interface

uses
  Vcl.Dialogs, System.SysUtils, System.Classes;
  
Type
  TConta = Class
    private
      FTipo:        String; // Conta Corrente ou Conta Poupança
      FNumeroConta: String; // Pode começar com 0
      FNome:        String;
      FSaldo:       Currency;

    procedure SetNome(const Value: String);
    procedure SetNumeroConta(const Value: String);
    procedure SetSaldo(const Value: Currency);
    procedure SetTipo(const Value: String);
    

    public
      Constructor Create(const aNumConta: String;
                       const aNome: String;
                       const aTipo: String = '<Desconehcido>';
                       const aSaldo: Currency = 0);
      Function Sacar: TStrings;
      Function QtdNotas(aValor: Integer): TStrings;
      procedure Depositar;
      procedure AlterarNome;
      property Tipo:        String   read FTipo        write SetTipo;
      property NumeroConta: String   read FNumeroConta write SetNumeroConta;
      Property Nome:        String   read FNome        write SetNome;
      Property Saldo:       Currency read FSaldo       write SetSaldo;
  End;
implementation



{ TConta }

procedure TConta.AlterarNome;
  begin
    repeat
      Nome := inputbox('Alteração de Nome','Insira o novo Nome: ', '');
    until Nome <> '';
  end;
  
Constructor TConta.Create(const aNumConta, aNome, aTipo: String;
  const aSaldo: Currency);
  begin
    FTipo        := aTipo;
    FNumeroConta := aNumConta;
    FNome        := aNome;
    FSaldo       := aSaldo;
  end;

procedure TConta.Depositar;
  var
    xDeposito: Currency;
  begin
    xDeposito := StrToCurrDef(inputbox('Depositar','Insira o valor do depósito: ',''), 0);
    Saldo := Saldo + xDeposito;
  end;

Function TConta.QtdNotas(aValor: Integer): TStrings;
  var
    xAux : Integer;
    xTexto: TStrings;
  begin
    xTexto.Append(Format('No valor de %d, pegue as seguintes notas: ', [aValor]));
    while aValor > 0 do
      begin
        case aValor of
          1:
            begin
              xAux := aValor div 1;
              xTexto.Add(Format('%d nota de 1 Real', [xAux]));
              aValor := aValor - xAux;
            end;
          2..4:
            begin
              xAux := aValor div 2;
              xTexto.Add(Format('%d nota(s) de 2 Reais', [xAux]));
              aValor := aValor - xAux;
            end;
          5..9:
            begin
              xAux := aValor div 5;
              xTexto.Add(Format('%d nota(s) de 5 Reais', [xAux]));
              aValor := aValor - xAux;
            end;
          10..19:
            begin
              xAux := aValor div 10;
              xTexto.Add(Format('%d nota(s) de 10 Reais', [xAux]));
              aValor := aValor - xAux;
            end;
          20..49:
            begin
              xAux := aValor div 20;
              xTexto.Add(Format('%d nota(s) de 20 Reais', [xAux]));
              aValor := aValor - xAux;
            end;
          50..99:
            begin
              xAux := aValor div 50;
              xTexto.Add(Format('%d nota(s) de 50 Reais', [xAux]));
              aValor := aValor - xAux;
            end;
          100..199:
            begin
              xAux := aValor div 100;
              xTexto.Add(Format('%d nota(s) de 100 Reais', [xAux]));
              aValor := aValor - xAux;
            end;
          else
            begin
              xAux := aValor div 200;
              xTexto.Add(Format('%d nota(s) de 200 Reais', [xAux]));
              aValor := aValor - xAux;
            end;                   
        end;
      end;
    Result := xTexto;
  end;

Function TConta.Sacar: TStrings;
  var
  xSacar: Integer;
  begin
    if Saldo > 0 then
      begin
        xSacar := StrToIntDef(inputbox('Sacar','Insira o valor do saque: ',''), 0);
        if Saldo >= xSacar then
          begin
            Saldo := Saldo - xSacar;
            Result := self.QtdNotas(xSacar);
          end
        else
          begin
            ShowMessage('Valor informado maior que o saldo em conta.');
          end;
      end
    else
      begin
        ShowMessage('Saldo em conta insuficiente.');
      end;
  end;

procedure TConta.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TConta.SetNumeroConta(const Value: String);
begin
  FNumeroConta := Value;
end;

procedure TConta.SetSaldo(const Value: Currency);
begin
  FSaldo := Value;
end;

procedure TConta.SetTipo(const Value: String);
  begin
    if (Value = 'CC') or (Value = 'CP')  then
      FTipo := Value
    else
      ShowMessage('Tipo de conta inválida.');  
  end;
end.
