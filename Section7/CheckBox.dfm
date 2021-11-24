object Form1: TForm1
  Left = 192
  Top = 125
  Width = 361
  Height = 361
  Caption = 'Check Box Exam'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CheckBox1: TCheckBox
    Left = 56
    Top = 80
    Width = 97
    Height = 17
    Caption = '3'#52264#50896' '#48372#51076
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 56
    Top = 120
    Width = 97
    Height = 17
    Caption = #48372#51076
    TabOrder = 1
    OnClick = CheckBox2Click
  end
  object CheckBox3: TCheckBox
    Left = 56
    Top = 160
    Width = 97
    Height = 17
    Caption = #51069#44592' '#51204#50857
    TabOrder = 2
    OnClick = CheckBox3Click
  end
  object Edit1: TEdit
    Left = 200
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Test Check Box'
  end
end
