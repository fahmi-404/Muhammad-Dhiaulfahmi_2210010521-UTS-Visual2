object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 239
  Width = 411
  object DSatuan: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'Penjualan'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 'C:\Windows\System\libmysql.dll'
    Left = 56
    Top = 24
  end
  object ZSatuan: TZQuery
    Connection = DSatuan
    Active = True
    SQL.Strings = (
      'select * from Satuan')
    Params = <>
    Left = 112
    Top = 24
  end
  object dsSatuan: TDataSource
    DataSet = ZSatuan
    Left = 112
    Top = 88
  end
end
