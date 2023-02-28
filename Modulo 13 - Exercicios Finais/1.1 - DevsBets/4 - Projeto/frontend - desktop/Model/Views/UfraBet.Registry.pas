unit UfraBet.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.ListBox,
  FMX.Edit;

type
  TfraBetRegistry = class(TFrame)
    rectPrincipal: TRectangle;
    rectVoltar: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectSalvar: TRectangle;
    lblSalvar: TLabel;
    lblVoltar: TLabel;
    rectTimeA: TRectangle;
    rectTimeB: TRectangle;
    lblX: TLabel;
    edtResultTeamA: TEdit;
    lstPartidas: TListView;
    edtResultTeamB: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
