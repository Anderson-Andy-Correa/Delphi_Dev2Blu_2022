object DmShowTime: TDmShowTime
  Left = 0
  Top = 0
  Caption = 'Data Module'
  ClientHeight = 150
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sakila'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    Left = 40
    Top = 40
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\mysql\Documents\GitHub\Anderson-Andy-Correa\Delphi_Dev2' +
      'Blu_2022\Modulo 07 - Relatorios\Atividade 02 - Relatorio da Saki' +
      'la\Utils\libmysql.dll'
    Left = 152
    Top = 40
  end
end
