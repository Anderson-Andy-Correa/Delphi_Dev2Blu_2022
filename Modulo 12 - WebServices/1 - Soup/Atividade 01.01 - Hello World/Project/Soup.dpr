program Soup;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FormUnit1 in '..\Form\FormUnit1.pas' {Form1},
  WebModuleUnit1 in '..\WebModule\WebModuleUnit1.pas' {WebModule1: TWebModule},
  Hello_WorldImpl in '..\Units\Hello_WorldImpl.pas',
  Hello_WorldIntf in '..\Units\Hello_WorldIntf.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
