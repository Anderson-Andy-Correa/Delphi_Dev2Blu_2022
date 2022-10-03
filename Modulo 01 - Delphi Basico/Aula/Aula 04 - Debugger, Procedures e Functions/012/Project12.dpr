program Project12;

uses
  Vcl.Forms,
  UfrmProcedureFunctions in 'UfrmProcedureFunctions.pas' {frmProcedureFunctions};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmProcedureFunctions, frmProcedureFunctions);
  Application.Run;
end.
