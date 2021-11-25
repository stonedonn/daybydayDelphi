object Form1: TForm1
  Left = 306
  Top = 158
  Width = 468
  Height = 323
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnRed: TButton
    Left = 344
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Red'
    TabOrder = 0
    OnClick = ChangeColor
  end
  object btnGreen: TButton
    Left = 344
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Green'
    TabOrder = 1
    OnClick = ChangeColor
  end
  object btnBlue: TButton
    Left = 344
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Blue'
    TabOrder = 2
    OnClick = ChangeColor
  end
  object MainMenu1: TMainMenu
    Left = 96
    Top = 144
    object Color1: TMenuItem
      Caption = 'Color'
      object Red1: TMenuItem
        Caption = 'Red'
        OnClick = ChangeColor
      end
      object Green1: TMenuItem
        Caption = 'Green'
        OnClick = ChangeColor
      end
      object Blue1: TMenuItem
        Caption = 'Blue'
        OnClick = ChangeColor
      end
    end
  end
end
