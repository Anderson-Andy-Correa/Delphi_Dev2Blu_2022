unit UPessoa;

interface

type
  TPessoa = class
    private
      FNome: String;
      FDataNascimento: Tdate;
      FAltura: Double;
      FIdade: Word;

      function GetNome: String;
      function GetDataNascimento: Tdate;
      function GetAltura: Double;
      function GetIdade: Word;
      procedure SetNome(const aValue: String);
      procedure SetDataNascimento(const aValue: Tdate);
      procedure SetAltura(const aValue: Double);
      procedure SetIdade(const aValue: Word);

    public
      constructor Create(aNome, aData, aAltura: String);
      function DadosPessoais: String;
      function CalcularIdade(const aValue: TDate): Word;
      function TestarData(const aValue: String): Boolean;
      function TestarAltura(const aValue: String): Boolean;
      property Nome: String read GetNome write SetNome;
      property DataNascimento: Tdate read GetDataNascimento write SetDataNascimento;
      property Altura: Double read GetAltura write SetAltura;
      property Idade: Word read GetIdade write SetIdade;
    end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TPessoa }

function TPessoa.CalcularIdade(const aValue: TDate): Word;
  var
    xDia, xMes, xAno: Word;
    xAtualDia, xAtualMes, xAtualAno: Word;
  begin
    DecodeDate(aValue, xAno, xMes, xDia);
    DecodeDate(Now(), xAtualAno, xAtualMes, xAtualDia);
    FIdade := xAtualAno - xAno;
    Result := FIdade;
  end;

function TPessoa.DadosPessoais: String;
  begin
    if (Nome <> '') and (Idade >= 0) and (Altura > 0) then
      begin
        Result := Format('%s, %d anos, %nm de altura. ',[GetNome, GetIdade, GetAltura]);
      end
    else
      begin
        Result := 'Falha na obtenção de dados.';
      end;
  end;

function TPessoa.GetAltura: Double;
  begin
    Result := FAltura;
  end;

function TPessoa.GetDataNascimento: Tdate;
  begin
    Result := FDataNascimento;
  end;

function TPessoa.GetIdade: Word;
  begin
    Result := FIdade;
  end;

function TPessoa.GetNome: String;
  begin
    Result := FNome;
  end;

constructor TPessoa.Create(aNome, aData, aAltura: String);
  begin
    if (TestarData(aData)) and (TestarAltura(aAltura)) then
      begin
        Nome   := aNome;
        Idade  := CalcularIdade(StrToDate(aData));
        Altura := StrToFloat(aAltura);
      end
  else
    begin
      Nome   := '<Des>';
      Idade  := CalcularIdade(Now());
      Altura := 0;
    end;
  end;

procedure TPessoa.SetAltura(const aValue: Double);
  begin
    FAltura := aValue;
  end;

procedure TPessoa.SetDataNascimento(const aValue: Tdate);
  begin
    FDataNascimento := aValue;
  end;

procedure TPessoa.SetIdade(const aValue: Word);
  begin
    FIdade := aValue;
  end;

procedure TPessoa.SetNome(const aValue: String);
  begin
    FNome := aValue;
  end;

function TPessoa.TestarAltura(const aValue: String): Boolean;
  var
    xAltura: Double;
  begin
    if TryStrToFloat(aValue,xAltura) and (xAltura > 0) then
      begin
        Result:= True;
      end
    else
      begin
        Result := False;
        ShowMessage('Informe uma valor válido.');
      end;
  end;

function TPessoa.TestarData(const aValue: String): Boolean;
  var
    xData: TDateTime;
  begin
    Result:= False;
    if TryStrToDate(aValue, xData) then
      begin
        if xData <= now() then
          begin
            Result:= True
          end
        else
          begin
            ShowMessage('A data informada é superior a data atual.');
          end;
      end
    else
      begin
        ShowMessage('Informe uma Data válida no formato XX/YY/ZZZZ.');
      end;
  end;
end.
