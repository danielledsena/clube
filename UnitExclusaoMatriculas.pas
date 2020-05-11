unit UnitExclusaoMatriculas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TFormExclusaoMatriculas = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BotaoFechar: TBitBtn;
    EditPesquisa: TEdit;
    Label1: TLabel;
    ADOQueryConsulta: TADOQuery;
    DataSourceConsulta: TDataSource;
    ADOTableExclusao: TADOTable;
    ADOTableExclusaoSOCIO: TIntegerField;
    ADOTableExclusaoATIVIDADE: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure EditPesquisaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExclusaoMatriculas: TFormExclusaoMatriculas;

implementation

uses UnitDados;

{$R *.dfm}

procedure TFormExclusaoMatriculas.FormShow(Sender: TObject);
begin
  ADOQueryConsulta.Open;
  ADOTableExclusao.Open;
  EditPesquisa.Clear;
end;

procedure TFormExclusaoMatriculas.EditPesquisaChange(Sender: TObject);
begin
  ADOQueryConsulta.Locate('Nome',EditPesquisa.Text,[loPartialKey,LocaseInsensitive]);
end;

procedure TFormExclusaoMatriculas.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Confirma a Exclusão do Registro?',mtConfirmation,mbOkCancel,0) = mrOk
  then
  begin
    ADOTableExclusao.Delete;
    ADOQueryConsulta.Close();
    ADOQueryConsulta.Open();
  end;
end;

end.
