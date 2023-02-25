unit UfrmHome;

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
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Objects,
  FMX.Layouts,
  FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base,
  FMX.ListView,
  FMX.MultiView,
  FMX.ListBox;

type
  TfrmHome = class(TForm)
    recPrincipal: TRectangle;
    lytContainer: TLayout;
    imgLogo: TImage;
    mtvMenu: TMultiView;
    rectMenu: TRectangle;
    imgLogoMenu: TImage;
    lytLogoMenu: TLayout;
    lstMenu: TListBox;
    StyleBook1: TStyleBook;
    btnMenu: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lstMenuItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    { Private declarations }
    procedure AbrirTeam;
    procedure AbrirMatch;
    procedure AbrirBet;

    procedure RemoverTelaAnterior;
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.fmx}

uses
//  UfraTeam,
//  UfraMatch,
//  UfraBet,
  UUtils.Enums;

procedure TfrmHome.AbrirBet;
  begin
//    if not Assigned(fraBet) then
//      fraBet := TfraBet.Create(Application);
//
//    fraBet.Align := TfraBetLayout.Center;
//    lytContainer.AddObject(fraBet);
  end;

procedure TfrmHome.AbrirMatch;
  begin
//    if not Assigned(fraMatch) then
//      fraMatch := TfraMatch.Create(Application);
//
//    fraMatch.Align := TfraMatchLayout.Center;
//    lytContainer.AddObject(fraMatch);
  end;

procedure TfrmHome.AbrirTeam;
  begin
//    if not Assigned(fraTeam) then
//      fraTeam := TfraTeam.Create(Application);
//
//    fraTeam.Align := TfraTeamLayout.Center;
//    lytContainer.AddObject(fraTeam);
  end;

procedure TfrmHome.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := TCloseAction.caFree;
    frmHome := nil;
  end;

procedure TfrmHome.lstMenuItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
  begin
    Self.RemoverTelaAnterior;

    case TEnumMenu(Item.Index) of
      mnuTime:
        Self.AbrirTeam;

      mnuPartidas:
        Self.AbrirMatch;

      mnuPalpites:
        Self.AbrirBet;

      mnuSair:
        Self.Close;
    end;

      mtvMenu.HideMaster;
  end;

procedure TfrmHome.RemoverTelaAnterior;
  var
    I: Integer;
  begin
    for I := Pred(lytContainer.ControlsCount) downto 0 do
      if lytContainer.Controls[I].Name <> 'imgLogo' then
        lytContainer.RemoveObject(I);
  end;

end.
