unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    mmHistorico: TMemo;
    edtNome: TEdit;
    btnProcessar: TButton;
    edtAltura: TEdit;
    edtData: TEdit;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UPessoa;

{$R *.dfm}

procedure TfrmPrincipal.btnProcessarClick(Sender: TObject);
  var
    xPessoa : TPessoa;
  begin
    xPessoa:= nil;
    try
      xPessoa := TPessoa.Create(edtNome.Text, edtData.Text, edtAltura.Text);
      mmHistorico.Lines.Add(xPessoa.DadosPessoais);

    finally
      FreeAndNil(xPessoa);
    end;
  end;

end.
