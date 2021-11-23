object Form1: TForm1
  Left = 202
  Top = 148
  Width = 545
  Height = 479
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
  object MainMenu1: TMainMenu
    Left = 264
    Top = 120
    object File1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = '&Open'
      end
      object Save1: TMenuItem
        Caption = '&Save'
      end
      object Exit1: TMenuItem
        Caption = '&Exit'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object toKorean1: TMenuItem
        Caption = 'to Korean'
        OnClick = toKorean1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
    end
  end
  object MainMenu2: TMainMenu
    Left = 184
    Top = 120
    object N2: TMenuItem
      Caption = #54028#51068
      object N4: TMenuItem
        Caption = '&'#50676#44592
      end
      object N5: TMenuItem
        Caption = '&'#51200#51109
      end
      object N6: TMenuItem
        Caption = '&'#51333#47308
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = #50689#50612#47196
        OnClick = N8Click
      end
    end
    object N3: TMenuItem
      Caption = #54200#51665
    end
  end
end
