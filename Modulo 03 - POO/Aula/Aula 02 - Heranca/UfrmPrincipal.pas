unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnSom: TButton;
    cmbAnimal: TComboBox;
    lblAnimal: TLabel;
    procedure btnSomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UAnimais;

{$R *.dfm}

procedure TfrmPrincipal.btnSomClick(Sender: TObject);
  var
    xAnimal: TAnimal;
  begin
    xAnimal := nil; //Sem Referênci a algum ponteiro na memória
                    //Assim que inicializa um objeto no delphi
    try
      case TEnumAnimal(cmbAnimal.ItemIndex) of
        stCachorro: xAnimal := TCachorro.Create;
        stGato:     xAnimal := TGato.Create;
        stPassaro:  xAnimal := TPassaro.Create;
      end;

      ShowMessage(xAnimal.RetornarSom);
      ShowMessage('Tenho ' + IntToStr(xAnimal.Patas) + ' patas.');
    finally
      FreeAndNil(xAnimal);
    end;
  end;

end.
