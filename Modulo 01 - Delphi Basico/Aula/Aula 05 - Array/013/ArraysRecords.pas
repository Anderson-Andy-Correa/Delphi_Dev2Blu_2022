unit ArraysRecords;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDayTemperatures = array [1..31] of integer;
  //TMonthTemps = array [1..31] of TDayTemperatures;
  //TMatrizDinamica = array of Strings;

  TfmrPrincipal = class(TForm)
    mmHistorico: TMemo;
    btnGravar: TButton;
    btnConsultar: TButton;
    edtDia: TEdit;
    edtTemperatura: TEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    FDayTemperatures: TDayTemperatures;
  public
    { Public declarations }
  end;

var
  fmrPrincipal: TfmrPrincipal;

implementation

{$R *.dfm}



procedure TfmrPrincipal.btnGravarClick(Sender: TObject);
  var
    xDia: integer;
    xTemperatura: Integer;

  begin
    xDia := StrToIntDef(edtDia.Text, 0);
    xTemperatura := StrToIntDef(edtTemperatura.Text, 0);
    FDayTemperatures[xDia] := xTemperatura;
  end;

procedure TfmrPrincipal.btnConsultarClick(Sender: TObject);
  var
    I:Integer;

  begin
    mmHistorico.lines.Clear;
    for I := 1 to Length(FDayTemperatures) do
      begin
        if FDayTemperatures[I] > 0 then
          mmHistorico.Lines.Add('Dia ' + IntToStr(I) +
          ' fez ' + IntToStr(FDayTemperatures[I]) + ' graus.')
      end;
  end;
end.
