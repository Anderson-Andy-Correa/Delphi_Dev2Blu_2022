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
      'C:\Users\mysql\Documents\GitHub\Anderson-Andy-Correa\Delphi_Dev2' +
      'Blu_2022\Modulo 04 - Banco de Dados e MySQL\Atividade 3 - Sistem' +
      'a de Pedidio de Compras\libmysql.dll'
    Left = 20
    Top = 80
  end
end
