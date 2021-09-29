program Subordinado;

uses
  Vcl.Forms,
  Winapi.Windows,
  Controls,
  SysUtils,
	Utils in 'Utils.pas',
  SubPrincipal in 'SubPrincipal.pas' {Form_Subordinado};


{$R *.res}

var
	tmp: Integer;
begin
	if (WinIsOpen(tmp, 'Subordinado_')) then
  begin
    if (tmp <> 0) then
			CloseHandle(tmp);
		Halt;
  end;

  Application.Initialize;
  Application.Title := 'Subordinado';
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Subordinado, Form_Subordinado);
  Application.Run;
end.
