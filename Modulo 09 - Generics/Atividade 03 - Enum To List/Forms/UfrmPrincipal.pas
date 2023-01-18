unit UfrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.TypInfo,

  Vcl.StdCtrls,
  Vcl.Controls,
  Vcl.Graphics,
  Vcl.Forms,
  Vcl.Dialogs;

type
  TDias = (Segunda, Terca, Quarta, Quinta, Sexta, Sabado, Domingo);
  TMes  = (Janeiro, Fevereiro, Marco, Abril, Maio, Junho,
           Julho, Agosto, Setembro, Outubro, Novembro, Dezembro);

  TEnumUtils<T> = class
    Class procedure EnumToList (aValue: TStrings);
  end;

  TfrmPrincipal = class(TForm)
    cmbLista: TComboBox;
    btnMes: TButton;
    btnDias: TButton;
    procedure btnMesClick(Sender: TObject);
    procedure btnDiasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TEnumUtils<T> }

class procedure TEnumUtils<T>.EnumToList(aValue: TStrings);
  var
    I, LPos: Integer;
    LAux: String;
  begin
    aValue.clear;
    I := 0;

    repeat
      LAux := GetEnumName(TypeInfo(T), I);
      LPos := GetEnumValue(TypeInfo(T), LAux);

      if LPos <> -1 then
        aValue.Add(LAux);

       Inc(I);
    until LPos < 0;
  end;

procedure TfrmPrincipal.btnDiasClick(Sender: TObject);
  begin
    TEnumUtils<TDias>.EnumToList(cmbLista.Items);
  end;

procedure TfrmPrincipal.btnMesClick(Sender: TObject);
  begin
    TEnumUtils<TMes>.EnumToList(cmbLista.Items);
  end;

end.
