unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Btn01: TButton;
    LblBtn01: TLabel;
    procedure Btn01Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  USecoes;

procedure TForm1.Btn01Click(Sender: TObject);
var
  xCachorro: TCachorro;
begin
  xCachorro := TCachorro.Create;

  try
    xCachorro.MeuSomEh;
  finally
    FreeAndNil (xcachorro);

  end;
end;

end.
