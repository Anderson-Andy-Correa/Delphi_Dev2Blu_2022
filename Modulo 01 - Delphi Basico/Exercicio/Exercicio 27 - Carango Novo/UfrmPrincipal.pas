unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TRegCarro = record
    Nome: String;
    Ano: Integer;
    Valor: Currency;
    Combustivel: String;
  end;
  TListaCarros = Array of TRegCarro;
var
  Form1: TForm1;
  xCarro: TRegCarro;
  xListaCarros: TListaCarros;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
  var
    xCarro01: TRegCarro;
    xCarro02: TRegCarro;
    xCarro03: TRegCarro;
    xCarro04: TRegCarro;
    xCarro05: TRegCarro;
    xContinuar: Integer;
    xRandom: Integer;
    xDesconto: Double;
    xValorFinal: Currency;
    xValorDesconto: Currency;
    xQtdCarros: Integer;

  begin
    xCarro01.Nome := 'Zebra'; xCarro01.Ano := 1998; xCarro01.Valor :=  1999.99; xCarro01.Combustivel := 'Álcool';
    xCarro02.Nome := 'Cobra'; xCarro02.Ano := 2010; xCarro02.Valor :=  2999.99; xCarro02.Combustivel := 'Gasolina';
    xCarro03.Nome := 'Leoncio'; xCarro03.Ano := 1995; xCarro03.Valor :=  30000.00; xCarro03.Combustivel := 'Diesel';
    xCarro04.Nome := 'Bimba'; xCarro04.Ano := 2022; xCarro04.Valor :=  50050.99; xCarro04.Combustivel := 'Álcool';
    xCarro05.Nome := 'Tinca'; xCarro05.Ano := 2030; xCarro05.Valor :=  15234.99; xCarro05.Combustivel := 'Diesel';
    xListaCarros := [xCarro01, xCarro02, xCarro03, xCarro04, xCarro05];
    xQtdCarros := 0;

    while (xContinuar <> 7) and (xContinuar <> 3) and (xContinuar <> 2) do
       begin
         xRandom := Random(5);

         if xListaCarros[xRandom].Combustivel = 'Álcool' then
          begin
            xDesconto := 25;
          end
         else if xListaCarros[xRandom].Combustivel = 'Gasolina' then
          begin
            xDesconto := 21;
          end
         else if xListaCarros[xRandom].Combustivel = 'Diesel' then
          begin
            xDesconto := 14;
          end;
         xQtdCarros :=  xQtdCarros + 1;
         xValorFinal := xListaCarros[xRandom].Valor * (100 - xDesconto) / 100;
         xValorDesconto := xListaCarros[xRandom].Valor * xDesconto / 100;
         ShowMessage(Format('Aproveite essa oferta! %s, ano %d, que usa %s, de  R$%n saindo ' +
           'por apenas R$%n! Um desconto de %f por cento, equivalente a R$%n!',
           [xListaCarros[xRandom].Nome, xListaCarros[xRandom].Ano, xListaCarros[xRandom].Combustivel,
            xListaCarros[xRandom].Valor, xValorFinal, xDesconto, xValorDesconto]));
         xContinuar := MessageDlg('Gostaria de continuar vendo nossas ofertas?',
                       mtCustom, [mbYes, mbNo], 0);
       end;
    ShowMessage(Format('O total de carros mostrados: %d vezes.',
                     [xQtdCarros]));


  end;

end.
