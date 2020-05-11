object FormCadastraMatriculas: TFormCadastraMatriculas
  Left = 445
  Top = 276
  Width = 428
  Height = 189
  Caption = 'Cadastro de Matr'#237'culas'
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
    Left = 29
    Top = 32
    Width = 27
    Height = 13
    Caption = 'S'#243'cio'
  end
  object Label2: TLabel
    Left = 245
    Top = 32
    Width = 44
    Height = 13
    Caption = 'Atividade'
  end
  object DBLookupComboboxSocio: TDBLookupComboBox
    Left = 29
    Top = 48
    Width = 201
    Height = 21
    DataField = 'SOCIO'
    DataSource = Dados.DataSourceMatriculas
    KeyField = 'CODIGOSOCIO'
    ListField = 'NomeCompleto'
    ListSource = Dados.DataSourceSocios
    TabOrder = 0
  end
  object DBLookupComboboxAtividade: TDBLookupComboBox
    Left = 245
    Top = 48
    Width = 145
    Height = 21
    DataField = 'ATIVIDADE'
    DataSource = Dados.DataSourceMatriculas
    KeyField = 'CODIGOATIVIDADE'
    ListField = 'NOME'
    ListSource = Dados.DataSourceAtividades
    TabOrder = 1
  end
  object BotaoCadastrar: TBitBtn
    Left = 109
    Top = 80
    Width = 100
    Height = 50
    Caption = '&Cadastrar'
    TabOrder = 2
    OnClick = BotaoCadastrarClick
    Kind = bkOK
  end
  object BotaoFechar: TBitBtn
    Left = 221
    Top = 80
    Width = 100
    Height = 50
    Caption = '&Fechar'
    TabOrder = 3
    Kind = bkClose
  end
end
