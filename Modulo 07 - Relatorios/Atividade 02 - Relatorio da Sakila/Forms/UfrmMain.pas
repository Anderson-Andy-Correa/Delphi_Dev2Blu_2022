unit UfrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    Reports2: TMenuItem;
    Excercise01LastNamesActor1: TMenuItem;
    Excercise02AddressesoftheCities1: TMenuItem;
    QuantitieofMovieperActor1: TMenuItem;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

end.
