unit UnitCadastraMatriculas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons;

type
  TFormCadastraMatriculas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboboxSocio: TDBLookupComboBox;
    DBLookupComboboxAtividade: TDBLookupComboBox;
    BotaoCadastrar: TBitBtn;
    BotaoFechar: TBitBtn;
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraMatriculas: TFormCadastraMatriculas;

implementation

uses UnitDados;

{$R *.dfm}

procedure TFormCadastraMatriculas.BotaoCadastrarClick(Sender: TObject);
begin
  try
    Dados.ADOTableMatriculas.Post;
    Dados.ADOTableMatriculas.Append;
  except
    ShowMessage('Este Sócio Já Foi Cadastrado Nesta Atividade');
  end;
DBLookupComboBoxSocio.SetFocus;

end;

procedure TFormCadastraMatriculas.FormShow(Sender: TObject);
begin
  Dados.ADOTableMatriculas.IndexFieldNames := 'SOCIO,ATIVIDADE';
  Dados.ADOTableMatriculas.Open;
  Dados.ADOTableMatriculas.Append;
end;

procedure TFormCadastraMatriculas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Dados.ADOTableMatriculas.Delete;
  Dados.ADOTableMatriculas.IndexFieldNames := 'SOCIO';
end;

end.
