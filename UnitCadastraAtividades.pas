unit UnitCadastraAtividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFormCadastraAtividades = class(TForm)
    Label1: TLabel;
    DBEditCodigoAtividade: TDBEdit;
    Label2: TLabel;
    DBEditNomeAtividade: TDBEdit;
    Label3: TLabel;
    DBEditValorAtividade: TDBEdit;
    BotaoCadastrar: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraAtividades: TFormCadastraAtividades;

implementation

uses UnitDados;

{$R *.dfm}

procedure TFormCadastraAtividades.BotaoCadastrarClick(Sender: TObject);
begin
  try
    Dados.ADOTableAtividades.Post;
    Dados.ADOTableAtividades.Append;
  except
    ShowMessage('Este Código Já Foi Cadastrado');
  end;
    DBEditCodigoAtividade.SetFocus;
end;

procedure TFormCadastraAtividades.FormShow(Sender: TObject);
begin
  Dados.ADOTableAtividades.IndexFieldNames := 'CODIGOATIVIDADE';
  DBEditCodigoAtividade.SetFocus;
  Dados.ADOTableAtividades.Open;
  Dados.ADOTableAtividades.Append;
end;

procedure TFormCadastraAtividades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Dados.ADOTableAtividades.Delete;
  Dados.ADOTableAtividades.IndexFieldNames := 'NOME';
end;

end.
