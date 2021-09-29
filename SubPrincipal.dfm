object Form_Subordinado: TForm_Subordinado
  Left = 0
  Top = 0
  Caption = 'Subordinado'
  ClientHeight = 436
  ClientWidth = 1060
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 25
  object LabeledEdit1: TLabeledEdit
    Left = 112
    Top = 48
    Width = 857
    Height = 33
    EditLabel.Width = 114
    EditLabel.Height = 25
    EditLabel.Caption = 'ParamStr(0)'
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 112
    Top = 120
    Width = 681
    Height = 33
    EditLabel.Width = 114
    EditLabel.Height = 25
    EditLabel.Caption = 'ParamStr(1)'
    TabOrder = 1
  end
  object LabeledEdit3: TLabeledEdit
    Left = 112
    Top = 192
    Width = 681
    Height = 33
    EditLabel.Width = 114
    EditLabel.Height = 25
    EditLabel.Caption = 'ParamStr(2)'
    TabOrder = 2
  end
  object LabeledEdit4: TLabeledEdit
    Left = 112
    Top = 261
    Width = 681
    Height = 33
    EditLabel.Width = 114
    EditLabel.Height = 25
    EditLabel.Caption = 'ParamStr(3)'
    TabOrder = 3
  end
  object LabeledEdit5: TLabeledEdit
    Left = 112
    Top = 333
    Width = 681
    Height = 33
    EditLabel.Width = 114
    EditLabel.Height = 25
    EditLabel.Caption = 'ParamStr(4)'
    TabOrder = 4
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 400
    Width = 1060
    Height = 36
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
end
