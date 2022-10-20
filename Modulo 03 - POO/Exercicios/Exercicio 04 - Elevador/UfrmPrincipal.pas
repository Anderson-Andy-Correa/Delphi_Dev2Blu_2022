unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UElevador;

type
  TfrmPrincipal = class(TForm)
    shElevador: TShape;
    shPredio: TShape;
    edtAndar: TEdit;
    lblAndar: TLabel;
    lblTextAndarAtual: TLabel;
    lblAndarAtual: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    xElevador : TElevador;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
    xElevador := TElevador.Create(inputBox('','','0'), inputBox('','','0');
  end;

end.
