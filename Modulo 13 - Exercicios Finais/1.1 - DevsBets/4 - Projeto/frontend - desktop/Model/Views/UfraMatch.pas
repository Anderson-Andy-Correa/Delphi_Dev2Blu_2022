unit UfraMatch;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,

  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base,
  FMX.ListView,
  FMX.Objects,
  FMX.Layouts,
  FMX.Controls.Presentation,
  UEntity.Matchs;

type
  TfraMatch = class(TFrame)
    rectPrincipal: TRectangle;
    rectToolBar: TRectangle;
    rectExcluir: TRectangle;
    lblExcluir: TLabel;
    rectNovo: TRectangle;
    lblNovo: TLabel;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lstPartidas: TListView;
    lytPartidas: TLayout;
    procedure rectExcluirClick(Sender: TObject);
    procedure rectNovoClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarRegistros;
    procedure AbrirMatchRegistry;
    procedure PrepararListView(aMatch: TMatch);
    procedure ExcluirRegistro;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
  end;

var
  fraMatch: TfraMatch;

implementation

{$R *.fmx}

uses
  UfraMatch.Registry,
  UService.intf,
  UService.Match;

{ TfraMatch }

procedure TfraMatch.AbrirMatchRegistry;
  begin
    if not Assigned(fraMatchRegistry)then
      fraMatchRegistry := TfraMatchRegistry(Application);

    fraMatchRegistry.Align := TAlignLayout.Center;

    Self.Parent.AddObject(fraMatchRegistry);
    FreeAndNil(fraMatch);
  end;

procedure TfraMatch.CarregarRegistros;
  var
    xServiceMatch: IService;
    xMatch       : TMatch;
  begin
    lstPartidas.Items.Clear;

    xServiceMatch := TServiceMatch.Create;
    xServiceMatch.Listar;
    for xMatch in TServiceMatch(xServiceMatch).Matchs do
      Self.PrepararListView(xMatch);
  end;

constructor TfraMatch.Create(aOwner: TComponent);
  begin
    inherited Create(aOwner);
    Self.CarregarRegistros;
  end;

procedure TfraMatch.ExcluirRegistro;
  var
    xServiceMatch: IService;
    xMatch       : TMatch;
    xItem        : TListViewItem;
  begin
    if lstPartidas.ItemIndex = -1 then
      Exit;

    xItem := lstPartidas.Items[lstPartidas.ItemIndex];
    xMatch := TMatch.Create(xItem.Tag);

    xServiceMatch := TServiceMatch.Create(xMatch);
    try
      xServiceMatch.Excluir;
      ShowMessage('Registro excluído.');
    finally
      Self.CarregarRegistros;
    end;
  end;

procedure TfraMatch.PrepararListView(aMatch: TMatch);
  var
    xitem: TListViewItem;
  begin
    xItem     := lstPartidas.Items.Add;
    xItem.Tag := aMatch.Id;

    TListItemText(xitem.Objects.FindDrawable('txtHora')).Text
      := TimeToStr(aMatch.Hour);
    TListItemText(xitem.Objects.FindDrawable('txtData')).Text
      := DateToStr(aMatch.Date);
    TListItemText(xitem.Objects.FindDrawable('txtTimeA')).Text
      := aMatch.TeamA.Name;
    TListItemText(xitem.Objects.FindDrawable('txtTimeB')).Text
      := aMatch.TeamB.Name;
    TListItemText(xitem.Objects.FindDrawable('txtResultadoTimeA')).Text
      := aMatch.ResultTeamA.ToString;
    TListItemText(xitem.Objects.FindDrawable('txtResultadoTimeB')).Text
      := aMatch.ResultTeamB.ToString;
  end;

procedure TfraMatch.rectExcluirClick(Sender: TObject);
  begin
    Self.ExcluirRegistro;
  end;

procedure TfraMatch.rectNovoClick(Sender: TObject);
  begin
    Self.AbrirMatchRegistry;
  end;

end.
