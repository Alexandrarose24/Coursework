object DataModule3: TDataModule3
  OldCreateOrder = False
  Left = 210
  Top = 140
  Height = 493
  Width = 449
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C_database1.mdb;Per' +
      'sist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
  end
  object ADOQservice: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [service-materials]')
    Left = 32
    Top = 144
  end
  object qryADOQwork: TADOQuery
    Connection = ADOConnection1
    DataSource = dsDataSwork
    Parameters = <>
    Left = 32
    Top = 288
  end
  object qryADOQcheque: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM [cheque]')
    Left = 32
    Top = 240
  end
  object ADOTPers: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'personnel'
    Left = 32
    Top = 344
  end
  object DataSPers: TDataSource
    DataSet = ADOTPers
    Left = 120
    Top = 344
  end
  object DataSQservice: TDataSource
    DataSet = ADOQservice
    Left = 120
    Top = 144
  end
  object dsDataSwork: TDataSource
    DataSet = qryADOQcheque
    Left = 120
    Top = 296
  end
  object dsDataScheque: TDataSource
    DataSet = qryADOQcheque
    Left = 120
    Top = 248
  end
  object dsProd: TDataSource
    Left = 120
    Top = 192
  end
  object qryProd: TADOQuery
    Connection = ADOConnection1
    DataSource = dsProd
    Parameters = <>
    Left = 32
    Top = 192
  end
  object qryProd2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT [service-materials].'#1053#1072#1079#1074#1072' AS ['#1053#1072#1079#1074#1072' '#1087#1086#1089#1083#1091#1075#1080'], call.'#1050#1110#1083#1100#1082#1110 +
        #1089#1090#1100', [service-materials].['#1062#1110#1085#1072' '#1079#1072' '#1086#1076#1080#1085#1080#1094#1102'], call.'#1042#1072#1088#1090#1110#1089#1090#1100', call.' +
        '['#1050#1086#1076' '#1095#1077#1082#1091']  FROM [service-materials] INNER JOIN (personnel INNER' +
        ' JOIN (inhabitant INNER JOIN (cheque INNER JOIN call ON cheque.[' +
        #1050#1086#1076' '#1095#1077#1082#1091'] = call.['#1050#1086#1076' '#1095#1077#1082#1091']) ON inhabitant.['#1050#1086#1076' '#1084#1077#1096#1082#1072#1085#1094#1103'] = call' +
        '.['#1050#1086#1076' '#1084#1077#1096#1082#1072#1085#1094#1103']) ON personnel.['#1050#1086#1076' '#1087#1077#1088#1089#1086#1085#1072#1083#1091'] = call.['#1050#1086#1076' '#1087#1077#1088#1089#1086#1085 +
        #1072#1083#1091']) ON [service-materials].['#1050#1086#1076' '#1087#1086#1089#1083#1091#1075#1080'] = call.['#1050#1086#1076' '#1087#1086#1089#1083#1091#1075#1080']')
    Left = 32
    Top = 96
  end
  object dsProd2: TDataSource
    DataSet = qryProd2
    Left = 120
    Top = 96
  end
  object tblService: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = '[service-materials]'
    Left = 32
    Top = 400
  end
  object dsTservice: TDataSource
    DataSet = tblService
    Left = 128
    Top = 400
  end
  object qryCall: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT call.['#1053#1086#1084#1077#1088' '#1074#1080#1082#1083#1080#1082#1091'], call.'#1044#1072#1090#1072', call.'#1050#1110#1083#1100#1082#1110#1089#1090#1100', call.'#1042#1072#1088 +
        #1090#1110#1089#1090#1100', [service-materials].'#1053#1072#1079#1074#1072' AS ['#1053#1072#1079#1074#1072' '#1087#1086#1089#1083#1091#1075#1080'], personnel.'#1055 +
        #1030#1041' AS ['#1055#1030#1041' '#1087#1077#1088#1089#1086#1085#1072#1083#1091'], inhabitant.'#1055#1030#1041' AS ['#1055#1030#1041' '#1084#1077#1096#1082#1072#1085#1094#1103']'
      
        'FROM [service-materials] INNER JOIN (personnel INNER JOIN (inhab' +
        'itant INNER JOIN (cheque INNER JOIN call ON cheque.['#1050#1086#1076' '#1095#1077#1082#1091'] = ' +
        'call.['#1050#1086#1076' '#1095#1077#1082#1091']) ON inhabitant.['#1050#1086#1076' '#1084#1077#1096#1082#1072#1085#1094#1103'] = call.['#1050#1086#1076' '#1084#1077#1096#1082#1072#1085 +
        #1094#1103']) ON personnel.['#1050#1086#1076' '#1087#1077#1088#1089#1086#1085#1072#1083#1091'] = call.['#1050#1086#1076' '#1087#1077#1088#1089#1086#1085#1072#1083#1091']) ON [se' +
        'rvice-materials].['#1050#1086#1076' '#1087#1086#1089#1083#1091#1075#1080'] = call.['#1050#1086#1076' '#1087#1086#1089#1083#1091#1075#1080'];')
    Left = 32
    Top = 48
  end
  object dsCall: TDataSource
    DataSet = qryCall
    Left = 120
    Top = 48
  end
  object tblInhabit: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'inhabitant'
    Left = 216
    Top = 48
  end
  object dsInhabit: TDataSource
    DataSet = tblInhabit
    Left = 272
    Top = 48
  end
  object qryCheque: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cheq_num'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT [service-materials].'#1053#1072#1079#1074#1072' AS ['#1053#1072#1079#1074#1072' '#1087#1086#1089#1083#1091#1075#1080'], call.'#1050#1110#1083#1100#1082#1110 +
        #1089#1090#1100', [service-materials].['#1062#1110#1085#1072' '#1079#1072' '#1086#1076#1080#1085#1080#1094#1102'], call.'#1042#1072#1088#1090#1110#1089#1090#1100', call.' +
        '['#1050#1086#1076' '#1095#1077#1082#1091']  FROM [service-materials] INNER JOIN (personnel INNER' +
        ' JOIN (inhabitant INNER JOIN (cheque INNER JOIN call ON cheque.[' +
        #1050#1086#1076' '#1095#1077#1082#1091'] = call.['#1050#1086#1076' '#1095#1077#1082#1091']) ON inhabitant.['#1050#1086#1076' '#1084#1077#1096#1082#1072#1085#1094#1103'] = call' +
        '.['#1050#1086#1076' '#1084#1077#1096#1082#1072#1085#1094#1103']) ON personnel.['#1050#1086#1076' '#1087#1077#1088#1089#1086#1085#1072#1083#1091'] = call.['#1050#1086#1076' '#1087#1077#1088#1089#1086#1085 +
        #1072#1083#1091']) ON [service-materials].['#1050#1086#1076' '#1087#1086#1089#1083#1091#1075#1080'] = call.['#1050#1086#1076' '#1087#1086#1089#1083#1091#1075#1080']')
    Left = 224
    Top = 120
  end
  object dsCheque: TDataSource
    DataSet = qryCheque
    Left = 280
    Top = 120
  end
  object qrySum: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Sum(call.'#1042#1072#1088#1090#1110#1089#1090#1100') AS '#1057#1091#1084#1072
      
        'FROM [service-materials] INNER JOIN (inhabitant INNER JOIN (pers' +
        'onnel INNER JOIN (cheque INNER JOIN call ON cheque.['#1050#1086#1076' '#1095#1077#1082#1091'] = ' +
        'call.['#1050#1086#1076' '#1095#1077#1082#1091']) ON personnel.['#1050#1086#1076' '#1087#1077#1088#1089#1086#1085#1072#1083#1091'] = call.['#1050#1086#1076' '#1087#1077#1088#1089#1086#1085 +
        #1072#1083#1091']) ON inhabitant.['#1050#1086#1076' '#1084#1077#1096#1082#1072#1085#1094#1103'] = call.['#1050#1086#1076' '#1084#1077#1096#1082#1072#1085#1094#1103']) ON [se' +
        'rvice-materials].['#1050#1086#1076' '#1087#1086#1089#1083#1091#1075#1080'] = call.['#1050#1086#1076' '#1087#1086#1089#1083#1091#1075#1080']'
      'HAVING (([call]!['#1050#1086#1076' '#1095#1077#1082#1091']=96));')
    Left = 216
    Top = 176
  end
  object dsSum: TDataSource
    DataSet = qrySum
    Left = 280
    Top = 176
  end
end
