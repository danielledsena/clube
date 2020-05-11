unit UnitExlusaoSocios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TFormExclusaoSocios = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BotaoFechar: TBitBtn;
    EditPesquisa: TEdit;
    Label1: TLabel;
    procedure EditPesquisaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExclusaoSocios: TFormExclusaoSocios;

implementation

uses UnitDados;

{$R *.dfm}

procedure TFormExclusaoSocios.EditPesquisaChange(Sender: TObject);
begin
  Dados.ADOTableSocios.Locate('NOME',EditPesquisa.Text,[loPartialKey,LocaseInsensitive]);
end;

procedure TFormExclusaoSocios.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Confirma a Exclusão do Registro?',mtConfirmation,mbOkCancel,0) = mrOk
  then Dados.ADOTableSocios.Delete;
end;

procedure TFormExclusaoSocios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Dados.ADOTableSocios.Open;
end;

end.
