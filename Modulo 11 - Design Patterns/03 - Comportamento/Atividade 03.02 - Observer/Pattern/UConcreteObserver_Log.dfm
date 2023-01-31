object frmLog: TfrmLog
  Left = 0
  Top = 0
  Width = 350
  Height = 200
  TabOrder = 0
  object lblLog: TLabel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 340
    Height = 17
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Log de Opera'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mmLog: TMemo
    AlignWithMargins = True
    Left = 5
    Top = 27
    Width = 340
    Height = 168
    Margins.Left = 5
    Margins.Top = 0
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitTop = 28
    ExplicitWidth = 310
    ExplicitHeight = 207
  end
end
