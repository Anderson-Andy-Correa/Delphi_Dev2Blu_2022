unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    cmbMarca: TComboBox;
    btnExibir: TButton;
    gbDadosNotebook: TGroupBox;
    lblTamonhoTela: TLabel;
    lblMemoriaRam: TLabel;
    gbDadosDesktop: TGroupBox;
    lblProcessador: TLabel;
    lblTamanhoHD: TLabel;
    procedure btnExibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnExibirClick(Sender: TObject);
  begin
    // Dados do Notebook
    if cmbMarca.Items[cmbMarca.ItemIndex] = 'Dell' then
      begin
        lblTamonhoTela.Caption := 'Tela de 14 polegadas';
        lblMemoriaRam.Caption := '3GB DDR3';
      end
    else if cmbMarca.Items[cmbMarca.ItemIndex] = 'Apple' then
      begin
        lblTamonhoTela.Caption := 'Tela de 11.6 polegadas';
        lblMemoriaRam.Caption := '4GB DDR3';
      end;

    // Dados do Desktop
    if cmbMarca.Items[cmbMarca.ItemIndex] = 'Dell' then
      begin
        lblProcessador.Caption := 'Intel core i5';
        lblTamanhoHD.Caption := '1 TB';
      end
    else if cmbMarca.Items[cmbMarca.ItemIndex] = 'Apple' then
      begin
        lblProcessador.Caption := 'Intel core i7';
        lblTamanhoHD.Caption := '500 GB';
      end;
  end;

end.
