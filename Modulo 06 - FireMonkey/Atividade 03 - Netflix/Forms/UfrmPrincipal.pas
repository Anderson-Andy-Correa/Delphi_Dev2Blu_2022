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
    {$IFDEF MSWINDOWS}
    procedure MenuClick(Sender: TObject);
    {$ELSE}
    procedure MenuTap(Sender: TObject; const Point : TPointF);
    {$ENDIF}
    procedure FormCreate(Sender: TObject);
    procedure flaGenerosFinish(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure lytGeneroClick(Sender: TObject);
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

procedure TfrmPrincipal.flaGenerosFinish(Sender: TObject);
  begin
    if lytMenu.Tag = 0 then
      lytMenu.Visible := False;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
    imgCartaz.Position.X := 0;
    imgCartaz.Position.Y := 0;
    imgCartaz.Width      := 676;
    imgCartaz.Height     := 450;

    Self.LoadMenu;
    Self.OpenMenu(False);
  end;

procedure TfrmPrincipal.imgFecharClick(Sender: TObject);
  begin
    Self.OpenMenu(False);
  end;

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

procedure TfrmPrincipal.lytGeneroClick(Sender: TObject);
  begin
    Self.OpenMenu(True);
  end;

{$IFDEF MSWINDOWS}
procedure TfrmPrincipal.MenuClick(Sender: TObject);
  begin
    lblFiltro.text := TListBoxItem(Sender).Text;
    Self.OpenMenu(False);
  end;

{$ELSE}
procedure TfrmPrincipal.MenuTap(Sender: TObject; const Point: TPointF);
  begin
    lblFiltro.text := TListBoxItem(Sender).Text;
    Self.OpenMenu(False);
  end;
{$ENDIF}

procedure TfrmPrincipal.OpenMenu(ind: Boolean);
  begin
    // Esconde o item selecionado...
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
    item.Text := Texto;
    Item.StyledSettings := item.StyledSettings
      - [TStyledSetting.Size, TStyledSetting.FontColor, TStyledSetting.Other];
    Item.TextSettings.HorzAlign := TTextAlign.Center;
    Item.HitTest := True;

    {$IFDEF MSWINDOWS}
    Item.OnClick := Self.MenuClick;
    {$ELSE}
    Item.OnTap := Self.MenuTap;
    {$ENDIF}

    if lstbGeneros.Items.Count > 0 then
      begin
        Item.FontColor := $FFC3C3C3;
        Item.Font.Size := 20;
        Item.Height    := 80;
      end
    else
      begin
        Item.FontColor := $FFFFFFFF;
        Item.Font.Size := 25;
        Item.Height    := 110;
      end;

    lstbGeneros.AddObject(item);
  end;

end.
