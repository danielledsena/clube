unit UnitConsultaMatriculas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitExclusaoMatriculas, DB, ADODB, StdCtrls, Buttons, Grids,
  DBGrids;

type
  TFormConsultaMatriculas = class(TFormExclusaoMatriculas)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaMatriculas: TFormConsultaMatriculas;

implementation

{$R *.dfm}

end.
