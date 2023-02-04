program Calculadora;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UintCalculadora in '..\Units\UintCalculadora.pas',
  UCalculadora in '..\Units\UCalculadora.pas';

begin

  THorse.Get('/somar/:valor1/:valor2',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
      var
        xCalculadora: ICalculadora;
    begin
      xCalculadora := TCalculadora.Create(Req.Params.Items['valor1'],
        Req.Params.Items['valor2'], Req.Params.Count <> 2);

      Res.Send(Format('O Resultado é igual a: %.2f',[xCalculadora.Somar]));
    end);

  THorse.Get('/subtrair/:valor1/:valor2',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
      var
        xCalculadora: ICalculadora;
    begin
      xCalculadora := TCalculadora.Create(Req.Params.Items['valor1'],
        Req.Params.Items['valor2'], Req.Params.Count <> 2);

      Res.Send(Format('O Resultado é igual a: %.2f',[xCalculadora.Subtrair]));
    end);

  THorse.Get('/multiplicar/:valor1/:valor2',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
      var
        xCalculadora: ICalculadora;
    begin
      xCalculadora := TCalculadora.Create(Req.Params.Items['valor1'],
        Req.Params.Items['valor2'], Req.Params.Count <> 2);

      Res.Send(Format('O Resultado é igual a: %.2f',[xCalculadora.Multiplicar]));
    end);

  THorse.Get('/dividir/:valor1/:valor2',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
      var
        xCalculadora: ICalculadora;
    begin
      xCalculadora := TCalculadora.Create(Req.Params.Items['valor1'],
        Req.Params.Items['valor2'], Req.Params.Count <> 2);

      Res.Send(Format('O Resultado é igual a: %.2f',[xCalculadora.Dividir]));
    end);

  THorse.Listen(9090,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.