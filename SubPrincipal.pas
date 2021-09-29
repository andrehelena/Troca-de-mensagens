unit SubPrincipal;

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
	Utils, Vcl.ComCtrls;

type
	TForm_Subordinado = class(TForm)
		LabeledEdit1 : TLabeledEdit;
		LabeledEdit2 : TLabeledEdit;
		LabeledEdit3 : TLabeledEdit;
		LabeledEdit4 : TLabeledEdit;
		LabeledEdit5 : TLabeledEdit;
    StatusBar1: TStatusBar;
		procedure FormShow(Sender : TObject);
		private

		public
			{ Public declarations }
	end;

var
	Form_Subordinado : TForm_Subordinado;

implementation


{$R *.dfm}


procedure TForm_Subordinado.FormShow(Sender : TObject);
begin
	varGlobalUser.Usuario := ParamStr(1);
	varGlobalUser.Senha   := ParamStr(2);
	LabeledEdit1.Text     := ParamStr(0);
	LabeledEdit2.Text     := varGlobalUser.Usuario;//ParamStr(1);
	LabeledEdit3.Text     := varGlobalUser.Senha;//ParamStr(2);
	LabeledEdit4.Text     := ParamStr(3);
	LabeledEdit5.Text     := ParamStr(4);
end;

end.
