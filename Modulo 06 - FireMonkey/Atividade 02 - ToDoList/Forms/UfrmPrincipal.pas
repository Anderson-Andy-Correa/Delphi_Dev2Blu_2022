unit UfrmPrincipal;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,

  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base,
  FMX.ListView,
  FMX.StdCtrls,
  FMX.Edit,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.Layouts;

type
  TfrmPrincipal = class(TForm)
    lotPrincipal: TLayout;
    tbPrincipal: TToolBar;
    RecTitulo: TRectangle;
    edtNovaTarefa: TEdit;
    btnAdicionar: TButton;
    lstTarefas: TListView;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lstTarefasDeleteItem(Sender: TObject; AIndex: Integer);
  private
    { Private declarations }
    const DATA = 'DATA';
    procedure AtualizarListaDevice;
    procedure AdicionarItem(const PNovaTarefa: String);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

uses
  SharedPreference,
  JSON;

procedure TfrmPrincipal.AdicionarItem(const PNovaTarefa: String);
  var
    LItem : TListViewItem;
  begin
    LITem      := lstTarefas.Items.Add;
    LItem.text := PNovaTarefa;

    Self.AtualizarListaDevice;
  end;

procedure TfrmPrincipal.AtualizarListaDevice;
  var
    LObjeto : TJSONObject;
    I       : Integer;
  begin
    LObjeto := TJSONObject.Create;
    try
      for I := 0 to Pred(lstTarefas.ItemCount) do
        begin
          LObjeto.AddPair('item', lstTarefas.items[I].text);
        end;
      SetPropertiesDispositivo(DATA, LObjeto.ToString);
    finally
      LObjeto.Free;
    end;
  end;

procedure TfrmPrincipal.btnAdicionarClick(Sender: TObject);
  begin
    Self.AdicionarItem(edtNovaTarefa.Text);
    edtNovaTarefa.Text := '';
  end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
  var
    LObjeto, LSubObjeto: TJSONObject;
    LJSArray           : TJSONArray;
    LJSValue           : TJSONValue;
    J, I               : Integer;
  begin
    LObjeto := TJSONObject.ParseJSONValue(GetPropertiesDispositivo(DATA))
      as TJSONObject;

    if Assigned(LObjeto) then
      begin
        lstTarefas.items.Clear;

        for J := 0 to LObjeto.Size - 1 do
          begin
            LJSValue := LObjeto.Get(J).JsonValue;
            self.AdicionarItem(LJSValue.Value);
          end;
      end;
  end;

procedure TfrmPrincipal.lstTarefasDeleteItem(Sender: TObject; AIndex: Integer);
  begin
    Self.AtualizarListaDevice;
  end;

end.
