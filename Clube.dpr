program Clube;

{%ToDo 'Clube.todo'}

uses
  Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitSobre in 'UnitSobre.pas' {FormSobre},
  UnitCadastroSocios in 'UnitCadastroSocios.pas' {FormCadastraSocios},
  UnitDados in 'UnitDados.pas' {Dados: TDataModule},
  UnitCadastraAtividades in 'UnitCadastraAtividades.pas' {FormCadastraAtividades},
  UnitCadastraMatriculas in 'UnitCadastraMatriculas.pas' {FormCadastraMatriculas},
  UnitAlteraClientes in 'UnitAlteraClientes.pas' {FormAlteraSocios},
  UnitAlteraAtividades in 'UnitAlteraAtividades.pas' {FormAlteraAtividades},
  UnitTemplateExclusao in 'UnitTemplateExclusao.pas' {FormExclusao},
  UnitExlusaoSocios in 'UnitExlusaoSocios.pas' {FormExclusaoSocios},
  UnitExclusaoAtividades in 'UnitExclusaoAtividades.pas' {FormExclusaoAtividades},
  UnitExclusaoMatriculas in 'UnitExclusaoMatriculas.pas' {FormExclusaoMatriculas},
  UnitConsultaSocios in 'UnitConsultaSocios.pas' {FormConsultaSocios},
  UnitConsultaAtividades in 'UnitConsultaAtividades.pas' {FormConsultaAtividades},
  UnitConsultaMatriculas in 'UnitConsultaMatriculas.pas' {FormConsultaMatriculas},
  UnitBackup in 'UnitBackup.pas' {FormBackup},
  UnitRestaura in 'UnitRestaura.pas' {FormRestaura},
  UnitRelatorios in 'UnitRelatorios.pas' {Relatorios: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormSobre, FormSobre);
  Application.CreateForm(TFormCadastraSocios, FormCadastraSocios);
  Application.CreateForm(TDados, Dados);
  Application.CreateForm(TFormCadastraAtividades, FormCadastraAtividades);
  Application.CreateForm(TFormCadastraMatriculas, FormCadastraMatriculas);
  Application.CreateForm(TFormAlteraSocios, FormAlteraSocios);
  Application.CreateForm(TFormAlteraAtividades, FormAlteraAtividades);
  Application.CreateForm(TFormExclusao, FormExclusao);
  Application.CreateForm(TFormExclusaoSocios, FormExclusaoSocios);
  Application.CreateForm(TFormExclusaoAtividades, FormExclusaoAtividades);
  Application.CreateForm(TFormExclusaoMatriculas, FormExclusaoMatriculas);
  Application.CreateForm(TFormConsultaSocios, FormConsultaSocios);
  Application.CreateForm(TFormConsultaAtividades, FormConsultaAtividades);
  Application.CreateForm(TFormConsultaMatriculas, FormConsultaMatriculas);
  Application.CreateForm(TFormBackup, FormBackup);
  Application.CreateForm(TFormRestaura, FormRestaura);
  Application.CreateForm(TRelatorios, Relatorios);
  Application.Run;
end.
