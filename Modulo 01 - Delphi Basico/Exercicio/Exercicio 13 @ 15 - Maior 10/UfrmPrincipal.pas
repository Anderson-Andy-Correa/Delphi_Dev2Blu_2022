unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblTitulo: TLabel;
    edtNumero01: TEdit;
    lblMaiorDez01: TLabel;
    btnTestar: TButton;
    edtNumero02: TEdit;
    lblMaiorQue01: TLabel;
    lblEntre100e200A: TLabel;
    lblMaiorDez02: TLabel;
    lblMaiorQue02: TLabel;
    lblEntre100e200B: TLabel;
    procedure btnTestarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnTestarClick(Sender: TObject);
  var
    xNumero01 : Double;
    xNumero02 : Double;
  begin
    xNumero01 := StrToFloat(edtNumero01.text);
    xNumero02 := StrToFloat(edtNumero02.text);

    if xNumero01 > 10 then
      begin
        lblMaiorDez01.Caption := Format('%f > 10', [xNumero01]);
      end
    else
      begin
        lblMaiorDez01.Caption := Format('%f < 10', [xNumero01]);
      end;

    if xNumero02 > 10 then
      begin
        lblMaiorDez02.Caption := Format('%f > 10', [xNumero02]);
      end
    else
      begin
        lblMaiorDez02.Caption := Format('%f < 10', [xNumero02]);
      end;

    if xNumero01 > xNumero02 then
      begin
        lblMaiorQue01.Caption := Format('%f > %f', [xNumero01, xNumero02]);
        lblMaiorQue02.Caption := Format('%f < %f', [xNumero02, xNumero01]);
      end
    else
      begin
        lblMaiorQue01.Caption := Format('%f < %f', [xNumero01, xNumero02]);
        lblMaiorQue02.Caption := Format('%f > %f', [xNumero02, xNumero01]);
      end;

    if (xNumero01 > 100) and (xNumero01 < 200) then
      begin
        lblEntre100e200A.Caption := Format('100 < %f < 200', [xNumero01]);
      end
    else if (xNumero01 < 100) then
      begin
        lblEntre100e200A.Caption := Format('%f < 100', [xNumero01]);
      end
    else
      begin
        lblEntre100e200A.Caption := Format('%f > 200', [xNumero01]);
      end;

    if (xNumero02 > 100) and (xNumero02 < 200) then
      begin
        lblEntre100e200B.Caption := Format('100 < %f < 200', [xNumero01]);
      end
    else if (xNumero01 < 100) then
      begin
        lblEntre100e200B.Caption := Format('%f < 100', [xNumero02]);
      end
    else
      begin
        lblEntre100e200B.Caption := Format('%f > 200', [xNumero02]);
      end;

    lblMaiorDez01.Visible := True;
    lblMaiorDez02.Visible := True;
    lblMaiorQue01.Visible := True;
    lblMaiorQue02.Visible := True;
    lblEntre100e200A.Visible := True;
    lblEntre100e200B.Visible := True;
  end;
end.
