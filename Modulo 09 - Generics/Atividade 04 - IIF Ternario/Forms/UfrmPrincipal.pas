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
  Vcl.StdCtrls;

type
  TUtils = class
    class function IIF<T>(const aCondicao: Boolean; const aTipo1, aTipo2: T): T;
  end;

  TProduto = class
  private
    FDescricao: String;
    procedure SetDescricao(const Value: String);
  published
    Constructor Create;
    property Descricao: String read FDescricao write SetDescricao;
  end;

  TfrmPrincipal = class(TForm)
    edtPrincipal: TEdit;
    btnLaranja: TButton;
    btn02: TButton;
    procedure btnLaranjaClick(Sender: TObject);
    procedure btn02Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TUtils }

class function TUtils.IIF<T>(const aCondicao: Boolean; const aTipo1,
  aTipo2: T): T;
  begin
    if aCondicao then
      Result := aTipo1
    else
      Result := aTipo2;
  end;

procedure TfrmPrincipal.btn02Click(Sender: TObject);
  var
    xProduto1, xProduto2, xProduto3: TProduto;
  begin
    xProduto2 := nil;

    xProduto1 := TProduto.Create;
    xProduto1.Descricao := 'Larajna Pera';

    xProduto3 := TUtils.IIF<TProduto>(Assigned(xProduto1), xProduto1, TProduto.Create);
    ShowMessage(xProduto3.Descricao);
  end;

procedure TfrmPrincipal.btnLaranjaClick(Sender: TObject);
  var
    xAux: String;
  begin
    {if edtPrincipal.Text <> EmptyStr then
      xAux := edtPrincipal.text
    else
      xAux := 'laranja';}

    xAux := TUtils.IIF<String>(edtPrincipal.Text <> EmptyStr, edtPrincipal.Text, 'Laranja');

    ShowMessage(xAux);
  end;

{ TProduto }

constructor TProduto.Create;
  begin
    FDescricao := 'Produto Genérico';
  end;

procedure TProduto.SetDescricao(const Value: String);
  begin
    FDescricao := Value;
  end;

end.
