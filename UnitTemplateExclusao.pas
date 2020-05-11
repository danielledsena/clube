unit UnitTemplateExclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFormExclusao = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BotaoFechar: TBitBtn;
    EditPesquisa: TEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExclusao: TFormExclusao;

implementation

uses UnitDados;

{$R *.dfm}

end.
