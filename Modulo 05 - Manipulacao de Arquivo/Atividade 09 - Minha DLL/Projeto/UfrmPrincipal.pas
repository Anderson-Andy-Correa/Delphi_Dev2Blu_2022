unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TfrmPrincipal = class(TForm)
    lblTexto: TLabel;
    Label2: TLabel;
    edtTexto: TEdit;
    edtNumero: TSpinEdit;
    btnMaiusculas: TButton;
    btnConverter: TButton;
    btnMinusculas: TButton;
    lblNumero: TLabel;
    lblResultado: TLabel;
    edtTextoConvertido: TEdit;
    procedure btnMaiusculasClick(Sender: TObject);
    procedure btnMinusculasClick(Sender: TObject);
    procedure btnConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

// Carregando as funções implicitamente da dll

function MeuUpperCase(s: ShortString): ShortString; stdcall;
  external 'MinhaDll.dll' name 'MeuUpperCase';

function MeuLowerCase(s: ShortString): ShortString; stdcall;
  external 'MinhaDll.dll' name 'MeuLowerCase';

function MeuIntToStr(Numero: Integer): ShortString; stdcall;
  external 'MinhaDll.dll' name 'MeuIntToStr';

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnConverterClick(Sender: TObject);
  begin
    edtTextoConvertido.Text := MeuIntToStr(edtNumero.Value);
  end;

procedure TfrmPrincipal.btnMaiusculasClick(Sender: TObject);
  begin
    edtTexto.Text := MeuUpperCase(edtTexto.Text);
  end;

procedure TfrmPrincipal.btnMinusculasClick(Sender: TObject);
  begin
    edtTexto.Text := MeuLowerCase(edtTexto.Text);
  end;

end.
