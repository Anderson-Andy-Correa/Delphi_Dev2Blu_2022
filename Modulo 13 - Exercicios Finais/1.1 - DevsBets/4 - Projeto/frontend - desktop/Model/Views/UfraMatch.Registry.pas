unit UfraMatch.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.ListBox,
  FMX.Edit;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
