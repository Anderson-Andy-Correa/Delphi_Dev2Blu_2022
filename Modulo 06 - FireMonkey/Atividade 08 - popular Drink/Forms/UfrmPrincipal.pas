unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Edit, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lytBotoesSuperiores: TLayout;
    lytSearch: TLayout;
    lytTabs: TLayout;
    lblTitulo: TLabel;
    FlowLayout1: TFlowLayout;
    Layout1: TLayout;
    rect_Search: TRectangle;
    edtSearch: TEdit;
    lytTab01: TLayout;
    lnTab01: TLine;
    lblTab01: TLabel;
    Layout2: TLayout;
    Line1: TLine;
    Label1: TLabel;
    Rectangle1: TRectangle;
    Layout3: TLayout;
    label2: TLabel;
    Label3: TLabel;
    Rectangle2: TRectangle;
    Layout4: TLayout;
    Label4: TLabel;
    Label5: TLabel;
    Rectangle3: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

end.
