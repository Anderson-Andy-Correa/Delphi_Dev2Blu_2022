unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNomePC: TEdit;
    edtNomeUser: TEdit;
    edtDirSistema: TEdit;
    edtDirWindows: TEdit;
    edtDirTemp: TEdit;
    edtVersaoWindows: TEdit;
    btnInformações: TButton;
    procedure btnInformaçõesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uInfoPC;

procedure TForm1.btnInformaçõesClick(Sender: TObject);
begin
  edtNomePC.Text := TinfoPC.ComputerName;
  edtNomeUser.Text := TInfoPc.UserName;
  edtDirSistema.Text := TInfoPC.SystemDirectory;
  edtDirWindows.Text := TInfoPC.WindowsDirectory;
  edtDirTemp.Text := TInfoPC.TempPath;
  edtVersaoWindows.Text := TInfoPC.VersionEx;
end;

end.
