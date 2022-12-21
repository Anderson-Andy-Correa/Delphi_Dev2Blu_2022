unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Effects, FMX.Layouts, FMX.Objects, UJogoVelha;

type
  TfrmPrincipal = class(TForm)
    tbcPrincipal: TTabControl;
    tbiMenu: TTabItem;
    tbiJogo: TTabItem;
    lytMenu: TLayout;
    rect_fundo_Menu: TRectangle;
    lytTitulo: TLayout;
    img_Capa: TImage;
    lyt_Jogadores: TLayout;
    rect_morango: TRectangle;
    rect_banana: TRectangle;
    flyt_Jogadores: TFlowLayout;
    img_morango: TImage;
    img_banana: TImage;
    lytJogo: TLayout;
    rect_deu_velha: TRectangle;
    rect_Game_Over: TRectangle;
    rect_Parabens: TRectangle;
    rect_fundo_jogo: TRectangle;
    lyt_jogo_Titulo: TLayout;
    img_Jogo_Titulo: TImage;
    lyt_tbiJogo: TLayout;
    flyt_Jogo: TFlowLayout;
    rect_1_1: TRectangle;
    shd_Jogo: TShadowEffect;
    img_1_1: TImage;
    rect_1_2: TRectangle;
    img_1_2: TImage;
    rect_1_3: TRectangle;
    img_1_3: TImage;
    rect_2_1: TRectangle;
    img_2_1: TImage;
    rect_2_2: TRectangle;
    img_2_2: TImage;
    rect_2_3: TRectangle;
    img_2_3: TImage;
    rect_3_1: TRectangle;
    img_3_1: TImage;
    rect_3_2: TRectangle;
    img_3_2: TImage;
    rect_3_3: TRectangle;
    img_3_3: TImage;
    img_Jogador: TImage;
    img_Computador: TImage;
    rect_fim_Jogo: TRectangle;
    rect_progresso: TRectangle;
    procedure FormShow(Sender: TObject);

    procedure OnClickSelecioneJogador(Sender: TObject);
    procedure OnClickJogador(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FJogoVelha : TJogoVelha;

    procedure MarcarJogadaComputador(const aCoordenadas: String);
    procedure ReiniciarJogo;
    procedure AnimarFimJogo(const aRetangulo: TRectangle);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.AnimarFimJogo(const aRetangulo: TRectangle);
  begin
    rect_fim_jogo.Visible := True;
    rect_progresso.Width := 20;

    aRetangulo.Opacity := 0;
    aRetangulo.Visible := True;

    TThread.CreateAnonymousThread(procedure
    begin
      TThread.Synchronize(nil, procedure
        begin
          aRetangulo.AnimateFloat('Opacity', 1, 0.3);
        end);
    end).Start;

    TThread.CreateAnonymousThread(procedure
    begin
      Sleep(450);

      while rect_progresso.Width < rect_fim_Jogo.Width do
        begin
          TThread.Synchronize(nil, procedure
            begin
              rect_progresso.AnimateFloat('width', rect_progresso.Width + 50, 0.3);
            end);

          Sleep(150);
        end;

      TThread.Synchronize(nil, procedure
        begin
          aRetangulo.Visible := False;
          rect_fim_Jogo.Visible := False;

          Self.ReiniciarJogo;
        end);
    end).Start;
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    FJogoVelha.DisposeOf;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
    FJogoVelha := TJogoVelha.Create;
  end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
  begin
    tbcPrincipal.Tabposition := TTabPosition.None;
    tbcPrincipal.ActiveTab   := tbiMenu;
  end;

procedure TfrmPrincipal.MarcarJogadaComputador(const aCoordenadas: String);
  var
    LLinha, LColuna : Byte;
    LRetangulo      : TRectangle;
    LImagem         : TImage;
  begin
    LLinha  := StrToInt(Copy(aCoordenadas, 1, 1));
    LColuna := StrToInt(Copy(aCoordenadas, 3, 1));

    FJogoVelha.RealizarJogada(TJogador.tpCPU, LLinha, LColuna);

    Lretangulo := TRectangle(FindComponent('rect_' + aCoordenadas));

    if Assigned(LRetangulo) then
      begin
        LImagem            := TImage(FindComponent('img_' + aCoordenadas));
        LImagem.Bitmap     := img_computador.Bitmap;
        LImagem.Visible    := true;

        LRetangulo.HitTest := False;
      end;
  end;

procedure TfrmPrincipal.OnClickSelecioneJogador(Sender: TObject);
  var
    LPosicao             : Integer;
    LRetangulo, LJogador : String;
  begin
    tbcPrincipal.ActiveTab := tbiJogo;

    LRetangulo := (Sender as TRectangle).Name;
    LPosicao   := Pos('_', LRetangulo);
    Ljogador   := Copy(LRetangulo, LPosicao + 1, Length(LRetangulo));

    if LJogador = 'morango' then
      begin
        img_Jogador.Bitmap    := img_Morango.bitmap;
        img_Computador.Bitmap := img_Banana.bitmap;
      end
    else // Banana
      begin
        img_Jogador.Bitmap    := img_Banana.bitmap;
        img_Computador.Bitmap := img_Morango.bitmap;
      end;
  end;

 procedure TfrmPrincipal.ReiniciarJogo;
  var
    I : Integer;
  begin
    tbcPrincipal.ActiveTab := tbiMenu;

    for I := 0 to Pred(Self.ComponentCount) do
      begin
        if (Self.Components[I] is TRectangle) and (Self.Components[I].Tag > 0) then
          TRectangle(Self.Components[I]).HitTest := True;

        if (Self.Components[I] is TImage) and (self.Components[I].Tag > 0) then
          TImage(Self.Components[I]).Bitmap := nil;
      end;

      FJogoVelha.ReiniciarJogo;
  end;

procedure TfrmPrincipal.OnClickJogador(Sender: TObject);
  var
    Lposicao        : Integer;
    LCoordenadas    : String;
    LLinha, LColuna : Byte;
    LRetangulo      : TRectangle;
    LImagem         : TImage;
  begin
    LRetangulo := (Sender as TRectangle);

    Lposicao := Pos('_', LRetangulo.Name);
    LCoordenadas := Copy(LRetangulo.Name, Lposicao + 1, Length(LRetangulo.Name));

    LLinha  := StrToInt(Copy(LCoordenadas, 1, 1));
    LColuna := StrToInt(Copy(LCoordenadas, 3, 1));

    FJogoVelha.RealizarJogada(TJogador.tpPlayer1, LLinha, LColuna);

    LImagem := TImage(FindComponent('img_' + LCoordenadas));
    LImagem.bitmap := img_jogador.Bitmap;
    LImagem.Visible := True;

    Lretangulo.HitTest := False;

    FJogoVelha.VerificarFimDoJogo(TJogador.tpPlayer1);

    if (not FJogoVelha.FimJogo) and (FJogoVelha.Jogadas < 5) then
      begin
        LCoordenadas := FJogoVelha.JogadaComputador;
        Self.MarcarJogadaComputador(LCoordenadas);

        FJogoVelha.VerificarFimDoJogo(TJogador.tpCpu);

        if FJogoVelha.FimJogo then
          Self.AnimarFimJogo(rect_Game_Over);
      end
    else
      begin
        if (FJogoVelha.Jogadas < 5) or (FJogoVelha.FimJogo) then
          Self.AnimarFimJogo(rect_parabens)
        else
          Self.AnimarFimJogo(rect_deu_velha);
      end;
  end;
end.
