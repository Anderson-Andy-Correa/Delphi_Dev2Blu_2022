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
    btnEnqueue: TButton;
    btnDequeue: TButton;
    btnExtract: TButton;
    btnPeek: TButton;
    btnTrimExcess: TButton;
    btnCount: TButton;
    edtprincipal: TEdit;
    mmResult: TMemo;
    btnCapacity: TButton;
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnDequeueClick(Sender: TObject);
    procedure btnEnqueueClick(Sender: TObject);
    procedure btnExtractClick(Sender: TObject);
    procedure btnPeekClick(Sender: TObject);
    procedure btnTrimExcessClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFila: TQueue<String>;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCapacityClick(Sender: TObject);
  begin
    mmResult.Lines.Add(FFila.Capacity.ToString);
  end;

procedure TfrmPrincipal.btnCountClick(Sender: TObject);
  begin
    mmResult.Lines.Add(FFila.Count.ToString);
  end;

procedure TfrmPrincipal.btnDequeueClick(Sender: TObject);
  begin
    mmResult.Lines.Add(FFila.Dequeue);
  end;

procedure TfrmPrincipal.btnEnqueueClick(Sender: TObject);
  begin
    FFila.Enqueue(edtprincipal.Text);
  end;

procedure TfrmPrincipal.btnExtractClick(Sender: TObject);
  begin
    // Mesmo comportamento do Dequeue, a diferença é que você pode
    // capturar a ação no notify
    mmResult.Lines.Add(FFila.Extract)
  end;

procedure TfrmPrincipal.btnPeekClick(Sender: TObject);
  begin
    mmResult.Lines.Add(FFila.Peek);
  end;

procedure TfrmPrincipal.btnTrimExcessClick(Sender: TObject);
  begin
    FFila.TrimExcess;
    mmResult.Lines.Add(FFila.Count.ToString);
  end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    FFila.Free;
  end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
  begin
    FFila := TQueue<String>.Create;
  end;

end.
