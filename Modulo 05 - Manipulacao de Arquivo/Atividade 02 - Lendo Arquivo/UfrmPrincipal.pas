unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblTitulo: TLabel;
    mmArquivo: TMemo;
    edtArquivo: TEdit;
    btnLeitura: TButton;
    procedure btnLeituraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnLeituraClick(Sender: TObject);
  var
    LArq  : TextFile;
    LLinha: String;
  begin
    mmArquivo.Clear;
    try
      AssignFile(LArq, edtArquivo.Text);

      {$I-} // Desativa a Diretiva de Input

      //Abre o arquivo para a leitura
      Reset(LArq);

      if IoResult <> 0 then
        raise Exception.Create('Erro na abertura do arquivo!!!');

      {$I+} // Ativa a Diretiva de Input

      //Verifica se o arquivo atingiu a marca de final de arquivo
      while (not eof(Larq)) do
        begin
          // Lê uma linha do arquivo
          Readln(LArq, LLinha);

          mmArquivo.Lines.Add(LLinha)
        end;
    finally
      CloseFile(LArq);
    end;
  end;

end.
