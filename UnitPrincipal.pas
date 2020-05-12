unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus;

type
  TFormPrincipal = class(TForm)
    Logotipo: TImage;
    Label1: TLabel;
    MenuPrincipal: TMainMenu;
    MenuSistema: TMenuItem;
    MenuSocios: TMenuItem;
    MenuAtividades: TMenuItem;
    MenuMatricula: TMenuItem;
    MenuRelatorios: TMenuItem;
    MenuHelp: TMenuItem;
    SistemaBackup: TMenuItem;
    SistemaRestaurar: TMenuItem;
    SistemaFinalizar: TMenuItem;
    SociosCadastro: TMenuItem;
    SociosAlteracao: TMenuItem;
    SocioExclusao: TMenuItem;
    SocioConsulta: TMenuItem;
    AtividadesCadastro: TMenuItem;
    AtividadesAlteracao: TMenuItem;
    AtividadesExclusao: TMenuItem;
    AtividadesConsulta: TMenuItem;
    MatriculasCadastro: TMenuItem;
    MatriculasExclusao: TMenuItem;
    MatriculasConsulta: TMenuItem;
    RelatorioSocios: TMenuItem;
    RelatoriosAtividades: TMenuItem;
    RelatoriosMatriculas: TMenuItem;
    HelpTopicos: TMenuItem;
    HelpSobre: TMenuItem;
    PopupPrincipal: TPopupMenu;
    PopupSistema: TMenuItem;
    PopupSocios: TMenuItem;
    PopupAtividades: TMenuItem;
    PopupMatriculas: TMenuItem;
    PopupRelatorios: TMenuItem;
    PopupHelp: TMenuItem;
    PopupSistemaBackup: TMenuItem;
    PopupSistemaRestaurar: TMenuItem;
    Separador: TMenuItem;
    PopupSistemaFinalizar: TMenuItem;
    PopupSociosCadastro: TMenuItem;
    PopupSociosAlteracao: TMenuItem;
    PopupSocioExclusao: TMenuItem;
    PopupSocioConsulta: TMenuItem;
    PopupAtividadesCadastro: TMenuItem;
    PopupAtividadesAlteracao: TMenuItem;
    PopupAtividadesExclusao: TMenuItem;
    PopupAtividadesConsulta: TMenuItem;
    PopupMatriculasCadastro: TMenuItem;
    PopupMatriculasExclusao: TMenuItem;
    PopupMatriculasConsulta: TMenuItem;
    PopupRelatoriosSocios: TMenuItem;
    PopupRelatoriosAtividades: TMenuItem;
    PopupRelatoriosMatriculas: TMenuItem;
    PopupHelpTopicos: TMenuItem;
    PopupHelpSobre: TMenuItem;
    procedure SistemaFinalizarClick(Sender: TObject);
    procedure HelpSobreClick(Sender: TObject);
    procedure SociosCadastroClick(Sender: TObject);
    procedure AtividadesCadastroClick(Sender: TObject);
    procedure MatriculasCadastroClick(Sender: TObject);
    procedure SociosAlteracaoClick(Sender: TObject);
    procedure AtividadesAlteracaoClick(Sender: TObject);
    procedure SocioExclusaoClick(Sender: TObject);
    procedure AtividadesExclusaoClick(Sender: TObject);
    procedure MatriculasExclusaoClick(Sender: TObject);
    procedure SocioConsultaClick(Sender: TObject);
    procedure AtividadesConsultaClick(Sender: TObject);
    procedure MatriculasConsultaClick(Sender: TObject);
    procedure SistemaBackupClick(Sender: TObject);
    procedure PopupSistemaBackupClick(Sender: TObject);
    procedure SistemaRestaurarClick(Sender: TObject);
    procedure PopupSistemaRestaurarClick(Sender: TObject);
    procedure PopupSociosCadastroClick(Sender: TObject);
    procedure PopupSociosAlteracaoClick(Sender: TObject);
    procedure PopupSocioExclusaoClick(Sender: TObject);
    procedure PopupSocioConsultaClick(Sender: TObject);
    procedure PopupAtividadesCadastroClick(Sender: TObject);
    procedure PopupAtividadesAlteracaoClick(Sender: TObject);
    procedure PopupAtividadesExclusaoClick(Sender: TObject);
    procedure PopupAtividadesConsultaClick(Sender: TObject);
    procedure PopupMatriculasCadastroClick(Sender: TObject);
    procedure PopupMatriculasExclusaoClick(Sender: TObject);
    procedure PopupMatriculasConsultaClick(Sender: TObject);
    procedure RelatorioSociosClick(Sender: TObject);
    procedure PopupRelatoriosSociosClick(Sender: TObject);
    procedure RelatoriosAtividadesClick(Sender: TObject);
    procedure PopupRelatoriosAtividadesClick(Sender: TObject);
    procedure RelatoriosMatriculasClick(Sender: TObject);
    procedure PopupRelatoriosMatriculasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses UnitSobre, UnitCadastroSocios, UnitCadastraAtividades,
  UnitCadastraMatriculas, UnitAlteraClientes, UnitAlteraAtividades,
  UnitExlusaoSocios, UnitExclusaoAtividades, UnitExclusaoMatriculas,
  UnitConsultaSocios, UnitConsultaAtividades, UnitConsultaMatriculas,
  UnitBackup, UnitRestaura, UnitRelatorios;

