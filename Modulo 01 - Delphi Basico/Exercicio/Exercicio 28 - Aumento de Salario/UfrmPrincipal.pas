unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, UFuncionarios;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Funcionarios1: TMenuItem;
    Sair1: TMenuItem;
    Funcionarios2: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Funcionarios2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Funcionarios2Click(Sender: TObject);
  begin
    if frmFuncionarios = nil then
      frmFuncionarios := TfrmFuncionarios.Create(self);
      frmFuncionarios.Show;
  end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
  begin
    Self.Close;
  end;

end.
