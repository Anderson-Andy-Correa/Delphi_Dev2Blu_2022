unit UfrmLastNameActor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TfrmActorsLastName = class(TForm)
    grbFiltro: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    lblActorLastName: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActorsLastName: TfrmActorsLastName;

implementation

{$R *.dfm}

end.
