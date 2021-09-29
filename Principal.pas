unit Principal;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.StdCtrls,
	Vcl.ExtCtrls,
  Winapi.ShellAPI, Utils;

type
	TForm_Gestor = class(TForm)
		Button_Executor : TButton;
    LabeledEdit_Usuario: TLabeledEdit;
    LabeledEdit_Senha: TLabeledEdit;
		procedure Button_ExecutorClick(Sender : TObject);
    procedure FormShow(Sender: TObject);
		private
			//userTMP: TUser;
		public
			{ Public declarations }
	end;

var
	Form_Gestor : TForm_Gestor;

implementation

uses
  Login;

{$R *.dfm}

procedure TForm_Gestor.Button_ExecutorClick(Sender : TObject);
begin
	ShellExecute(Application.Handle,
  	'open',
    Pchar(ExtractFilePath(Application.ExeName)+'Subordinado.exe'),
    pchar(varGlobalUser.Usuario +' '+varGlobalUser.Senha),
    '.',
    SW_SHOWNORMAL);
end;

procedure TForm_Gestor.FormShow(Sender: TObject);
begin
	if not showLogin(varGlobalUser) then
  	Close
  else
  begin
		LabeledEdit_Usuario.Text := varGlobalUser.Usuario;
		LabeledEdit_Senha.Text := varGlobalUser.Senha;
  end;
end;

end.
