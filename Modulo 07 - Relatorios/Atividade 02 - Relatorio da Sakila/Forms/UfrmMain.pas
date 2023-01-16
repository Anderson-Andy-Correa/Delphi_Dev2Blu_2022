unit UfrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  UfrmActorFilm, UfrmAddressOfTheCities, UfrmLastNameActor;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    Reports2: TMenuItem;
    Excercise01LastNamesActor1: TMenuItem;
    Excercise02AddressesoftheCities1: TMenuItem;
    QuantitieofMovieperActor1: TMenuItem;
    Label1: TLabel;
    procedure Excercise01LastNamesActor1Click(Sender: TObject);
    procedure Excercise02AddressesoftheCities1Click(Sender: TObject);
    procedure QuantitieofMovieperActor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Excercise01LastNamesActor1Click(Sender: TObject);
  begin
    if not assigned(frmActorsLastName) then
      frmActorsLastName := TfrmActorsLastName.create(self);

    frmActorsLastName.Show;
  end;

procedure TfrmMain.Excercise02AddressesoftheCities1Click(Sender: TObject);
  begin
    if not assigned(frmAddressesOfTheCities) then
      frmAddressesOfTheCities := TfrmAddressesOfTheCities.create(self);

    frmAddressesOfTheCities.Show;
  end;

procedure TfrmMain.QuantitieofMovieperActor1Click(Sender: TObject);
  begin
    if not assigned(frmActorFilm) then
      frmActorFilm := TfrmActorFilm.create(self);

    frmActorFilm.Show;
  end;

end.
