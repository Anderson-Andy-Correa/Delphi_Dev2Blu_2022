unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf,
  Xml.XmlTransform, Xml.XMLDoc, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    mmResultado: TMemo;
    btnLerXML: TButton;
    XMLDoc: TXMLDocument;
    procedure btnLerXMLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnLerXMLClick(Sender: TObject);
  var
    LAplicacao, LExecutaveis, LBibliotecas, LExecutavel,
    LBiblioteca, LVersao, LDescricao : IXMLNode;
    LInfNo : IXMLNodeList;
    I: Integer;
  begin
    mmResultado.Clear;

    // Ativa o XMLDocument para podermos ler as informaçções do xml
    XMLDoc.Active := True;

    // Busca o nó principal do xml
    LAplicacao := XMLDoc.DocumentElement;

    // Busca o nó onde está a lista de executávies
    LExecutaveis := LAplicacao.ChildNodes.FindNode('executaveis');

    // Busca o nó onde está a lista de bibliotecas
    LBibliotecas := LAplicacao.ChildNodes.FindNode('bibliotecas');

    mmResultado.Lines.Add('[EXECUTAVEIS]');
    mmResultado.Lines.Add('');

    // Percorre todos os executáveis da lista
    for I := 0 to (LExecutaveis.ChildNodes.count - 1) do
      begin
        LExecutavel := LExecutaveis.ChildNodes[I];

        // Recupera os atributos do nó executavel
        LInfNo      := LExecutavel.AttributeNodes;

        mmResultado.Lines.Add(LExecutavel.Text);
        mmResultado.Lines.Add('--------------------');
        mmResultado.Lines.Add('versão: ' + LInfNo.FindNode('versao').Text);
        mmResultado.Lines.Add('descrição: ' + LInfNo.FindNode('descricao').Text);
        mmResultado.Lines.Add('');
      end;

    mmResultado.Lines.Add('[EXECUTAVEIS]');
    mmResultado.Lines.Add('');

    // Percorre todas as bibliotecas da lista
    for I := 0 to (LBibliotecas.ChildNodes.count - 1) do
      begin
        LBiblioteca := LBibliotecas.ChildNodes[I];

        // Recupera os atributos do nó biblioteca
        LInfNo      := LBiblioteca.AttributeNodes;

        mmResultado.Lines.Add(LExecutavel.Text);
        mmResultado.Lines.Add('--------------------');
        mmResultado.Lines.Add('versão: ' + LInfNo.FindNode('versao').Text);
        mmResultado.Lines.Add('descrição: ' + LInfNo.FindNode('descricao').Text);
        mmResultado.Lines.Add('');
      end;
  end;
end.
