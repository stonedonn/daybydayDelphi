object Form1: TForm1
  Left = 192
  Top = 125
  Width = 472
  Height = 362
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Animate1: TAnimate
    Left = 88
    Top = 104
    Width = 272
    Height = 60
    CommonAVI = aviFindComputer
    StopFrame = 1
  end
  object Button1: TButton
    Left = 88
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 288
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
end
