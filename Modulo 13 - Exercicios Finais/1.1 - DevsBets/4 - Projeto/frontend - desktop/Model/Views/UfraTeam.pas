unit UfraTeam;

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

  UEntity.Teams;

type
  TfraTeam = class(TFrame)
    rectPrincipal: TRectangle;
    rectToolBar: TRectangle;
    rectExcluir: TRectangle;
    lblExcluir: TLabel;
    rectNovo: TRectangle;
    lblNovo: TLabel;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lstTimes: TListView;
  private
    { Private declarations }
    procedure AbrirTeamRegistry;
    procedure CarregarRegistros;
    procedure ExcluirRegistro;
    procedure PreencherTeams(aTeam: TTeam);
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); override;
  end;

var
  fraTeam: TfraTeam;

implementation

{$R *.fmx}

uses
  UService.intf,
  UService.Team,
  UfraTeam.Registry;

{ TfraTeam }

procedure TfraTeam.AbrirTeamRegistry;
  begin
    if not Assigned(fraTeamRegistry) then
      fraTeamRegistry := TfraTeamRegistry.Create(Application);

      fraTeamRegistry.Align := TAlignLayout.Center;

      Self.Parent.AddObject(fraTeamRegistry);
      FreeAndNil(fraTeam);
  end;

procedure TfraTeam.CarregarRegistros;
begin

end;

constructor TfraTeam.Create(aOwner: TComponent);
begin
  inherited;

end;

procedure TfraTeam.ExcluirRegistro;
begin

end;

procedure TfraTeam.PreencherTeams(aTeam: TTeam);
begin

end;

end.
