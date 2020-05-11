object FormAlteraAtividades: TFormAlteraAtividades
  Left = 238
  Top = 178
  Width = 400
  Height = 198
  Caption = 'Altera'#231#227'o de Atividades'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 21
    Width = 42
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = DBEditCodigoAtividade
  end
  object Label2: TLabel
    Left = 86
    Top = 21
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEditNomeAtividade
  end
  object Label3: TLabel
    Left = 310
    Top = 21
    Width = 36
    Height = 13
    Caption = 'VALOR'
    FocusControl = DBEditValorAtividade
  end
  object Label4: TLabel
    Left = 38
    Top = 77
    Width = 190
    Height = 13
    Caption = 'DIGITE O NOME A SER PESQUISADO'
  end
  object DBEditCodigoAtividade: TDBEdit
    Left = 30
    Top = 37
    Width = 51
    Height = 21
    DataField = 'CODIGOATIVIDADE'
    DataSource = Dados.DataSourceAtividades
    TabOrder = 0
  end
  object DBEditNomeAtividade: TDBEdit
    Left = 86
    Top = 37
    Width = 219
    Height = 21
    DataField = 'NOME'
    DataSource = Dados.DataSourceAtividades
    TabOrder = 1
  end
  object DBEditValorAtividade: TDBEdit
    Left = 310
    Top = 37
    Width = 49
    Height = 21
    DataField = 'VALOR'
    DataSource = Dados.DataSourceAtividades
    TabOrder = 2
  end
  object BotaoFechar: TBitBtn
    Left = 262
    Top = 93
    Width = 100
    Height = 50
    Caption = '&Fechar'
    TabOrder = 3
    Kind = bkClose
  end
  object EditPesquisa: TEdit
    Left = 30
    Top = 93
    Width = 209
    Height = 21
    TabOrder = 4
    OnChange = EditPesquisaChange
  end
  object DBNavigatorAtividades: TDBNavigator
    Left = 30
    Top = 125
    Width = 224
    Height = 25
    DataSource = Dados.DataSourceAtividades
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      #218'ltimo Registro'
      'Inserir Novo Registro'
      'Deletar Registro'
      'Editar Registro'
      'Gravar Registro'
      'Cancelar Edic'#227'o do Registro'
      'Atualizar Dados')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
end
