unit UfraMatch.Registry;

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
  FMX.ListBox,
  FMX.Edit,

  UService.intf;

type
  TfraMatchRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    rectVoltar: TRectangle;
    rectData: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    edtData: TEdit;
    rectSalvar: TRectangle;
    lblSalvar: TLabel;
    lblVoltar: TLabel;
    rectHora: TRectangle;
    edtHora: TEdit;
    rectTimeA: TRectangle;
    cmbTimeA: TComboBox;
    rectTimeB: TRectangle;
    cmbTimeB: TComboBox;
    lblX: TLabel;
    procedure rectSalvarClick(Sender: TObject);
    procedure rectVoltarClick(Sender: TObject);
  private
    { Private declarations }
    FServiceTeam: Iservice;

    procedure VoltarTela;
    procedure CarregarTeams;
    procedure Registrar;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
  end;

var
  fraMatchRegistry: TfraMatchRegistry;

implementation

{$R *.fmx}

uses
  UEntity.Matchs,
  UfraMatch,
  UService.Match,

  UEntity.Teams,
  UService.Team;

{ TfraMatchRegistry }

procedure TfraMatchRegistry.CarregarTeams;
  var
    xTeam: TTeam;
  begin
    cmbTimeA.Items.Clear;
    cmbTimeB.Items.Clear;

    if not Assigned(FServiceTeam) then
      FServiceTeam := TServiceTeam.Create;

    FServiceTeam.Listar;
    for xTeam in TServiceTeam(FServiceTeam).Teams do
      begin
        cmbTimeA.Items.AddObject(xTeam.Name, xTeam);
        cmbTimeB.Items.AddObject(xTeam.Name, xTeam);
      end;
  end;

constructor TfraMatchRegistry.Create(aOwner: TComponent);
  begin
    inherited Create(aOwner);
    Self.CarregarTeams;
  end;

procedure TfraMatchRegistry.rectSalvarClick(Sender: TObject);
  begin
    Self.Registrar;
  end;

procedure TfraMatchRegistry.rectVoltarClick(Sender: TObject);
  begin
    Self.VoltarTela;
  end;

procedure TfraMatchRegistry.Registrar;
  var
    xServiceMatch : IService;
    xHora         : TTime;
    xData         : TDate;
    xTimeAux      : TTeam;
    xTimeA, xTimeB: TTeam;
  begin
    if Trim(edtHora.Text) = EmptyStr then
      raise Exception.Create('Informe a Hora da Partida.');

    if Trim(edtData.Text) = EmptyStr then
      raise Exception.Create('Informe a Data da Partida.');

    if cmbTimeA.ItemIndex = -1 then
      raise Exception.Create('Informe o Time A da Partida.');

    if cmbTimeB.ItemIndex = -1 then
      raise Exception.Create('Informe o Time B da Partida.');

    if cmbTimeA.ItemIndex = cmbTimeB.ItemIndex then
      raise Exception.Create('Informe Times diferentes para a Partida.');

    xHora := StrToTime(Trim(edtHora.Text));
    xData := StrToDate(Trim(edtData.Text));

    xTimeAux := TTeam(cmbTimeA.Items.Objects[cmbTimeA.ItemIndex]);
    xTimeA   := xTimeAux.Clone;

    xTimeAux := TTeam(cmbTimeB.Items.Objects[cmbTimeB.ItemIndex]);
    xTimeB   := xTimeAux.Clone;

    xServiceMatch := TServiceMatch.Create(
      TMatch.Create(xData, xHora, xTimeA, xTimeB));

    xServiceMatch.Registrar;
    Self.VoltarTela;
  end;

procedure TfraMatchRegistry.VoltarTela;
  begin
    if not Assigned(fraMatch) then
      fraMatch := TfraMatch.Create(Application);

    fraMatch.Align := TAlignLayout.Center;

    Self.Parent.AddObject(fraMatch);
    FreeAndNil(fraMatchRegistry);
  end;

end.
