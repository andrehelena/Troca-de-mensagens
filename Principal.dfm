object Form_Gestor: TForm_Gestor
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Gestor'
  ClientHeight = 524
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 25
  object Button_Executor: TButton
    Left = 518
    Top = 184
    Width = 107
    Height = 49
    Caption = 'Executar'
    TabOrder = 0
    OnClick = Button_ExecutorClick
  end
  object LabeledEdit_Usuario: TLabeledEdit
    Left = 240
    Top = 167
    Width = 273
    Height = 33
    EditLabel.Width = 114
    EditLabel.Height = 25
    EditLabel.Caption = 'ParamStr(1)'
    TabOrder = 1
  end
  object LabeledEdit_Senha: TLabeledEdit
    Left = 239
    Top = 239
    Width = 273
    Height = 33
    EditLabel.Width = 114
    EditLabel.Height = 25
    EditLabel.Caption = 'ParamStr(2)'
    TabOrder = 2
  end
end
