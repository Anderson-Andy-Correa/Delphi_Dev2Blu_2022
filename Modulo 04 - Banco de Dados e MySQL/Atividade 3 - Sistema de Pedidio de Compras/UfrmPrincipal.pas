unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    pnTop: TPanel;
    imProdutos: TImage;
    imCompradores: TImage;
    imFornecedores: TImage;
    imUnMedida: TImage;
    imPedidos: TImage;
    imPrincipal: TImage;
    lblProdutos: TLabel;
    lblCompreadores: TLabel;
    lblFornecedores: TLabel;
    lblUnMedida: TLabel;
    lblPedidos: TLabel;
    procedure imCompradoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UfrmCompradores;

{$R *.dfm}

procedure TfrmPrincipal.imCompradoresClick(Sender: TObject);
  begin
    if not assigned(frmCompradores) then
      frmCompradores := TfrmCompradores.create(self);

    frmCompradores.Show;
  end;

end.
