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

    // Ativa o XMLDocument para podermos ler as informa���es do xml
    XMLDoc.Active := True;

    // Busca o n� principal do xml
    LAplicacao := XMLDoc.DocumentElement;

    // Busca o n� onde est� a lista de execut�vies
    LExecutaveis := LAplicacao.ChildNodes.FindNode('executaveis');

    // Busca o n� onde est� a lista de bibliotecas
    LBibliotecas := LAplicacao.ChildNodes.FindNode('bibliotecas');

    mmResultado.Lines.Add('[EXECUTAVEIS]');
    mmResultado.Lines.Add('');

    // Percorre todos os execut�veis da lista
    for I := 0 to (LExecutaveis.ChildNodes.count - 1) do
      begin
        LExecutavel := LExecutaveis.ChildNodes[I];

        // Recupera os atributos do n� executavel
        LInfNo      := LExecutavel.AttributeNodes;

        mmResultado.Lines.Add(LExecutavel.Text);
        mmResultado.Lines.Add('--------------------');
        mmResultado.Lines.Add('vers�o: ' + LInfNo.FindNode('versao').Text);
        mmResultado.Lines.Add('descri��o: ' + LInfNo.FindNode('descricao').Text);
        mmResultado.Lines.Add('');
      end;

    mmResultado.Lines.Add('[EXECUTAVEIS]');
    mmResultado.Lines.Add('');

    // Percorre todas as bibliotecas da lista
    for I := 0 to (LBibliotecas.ChildNodes.count - 1) do
      begin
        LBiblioteca := LBibliotecas.ChildNodes[I];

        // Recupera os atributos do n� biblioteca
        LInfNo      := LBiblioteca.AttributeNodes;

        mmResultado.Lines.Add(LExecutavel.Text);
        mmResultado.Lines.Add('--------------------');
        mmResultado.Lines.Add('vers�o: ' + LInfNo.FindNode('versao').Text);
        mmResultado.Lines.Add('descri��o: ' + LInfNo.FindNode('descricao').Text);
        mmResultado.Lines.Add('');
      end;
  end;
end.
