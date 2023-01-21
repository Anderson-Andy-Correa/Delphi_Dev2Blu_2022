unit UPaciente;

interface

uses
  System.Generics.Collections;

type
  TPaciente = class
    private
      FCPF: String;
      FNome: String;
      FEspecialidade: String;
      procedure SetCPF(const Value: String);
      procedure SetNome(const Value: String);
      procedure SetEspecialidade(const Value: String);

    published

    public
      property CPF: String read FCPF write SetCPF;
      property Nome: String read FNome write SetNome;
      property Especialidade: String read FEspecialidade write SetEspecialidade;

  end;

  TFila = class
    private
      FPaciente: TQueue<TPaciente>;

    published

    public
      constructor Create;
      destructor destoy;
      function Adicionar(const aPaciente: TPaciente): String;

      function Proximo: TPaciente;
      function Contar: Integer;
  end;


implementation

uses
  System.SysUtils;

{ TPaciente }

procedure TPaciente.SetCPF(const Value: String);
  begin
    FCPF := Value;
  end;

procedure TPaciente.SetEspecialidade(const Value: String);
  begin
    FEspecialidade := Value;
  end;

procedure TPaciente.SetNome(const Value: String);
  begin
    FNome := Value;
  end;

{ TFila }

function TFila.Adicionar(const aPaciente: TPaciente): String;
  begin
    FPaciente.Enqueue(aPaciente);
    result := 'Paciente registrado com sucesso';
  end;

function TFila.Contar: Integer;
  begin
    Result := FPaciente.Count;
  end;

constructor TFila.Create;
  begin
    FPaciente := TQueue<TPaciente>.Create;

  end;

destructor TFila.destoy;
begin
  FreeAndNil(FPaciente);

  inherited;
end;

function TFila.Proximo: TPaciente;
  begin
    Result := FPaciente.Extract;
  end;

end.
