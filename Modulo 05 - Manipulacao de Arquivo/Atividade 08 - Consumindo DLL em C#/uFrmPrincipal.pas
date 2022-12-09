unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSoma = function (A: Double; B: Double): Double; stdcall;
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    btnCalcular: TButton;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure ChamarDLL;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Self.ChamarDLL;
  lblResultado.Visible := True;
end;

procedure TForm1.ChamarDLL;
var
  xHandle: THandle;
  xSoma: TSoma;
  xResultado: Double;
  xNum1, xNum2: Double;
begin
  if not TryStrToFloat(edtNumero1.Text, xNum1) then
    raise Exception.Create('Valor para o numero 1 inválido');

  if not TryStrToFloat(edtNumero2.Text, xNum2) then
    raise Exception.Create('Valor para o numero 2 inválido');

  xHandle := LoadLibrary('MinhaDLL.dll');
  if xHandle > 0 then
  begin
    try
      @xSoma := GetProcAddress(xHandle, 'Somar');

      if @xSoma <> nil then
      begin
        xResultado := xSoma(xNum1, xNum2);
        lblResultado.Caption := xResultado.ToString;
      end
      else
        ShowMessage('Não foi possivel carregar o procedimento da DLL');
    finally
      FreeLibrary(xHandle);
    end;
  end
  else
    ShowMessage('Não foi possivel carrega a DLL.');
end;

end.
