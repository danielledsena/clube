unit UnitCadastroSocios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, Buttons;

type
  TFormCadastraSocios = class(TForm)
    Label1: TLabel;
    DBEditCodigoSocio: TDBEdit;
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
    DBEditNomeSocio: TDBEdit;
    DBEditSobrenomeSocio: TDBEdit;
    DBEditEnderecoSocio: TDBEdit;
    DBEditComplementoSocio: TDBEdit;
    DBEditCidadeSocio: TDBEdit;
    DBEditBairroSocio: TDBEdit;
    DBEditCEPSocio: TDBEdit;
    DBEditTelefoneSocio: TDBEdit;
    DBEditCPFSocio: TDBEdit;
    BotaoCadastrar: TBitBtn;
    BotaoFechar: TBitBtn;
    DBComboboxEstadoSocio: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraSocios: TFormCadastraSocios;

implementation

uses UnitDados;

{$R *.dfm}

procedure TFormCadastraSocios.FormShow(Sender: TObject);
begin
  DBEditCodigoSocio.SetFocus;
  Dados.ADOTableSocios.Open;
  Dados.ADOTableSocios.Append;
end;

procedure TFormCadastraSocios.BotaoCadastrarClick(Sender: TObject);
begin
  Dados.ADOTableSocios.Post;
  Dados.ADOTableSocios.Append;
  DBEditCodigoSocio.SetFocus;
end;

procedure TFormCadastraSocios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Dados.ADOTableSocios.Delete;
end;

end.
