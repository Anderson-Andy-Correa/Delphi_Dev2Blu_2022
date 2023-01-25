unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UInterfaces, UDell, UApple;

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
  var
    xMarca    : IFactoryMarca;
    xNotebook : INotebook;
    xDesktop  : IDesktop;
  begin
    // instancia a marca -> único IF da aplicação
    if cmbMarca.Items[cmbMarca.ItemIndex] = 'Dell' then
      xMarca := TDell.Create
    else if cmbMarca.Items[cmbMarca.ItemIndex] = 'Apple' then
      xMarca := TApple.Create;

    // Consulta (constroi) os objetos
    xNotebook := xMarca.ConsultarNotebook;
    xDesktop  := xMarca.ConsultarDesktop;

    // Exibe os dados


    lblTamonhoTela.Caption := xNotebook.BuscarTamanhoTela;
    lblMemoriaRam.Caption  := xNotebook.BuscarMemoriaRam;

    lblProcessador.Caption := xDesktop.BuscarNomeProcessador;
    lblTamanhoHD.Caption   := xDesktop.BuscarTamanhoHD;

    // Detalhe importante: como usamos interface oara as variáveis
    // não precisamos destruir seus objetos. O Delphi faz isso por nós.
  end;

end.
