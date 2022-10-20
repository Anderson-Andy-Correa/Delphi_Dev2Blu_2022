program Agregacao;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UTime in 'UTime.pas',
  UJogador in 'UJogador.pas';

type
    Jogador = class;

    Time = class
    private
        FTecnico: String;
        IDTime: Integer;
        FNomeTime: String;
    public
        AnoFuncacao: Integer;
        /// <link>aggregation</link>
        FJogador: Jogador;
    end;

    Jogador = class
      private
        FIdade: Byte;
        FIdJogador: Integer;
        FNome: String;
        FPosicao: String;
    end;
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
