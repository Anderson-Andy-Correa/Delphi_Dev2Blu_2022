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
  TfrmPrincipal = class(TForm)
    btnAdd: TButton;
    btnRemove: TButton;
    btnListar: TButton;
    btnCapacity: TButton;
    btnCount: TButton;
    btnOnNotify: TButton;
    edtprincipal: TEdit;
    mmResult: TMemo;
    procedure btnAddClick(Sender: TObject);
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnOnNotifyClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FListaNum : Tlist<Integer>;
    procedure Notificacao (Sender: TObject; const aItem: Integer;
      aAction: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnAddClick(Sender: TObject);
  begin
    FListaNum.Add(StrToIntDef(edtPrincipal.text, 0));
  end;

procedure TfrmPrincipal.btnCapacityClick(Sender: TObject);
  begin
    mmResult.Lines.Clear;
    mmResult.Lines.Add(FListaNum.Capacity.ToString);
    //O Delphi vai aumentando a capacidade por conta própria
  end;

procedure TfrmPrincipal.btnCountClick(Sender: TObject);
  begin
    mmResult.Lines.Clear;
    mmResult.Lines.Add(FListaNum.count.ToString);
  end;

procedure TfrmPrincipal.btnListarClick(Sender: TObject);
  var
    I: Integer;
  begin
    mmResult.Lines.Clear;
    for I := 0 to Pred(FListaNum.Count) do
      begin
        mmResult.Lines.Add(FListaNum[I].ToString);
      end;
  end;

procedure TfrmPrincipal.btnOnNotifyClick(Sender: TObject);
  begin
    FListaNum.OnNotify := Notificacao;
  end;

procedure TfrmPrincipal.btnRemoveClick(Sender: TObject);
  begin
    FListaNum.Delete(Pred(FListaNum.Count))
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    FListaNum.Free;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
    FListaNum := Tlist<Integer>.Create;
  end;

procedure TfrmPrincipal.Notificacao(Sender: TObject; const aItem: Integer;
  aAction: TCollectionNotification);
  begin
    //if FListaNum.OnNotify then
      begin
        case aAction of
          cnAdded  : mmResult.Lines.Add('O item ' + aItem.ToString + ' foi adicionado.');
          cnRemoved: mmResult.Lines.Add('O item ' + aItem.ToString + ' foi removido.');
        end;
      end;
  end;

end.
