unit UfrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Generics.Collections,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  Tpessoa = record
    CPF: String;
    Nome:String;
  end;

  TfrmPrincipal = class(TForm)
    btnTryGetValue: TButton;
    btnRemove: TButton;
    btnTrimExpress: TButton;
    btnContainKey: TButton;
    btnAddOrSetValue: TButton;
    btnListaKey: TButton;
    mmResult: TMemo;
    btnListaValue: TButton;
    edtCPF: TEdit;
    edtNome: TEdit;
    lblCPF: TLabel;
    lblNome: TLabel;
    btnAdd: TButton;
    btnClear: TButton;
    btnOnKeyNotify: TButton;
    btnOnValueNotify: TButton;
    procedure btnListaValueClick(Sender: TObject);
    procedure btnListaKeyClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnTryGetValueClick(Sender: TObject);
    procedure btnTrimExpressClick(Sender: TObject);
    procedure btnContainKeyClick(Sender: TObject);
    procedure btnAddOrSetValueClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnOnKeyNotifyClick(Sender: TObject);
    procedure btnOnValueNotifyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FDicionario : TDictionary<String, TPessoa>;

    procedure KeyNotify(Sender: TObject; const aItem: String;
      aAction: TCollectionNotification);
    procedure ValueNotify(Sender: TObject; const aItem: TPessoa;
      aAction: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnListaValueClick(Sender: TObject);
  var
    xValue: TPessoa;
  begin
    for xValue in FDicionario.Values do
      mmResult.Lines.Add(xValue.Nome);
  end;

procedure TfrmPrincipal.btnOnKeyNotifyClick(Sender: TObject);
  begin
    FDicionario.OnkeyNotify := KeyNotify;
  end;

procedure TfrmPrincipal.btnOnValueNotifyClick(Sender: TObject);
  begin
    FDicionario.OnValueNotify := ValueNotify;
  end;

procedure TfrmPrincipal.btnListaKeyClick(Sender: TObject);
  var
    xKey: String;
  begin
    for xKey in FDicionario.Keys do
      mmResult.Lines.Add(xKey);
  end;

procedure TfrmPrincipal.btnRemoveClick(Sender: TObject);
  begin
    FDicionario.Remove(edtCPF.Text);
  end;

procedure TfrmPrincipal.btnTryGetValueClick(Sender: TObject);
  var
    xPessoa: TPessoa;
  begin
    if FDicionario.TryGetValue(edtCPF.Text, xPessoa) then
      mmResult.Lines.Add(xPessoa.Nome + ' - ' + xPessoa.CPF)
    else
      mmResult.Lines.Add('Usuário não encontrado');
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    FDicionario.Free;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
   FDicionario := TDictionary<String, TPessoa>.Create;
  end;

procedure TfrmPrincipal.btnTrimExpressClick(Sender: TObject);
  begin
    FDicionario.TrimExcess;
  end;

procedure TfrmPrincipal.btnClearClick(Sender: TObject);
  begin
    FDicionario.Clear;
  end;

procedure TfrmPrincipal.btnContainKeyClick(Sender: TObject);
  begin
    if FDicionario.ContainsKey(edtCPF.Text) then
      mmResult.Lines.Add('Usuário encontrado')
    else
      mmResult.Lines.Add('Usuário não encontrado');
  end;

procedure TfrmPrincipal.btnAddClick(Sender: TObject);
  var
    xPessoa: TPessoa;
  begin
    xPessoa.CPF  := edtCPF.Text;
    xPessoa.Nome := edtNome.Text;

    FDicionario.Add(xPessoa.CPF, xPessoa);
  end;

procedure TfrmPrincipal.btnAddOrSetValueClick(Sender: TObject);
  var
    xPessoa: TPessoa;
  begin
    xPessoa.CPF  := edtCPF.Text;
    xPessoa.Nome := edtNome.Text;

    //Atualizar
    FDicionario.AddOrSetValue(xPessoa.CPF, xPessoa);
  end;

procedure TfrmPrincipal.KeyNotify(Sender: TObject; const aItem: String;
  aAction: TCollectionNotification);
  begin
    case aAction of
      cnAdded:
        mmResult.Lines.Add('A Chave ' + aItem + ' foi adicionada');
      cnExtracted:
        mmResult.Lines.Add('A Chave ' + aItem + ' foi extraída');
      cnRemoved:
        mmResult.Lines.Add('A Chave ' + aItem + ' foi removida');
    end;
  end;

procedure TfrmPrincipal.ValueNotify(Sender: TObject; const aItem: TPessoa;
  aAction: TCollectionNotification);
  begin
    case aAction of
      cnAdded:
        mmResult.Lines.Add('O Value ' + aItem.Nome + ' foi adicionado');
      cnExtracted:
        mmResult.Lines.Add('O Value ' + aItem.Nome + ' foi extraído');
      cnRemoved:
        mmResult.Lines.Add('O Value ' + aItem.Nome + ' foi removido');
    end;
  end;

end.
