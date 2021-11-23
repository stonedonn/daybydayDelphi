object ColorForm: TColorForm
  Left = 192
  Top = 124
  Width = 423
  Height = 293
  Caption = 'ColorForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnRed: TButton
    Left = 40
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Red'
    TabOrder = 0
    OnClick = btnRedClick
  end
  object btnBlue: TButton
    Left = 40
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Blue'
    TabOrder = 1
    OnClick = btnBlueClick
  end
  object btnGreen: TButton
    Left = 40
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Green'
    TabOrder = 2
    OnClick = btnGreenClick
  end
  object btnGray: TButton
    Left = 40
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Gray'
    TabOrder = 3
    OnClick = btnGrayClick
  end
end
