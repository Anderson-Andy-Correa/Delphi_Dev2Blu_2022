unit UfrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Generics.Collections,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnPush: TButton;
    btnPop: TButton;
    btnExtract: TButton;
    btnPeek: TButton;
    btnTrimExcess: TButton;
    btnCount: TButton;
    edtprincipal: TEdit;
    mmResult: TMemo;
    btnCapacity: TButton;
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnPopClick(Sender: TObject);
    procedure btnPushClick(Sender: TObject);
    procedure btnExtractClick(Sender: TObject);
    procedure btnPeekClick(Sender: TObject);
    procedure btnTrimExcessClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPilha: TStack<String>;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCapacityClick(Sender: TObject);
  begin
    mmResult.Lines.Add(FPilha.Capacity.ToString);
  end;

procedure TfrmPrincipal.btnCountClick(Sender: TObject);
  begin
    mmResult.Lines.Add(FPilha.Count.ToString);
  end;

procedure TfrmPrincipal.btnPopClick(Sender: TObject);
  begin
    mmResult.Lines.Add(FPilha.Pop);
  end;

procedure TfrmPrincipal.btnPushClick(Sender: TObject);
  begin
    FPilha.Push(edtprincipal.Text);
  end;

procedure TfrmPrincipal.btnExtractClick(Sender: TObject);
  begin
    mmResult.Lines.Add(FPilha.Extract)
  end;

procedure TfrmPrincipal.btnPeekClick(Sender: TObject);
  begin
    mmResult.Lines.Add(FPilha.Peek);
  end;

procedure TfrmPrincipal.btnTrimExcessClick(Sender: TObject);
  begin
    FPilha.TrimExcess;
    mmResult.Lines.Add(FPilha.Capacity.ToString);
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    FPilha.Free;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
    FPilha := TStack<String>.Create;
  end;

end.
