unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblTítulo: TLabel;
    btnTabuada: TButton;
    edtNumero: TEdit;
    procedure btnTabuadaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnTabuadaClick(Sender: TObject);
  var
    //Declarando a variável "LArq" do tipo arquivo texto
    LArq : TextFile;
    i, n : Integer;
  begin
    try
      //Associa a variável do programa "LArq" ao arquivo externo
      //"Tabuada.txt" na raiz do projeto
      AssignFile(LArq, 'Tabuada.txt');
      rewrite(LArq);

      n := StrToIntDef(edtNumero.Text, 0);

      //Grava uma linha no arquivo
      Writeln(LArq, '+--Resultado--+');

      for I := 1 to 10 do
        begin
          //Grava uma linha da tabuada no arquivo
          if I < 10 then
            Writeln(LArq, '|  ', i, ' X ', n, ' = ', (i*n), ' |')
          else
            Writeln(LArq, '| ', i, ' X ', n, ' = ', (i*n), ' |')
        end;

      //Grava uma linha no arquivo
      Writeln(LArq, '+-------------+');

      ShowMessage('Tabuada gravada com sucesso!');
    finally
      //Fecha o arquivo texto
      CloseFile(LArq);
    end;
  end;

end.
