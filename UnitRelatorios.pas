unit UnitRelatorios;

interface

uses
  SysUtils, Classes, RpDefine, RpRave, RpCon, RpConDS;

type
  TRelatorios = class(TDataModule)
    RvClube: TRvProject;
    RvDatasetConnectionSocios: TRvDataSetConnection;
    RvDatasetConnectionAtividades: TRvDataSetConnection;
    RvDatasetConnectionMatriculas: TRvDataSetConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Relatorios: TRelatorios;

implementation

uses UnitDados, UnitExclusaoMatriculas;

{$R *.dfm}

end.
