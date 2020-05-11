unit UnitRestaura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IdGlobal;

type
  TFormRestaura = class(TForm)
    Label1: TLabel;
    EditOrigem: TEdit;
    BotaoCopiar: TBitBtn;
    BotaoFechar: TBitBtn;
    procedure BotaoCopiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRestaura: TFormRestaura;

implementation

{$R *.dfm}

procedure TFormRestaura.BotaoCopiarClick(Sender: TObject);
var
  origem, destino: string;
begin
  origem := Editorigem.Text;
  destino := ExtractFilePath(Application.Exename)+'C:\DB\Clube.gdb';
  if FileExists(destino) then DeleteFile(destino);
  if (CopyFileTo(origem,destino))
  then
    ShowMessage('Recuperação Efetuada com Sucesso')
  else
    ShowMessage('Cópia Não Efetuada');
end;

end.
