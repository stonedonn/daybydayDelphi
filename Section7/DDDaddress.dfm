object Form1: TForm1
  Left = 775
  Top = 165
  Width = 441
  Height = 475
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
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 30
    Height = 25
    Caption = #46020#47749
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 24
    Width = 30
    Height = 25
    Caption = #44400#47749
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 352
    Width = 196
    Height = 29
    Caption = #52286#51004#49884#45716' DDD '#48264#54840#45716
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object resultStr: TLabel
    Left = 107
    Top = 384
    Width = 126
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object doList: TListBox
    Left = 32
    Top = 56
    Width = 137
    Height = 281
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 29
    Items.Strings = (
      #44053#50896
      #44221#44592
      #44221#45224
      #44221#48513
      #51204#45224
      #51204#48513
      #51228#51452
      #52649#45224
      #52649#48513)
    ParentFont = False
    TabOrder = 0
    OnClick = doListClick
  end
  object gunList: TListBox
    Left = 200
    Top = 56
    Width = 185
    Height = 281
    ItemHeight = 13
    TabOrder = 1
    OnClick = gunListClick
  end
end
