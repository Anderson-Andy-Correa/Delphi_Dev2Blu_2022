unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TkeyValue<T> = class
    private
      FKey: String;
      FValue: T;

      procedure Setkey(const Value: String);
      procedure SetValue(const Value: T);
    published
      property Key  : String read Fkey   write SetKey;
      property Value: T      read FValue write SetValue;

  end;
  TfrmPrincipal = class(TForm)
    btnBotao: TButton;
    procedure btnBotaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnBotaoClick(Sender: TObject);
  var
    xKV : TKeyValue<Tform>;
    xKV2: TKeyValue<TButton>;
  begin
    xKV := TKeyValue<Tform>.Create;
    xKV2:= TKeyValue<TButton>.Create;

    try
      xKV.Key    := 'Form_1';
      xKV.Value  := Self;

      xKV2.Key   := 'Btn_1';
      xKV2.Value := Sender as TButton;

      ShowMessage(xKV.Key  + ' - ' + xKV.Value.Name);
      ShowMessage(xKV2.Key + ' - ' + xKV2.Value.Name);
    finally
      xKV.Free;
      xKV2.Free;
    end;
  end;

{ TkeyValue<T> }

procedure TkeyValue<T>.Setkey(const Value: String);
  begin
    FKey := Value;
  end;

procedure TkeyValue<T>.SetValue(const Value: T);
  begin
    FValue := Value;
  end;

end.
