object Form1: TForm1
  Left = 192
  Top = 125
  Width = 408
  Height = 376
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
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Test Check Box'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 184
    Width = 145
    Height = 105
    Caption = #47928#51088' '#49440#53469
    TabOrder = 4
    object RadioButton1: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = #45824#47928#51088' '#47784#46300
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 48
      Width = 113
      Height = 17
      Caption = #49548#47928#51088' '#47784#46300
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 16
      Top = 72
      Width = 113
      Height = 17
      Caption = #54844#54633' '#47784#46300
      TabOrder = 2
      OnClick = RadioButton3Click
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 168
    Top = 112
    Width = 185
    Height = 177
    Caption = 'RadioGroup1'
    Items.Strings = (
      #48744#44053#49353
      #52488#47197#49353
      #51008#49353
      #45432#46976#49353
      #54028#46993#49353
      #55152#49353)
    TabOrder = 5
    OnClick = RadioGroup1Click
  end
end
