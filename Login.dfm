object Form_Login: TForm_Login
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login do Sistema'
  ClientHeight = 187
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 25
  object Label_User: TLabel
    Left = 32
    Top = 14
    Width = 70
    Height = 25
    Caption = 'Usu'#225'rio'
  end
  object Label_Pass: TLabel
    Left = 32
    Top = 110
    Width = 58
    Height = 25
    Caption = 'Senha'
  end
  object ComboBox_User: TComboBox
    Left = 32
    Top = 45
    Width = 305
    Height = 33
    TabOrder = 0
  end
  object Edit_Pass: TEdit
    Left = 32
    Top = 144
    Width = 305
    Height = 33
    PasswordChar = '*'
    TabOrder = 1
    OnExit = Edit_PassExit
  end
end
