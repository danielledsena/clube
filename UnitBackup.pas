unit UnitBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IdGlobal;

type
  TFormBackup = class(TForm)
    Label1: TLabel;
    EditDestino: TEdit;
    BotaoCopiar: TBitBtn;
    BotaoFechar: TBitBtn;
    procedure BotaoCopiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBackup: TFormBackup;

implementation

{$R *.dfm}

procedure TFormBackup.BotaoCopiarClick(Sender: TObject);
var
  origem, destino: string;
begin
  origem := ExtractFilePath(Application.Exename)+'C:\DB\Clube.gdb';
  destino := EditDestino.Text;
  if FileExists(destino) then DeleteFile(destino);
  if (CopyFileTo(origem,destino))
  then
     ShowMessage('Backup Efetuado com Sucesso')
  else
     ShowMessage('Cópia Não Efetuada');
end;

end.
