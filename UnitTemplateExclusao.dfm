object FormExclusao: TFormExclusao
  Left = 333
  Top = 237
  Width = 493
  Height = 320
  Caption = 'Exclus'#227'o de '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 209
    Width = 190
    Height = 13
    Caption = 'DIGITE O NOME A SER PESQUISADO'
  end
  object DBGrid1: TDBGrid
    Left = 36
    Top = 41
    Width = 409
    Height = 145
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 236
    Top = 201
    Width = 100
    Height = 50
    Caption = '&Excluir'
    TabOrder = 1
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
      03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
      33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
      0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
      3333333337FFF7F3333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object BotaoFechar: TBitBtn
    Left = 348
    Top = 201
    Width = 100
    Height = 50
    Caption = '&Fechar'
    TabOrder = 2
    Kind = bkClose
  end
  object EditPesquisa: TEdit
    Left = 36
    Top = 225
    Width = 193
    Height = 21
    TabOrder = 3
  end
end
