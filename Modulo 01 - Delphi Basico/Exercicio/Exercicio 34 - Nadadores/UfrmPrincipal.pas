unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TClassificacaoNadador = (tpInfantilA, tpInfantilB, tpJuvenilA, tpJuvenilB, tpSenior);
  TNadador = record
    Nome: String;
    Idade: Integer;
    Tipo: TClassificacaoNadador;
  end;
  TListaNadadores = Array of TNadador;
  TfrmPrincipal = class(TForm)
    lblTitulo: TLabel;
    mmNadadores: TMemo;
    btnCadastrar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    xListaNadadores: TListaNadadores;
    Procedure CadastrarNadador (aPosicao: Integer);
    Function ListarNadadores: TStrings;
    Procedure AumentarLista;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.AumentarLista;
  begin
    SetLength(xListaNadadores, Length(xListaNadadores) + 1);
  end;

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
  var
    xVezes, I: Integer;
  begin
    if TryStrToInt(InputBox('Cadastro', 'Informe quantidade de Cadastros: ', '0'), xVezes) and (xVezes > 0) then
      begin
        for I := 1 to xVezes do
          begin
            CadastrarNadador(I);
          end;
      end
    else
      begin
        ShowMessage('Informe um valor válido!');
      end;
  end;

Procedure TfrmPrincipal.CadastrarNadador (aPosicao: Integer);
  var
    xNome: String;
    xIdade: Integer;
    xTipo: TClassificacaoNadador;
  begin
    xNome:= InputBox('Cadastro', Format('Informe o Nome do %d Nadador(a): ', [aposicao]), '<Des>');

  end;

function TfrmPrincipal.ListarNadadores: TStrings;
  begin

  end;

end.
