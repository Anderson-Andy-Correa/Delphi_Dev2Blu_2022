unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblNome: TLabel;
    mmDiario: TMemo;
    edtNome: TEdit;
    btnLerAluno: TButton;
    edtPrimeiraNota: TEdit;
    lblNota01: TLabel;
    btnGravarAluno: TButton;
    edtSegundaNota: TEdit;
    lvlNota02: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarAlunoClick(Sender: TObject);
    procedure btnLerAlunoClick(Sender: TObject);
  private
    { Private declarations }
    FArq : TextFile;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGravarAlunoClick(Sender: TObject);
  begin
    if (edtNome.Text         <> '') and
       (edtPrimeiraNota.Text <> '') and
       (edtSegundaNota.Text  <> '') then
      begin
        //Grava uma linha com os dados de um aluno no arquivo
        Writeln(FArq, edtNome.Text,         '|',
                      edtPrimeiraNota.Text, '|',
                      edtSegundaNota.Text,  '|');
        edtNome.Clear;
        edtPrimeiraNota.Clear;
        edtSegundaNota.Clear;
      end;
  end;

procedure TfrmPrincipal.btnLerAlunoClick(Sender: TObject);
  var
    LLinha, LNome: String;
    Lreg, I: Integer;
    LNota1, LNota2, LMedia: Double;
  begin
    mmDiario.Clear;

    //Abre o Arquivo texto para leitura
    Reset(FArq);

    try
      LReg := 0;

      //Enquanto não atingir a marca de final de arquivo
      while (not Eof(FArq)) do
        begin
          // Lê uma linha, com os dados de um aluno, do arquivo
          ReadLn(FArq, LLinha);

          Inc(LReg);

          // Recupera o nome do aluno
          I := pos('|', LLinha);
          LNome := copy(LLinha, 1, I - 1);
          delete(LLinha, 1, I);

          // Recupera a 1ª Nota do aluno
          I := pos('|', LLinha);
          LNota1 := StrToFloatDef(copy(LLinha, 1, I - 1), 0);
          Delete(LLinha, 1, I);

          // Recupera a 2ª Nota do aluno
          I := pos('|', LLinha);
          LNota2 := StrToFloatDef(copy(LLinha, 1, I - 1), 0);

          // Processando e exibindo os dados recuperados
          LMedia := (LNota1 + LNota2) / 2;
          mmDiario.Lines.Add('Registro Nro.: ' + IntToStr(LReg));
          mmDiario.Lines.Add('Nome do Aluno: ' + LNome);
          mmDiario.Lines.Add('1ª Nota......: ' + FloatToStr(LNota1));
          mmDiario.Lines.Add('2ª Nota......: ' + FloatToStr(LNota2));
          mmDiario.Lines.Add('Média........: ' + FloatToStr(Lmedia));

          if (LMedia >= 7) then
            mmDiario.Lines.Add('Média........: Aprovado')
          else
            mmDiario.Lines.Add('Média........: Reprovado');

          mmDiario.Lines.Add('');
        end;
    finally
    end;
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    CloseFile(FArq);
  end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
  begin
    AssignFile(FArq, 'diario.txt');
    {$I-}
    Reset(FArq);

    if IOResult <> 0 then
      Rewrite(FArq) // O Arquivo não existe e será criado
    else
      begin
        CloseFile(FArq);
        Append(FArq); // O Arquivo existe e será aberto para saídas adicionais
      end;
    {$I+}
  end;

end.
