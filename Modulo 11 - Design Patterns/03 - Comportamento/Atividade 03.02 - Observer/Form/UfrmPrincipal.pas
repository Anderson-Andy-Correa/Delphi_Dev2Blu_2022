unit UfrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

  UConcreteSubject,
  UConcreteObserver_Historico,
  UConcreteObserver_Log,
  UConcreteObserver_Saldo;

type
  TfrmPrincipal = class(TForm)
    fraCadastro1: TfraCadastro;
    fraSaldo1: TfraSaldo;
    fraLog1: TfraLog;
    fraHistorico1: TfraHistorico;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
    fraCadastro1.AdicionarObserver(fraSaldo1);
    fraCadastro1.AdicionarObserver(fraHistorico1);
    fraCadastro1.AdicionarObserver(fraLog1);
  end;

end.
