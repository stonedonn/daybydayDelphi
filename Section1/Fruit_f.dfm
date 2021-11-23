object Form1: TForm1
  Left = 192
  Top = 125
  Width = 521
  Height = 360
  Caption = 'My First Program'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lFruit: TLabel
    Left = 232
    Top = 96
    Width = 50
    Height = 32
    Caption = 'Fruit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnApple: TButton
    Left = 144
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Apple'
    TabOrder = 0
    OnClick = btnAppleClick
  end
  object btnOrange: TButton
    Left = 296
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Orange'
    TabOrder = 1
    OnClick = btnOrangeClick
  end
end
