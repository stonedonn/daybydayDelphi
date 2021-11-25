object colorForm: TcolorForm
  Left = 252
  Top = 550
  Width = 498
  Height = 200
  Caption = 'ColorForm'
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
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 20
    Height = 13
    Caption = 'Red'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 29
    Height = 13
    Caption = 'Green'
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 21
    Height = 13
    Caption = 'Blue'
  end
  object RedBar: TScrollBar
    Left = 80
    Top = 24
    Width = 273
    Height = 17
    LargeChange = 10
    Max = 255
    PageSize = 0
    TabOrder = 0
    OnChange = RedBarChange
  end
  object GreenBar: TScrollBar
    Left = 80
    Top = 64
    Width = 273
    Height = 17
    LargeChange = 10
    Max = 255
    PageSize = 0
    TabOrder = 1
    OnChange = GreenBarChange
  end
  object BlueBar: TScrollBar
    Left = 80
    Top = 104
    Width = 273
    Height = 17
    LargeChange = 10
    Max = 255
    PageSize = 0
    TabOrder = 2
    OnChange = BlueBarChange
  end
  object redEdit: TEdit
    Left = 368
    Top = 24
    Width = 65
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object greenEdit: TEdit
    Left = 368
    Top = 64
    Width = 65
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object blueEdit: TEdit
    Left = 368
    Top = 104
    Width = 65
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
end
