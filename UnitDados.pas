unit UnitDados;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDados = class(TDataModule)
    ADOConnectionClube: TADOConnection;
    ADOTableSocios: TADOTable;
    ADOTableSociosCODIGOSOCIO: TIntegerField;
    ADOTableSociosNOME: TStringField;
    ADOTableSociosSOBRENOME: TStringField;
    ADOTableSociosENDERECO: TStringField;
    ADOTableSociosCOMPLEMENTO: TStringField;
    ADOTableSociosBAIRRO: TStringField;
    ADOTableSociosCIDADE: TStringField;
    ADOTableSociosESTADO: TStringField;
    ADOTableSociosCEP: TStringField;
    ADOTableSociosTELEFONE: TStringField;
    ADOTableSociosCPF: TStringField;
    DataSourceSocios: TDataSource;
    ADOTableAtividades: TADOTable;
    DataSourceAtividades: TDataSource;
    DataSourceMatriculas: TDataSource;
    ADOTableMatriculas: TADOTable;
    ADOTableAtividadesCODIGOATIVIDADE: TIntegerField;
    ADOTableAtividadesNOME: TStringField;
    ADOTableAtividadesVALOR: TBCDField;
    ADOTableMatriculasSOCIO: TIntegerField;
    ADOTableMatriculasATIVIDADE: TIntegerField;
    ADOTableSociosNomeCompleto: TStringField;
    procedure ADOTableSociosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dados: TDados;

implementation

{$R *.dfm}

procedure TDados.ADOTableSociosCalcFields(DataSet: TDataSet);
begin
  ADOTableSociosNomeCompleto.AsString := ADOTableSociosNOME.AsString + ' ' + ADOTableSociosSOBRENOME.AsString;
end;

end.
