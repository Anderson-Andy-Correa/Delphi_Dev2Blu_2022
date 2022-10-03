unit UfrmFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFornecedor = class(TForm)
    lblTitulo: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedor: TfrmFornecedor;

implementation

{$R *.dfm}

procedure TfrmFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action      := caFree;
    frmFornecedor := nil;
  end;

end.
