object Form1: TForm1
  Left = 192
  Top = 125
  Width = 389
  Height = 290
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
  object Button1: TButton
    Left = 160
    Top = 88
    Width = 75
    Height = 25
    Action = ShowMsg
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 144
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Item1: TMenuItem
        Action = ShowMsg
      end
    end
  end
  object ActionList1: TActionList
    Left = 120
    Top = 144
    object ShowMsg: TAction
      Caption = 'ShowMsg'
      OnExecute = ShowMsgExecute
    end
  end
end
