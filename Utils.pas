unit Utils;

interface

uses
	Winapi.Windows,
	Winapi.ShellAPI,
	Winapi.Messages,
	System.Classes,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Stdctrls,
	System.SysUtils,
	System.StrUtils,
	Vcl.Graphics,
	Data.DB,
	Vcl.DBCtrls,
	System.Variants,
	Datasnap.DBClient,
	System.MaskUtils,
	Vcl.Grids,
	Vcl.DBGrids,
	System.IniFiles,
	System.DateUtils,
	System.Win.Registry,
	Vcl.Dialogs,
	Vcl.ComCtrls,
	Vcl.ExtCtrls,
	Vcl.Printers,
	System.Math,
	IdStackWindows,
	System.Generics.Collections,
	IdHashMessageDigest,
	idHash,
	IdStack;



const
	WM_RESTOREAPPL = WM_APP + 400;

type
	TUser = record
		Usuario : String;
		Senha: String;
	end;

var
  varGlobalUser: TUSer;

function WinIsOpen(var Mtx : integer; Name : string; const vsUnit : String = '') : Boolean;

implementation


function WinIsOpen(var Mtx : integer; Name : string; const vsUnit : String = '') : Boolean;
var
	H : HWnd;

begin
	Mtx := CreateMutEx(nil, true, pchar(Name));

	if GetLastError = ERROR_ALREADY_EXISTS then
		Result := true
	else
		Result := False;

	if vsUnit = '' then
	begin
		H := FindWindow(('TForm_Subordinado'), pwidechar(Name));

		if (H <> 0) then
			SendMessage(H, WM_RESTOREAPPL, 0, 0);
	end;

	if vsUnit <> '' then
	begin
		H := FindWindow(pchar(vsUnit), pchar(Name));

		if (H <> 0) then
			SendMessage(H, WM_RESTOREAPPL, 0, 0);
	end;

end;

end.
