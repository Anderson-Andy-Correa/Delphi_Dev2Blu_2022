unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.AppEvnts, Vcl.StdCtrls,
  UInterfaceComponent, UConcreteComponent, UConcreteDecorator_DataHora,
  UConcreteDecorator_Usuario, UConcreteDecorator_Windows, UDecorator;

type
  TfrmPrincipal = class(TForm)
    btnExcecao: TButton;
    ApplicationEvents1: TApplicationEvents;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure btnExcecaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
  var
    xLogExcecao: ILogExcecao;
  begin
    xLogExcecao := TLogExcecao.Create(E);

    xLogExcecao := TDataHoraDecorator.Create(xLogExcecao);
    xLogExcecao := TusuarioDecorator.Create(xLogExcecao);
    xLogExcecao := TWindowsDecorator.Create(xLogExcecao);

    ShowMessage(xLogExcecao.OBterDadosExcecao);
  end;

procedure TfrmPrincipal.btnExcecaoClick(Sender: TObject);
  begin
    raise Exception.Create('Qualquer Exceção!');
  end;

end.
