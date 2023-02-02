program CalculadoraSoup;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FormUnit1 in '..\Forms\FormUnit1.pas' {Form1},
  WebModuleUnit1 in '..\Module\WebModuleUnit1.pas' {WebModule1: TWebModule},
  CalculadoraSoupImpl in '..\Units\CalculadoraSoupImpl.pas',
  CalculadoraSoupIntf in '..\Units\CalculadoraSoupIntf.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
