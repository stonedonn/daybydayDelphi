object Form1: TForm1
  Left = 328
  Top = 212
  Width = 456
  Height = 282
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 128
    Top = 96
    Width = 121
    Height = 21
    PopupMenu = PopupMenu2
    TabOrder = 0
    Text = 'Edit1'
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 48
    object Green1: TMenuItem
      Caption = '&Red'
      OnClick = Red1Click
    end
    object Green2: TMenuItem
      Caption = '&Green'
      OnClick = Green1Click
    end
    object Blue1: TMenuItem
      Caption = '&Blue'
      OnClick = Blue1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 200
    Top = 48
    object Kim1: TMenuItem
      Caption = '&Kim'
      OnClick = Kim1Click
    end
    object Lee1: TMenuItem
      Caption = '&Lee'
      OnClick = Lee1Click
    end
    object Park1: TMenuItem
      Caption = '&Park'
      OnClick = Park1Click
    end
  end
end
