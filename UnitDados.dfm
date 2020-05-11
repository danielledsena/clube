object Dados: TDados
  OldCreateOrder = False
  Left = 278
  Top = 235
  Height = 373
  Width = 248
  object ADOConnectionClube: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User' +
      ' ID=sa;Initial Catalog=Clube;Data Source=HP-PC'
    Provider = 'SQLOLEDB.1'
    Left = 96
    Top = 8
  end
  object ADOTableSocios: TADOTable
    Active = True
    Connection = ADOConnectionClube
    CursorType = ctStatic
    OnCalcFields = ADOTableSociosCalcFields
    TableName = 'Socios'
    Left = 48
    Top = 56
    object ADOTableSociosCODIGOSOCIO: TIntegerField
      FieldName = 'CODIGOSOCIO'
    end
    object ADOTableSociosNOME: TStringField
      FieldName = 'NOME'
      Size = 15
    end
    object ADOTableSociosSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Size = 25
    end
    object ADOTableSociosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 25
    end
    object ADOTableSociosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object ADOTableSociosBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object ADOTableSociosCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object ADOTableSociosESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object ADOTableSociosCEP: TStringField
      FieldName = 'CEP'
      EditMask = ' 00000\-999;0;'
      Size = 8
    end
    object ADOTableSociosTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 10
    end
    object ADOTableSociosCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000.000.000-00;0;'
      Size = 11
    end
    object ADOTableSociosNomeCompleto: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeCompleto'
      Size = 40
      Calculated = True
    end
  end
  object DataSourceSocios: TDataSource
    DataSet = ADOTableSocios
    Left = 160
    Top = 56
  end
  object ADOTableAtividades: TADOTable
    Active = True
    Connection = ADOConnectionClube
    CursorType = ctStatic
    TableName = 'Atividades'
    Left = 48
    Top = 120
    object ADOTableAtividadesCODIGOATIVIDADE: TIntegerField
      FieldName = 'CODIGOATIVIDADE'
    end
    object ADOTableAtividadesNOME: TStringField
      FieldName = 'NOME'
      Size = 25
    end
    object ADOTableAtividadesVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '########.00'
      EditFormat = '########.00'
      Precision = 19
    end
  end
  object DataSourceAtividades: TDataSource
    DataSet = ADOTableAtividades
    Left = 160
    Top = 120
  end
  object DataSourceMatriculas: TDataSource
    DataSet = ADOTableMatriculas
    Left = 160
    Top = 184
  end
  object ADOTableMatriculas: TADOTable
    Active = True
    Connection = ADOConnectionClube
    CursorType = ctStatic
    TableName = 'Matriculas'
    Left = 48
    Top = 184
    object ADOTableMatriculasSOCIO: TIntegerField
      FieldName = 'SOCIO'
    end
    object ADOTableMatriculasATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
    end
  end
end