{$R *.dfm}

procedure TFormPrincipal.SistemaFinalizarClick(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TFormPrincipal.HelpSobreClick(Sender: TObject);
begin
  FormSobre.ShowModal;
end;

procedure TFormPrincipal.SociosCadastroClick(Sender: TObject);
begin
 FormCadastraSocios.Showmodal;
end;

procedure TFormPrincipal.AtividadesCadastroClick(Sender: TObject);
begin
  FormCadastraAtividades.ShowModal;
end;

procedure TFormPrincipal.MatriculasCadastroClick(Sender: TObject);
begin
  FormCadastraMatriculas.ShowModal;
end;

procedure TFormPrincipal.SociosAlteracaoClick(Sender: TObject);
begin
  FormAlteraSocios.ShowModal;
end;

procedure TFormPrincipal.AtividadesAlteracaoClick(Sender: TObject);
begin
  FormAlteraAtividades.ShowModal;
end;

procedure TFormPrincipal.SocioExclusaoClick(Sender: TObject);
begin
  FormExclusaoSocios.ShowModal;
end;

procedure TFormPrincipal.AtividadesExclusaoClick(Sender: TObject);
begin
  FormExclusaoAtividades.ShowModal;
end;

procedure TFormPrincipal.MatriculasExclusaoClick(Sender: TObject);
begin
  FormExclusaoMatriculas.ShowModal;
end;

procedure TFormPrincipal.SocioConsultaClick(Sender: TObject);
begin
  FormConsultaSocios.ShowModal;
end;

procedure TFormPrincipal.AtividadesConsultaClick(Sender: TObject);
begin
  FormConsultaAtividades.ShowModal;
end;

procedure TFormPrincipal.MatriculasConsultaClick(Sender: TObject);
begin
  FormConsultaMatriculas.ShowModal;
end;

procedure TFormPrincipal.SistemaBackupClick(Sender: TObject);
begin
  FormBackup.ShowModal;
end;

procedure TFormPrincipal.PopupSistemaBackupClick(Sender: TObject);
begin
  FormBackup.ShowModal;
end;

procedure TFormPrincipal.SistemaRestaurarClick(Sender: TObject);
begin
  FormRestaura.ShowModal;
end;

procedure TFormPrincipal.PopupSistemaRestaurarClick(Sender: TObject);
begin
  FormRestaura.ShowModal;
end;

procedure TFormPrincipal.PopupSociosCadastroClick(Sender: TObject);
begin
  FormCadastraSocios.Showmodal;
end;

procedure TFormPrincipal.PopupSociosAlteracaoClick(Sender: TObject);
begin
  FormAlteraSocios.ShowModal;
end;

procedure TFormPrincipal.PopupSocioExclusaoClick(Sender: TObject);
begin
  FormExclusaoSocios.ShowModal;
end;

procedure TFormPrincipal.PopupSocioConsultaClick(Sender: TObject);
begin
  FormConsultaSocios.ShowModal;
end;

procedure TFormPrincipal.PopupAtividadesCadastroClick(Sender: TObject);
begin
  FormCadastraAtividades.ShowModal;
end;

procedure TFormPrincipal.PopupAtividadesAlteracaoClick(Sender: TObject);
begin
  FormAlteraAtividades.ShowModal;
end;

procedure TFormPrincipal.PopupAtividadesExclusaoClick(Sender: TObject);
begin
  FormExclusaoAtividades.ShowModal;
end;

procedure TFormPrincipal.PopupAtividadesConsultaClick(Sender: TObject);
begin
  FormConsultaAtividades.ShowModal;
end;

procedure TFormPrincipal.PopupMatriculasCadastroClick(Sender: TObject);
begin
  FormCadastraMatriculas.ShowModal;
end;

procedure TFormPrincipal.PopupMatriculasExclusaoClick(Sender: TObject);
begin
  FormExclusaoMatriculas.ShowModal;
end;

procedure TFormPrincipal.PopupMatriculasConsultaClick(Sender: TObject);
begin
  FormConsultaMatriculas.ShowModal;
end;

procedure TFormPrincipal.RelatorioSociosClick(Sender: TObject);
begin
  Relatorios.RvClube.SelectReport('RelatSocios',False);
  Relatorios.RvClube.Execute;
end;

procedure TFormPrincipal.PopupRelatoriosSociosClick(Sender: TObject);
begin
  Relatorios.RvClube.SelectReport('RelatSocios',False);
  Relatorios.RvClube.Execute;
end;

procedure TFormPrincipal.RelatoriosAtividadesClick(Sender: TObject);
begin
  Relatorios.RvClube.SelectReport('RelatAtividades',False);
  Relatorios.RvClube.Execute;
end;

procedure TFormPrincipal.PopupRelatoriosAtividadesClick(Sender: TObject);
begin
  Relatorios.RvClube.SelectReport('RelatAtividades',False);
  Relatorios.RvClube.Execute;
end;

procedure TFormPrincipal.RelatoriosMatriculasClick(Sender: TObject);
begin
  Relatorios.RvClube.SelectReport('RelatMatrículas',False);
  Relatorios.RvClube.Execute;
end;

procedure TFormPrincipal.PopupRelatoriosMatriculasClick(Sender: TObject);
begin
  Relatorios.RvClube.SelectReport('RelatMatrículas',False);
  Relatorios.RvClube.Execute;
end;

end.
