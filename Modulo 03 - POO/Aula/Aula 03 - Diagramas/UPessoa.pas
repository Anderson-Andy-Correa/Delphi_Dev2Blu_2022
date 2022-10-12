unit UPessoa;

interface

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
      Function ValidarCPF: Boolean;
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
      Function ValidarCNPJ: Boolean;
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

function TPessoaFisica.ValidarCPF: Boolean;
  begin

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

function TPessoaJuridica.ValidarCNPJ: Boolean;
  begin

  end;

end.
