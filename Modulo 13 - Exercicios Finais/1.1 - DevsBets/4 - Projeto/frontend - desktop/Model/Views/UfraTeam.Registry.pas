unit UfraTeam.Registry;

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
  FMX.Edit;

type
  TfraTeamRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    rectVoltar: TRectangle;
    rectNome: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    edtNome: TEdit;
    rectSalvar: TRectangle;
    lblSalvar: TLabel;
    lblVoltar: TLabel;
    procedure rectSalvarClick(Sender: TObject);
    procedure rectVoltarClick(Sender: TObject);
  private
    { Private declarations }
      procedure VoltarTela;
      procedure Registrar;
  public
    { Public declarations }
  end;

  var
    fraTeamRegistry: TfraTeamRegistry;

implementation

{$R *.fmx}

uses
  UfraTeam,
  UEntity.Teams,
  UService.intf,
  UService.Team;

{ TfraTeamRegistry }

procedure TfraTeamRegistry.rectSalvarClick(Sender: TObject);
  begin
    Self.Registrar;
  end;

procedure TfraTeamRegistry.rectVoltarClick(Sender: TObject);
  begin
    Self.VoltarTela;
  end;

procedure TfraTeamRegistry.Registrar;
  var
    xServiceTeam: IService;
  begin
    if Trim(edtNome.Text) = EmptyStr then
      raise Exception.Create('informe o Nome do Time.');

    xServiceTeam := TServiceTeam.Create(
      TTeam.Create(Trim(edtNome.Text)));

    xServiceTeam.Registrar;
    Self.VoltarTela;
  end;

procedure TfraTeamRegistry.VoltarTela;
  begin
    if not Assigned(fraTeam) then
      fraTeam := TfraTeam.Create(Application);

    fraTeam.Align := TAlignLayout.Center;

    Self.Parent.AddObject(fraTeam);
    FreeAndNil(fraTeamRegistry);
  end;

end.
