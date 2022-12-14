unit UfrmRTL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btlConfirmation: TButton;
    bltCustom: TButton;
    btnReplace: TButton;
    btnTrim: TButton;
    procedure btlConfirmationClick(Sender: TObject);
    procedure bltCustomClick(Sender: TObject);
    procedure btnReplaceClick(Sender: TObject);
    procedure btnTrimClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.bltCustomClick(Sender: TObject);
var
  buttonSelected: Integer;

begin
  // Show a custom dialog
  buttonSelected := MessageDlg('Custom dialog', mtCustom,
  [mbYes, mbAll, mbCancel], 0);

  // Show the button type selected
  if buttonSelected = mrYes then ShowMessage('Yes pressed');
  if buttonSelected = mrAll then ShowMessage('All pressed');
  if buttonSelected = mrCancel then ShowMessage('Cancel pressed');
  
end;

procedure TfrmPrincipal.btlConfirmationClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Show a Confirmation dialog
  buttonSelected := MessageDlg('Confirmation',mtError, mbOkCancel, 0);

  // Show the button type selected

  if buttonSelected = mrOk then ShowMessage ('OK pressed');
  if buttonSelected = mrCancel  then ShowMessage ('Cancel pressed');

end;

procedure TfrmPrincipal.btnReplaceClick(Sender: TObject);
var
  before, after: String;
begin
  // Try to replace all occurebces of a or A to The
  before := 'This is a way to live a big life';

  after := StringReplace(before, ' a ', ' the ', [rfReplaceAll, rfIgnoreCase]);
  ShowMessage('Before = ' + before);
  ShowMessage('After = ' + after);
end;

procedure TfrmPrincipal.btnTrimClick(Sender: TObject);
const
  PaddedString = '   Letters   ';
begin
  ShowMessage('[' + TrimLeft(PaddedString)  + ']');
  ShowMessage('[' + TrimRight(PaddedString) + ']');
  ShowMessage('[' + Trim(PaddedString)      + ']');
end;

end.
