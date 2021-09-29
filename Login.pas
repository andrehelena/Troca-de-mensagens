unit Login;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
	Vcl.StdCtrls,
	FireDAC.Stan.Intf,
	FireDAC.Stan.Option,
	FireDAC.Stan.Param,
	FireDAC.Stan.Error,
	FireDAC.DatS,
	FireDAC.Phys.Intf,
	FireDAC.DApt.Intf,
	FireDAC.Stan.Async,
	FireDAC.DApt,
	Data.DB,
	FireDAC.Comp.DataSet,
	FireDAC.Comp.Client,
	Utils;

type
	TForm_Login = class(TForm)
		ComboBox_User : TComboBox;
		Edit_Pass : TEdit;
		Label_User : TLabel;
		Label_Pass : TLabel;
		procedure FormCreate(Sender : TObject);
		procedure Edit_PassExit(Sender : TObject);
		procedure FormActivate(Sender : TObject);
		private
			fdtmp : TFDQuery;
		public
			{ Public declarations }
	end;

var
	Form_Login : TForm_Login;

function showLogin(var recUser : TUser) : Boolean;

implementation

uses
	Data.Module.Conexao,
	System.SysUtils;

{$R *.dfm}


procedure TForm_Login.Edit_PassExit(Sender : TObject);
begin
	fdtmp.First;
	while not fdtmp.Eof do
	begin
		if (Edit_Pass.Text = fdtmp.FieldByName('senha').AsString) then
			ModalResult := mrOk;
		fdtmp.Next;
	end;
	if ModalResult <> mrOk then
	begin
		ShowMessage('Senha inválida!');
		Edit_Pass.SetFocus;
		Edit_Pass.SelectAll;

	end;
end;

procedure TForm_Login.FormActivate(Sender : TObject);
begin
	SetWindowPos(Self.Handle, HWND_TOPMOST, Self.Left, Self.Top, Self.Width, Self.Height, 0)
end;

procedure TForm_Login.FormCreate(Sender : TObject);
var
	Region : Hrgn;
begin
	Region := CreateRoundRectRgn(0, 0, Width, Height, 25, 25);
	SetWindowRgn(Handle, Region, true);

	fdtmp := TFDQuery.Create(nil);
	ExecutaSQL('SELECT login, nome, AES_DECRYPT(Senha2, "1234567890") AS senha FROM usuarios', fdtmp);
	fdtmp.First;
	while not fdtmp.Eof do
	begin
		ComboBox_User.Items.Add(fdtmp.FieldByName('Login').AsString);
		fdtmp.Next;
	end;

end;

function showLogin(var recUser : TUser) : Boolean;
begin
	Form_Login := TForm_Login.Create(Application);
	try
		if Form_Login.ShowModal = mrOk then
		begin
			Result          := true;
			recUser.Usuario := Form_Login.ComboBox_User.Text;
			recUser.Senha   := Form_Login.Edit_Pass.Text;
		end else
		begin
			Result          := False;
			recUser.Usuario := EmptyStr;
			recUser.Senha   := EmptyStr;
		end;
	finally
		FreeAndNil(Form_Login);
	end;
end;

end.
