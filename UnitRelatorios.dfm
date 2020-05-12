object Relatorios: TRelatorios
  OldCreateOrder = False
  Left = 387
  Top = 229
  Height = 246
  Width = 226
  object RvClube: TRvProject
    ProjectFile = 'C:\Projeto Clube\RelatClube.rav'
    Left = 24
    Top = 32
  end
  object RvDatasetConnectionSocios: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Dados.ADOTableSocios
    Left = 120
    Top = 32
  end
  object RvDatasetConnectionAtividades: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Dados.ADOTableAtividades
    Left = 120
    Top = 88
  end
  object RvDatasetConnectionMatriculas: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = FormExclusaoMatriculas.ADOQueryConsulta
    Left = 120
    Top = 144
  end
end
