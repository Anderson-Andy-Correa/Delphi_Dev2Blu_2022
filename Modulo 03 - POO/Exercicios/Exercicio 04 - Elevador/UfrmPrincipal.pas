unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UElevador;

type
  TfrmPrincipal = class(TForm)
    shElevador: TShape;
    shPredio: TShape;
    lblAndarAtual: TLabel;
    rdgAndar: TRadioGroup;
    lblPessoas: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    lblCtrlPessoas: TLabel;
    lblCapacidade: TLabel;
    lblMais: TLabel;
    lblMenos: TLabel;
    lblAndar: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdgAndarClick(Sender: TObject);
    procedure lblMenosClick(Sender: TObject);
    procedure lblMaisClick(Sender: TObject);
  private
    { Private declarations }
  public
    xElevador : TElevador;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    FreeAndNil(xElevador);
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  var
    xTotAndares, xCapacidade, I: Integer;
  begin
    xTotAndares := 0;
    xCapacidade := 0;

    repeat
      TryStrToInt(inputBox('Informar','Informe a quantidade de Andares: (Máx 20) ','0'), xTotAndares);
    until (xTotAndares > 0) and (xTotAndares < 21);

    repeat
      TryStrToInt(inputBox('Informar','Informe a capacidade total do elevador: (Máx 20) ','0'), xCapacidade);
    until (xCapacidade > 0) and (xCapacidade < 21);

    xElevador := TElevador.Create(xTotAndares, xCapacidade);

    frmPrincipal.ClientHeight := 140 + shElevador.Height * (xTotAndares - 1);
    shPredio.Height := shElevador.Height * (xTotAndares + 1);
    shElevador.Top := shPredio.top + shElevador.Height * (xTotAndares);
    for I := 0 to xTotAndares do
      if I = 0 then rdgAndar.Items.Add('T') else rdgAndar.Items.Add(I.ToString);
    rdgAndar.Height := xTotAndares * 13;
    lblAndarAtual.Caption := rdgAndar.Items[0];
    lblAndar.top := shElevador.Top;
    lblAndarAtual.Caption := 'Andar Atual: ' + rdgAndar.Items[0];
    lblPessoas.Caption := 'Qtd Pessoas: ' + xElevador.TotPessoasCount.ToString;
    lblCapacidade.Caption := 'Capacidade Máxima: ' + xElevador.Capacidade.ToString;
  end;

procedure TfrmPrincipal.lblMaisClick(Sender: TObject);
begin
  xElevador.Entrar(1);
  lblPessoas.Caption := 'Qtd Pessoas: ' + xElevador.TotPessoasCount.ToString;
end;

procedure TfrmPrincipal.lblMenosClick(Sender: TObject);
begin
  xElevador.Sair(1);
  lblPessoas.Caption := 'Qtd Pessoas: ' + xElevador.TotPessoasCount.ToString;
end;

procedure TfrmPrincipal.rdgAndarClick(Sender: TObject);
  var
    I: integer;
  begin
    if xElevador.TotPessoasCount <= 0 then
      raise Exception.Create('Fantasma no Elevadooooor!');
    if xElevador.AndarAtual < rdgAndar.ItemIndex then
      begin
        ShowMessage('Subindo...');
        for I := 1 to (rdgAndar.ItemIndex - xElevador.AndarAtual) do
          begin
            shElevador.Top := shElevador.Top - shElevador.Height;
            xElevador.Subir(1);
            lblAndar.top := shElevador.Top;
            lblAndar.Caption := rdgAndar.Items[xElevador.AndarAtual];
            lblAndarAtual.Caption := 'Andar Atual: ' + rdgAndar.Items[xElevador.AndarAtual];
            sleep(500);
            application.ProcessMessages;
          end;
        xElevador.Subir(rdgAndar.ItemIndex - xElevador.AndarAtual);
      end
    else if xElevador.AndarAtual > rdgAndar.ItemIndex then
      begin
        ShowMessage('Descendo...');
        for I := (xElevador.AndarAtual - rdgAndar.ItemIndex) downto 1 do
          begin
            shElevador.Top := shElevador.Top + shElevador.Height;
            xElevador.Descer(1);
            lblAndar.top := shElevador.Top;
            lblAndar.Caption := rdgAndar.Items[xElevador.AndarAtual];
            lblAndarAtual.Caption := 'Andar Atual: ' + rdgAndar.Items[xElevador.AndarAtual];
            sleep(500);
            application.ProcessMessages;
          end;
      end
    else if xElevador.AndarAtual = rdgAndar.ItemIndex then
      begin
        ShowMessage('Andar Atual!');
      end;
  end;
end.
