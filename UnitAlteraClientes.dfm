object FormAlteraSocios: TFormAlteraSocios
  Left = 233
  Top = 184
  Width = 390
  Height = 354
  Caption = 'Altera'#231#227'o de Dados dos S'#243'cios'
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
    Left = 33
    Top = 20
    Width = 42
    Height = 13
    Caption = 'C'#211'DIGO'
  end
  object Label2: TLabel
    Left = 89
    Top = 20
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object Label3: TLabel
    Left = 225
    Top = 20
    Width = 69
    Height = 13
    Caption = 'SOBRENOME'
  end
  object Label4: TLabel
    Left = 33
    Top = 68
    Width = 60
    Height = 13
    Caption = 'ENDERE'#199'O'
  end
  object Label5: TLabel
    Left = 225
    Top = 68
    Width = 83
    Height = 13
    Caption = 'COMPLEMENTO'
  end
  object Label6: TLabel
    Left = 33
    Top = 116
    Width = 41
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label7: TLabel
    Left = 169
    Top = 116
    Width = 40
    Height = 13
    Caption = 'CIDADE'
  end
  object Label8: TLabel
    Left = 289
    Top = 116
    Width = 44
    Height = 13
    Caption = 'ESTADO'
  end
  object Label9: TLabel
    Left = 33
    Top = 164
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label10: TLabel
    Left = 113
    Top = 164
    Width = 56
    Height = 13
    Caption = 'TELEFONE'
  end
  object Label11: TLabel
    Left = 233
    Top = 164
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object Label12: TLabel
    Left = 33
    Top = 228
    Width = 190
    Height = 13
    Caption = 'DIGITE O NOME A SER PESQUISADO'
  end
  object DBEditCodigoSocio: TDBEdit
    Left = 33
    Top = 36
    Width = 41
    Height = 21
    DataField = 'CODIGOSOCIO'
    DataSource = Dados.DataSourceSocios
    TabOrder = 0
  end
  object DBEditNomeSocio: TDBEdit
    Left = 89
    Top = 36
    Width = 121
    Height = 21
    DataField = 'NOME'
    DataSource = Dados.DataSourceSocios
    TabOrder = 1
  end
  object DBEditSobrenomeSocio: TDBEdit
    Left = 225
    Top = 36
    Width = 121
    Height = 21
    DataField = 'SOBRENOME'
    DataSource = Dados.DataSourceSocios
    TabOrder = 2
  end
  object DBEditEnderecoSocio: TDBEdit
    Left = 33
    Top = 84
    Width = 177
    Height = 21
    DataField = 'ENDERECO'
    DataSource = Dados.DataSourceSocios
    TabOrder = 3
  end
  object DBEditComplementoSocio: TDBEdit
    Left = 225
    Top = 84
    Width = 121
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = Dados.DataSourceSocios
    TabOrder = 4
  end
  object DBEditBairroSocio: TDBEdit
    Left = 33
    Top = 132
    Width = 121
    Height = 21
    DataField = 'BAIRRO'
    DataSource = Dados.DataSourceSocios
    TabOrder = 5
  end
  object DBEditCidadeSocio: TDBEdit
    Left = 169
    Top = 132
    Width = 105
    Height = 21
    DataField = 'CIDADE'
    DataSource = Dados.DataSourceSocios
    TabOrder = 6
  end
  object DBComboboxEstadoSocio: TDBComboBox
    Left = 289
    Top = 132
    Width = 57
    Height = 21
    Style = csDropDownList
    DataSource = Dados.DataSourceSocios
    ItemHeight = 13
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MT'
      'MS'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RR'
      'RO'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
    TabOrder = 7
  end
  object DBEditCEPSocio: TDBEdit
    Left = 33
    Top = 180
    Width = 65
    Height = 21
    DataField = 'CEP'
    DataSource = Dados.DataSourceSocios
    MaxLength = 10
    TabOrder = 8
  end
  object DBEditTelefoneSocio: TDBEdit
    Left = 113
    Top = 180
    Width = 105
    Height = 21
    DataField = 'TELEFONE'
    DataSource = Dados.DataSourceSocios
    TabOrder = 9
  end
  object DBEditCPFSocio: TDBEdit
    Left = 233
    Top = 180
    Width = 113
    Height = 21
    DataField = 'CPF'
    DataSource = Dados.DataSourceSocios
    MaxLength = 14
    TabOrder = 10
  end
  object BotaoFechar: TBitBtn
    Left = 249
    Top = 220
    Width = 100
    Height = 50
    Caption = '&Fechar'
    TabOrder = 11
    Kind = bkClose
  end
  object EditPesquisa: TEdit
    Left = 33
    Top = 244
    Width = 201
    Height = 21
    TabOrder = 12
    OnChange = EditPesquisaChange
  end
  object DBNavigatorSocios: TDBNavigator
    Left = 63
    Top = 282
    Width = 224
    Height = 25
    DataSource = Dados.DataSourceSocios
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
    TabOrder = 13
  end
end
