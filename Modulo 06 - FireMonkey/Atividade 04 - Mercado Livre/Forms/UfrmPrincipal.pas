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
    lblProdutoDetalhe: TLabel;
    lblQuantidadeDetalhe: TLabel;
    lblEndereco: TLabel;
    lblComplemento: TLabel;
    lblComprador: TLabel;
    linhaProduto: TLine;
    CirculoEndereço: TCircle;
    procedure FormShow(Sender: TObject);
    procedure btn_comprarClick(Sender: TObject);
  private
    FLoop : String;

    procedure LoadingCompra(PInd: Boolean);
    procedure Compra_WS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.btn_comprarClick(Sender: TObject);
  begin
    Self.LoadingCompra(True);
    rect_barra.Margins.Right := rect_fundo.Width;
    FLoop := 'S';

    Self.Compra_WS;

    TThread.CreateAnonymousThread(procedure
      begin
        while FLoop = 'S'  do
          begin
            if rect_barra.Margins.Right <= 0 then
              rect_barra.Margins.Right := rect_fundo.Width;

            Sleep(150);

            TThread.Synchronize(nil, procedure
              begin
                rect_barra.Margins.Right := rect_barra.Margins.Right - 1;
              end);
          end;

        //Finalizou com erro...
        if Floop = 'ERRO' then
          begin
            TThread.Synchronize(nil, procedure
              begin
                Self.LoadingCompra(False);
                ShowMessage('Erro ao finalizar comprea');
              end);
          end;

        //Finalizou com sucesso...
        if FLoop = 'OK' then
          begin
            TThread.Synchronize(nil, procedure
              begin
                lyt_loading_compra.AnimateFloat('Margins.Left', 150, 0.3);
                lyt_loading_compra.AnimateFloat('Margins.Right', 150, 0.3);
                lyt_loading_compra.AnimateFloat('Opacity', 0, 0.3);
              end);

            Sleep(450);

            TThread.Synchronize(nil, procedure
              begin
                lyt_compra_OK.Visible := True;
                lyt_compra_OK.AnimateFloat('Opacity', 1, 0.4);
              end);

            Sleep(1000);

            TThread.Synchronize(nil, procedure
            begin
              ShowMessage('Compra realizada com sucesso');
            end);

            Sleep(1000);

            TThread.Synchronize(nil, procedure
            begin
              Self.LoadingCompra(False);
            end);
          end;
      end).Start;
  end;

procedure TfrmPrincipal.Compra_WS;
  begin
    TThread.CreateAnonymousThread(procedure
    begin
      Sleep(5000);
      //...
      //...
      //...
      FLoop := 'OK';
    end).Start;
  end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
  begin
    Self.LoadingCompra(False);
  end;

procedure TfrmPrincipal.LoadingCompra(PInd: Boolean);
  begin
    rect_fundo_branco.Visible        := PInd;
    rect_Fundo_Branco_bottom.Visible := PInd;

    lyt_botao_comprar.Visible        := not PInd;
    lyt_loading_compra.Visible       := PInd;
    lyt_compra_OK.Visible            := False;
    lyt_compra_OK.Opacity            := 0;
  end;

end.
