program Project13;

uses
  Vcl.Forms,
  ArraysRecords in 'ArraysRecords.pas' {fmrPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmrPrincipal, fmrPrincipal);
  Application.Run;
end.
