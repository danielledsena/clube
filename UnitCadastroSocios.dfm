object FormCadastraSocios: TFormCadastraSocios
  Left = 412
  Top = 244
  Width = 474
  Height = 258
  Caption = 'Cadastro de S'#243'cios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 25
    Width = 42
    Height = 13
    Caption = 'C'#211'DIGO'
  end
  object Label2: TLabel
    Left = 73
    Top = 25
    Width = 32
    Height = 13
    Caption = 'NOME'
  end
  object Label3: TLabel
    Left = 209
    Top = 25
    Width = 69
    Height = 13
    Caption = 'SOBRENOME'
  end
  object Label4: TLabel
    Left = 17
    Top = 73
    Width = 60
    Height = 13
    Caption = 'ENDERE'#199'O'
  end
  object Label5: TLabel
    Left = 209
    Top = 73
    Width = 83
    Height = 13
    Caption = 'COMPLEMENTO'
  end
  object Label6: TLabel
    Left = 17
    Top = 121
    Width = 41
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label7: TLabel
    Left = 153
    Top = 121
    Width = 40
    Height = 13
    Caption = 'CIDADE'
  end
  object Label8: TLabel
    Left = 273
    Top = 121
    Width = 44
    Height = 13
    Caption = 'ESTADO'
  end
  object Label9: TLabel
    Left = 17
    Top = 169
    Width = 21
    Height = 13
    Caption = 'CEP'
  end
  object Label10: TLabel
    Left = 97
    Top = 169
    Width = 56
    Height = 13
    Caption = 'TELEFONE'
  end
  object Label11: TLabel
    Left = 217
    Top = 169
    Width = 20
    Height = 13
    Caption = 'CPF'
  end
  object DBEditCodigoSocio: TDBEdit
    Left = 17
    Top = 41
    Width = 41
    Height = 21
    DataField = 'CODIGOSOCIO'
    DataSource = Dados.DataSourceSocios
    TabOrder = 0
  end
  object DBEditNomeSocio: TDBEdit
    Left = 73
    Top = 41
    Width = 121
    Height = 21
    DataField = 'NOME'
    DataSource = Dados.DataSourceSocios
    TabOrder = 1
  end
  object DBEditSobrenomeSocio: TDBEdit
    Left = 209
    Top = 41
    Width = 121
    Height = 21
    DataField = 'SOBRENOME'
    DataSource = Dados.DataSourceSocios
    TabOrder = 2
  end
  object DBEditEnderecoSocio: TDBEdit
    Left = 17
    Top = 89
    Width = 177
    Height = 21
    DataField = 'ENDERECO'
    DataSource = Dados.DataSourceSocios
    TabOrder = 3
  end
  object DBEditComplementoSocio: TDBEdit
    Left = 209
    Top = 89
    Width = 121
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = Dados.DataSourceSocios
    TabOrder = 4
  end
  object DBEditCidadeSocio: TDBEdit
    Left = 153
    Top = 137
    Width = 105
    Height = 21
    DataField = 'CIDADE'
    DataSource = Dados.DataSourceSocios
    TabOrder = 6
  end
  object DBEditBairroSocio: TDBEdit
    Left = 17
    Top = 137
    Width = 121
    Height = 21
    DataField = 'BAIRRO'
    DataSource = Dados.DataSourceSocios
    TabOrder = 5
  end
  object DBEditCEPSocio: TDBEdit
    Left = 17
    Top = 185
    Width = 65
    Height = 21
    DataField = 'CEP'
    DataSource = Dados.DataSourceSocios
    MaxLength = 10
    TabOrder = 8
  end
  object DBEditTelefoneSocio: TDBEdit
    Left = 97
    Top = 185
    Width = 105
    Height = 21
    DataField = 'TELEFONE'
    DataSource = Dados.DataSourceSocios
    TabOrder = 9
  end
  object DBEditCPFSocio: TDBEdit
    Left = 217
    Top = 185
    Width = 113
    Height = 21
    DataField = 'CPF'
    DataSource = Dados.DataSourceSocios
    MaxLength = 14
    TabOrder = 10
  end
  object BotaoCadastrar: TBitBtn
    Left = 353
    Top = 65
    Width = 100
    Height = 50
    Caption = '&Cadastrar'
    TabOrder = 11
    OnClick = BotaoCadastrarClick
    Kind = bkOK
  end
  object BotaoFechar: TBitBtn
    Left = 353
    Top = 121
    Width = 100
    Height = 50
    Caption = '&Fechar'
    TabOrder = 12
    Kind = bkClose
  end
  object DBComboboxEstadoSocio: TDBComboBox
    Left = 273
    Top = 137
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
end
