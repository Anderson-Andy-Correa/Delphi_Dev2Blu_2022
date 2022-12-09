unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf,
  Xml.XmlTransform, Xml.XMLDoc, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    mmResultado: TMemo;
    btnExecutar: TButton;
    XMLDoc: TXMLDocument;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnExecutarClick(Sender: TObject);
  var
    LAtualizacao, LExecutaveis, LExecutavel,
    LBibliotecas, LBiblioteca : IXMLNode;
  begin
    try
      mmResultado.Clear;

      // Ativa o XMLDocument para podermos ler as informaçções do xml
      XMLDoc.Active := True;

      // Cria o nó principal
      LAtualizacao := XMLDoc.AddChild('atualizacao');

      // Cria o nó dos executaveis dentro do nó principal
      LExecutaveis := LAtualizacao.AddChild('executaveis');

      // Adiciona um executavel ao nó de executaveis
      LExecutavel := LExecutaveis.AddChild('executavel');
      LExecutavel.SetAttributeNS('versao', '', '1.0.3.22');
      LExecutavel.SetAttributeNS('descricao', '', 'Modulo gerencial');
      LExecutavel.Text := 'gerencial.exe';

      // Adiciona um executavel ao nó de executaveis
      LExecutavel := LExecutaveis.AddChild('executavel');
      LExecutavel.SetAttributeNS('versao', '', '1.0.3.123');
      LExecutavel.SetAttributeNS('descricao', '', 'Configuracoes da Aplicacao');
      LExecutavel.Text := 'configuracoes.exe';

      // Cria o nó de bibliotecas dentro do nó principal
      LBibliotecas := LAtualizacao.AddChild('bibliotecas');

      // Adiciona uma biblioteca ao nó de bibliotecas
      LBiblioteca := LExecutaveis.AddChild('bibliotecas');
      LBiblioteca.SetAttributeNS('versao', '', '2.0.0.1');
      LBiblioteca.SetAttributeNS('descricao', '', 'Biblioteca de funcoes');
      LBiblioteca.Text := 'funcoes.dll';

      // Adiciona um biblioteca ao nó de bibliotecas
      LBiblioteca := LExecutaveis.AddChild('bibliotecas');
      LBiblioteca.SetAttributeNS('versao', '', '1.2.0.4');
      LBiblioteca.SetAttributeNS('descricao', '', 'Biblioteca com rotinas de negocio da aplicacao');
      LBiblioteca.Text := 'app.dll';

      //Mostra o Arquivo XML gerado
      mmResultado.Lines.Text := XMLDoc.XML.Text;

    finally
      XMLDoc.XML.Clear;
      XMLDoc.Active := False;
    end;
  end;
end.
