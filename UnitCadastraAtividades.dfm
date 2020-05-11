object FormCadastraAtividades: TFormCadastraAtividades
  Left = 392
  Top = 253
  Width = 302
  Height = 200
  Caption = 'Cadastro de Atividades'
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
    Left = 26
    Top = 33
    Width = 42
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = DBEditCodigoAtividade
  end
  object Label2: TLabel
    Left = 74
    Top = 33
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEditNomeAtividade
  end
  object Label3: TLabel
    Left = 218
    Top = 33
    Width = 36
    Height = 13
    Caption = 'VALOR'
    FocusControl = DBEditValorAtividade
  end
  object DBEditCodigoAtividade: TDBEdit
    Left = 26
    Top = 49
    Width = 41
    Height = 21
    DataField = 'CODIGOATIVIDADE'
    DataSource = Dados.DataSourceAtividades
    TabOrder = 0
  end
  object DBEditNomeAtividade: TDBEdit
    Left = 74
    Top = 49
    Width = 137
    Height = 21
    DataField = 'NOME'
    DataSource = Dados.DataSourceAtividades
    TabOrder = 1
  end
  object DBEditValorAtividade: TDBEdit
    Left = 218
    Top = 49
    Width = 49
    Height = 21
    DataField = 'VALOR'
    DataSource = Dados.DataSourceAtividades
    TabOrder = 2
  end
  object BotaoCadastrar: TBitBtn
    Left = 42
    Top = 89
    Width = 100
    Height = 50
    Caption = '&Cadastrar'
    TabOrder = 3
    OnClick = BotaoCadastrarClick
    Kind = bkOK
  end
  object BitBtn1: TBitBtn
    Left = 146
    Top = 89
    Width = 100
    Height = 50
    Caption = '&Fechar'
    TabOrder = 4
    Kind = bkClose
  end
end
