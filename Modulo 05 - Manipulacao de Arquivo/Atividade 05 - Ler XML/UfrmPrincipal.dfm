object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Lendo Arquivo XML'
  ClientHeight = 310
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmResultado: TMemo
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 400
    Height = 265
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnLerXML: TButton
    AlignWithMargins = True
    Left = 150
    Top = 280
    Width = 110
    Height = 25
    Margins.Left = 150
    Margins.Top = 5
    Margins.Right = 150
    Margins.Bottom = 5
    Align = alBottom
    Caption = 'Ler XML'
    TabOrder = 1
    OnClick = btnLerXMLClick
    ExplicitLeft = 310
    ExplicitTop = 240
    ExplicitWidth = 75
  end
  object XMLDoc: TXMLDocument
    XML.Strings = (
      '<atualizacao>'
      '  <executaveis>'
      
        '    <executavel versao='#39'1.0.3.22'#39' descricao='#39'Modulo gerencial'#39'>g' +
        'erencial.exe</executavel>'
      
        '    <executavel versao='#39'1.0.3.123'#39' descricao='#39'Configuracoes da A' +
        'plicacao'#39'>configuracoes.exe</executavel>'
      '  </executaveis>'
      '  <bibliotecas>'
      
        '    <biblioteca versao='#39'2.0.0.1'#39' descricao='#39'Biblioteca de funcoe' +
        's'#39'>funcoes.dll</biblioteca>'
      
        '    <biblioteca versao='#39'1.2.0.4'#39' descricao='#39'Biblioteca com rotin' +
        'as de negocio da aplicacao'#39'>app.dll</biblioteca>'
      '  </bibliotecas>'
      '</atualizacao>')
    Left = 370
    Top = 280
  end
end
