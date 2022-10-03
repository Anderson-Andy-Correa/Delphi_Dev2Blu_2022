unit ufrmDebugger;

  interface

  uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

  type
    TfrmDebugger = class(TForm)
      mmCmdEsquerda: TMemo;
      mmCmdDireita: TMemo;
      lblTitulo: TLabel;
      btnProcessar: TButton;
      procedure btnProcessarClick(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
    end;

  var
    frmDebugger: TfrmDebugger;

  implementation

uses
  UCalculadora;

  {$R *.dfm}

  procedure TfrmDebugger.btnProcessarClick(Sender: TObject);

    var
      xCalculadora: TCalculadora;
      xResultado: Integer;

    begin
      xCalculadora := TCalculadora.Create;
      try
        xResultado := xCalculadora.RetornarSoma(10, 15);

        ShowMessage (xResultado.toString);
      finally
        FreeAndNil(xCalculadora);
      end;
    end;

end.
