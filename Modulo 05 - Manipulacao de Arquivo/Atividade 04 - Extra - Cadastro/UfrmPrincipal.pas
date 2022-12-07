unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXPickers,
  Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    lblNome: TLabel;
    mmDiario: TMemo;
    edtNome: TEdit;
    btnLerPessoas: TButton;
    edtCodigo: TEdit;
    lblCodigo: TLabel;
    btnCadastrarPessoa: TButton;
    lblDataNascimento: TLabel;
    dtpNascimento: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadastrarPessoaClick(Sender: TObject);
    procedure btnLerPessoasClick(Sender: TObject);
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

procedure TfrmPrincipal.btnCadastrarPessoaClick(Sender: TObject);
  begin
    if (edtNome.Text       <> '') and
       (edtCodigo.Text     <> '') and
       (dtpNascimento.date <> now) then
      begin
        //Grava uma linha com os dados de uma pessoa no arquivo
        Writeln(FArq, edtNome.Text,                   '|',
                      edtCodigo.Text,                 '|',
                      DateToStr(dtpNascimento.Date),  '|');
        edtNome.Clear;
        edtCodigo.Clear;
        dtpNascimento.date := now;
      end;
  end;

procedure TfrmPrincipal.btnLerPessoasClick(Sender: TObject);
  var
    LLinha, LNome, LCodigo: String;
    LReg, I: Integer;
    LDataNasc: TDate;
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

          // Recupera o nome da pessoa
          I := pos('|', LLinha);
          LNome := copy(LLinha, 1, I - 1);
          Delete(LLinha, 1, I);

          // Recupera o código da pessoa
          I := pos('|', LLinha);
          LCodigo := copy(LLinha, 1, I - 1);
          Delete(LLinha, 1, I);

          // Recupera a data de nascimento da pessoa
          I := pos('|', LLinha);
          LDataNasc := StrToDateDef(copy(LLinha, 1, I - 1), now);

          // Processando e exibindo os dados recuperados
          mmDiario.Lines.Add('Registro Nro..: ' + IntToStr(LReg));
          mmDiario.Lines.Add('Nome da Pessoa: ' + LNome);
          mmDiario.Lines.Add('Código........: ' + LCodigo);
          mmDiario.Lines.Add('Data de Nasc..: ' + DateToStr(LDataNasc));

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
    AssignFile(FArq, 'cadastro.txt');
    {$I-}
    Reset(FArq);

    if IOResult <> 0 then
      Rewrite(FArq)
    else
      begin
        CloseFile(FArq);
        Append(FArq);
      end;
    {$I+}
  end;

end.
