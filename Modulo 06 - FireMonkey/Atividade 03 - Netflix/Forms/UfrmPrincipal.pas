unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.ListBox;

type
  TfrmPrincipal = class(TForm)
    lytGenero: TLayout;
    imgCartaz: TImage;
    DegradeUp: TImage;
    imgLogo: TImage;
    imgGenero: TImage;
    lblFiltro: TLabel;
    lytGeral: TLayout;
    imgTitulo: TImage;
    imgDegradeDown: TImage;
    lblGeneros: TLabel;
    imgAssistir: TImage;
    lytMinhaLista: TLayout;
    imgMinhaLista: TImage;
    lblMinhaLista: TLabel;
    lytSaibaMais: TLayout;
    imgSaibaMais: TImage;
    lblSaibaMais: TLabel;
    lytMenu: TLayout;
    RecFechar: TRectangle;
    lytFechar: TLayout;
    imgFechar: TImage;
    lstbGeneros: TListBox;
    flaGeneros: TFloatAnimation;
  private
  procedure LoadMenu;
  procedure OpenMenu(ind: Boolean);
  procedure SetupMenu(Item: TListBoxItem; texto: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

{ TfrmPrincipal }

procedure TfrmPrincipal.LoadMenu;
  begin
    lstbGeneros.Items.Clear;

    with self do
      begin
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Todos os gêneros');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Disponível para download');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Ação');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Adolescente');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Anime');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Asiáticos');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Brasileiros');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Comédia');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Drama');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Esportes');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Mistério');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Novelas');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Suspense');
        SetupMenu(TListBoxItem.Create(lstbGeneros), 'Terror');
      end;
  end;

procedure TfrmPrincipal.OpenMenu(ind: Boolean);
  begin
    // Esconde o imte selecionado...
    lstbGeneros.ItemIndex := -1;

    // Volta a listagem para o início
    lstbGeneros.ScrollToItem(lstbGeneros.ItemByIndex(0));

    if ind then
      begin
        lytMenu.Visible := True;
        lytMenu.Tag := 1;
        lytGenero.AnimateFloat('Opacity', 0, 0.2);
        flaGeneros.Inverse := False;
      end
    else
      begin
        lytMenu.Tag := 0;
        lytGenero.AnimateFloat('Opacity', 1, 0.4);
        flaGeneros.Inverse := True;
      end;

    flaGeneros.Start;
  end;

procedure TfrmPrincipal.SetupMenu(Item: TListBoxItem; texto: String);
  begin

  end;

end.
