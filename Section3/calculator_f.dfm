object calculator: Tcalculator
  Left = 575
  Top = 217
  Width = 395
  Height = 402
  Caption = 'calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lPlus: TLabel
    Left = 80
    Top = 80
    Width = 6
    Height = 13
    Caption = '+'
  end
  object eNum1: TEdit
    Left = 128
    Top = 56
    Width = 121
    Height = 21
    Hint = #45908#54624' '#49707#51088#47484' '#51077#47141#54616#49464#50836'.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object eNum2: TEdit
    Left = 128
    Top = 104
    Width = 121
    Height = 21
    Hint = #45908#54644#51656' '#49707#51088#47484' '#51077#47141#54616#49464#50836
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object eResult: TEdit
    Left = 128
    Top = 216
    Width = 121
    Height = 21
    Hint = #44228#49328' '#44208#44284#47484' '#48372#50668#51469#45768#45796
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object btnEqual: TButton
    Left = 152
    Top = 160
    Width = 75
    Height = 25
    Hint = #49707#51088#47484' '#51077#47141#54620' '#54980' '#44208#44284#47484' '#48152#54872#54633#45768#45796'.'
    Caption = '='
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnEqualClick
  end
end
