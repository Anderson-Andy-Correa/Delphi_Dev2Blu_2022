object dnPedidos: TdnPedidos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=devs2blu'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 20
    Top = 20
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\andersoncorrea\Documents\Delphi_Dev2Blu_2022\Modulo 04 ' +
      '- Banco de Dados e MySQL\Atividade 3 - Sistema de Pedidio de Com' +
      'pras\libmysql.dll'
    Left = 20
    Top = 80
  end
end
