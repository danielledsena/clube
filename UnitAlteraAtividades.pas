unit UnitAlteraAtividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls;

type
  TFormAlteraAtividades = class(TForm)
    Label1: TLabel;
    DBEditCodigoAtividade: TDBEdit;
    Label2: TLabel;
    DBEditNomeAtividade: TDBEdit;
    Label3: TLabel;
    DBEditValorAtividade: TDBEdit;
    BotaoFechar: TBitBtn;
    EditPesquisa: TEdit;
    Label4: TLabel;
    DBNavigatorAtividades: TDBNavigator;
    procedure EditPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlteraAtividades: TFormAlteraAtividades;

implementation

uses UnitDados;

{$R *.dfm}

procedure TFormAlteraAtividades.EditPesquisaChange(Sender: TObject);
begin
  Dados.ADOTableAtividades.Locate('NOME',EditPesquisa.Text,[loPartialKey,LocaseInsensitive]);
end;

procedure TFormAlteraAtividades.FormShow(Sender: TObject);
begin
  Dados.ADOTableAtividades.Open;
  EditPesquisa.Clear;
end;

end.
