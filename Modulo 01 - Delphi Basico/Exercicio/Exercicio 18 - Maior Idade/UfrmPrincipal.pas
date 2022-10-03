unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnCadastrar: TButton;
    mmMaiorIdade: TMemo;
    mmMenorIdade: TMemo;
    lblMaiorIdade: TLabel;
    lblMenorIdade: TLabel;
    mmHistorico: TMemo;
    lblHistorico: TLabel;
    lblTotalHistorico: TLabel;
    lblTotalMaiorIdade: TLabel;
    lblTotalMenorIdade: TLabel;
    procedure btnCadastrarClick(Sender: TObject);
  private
    {Function NovoCadastro(aVezes: Integer): String;}
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCadastrarClick(Sender: TObject);
  var
    I: Integer;
    xVezes: Integer;
    xIdade: Integer;
    xNome: String;
  begin
    if TryStrToInt(inputbox('Informar', 'Informar quantidade de cadastros', '0'), xVezes) then
      begin
        if xVezes > 0 then
          for I := 0 to xVezes - 1 do
            begin
              xNome := inputbox('Informar', Format('Informe o %dº Nome',[(I + 1)]), '');

              if TryStrToInt(inputbox('Informar',
              Format('E informe a idade correspondente', [(I + 1)]),
              '0'), xIdade)  then
                begin
                  if (xIdade >= 18) then
                    begin
                      mmMaiorIdade.Lines.add(Format('%s - %d',
                      [xNome, xIdade]));
                    end
                  else
                    begin
                      mmMenorIdade.Lines.add(Format('%s - %d', [xNome, xIdade]));
                    end;

                    mmHistorico.Lines.add(Format('%s - %d', [xNome, xIdade]));
                end
              else
                raise Exception.Create('Informe apenas Números!');
            end;
      end
    else
      raise Exception.Create('Informe apenas valores inteiros!');

    mmMaiorIdade.Visible := True;
    lblMaiorIdade.Visible := True;
    lblTotalMaiorIdade.Caption := 'Total: ' + mmMaiorIdade.Lines.Count.ToString;
    lblTotalMaiorIdade.Visible := True;

    mmMenorIdade.Visible := True;
    lblMenorIdade.Visible := True;
    lblTotalMenorIdade.Caption := 'Total: ' + mmMenorIdade.Lines.Count.ToString;
    lblTotalMenorIdade.Visible := True;

    mmHistorico.Visible := True;
    lblHistorico.Visible := True;
    lblTotalHistorico.Caption := 'Total: ' + mmHistorico.Lines.Count.ToString;
    lblTotalHistorico.Visible := True;
  end;

end.
