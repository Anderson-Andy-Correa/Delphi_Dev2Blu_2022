unit UfraBet;

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
  UEntity.Bets;

type
  TfraBet = class(TFrame)
    rectPrincipal: TRectangle;
    rectToolBar: TRectangle;
    rectExcluir: TRectangle;
    lblExcluir: TLabel;
    rectNovo: TRectangle;
    lblNovo: TLabel;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lstPalpites: TListView;
    lytPalpites: TLayout;
    procedure rectExcluirClick(Sender: TObject);
    procedure rectNovoClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregarRegistros;
    procedure AbrirBetRegistry;
    procedure PrepararListView(aBet: TBet);
    procedure ExcluirRegistro;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
  end;

var
  fraBet: TfraBet;

implementation

{$R *.fmx}

{ TfraBet }

uses
  UfraBet.Registry,
  UService.Bet,

  UService.intf,
  UService.User.Authenticated,

  UEntity.Matchs;

procedure TfraBet.AbrirBetRegistry;
  begin
    if not Assigned(fraBetRegistry)then
      fraBetRegistry := TfraBetRegistry.Create(Application);

    fraBetRegistry.Align := TAlignLayout.Center;

    Self.Parent.AddObject(fraBetRegistry);
    FreeAndNil(fraBet);
  end;

procedure TfraBet.CarregarRegistros;
  var
    xServiceBet: IService;
    xBet       : TBet;
  begin
    lstPalpites.Items.Clear;

    xServiceBet := TServiceBet.Create;
    xServiceBet.Listar;
    for xBet in TServiceBet(xServiceBet).Bets do
      Self.PrepararListView(xBet);
  end;

constructor TfraBet.Create(aOwner: TComponent);
  begin
    inherited Create(aOwner);
    Self.CarregarRegistros;
  end;

procedure TfraBet.ExcluirRegistro;
  var
    xServiceBet       : IService;
    xBet              : TBet;
    xItem             : TListViewItem;
    xUserAuthenticated: TUserAuthenticated;
  begin
    if lstPalpites.ItemIndex = -1 then
      Exit;

    xItem := lstPalpites.Items[lstPalpites.ItemIndex];

    xUserAuthenticated := TUserAuthenticated.GetInstance;
    if xItem.TagString <> xUserAuthenticated.User.Id.ToString then
      raise Exception.Create('Não é possível excluir o palpite de outo usuário.');

    xBet := TBet.Create(xItem.Tag);

    xServiceBet := TServiceBet.Create(xBet);
    try
      xServiceBet.Excluir;
      ShowMessage('Registro excluído.');
    finally
      Self.CarregarRegistros;
    end;
  end;

procedure TfraBet.PrepararListView(aBet: TBet);
  var
    xitem : TListViewItem;
    xMatch: TMatch;
  begin
    xItem           := lstPalpites.Items.Add;
    xItem.Tag       := aBet.Id;
    xitem.TagString := aBet.User.Id.ToString;
    xMatch          := aBet.Match;

    TListItemText(xitem.Objects.FindDrawable('txtUsuario')).Text
      := aBet.User.Login;
    TListItemText(xitem.Objects.FindDrawable('txtHora')).Text
      := TimeToStr(xMatch.Hour);
    TListItemText(xitem.Objects.FindDrawable('txtData')).Text
      := DateToStr(xMatch.Date);
    TListItemText(xitem.Objects.FindDrawable('txtTimeA')).Text
      := xMatch.TeamA.Name;
    TListItemText(xitem.Objects.FindDrawable('txtTimeB')).Text
      := xMatch.TeamB.Name;
    TListItemText(xitem.Objects.FindDrawable('txtResultadoTimeA')).Text
      := aBet.ResultTeamA.ToString;
    TListItemText(xitem.Objects.FindDrawable('txtResultadoTimeB')).Text
      := aBet.ResultTeamB.ToString;
  end;

procedure TfraBet.rectExcluirClick(Sender: TObject);
  begin
    Self.ExcluirRegistro;
  end;

procedure TfraBet.rectNovoClick(Sender: TObject);
  begin
    Self.AbrirBetRegistry;
  end;

end.
