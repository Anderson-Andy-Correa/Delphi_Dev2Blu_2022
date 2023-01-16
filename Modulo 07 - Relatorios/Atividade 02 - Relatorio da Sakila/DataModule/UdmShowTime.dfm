object DmShowTime: TDmShowTime
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 288
  Width = 360
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sakila'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
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
