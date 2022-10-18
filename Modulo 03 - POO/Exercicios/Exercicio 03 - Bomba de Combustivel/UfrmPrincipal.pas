unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UBomba,
  Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TAbastecer = (tpValor, tpLitro);
  TfrmPrincipal = class(TForm)
    Valor: TLabeledEdit;
    RdgCombustivel: TRadioGroup;
    rdgAbastecer: TRadioGroup;
    lblTitulo01: TLabel;
    btnAbastecer: TButton;
    mmHistorico: TMemo;
    lblSelecionado: TLabel;
    lblValor: TLabel;
    lblBomba: TLabel;
    lblQtdBomba: TLabel;
    Image1: TImage;
    pbQtd: TProgressBar;
    btnEncher: TButton;
    procedure btnAbastecerClick(Sender: TObject);
    procedure RdgCombustivelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdgAbastecerClick(Sender: TObject);
    procedure btnEncherClick(Sender: TObject);
  private
    { Private declarations }
  public
    xBomba: TBomba;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAbastecerClick(Sender: TObject);
  begin
    case TAbastecer(rdgAbastecer.ItemIndex) of
      tpValor:
        begin
          mmHistorico.Lines.Add(xBomba.AbastecerPorValor(Valor.Text));
        end;
      tpLitro:
        begin
          mmHistorico.Lines.Add(xBomba.AbastecerPorLitro(Valor.Text));
        end;
    end;
    pbQtd.Position := trunc(xBomba.QtdCombustivel/10);
    lblQtdBomba.Caption := 'Restante: ' +
                           FormatFloat('0.##', xbomba.QtdCombustivel) +
                           ' Litros. (' +
                           FormatFloat('0.##', xBomba.QtdCombustivel/10) + ')%';
    if 10 >= trunc(xBomba.QtdCombustivel/10) then
      btnEncher.Visible := True;
  end;

procedure TfrmPrincipal.btnEncherClick(Sender: TObject);
  begin
    xbomba.QtdCombustivel := 1000;
    pbQtd.Position := trunc(xBomba.QtdCombustivel/10);
    lblQtdBomba.Caption := 'Restante: ' +
                           FormatFloat('0.##', xbomba.QtdCombustivel) +
                           ' Litros. (' +
                           FormatFloat('0.##', xBomba.QtdCombustivel/10) + ')%';
    btnEncher.Visible := False;
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    FreeAndNil(xBomba);
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
    xBomba := Tbomba.Create;
    xbomba.QtdCombustivel := 1000;
    lblQtdBomba.Caption := 'Restante: ' +
                           FormatFloat('0.##', xbomba.QtdCombustivel) +
                           ' Litros. (' +
                           FormatFloat('0.##', xBomba.QtdCombustivel/10) + ')%';
  end;


procedure TfrmPrincipal.rdgAbastecerClick(Sender: TObject);
  begin
    if RdgCombustivel.ItemIndex >= 0 then
          begin
            Valor.Enabled := True;
            btnAbastecer.Enabled := True;
          end;
  end;

procedure TfrmPrincipal.RdgCombustivelClick(Sender: TObject);
  begin
    if RdgCombustivel.ItemIndex >= 0 then
      begin
        case RdgCombustivel.ItemIndex of
          0: lblSelecionado.Caption := xBomba.AlterarCombustivel(0);
          1: lblSelecionado.Caption := xBomba.AlterarCombustivel(1);
          2: lblSelecionado.Caption := xBomba.AlterarCombustivel(2);
          3: lblSelecionado.Caption := xBomba.AlterarCombustivel(3);
        end;
        lblValor.Caption := 'Valor por Litro: R$' + FormatFloat('0.##0', xBomba.ValorPorLitro);
        lblValor.Visible := True;
        lblSelecionado.Visible := True;
        if rdgAbastecer.ItemIndex >= 0 then
          begin
            Valor.Enabled := True;
            btnAbastecer.Enabled := True;
          end;
      end;


  end;

end.
