unit UFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFuncionarios = class(TForm)
    mmFuncionarios: TMemo;
    btnCadastrar: TButton;
    btnListar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation

{$R *.dfm}

uses
  UMetodos;

procedure TfrmFuncionarios.btnCadastrarClick(Sender: TObject);
  begin
    CadastrarFuncionario;

    btnCadastrar.Enabled := False;
    btnListar.Enabled := True;
  end;

procedure TfrmFuncionarios.btnListarClick(Sender: TObject);
  begin
    mmFuncionarios.Lines.Add(ListarTotal);
  end;

end.
