unit UfrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TMeuGenerico = array [0..9] of string;

  TMeuArrayGenerico<T> = class
    FArray: array [0..9] of T;
  end;

  TMeuGenericoA = TMeuArrayGenerico<String>;

  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
  var
    xAux1: TMeuGenerico;
    xAux2: TMeuGenerico;
    xAux3: Array [1..9] of String;
    xAux4: Array [1..9] of String;
  begin
    xAux1 := xAux2;
    //xAux1 := xAux3; //O Delphi trabalha com nome dos tipos
  end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
  var
    xAux1: TMeuArrayGenerico<String>;
    xAux2: TMeuArrayGenerico<String>;
    xAux3: TMeuGenericoA;
    xAux4: TMeuGenericoA;
  begin
    xAux1 := xAux3; //Aqui � usado o tipo do gen�rico para a valida��o do tipo
  end;

end.
