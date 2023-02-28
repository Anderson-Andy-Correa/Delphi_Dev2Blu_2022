unit UfraMatch;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, FMX.Layouts, FMX.Controls.Presentation;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
