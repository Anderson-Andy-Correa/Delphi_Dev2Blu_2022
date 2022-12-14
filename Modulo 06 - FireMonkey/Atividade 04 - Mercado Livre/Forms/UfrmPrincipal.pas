unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.Layouts, FMX.Controls.Presentation;

type
  TfrmPrincipal = class(TForm)
    vrtScrBoxPrincipal: TVertScrollBox;
    rect_Valores: TRectangle;
    lblTitulo: TLabel;
    lytProduto: TLayout;
    lblProduto: TLabel;
    lblReaisProduto: TLabel;
    lblCentavosProduto: TLabel;
    lytEnvio: TLayout;
    lblTituloEnvio: TLabel;
    lblReaisEnvio: TLabel;
    lblCentavosEnvio: TLabel;
    linhaEnvio: TLine;
    lytParcelas: TLayout;
    lblTituloParcelas: TLabel;
    lblReaisParcelas: TLabel;
    lblCentavosParcelas: TLabel;
    lyt_botao_comprar: TLayout;
    rec_comprar: TRectangle;
    btn_comprar: TSpeedButton;
    lyt_compra_OK: TLayout;
    imgOK: TImage;
    lyt_loading_compra: TLayout;
    rect_barra: TRectangle;
    rect_fundo: TRectangle;
    lbl_Loading: TLabel;
    rect_fundo_branco: TRectangle;
    lyt_detalhes: TLayout;
    rect_Fundo_Branco_bottom: TRectangle;
    circuloProduto: TCircle;
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
