object dbdados: Tdbdados
  OldCreateOrder = False
  Left = 507
  Top = 163
  Height = 342
  Width = 642
  object qEstoque: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 128
    Top = 32
  end
  object dsEstoque: TDataSource
    DataSet = qEstoque
    Left = 128
    Top = 80
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=sgu'
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object qSaida: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 192
    Top = 32
  end
  object qProduto: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 256
    Top = 32
  end
  object dsproduto: TDataSource
    DataSet = qProduto
    Left = 256
    Top = 88
  end
  object dssaida: TDataSource
    DataSet = qSaida
    Left = 192
    Top = 88
  end
  object qEntradaProd: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 328
    Top = 32
  end
  object dsEntradaProd: TDataSource
    DataSet = qEntradaProd
    Left = 328
    Top = 80
  end
  object qMarca: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 32
    Top = 168
  end
  object dsMarca: TDataSource
    DataSet = qMarca
    Left = 32
    Top = 216
  end
  object qfabricante: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 96
    Top = 168
  end
  object dsfabricante: TDataSource
    DataSet = qfabricante
    Left = 96
    Top = 216
  end
end
