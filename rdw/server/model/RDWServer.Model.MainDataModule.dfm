object MainDataModule: TMainDataModule
  OldCreateOrder = False
  Encoding = esASCII
  Height = 277
  Width = 455
  object FDConnection: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=D:\GitHub\RDWDelphiInga8\rdw\database\EMPLOYEE.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 344
    Top = 80
  end
  object RESTDWDriverFD: TRESTDWDriverFD
    CommitRecords = 100
    Connection = FDConnection
    Left = 200
    Top = 80
  end
  object RESTDWPoolerDB: TRESTDWPoolerDB
    RESTDriver = RESTDWDriverFD
    Compression = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 64
    Top = 80
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 344
    Top = 136
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 344
    Top = 192
  end
end
