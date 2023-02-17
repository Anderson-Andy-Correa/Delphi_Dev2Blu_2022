unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.NumberBox;

type
  TFuncao = (Get, GetID, Post, Delete);
  TBase   = (produtos, unidademedida);
  TfrmPrincipal = class(TForm)
    cmbProcesso: TComboBox;
    cmbFuncao: TComboBox;
    nmbNumero: TNumberBox;
    btnFuncao: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cmbProcessoChange(Sender: TObject);
    procedure cmbFuncaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  System.TypInfo;

{$R *.dfm}

procedure TfrmPrincipal.cmbFuncaoChange(Sender: TObject);
  begin
    if nmbNumero.Visible <> True then
      nmbNumero.Visible := True;
  end;

procedure TfrmPrincipal.cmbProcessoChange(Sender: TObject);
  begin
    if cmbFuncao.Visible <> True then
      cmbFuncao.Visible := True;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  var
    xContadorBase : TBase;
    xContadorFuncao : TFuncao;
    xContador : Integer;
  begin
    xContador := 0;
    
    for xContadorFuncao := Low(TFuncao) to High(TFuncao) do
      begin  
        cmbFuncao.Items.Add(GetEnumName(TypeInfo(TFuncao), xContador));
        inc(xContador);        
      end;

    xContador := 0;  
    for xContadorBase := Low(TBase) to High(TBase) do
      begin  
        cmbFuncao.Items.Add(GetEnumName(TypeInfo(TBase), xContador));
        inc(xContador);        
      end;
  end;

end.
