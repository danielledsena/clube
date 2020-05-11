unit UnitAlteraClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, Mask, ExtCtrls;

type
  TFormAlteraSocios = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEditCodigoSocio: TDBEdit;
    DBEditNomeSocio: TDBEdit;
    DBEditSobrenomeSocio: TDBEdit;
    DBEditEnderecoSocio: TDBEdit;
    DBEditComplementoSocio: TDBEdit;
    DBEditBairroSocio: TDBEdit;
    DBEditCidadeSocio: TDBEdit;
    DBComboboxEstadoSocio: TDBComboBox;
    DBEditCEPSocio: TDBEdit;
    DBEditTelefoneSocio: TDBEdit;
    DBEditCPFSocio: TDBEdit;
    BotaoFechar: TBitBtn;
    EditPesquisa: TEdit;
    Label12: TLabel;
    DBNavigatorSocios: TDBNavigator;
    procedure EditPesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlteraSocios: TFormAlteraSocios;

implementation

uses UnitDados;

{$R *.dfm}

procedure TFormAlteraSocios.EditPesquisaChange(Sender: TObject);
begin
  if (Trim(EditPesquisa.Text) <> '') then
  begin
    Dados.ADOTableSocios.Locate('NOME',EditPesquisa.Text,[loPartialKey,LocaseInsensitive]);
  end;
end;

procedure TFormAlteraSocios.FormShow(Sender: TObject);
begin
  Dados.ADOTableSocios.Open;
  EditPesquisa.Clear;
end;

end.
