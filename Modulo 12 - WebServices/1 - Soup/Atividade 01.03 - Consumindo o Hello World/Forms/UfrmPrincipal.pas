unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblValor: TLabel;
    btnEchoDouble: TButton;
    btnHelloWorld: TButton;
    edtValor: TEdit;
    lblResultado: TLabel;
    procedure btnEchoDoubleClick(Sender: TObject);
    procedure btnHelloWorldClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HelloWorld;
    procedure EchoDouble;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  IHello_World1;

procedure TfrmPrincipal.btnEchoDoubleClick(Sender: TObject);
  begin
    self.EchoDouble;
  end;

procedure TfrmPrincipal.btnHelloWorldClick(Sender: TObject);
  begin
    self.HelloWorld;
  end;

procedure TfrmPrincipal.EchoDouble;
  var
    xValor, xResultado: Double;
  begin
    if not TryStrToFloat(edtValor.Text, xValor) then
      raise Exception.Create('Valor inválido!');

    xResultado := GetIHello_World.echoDouble(xValor);
    lblResultado.Caption := 'Resultado: ' + xResultado.ToString;
  end;

procedure TfrmPrincipal.HelloWorld;
  begin
    lblResultado.Caption := 'Resultado: ' + GetIHello_World.echoHelloWorlf;
  end;

end.
