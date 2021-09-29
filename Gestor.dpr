program Gestor;

uses
  Vcl.Forms,
  Winapi.Windows,
  Principal in 'Principal.pas' {Form_Gestor},
  Data.Module.Conexao in 'Data.Module.Conexao.pas' {DataModuleConexao: TDataModule},
  Login in 'Login.pas' {Form_Login},
  Utils in 'Utils.pas';

{$R *.res}

var
	tmp: Integer;
begin
	if (WinIsOpen(tmp, 'Gestor')) then
  begin
    if (tmp <> 0) then
			CloseHandle(tmp);
		Halt;
  end;

  Application.Initialize;
	 Application.Title := 'Gestor';
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModuleConexao, DataModuleConexao);
  Application.CreateForm(TForm_Gestor, Form_Gestor);
  Application.Run;
end.
