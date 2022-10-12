unit UPessoa;

interface

uses
  System.SysUtils;

Type
  TPessoa = Class
    private
      FNome: String;
      FEndereco: String;
      FFEndereço: String;
      procedure SetFEndereco(const Value: String);
      procedure SetNome(const Value: String);
      function GetFEndereco: String;
      function GetNome: String;
    public
      property  Nome:     String read GetNome      write SetNome;
      property  Endereco: String read GetFEndereco write SetFEndereco;
      Procedure Gravar(aPessoa: TPessoa);
  End;

  TPessoaFisica = Class(TPessoa)
    private
      FCPF:   String;
      FIdade: Byte;
      FFCPF: String;
      FFIdade: String;
      function GetCPF: String;
      function GetIdade: Byte;
      procedure SetCPF(const Value: String);
      procedure SetIdade(const Value: Byte);
    public
      property CPF:        String read GetCPF   write SetCPF;
      property Idade:      Byte   read GetIdade write SetIdade;
      Function ValidarCPF(CPF: String): Boolean;
  End;

  TPessoaJuridica = Class(TPessoa)
    private
      FCNPJ: String;
      FIE:   String;
    procedure SetCNPJ(const Value: String);
    procedure SetIE(const Value: String);
    function GetCNPJ: String;
    function GetIE: String;
    public
      property CNPJ:        String read GetCNPJ write SetCNPJ;
      property IE:          String read GetIE   write SetIE;
      Function ValidarCNPJ(CNPJ: String): Boolean;
  End;

implementation

{ TPessoa }

function TPessoa.GetFEndereco: String;
  begin
    Result := FEndereco;
  end;

function TPessoa.GetNome: String;
  begin
    Result := FNome;
  end;

procedure TPessoa.SetFEndereco(const Value: String);
  begin
    FFEndereço := Value;
  end;

procedure TPessoa.SetNome(const Value: String);
  begin
    FNome := Value;
  end;

  procedure TPessoa.Gravar(aPessoa: TPessoa);
  begin

  end;

{ TPessoaFisica }

function TPessoaFisica.GetCPF: String;
  begin
    Result := FCPF;
  end;

function TPessoaFisica.GetIdade: Byte;
  begin
    Result := FIdade;
  end;

procedure TPessoaFisica.SetCPF(const Value: String);
  begin
    FCPF := Value;
  end;

procedure TPessoaFisica.SetIdade(const Value: Byte);
  begin
    FIdade := Value;
  end;

function TPessoaFisica.ValidarCPF(CPF: String): Boolean;
  var  dig10, dig11: string;
    s, i, r, peso: integer;
  begin
  // length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
    if ((CPF = '00000000000') or (CPF = '11111111111') or
        (CPF = '22222222222') or (CPF = '33333333333') or
        (CPF = '44444444444') or (CPF = '55555555555') or
        (CPF = '66666666666') or (CPF = '77777777777') or
        (CPF = '88888888888') or (CPF = '99999999999') or
        (length(CPF) <> 11))
       then begin
                Result := false;
                exit;
              end;

  // try - protege o código para eventuais erros de conversão de tipo na função StrToInt
    try
  { *-- Cálculo do 1o. Digito Verificador --* }
      s := 0;
      peso := 10;
      for i := 1 to 9 do
      begin
  // StrToInt converte o i-ésimo caractere do CPF em um número
        s := s + (StrToInt(CPF[i]) * peso);
        peso := peso - 1;
      end;
      r := 11 - (s mod 11);
      if ((r = 10) or (r = 11))
         then dig10 := '0'
      else str(r:1, dig10); // converte um número no respectivo caractere numérico

  { *-- Cálculo do 2o. Digito Verificador --* }
      s := 0;
      peso := 11;
      for i := 1 to 10 do
      begin
        s := s + (StrToInt(CPF[i]) * peso);
        peso := peso - 1;
      end;
      r := 11 - (s mod 11);
      if ((r = 10) or (r = 11))
         then dig11 := '0'
      else str(r:1, dig11);

  { Verifica se os digitos calculados conferem com os digitos informados. }
      if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
         then Result := true
      else Result := false;
    except
      Result := false
    end;
  end;

{ TPessoaJuridica }

function TPessoaJuridica.GetCNPJ: String;
  begin
    Result := FCNPJ;
  end;

function TPessoaJuridica.GetIE: String;
  begin
    Result := FIE;
  end;

procedure TPessoaJuridica.SetCNPJ(const Value: String);
  begin
    FCNPJ := Value;
  end;

procedure TPessoaJuridica.SetIE(const Value: String);
  begin
    FIE := Value;
  end;

function TPessoaJuridica.ValidarCNPJ(CNPJ: String): Boolean;
  var   dig13, dig14: string;
    sm, i, r, peso: integer;
  begin
  // length - retorna o tamanho da string do CNPJ (CNPJ é um número formado por 14 dígitos)
    if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
        (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
        (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
        (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
        (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
        (length(CNPJ) <> 14))
       then begin
              Result := false;
              exit;
            end;

  // "try" - protege o código para eventuais erros de conversão de tipo através da função "StrToInt"
    try
  { *-- Cálculo do 1o. Digito Verificador --* }
      sm := 0;
      peso := 2;
      for i := 12 downto 1 do
      begin
  // StrToInt converte o i-ésimo caractere do CNPJ em um número
        sm := sm + (StrToInt(CNPJ[i]) * peso);
        peso := peso + 1;
        if (peso = 10)
           then peso := 2;
      end;
      r := sm mod 11;
      if ((r = 0) or (r = 1))
         then dig13 := '0'
      else str((11-r):1, dig13); // converte um número no respectivo caractere numérico

  { *-- Cálculo do 2o. Digito Verificador --* }
      sm := 0;
      peso := 2;
      for i := 13 downto 1 do
      begin
        sm := sm + (StrToInt(CNPJ[i]) * peso);
        peso := peso + 1;
        if (peso = 10)
           then peso := 2;
      end;
      r := sm mod 11;
      if ((r = 0) or (r = 1))
         then dig14 := '0'
      else str((11-r):1, dig14);

  { Verifica se os digitos calculados conferem com os digitos informados. }
      if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
         then Result := true
      else Result := false;
    except
      Result := false
    end;
end;
end.
