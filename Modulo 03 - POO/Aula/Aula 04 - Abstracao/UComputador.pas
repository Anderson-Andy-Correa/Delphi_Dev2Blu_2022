unit UComputador;

interface

type
  TPC = class
    private
      FLigado: Boolean;
      FFuncionado: Boolean;
      FPlacaMae: String;
      FMemoria: String;
      FEspaco: String;
      FProcessador: String;
      FSitemaOperacional: String;
      FTela: String;
      FTeclado: String;
      FMouse: String;
      FRGB: String;
      FCor: String;
      procedure SetCor(const Value: String);
      procedure SetEspaco(const Value: String);
      procedure SetFuncionado(const Value: Boolean);
      procedure SetLigado(const Value: Boolean);
      procedure SetMouse(const Value: String);
      procedure SetPlacaMae(const Value: String);
      procedure SetProcessador(const Value: String);
      procedure SetRGB(const Value: String);
      procedure SetSitemaOperacional(const Value: String);
      procedure SetTeclado(const Value: String);
      procedure SetTela(const Value: String);
    procedure SetMemoria(const Value: String);

    public
      Function Status: String;
      procedure Ligar;
      procedure Desligar;
      procedure Explodir;
      property Ligado: Boolean read FLigado write SetLigado;
      property Funcionado: Boolean read FFuncionado write SetFuncionado;
      property PlacaMae: String read FPlacaMae write SetPlacaMae;
      property Memoria: String read FMemoria write SetMemoria;
      property Espaco: String read FEspaco write SetEspaco;
      property Processador: String read FProcessador write SetProcessador;
      property SitemaOperacional: String read FSitemaOperacional write SetSitemaOperacional;
      property Tela: String read FTela write SetTela;
      property Teclado: String read FTeclado write SetTeclado;
      property Mouse: String read FMouse write SetMouse;
      property RGB: String read FRGB write SetRGB;
      property Cor: String read FCor write SetCor;
  end;

implementation

uses
  Vcl.Dialogs;

{ TPC }

procedure TPC.Desligar;
begin
  if Ligado = True then
    ShowMessage('Desligando!')
  else
    ShowMessage('Já está desligado!');
end;

procedure TPC.Explodir;
begin
  ShowMessage('Desligando!')

end;

procedure TPC.Ligar;
begin
  if Ligado = False then
    ShowMessage('Ligando!')
  else
    ShowMessage('Já está ligado!');
end;

procedure TPC.SetCor(const Value: String);
begin
  FCor := Value;
end;

procedure TPC.SetEspaco(const Value: String);
begin
  FEspaco := Value;
end;

procedure TPC.SetFuncionado(const Value: Boolean);
begin
  FFuncionado := Value;
end;

procedure TPC.SetLigado(const Value: Boolean);
begin
  FLigado := Value;
end;

procedure TPC.SetMemoria(const Value: String);
begin
  FMemoria := Value;
end;

procedure TPC.SetMouse(const Value: String);
begin
  FMouse := Value;
end;

procedure TPC.SetPlacaMae(const Value: String);
begin
  FPlacaMae := Value;
end;

procedure TPC.SetProcessador(const Value: String);
begin
  FProcessador := Value;
end;

procedure TPC.SetRGB(const Value: String);
begin
  FRGB := Value;
end;

procedure TPC.SetSitemaOperacional(const Value: String);
begin
  FSitemaOperacional := Value;
end;

procedure TPC.SetTeclado(const Value: String);
begin
  FTeclado := Value;
end;

procedure TPC.SetTela(const Value: String);
begin
  FTela := Value;
end;

function TPC.Status: String;
begin
  Result := 'PlacaMae         : #13#10' +
            'Memoria          : #13#10' +
            'Tamanho          : #13#10' +
            'Processador      : #13#10' +
            'SitemaOperacional: #13#10' +
            'Tela             : #13#10' +
            'Teclado          : #13#10' +
            'Mouse            : #13#10' +
            'RGB              : #13#10' +
            'Cor              : #13#10';
end;

end.
