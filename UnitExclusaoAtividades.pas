unit UnitExclusaoAtividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TFormExclusaoAtividades = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BotaoFechar: TBitBtn;
    EditPesquisa: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EditPesquisaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExclusaoAtividades: TFormExclusaoAtividades;

implementation

uses UnitDados;

{$R *.dfm}

procedure TFormExclusaoAtividades.FormShow(Sender: TObject);
begin
  Dados.ADOTableAtividades.Open;
  EditPesquisa.Clear;
end;

procedure TFormExclusaoAtividades.EditPesquisaChange(Sender: TObject);
begin
  Dados.ADOTableAtividades.Locate('NOME',EditPesquisa.Text,[loPartialKey,LocaseInsensitive]);
end;

procedure TFormExclusaoAtividades.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Confirma a Exclusão do Registro?',mtConfirmation,mbOkCancel,0) = mrOk
  then Dados.ADOTableAtividades.Delete;
end;

end.
