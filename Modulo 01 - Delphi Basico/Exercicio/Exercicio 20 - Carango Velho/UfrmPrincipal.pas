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
    xCarro01.Nome := 'Zebra'; xCarro01.Ano := 1998; xCarro01.Valor :=  1999.99;
    xCarro02.Nome := 'Cobra'; xCarro02.Ano := 2010; xCarro02.Valor :=  2999.99;
    xCarro03.Nome := 'Leoncio'; xCarro03.Ano := 1995; xCarro03.Valor :=  30000.00;
    xCarro04.Nome := 'Bimba'; xCarro04.Ano := 2022; xCarro04.Valor :=  50050.99;
    xCarro05.Nome := 'Tinca'; xCarro05.Ano := 2030; xCarro05.Valor :=  15234.99;
    xListaCarros := [xCarro01, xCarro02, xCarro03, xCarro04, xCarro05];
    xQtdCarros := 0;

    while (xContinuar <> 7) and (xContinuar <> 3) and (xContinuar <> 2) do
       begin
         xRandom := Random(5);

         if xListaCarros[xRandom].Ano < 2000 then
          begin
            xDesconto := 12;
            xQtdCarros :=  xQtdCarros + 1;
          end
         else
          begin
            xDesconto := 7;
          end;
         xValorFinal := xListaCarros[xRandom].Valor * (100 - xDesconto) / 100;
         xValorDesconto := xListaCarros[xRandom].Valor * xDesconto / 100;
         ShowMessage(Format('Aproveite essa oferta! %s, ano %d, de R$%n saindo ' +
           'por apenas R$%n! Um desconto de %f por cento, equivalente a R$%n!',
           [xListaCarros[xRandom].Nome, xListaCarros[xRandom].Ano,
            xListaCarros[xRandom].Valor, xValorFinal, xDesconto, xValorDesconto]));
         xContinuar := MessageDlg('Gostaria de continuar vendo nossas ofertas?',
                       mtCustom, [mbYes, mbNo], 0);
       end;
    ShowMessage(Format('O total de carros mostrados com ano menor que 2000: %d vezes.',
                     [xQtdCarros]));


  end;

end.
