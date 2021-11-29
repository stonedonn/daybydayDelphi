object birthcalc: Tbirthcalc
  Left = 328
  Top = 188
  Width = 402
  Height = 252
  Caption = #53468#50612#45212#51648' '#47728#52832#51704'?'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 40
    Width = 22
    Height = 13
    Caption = #51060#47492
  end
  object Label2: TLabel
    Left = 48
    Top = 88
    Width = 22
    Height = 13
    Caption = #49373#51068
  end
  object Label3: TLabel
    Left = 48
    Top = 136
    Width = 22
    Height = 13
    Caption = #50724#45720
  end
  object Bevel1: TBevel
    Left = 0
    Top = 163
    Width = 386
    Height = 50
  end
  object result: TLabel
    Left = 48
    Top = 184
    Width = 3
    Height = 13
  end
  object nameEdit: TEdit
    Left = 104
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'nameEdit'
  end
  object birthEdit: TEdit
    Left = 104
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'birthEdit'
  end
  object todayEdit: TEdit
    Left = 104
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'todayEdit'
  end
  object execalc: TButton
    Left = 248
    Top = 32
    Width = 75
    Height = 25
    Caption = #44228#49328
    TabOrder = 3
    OnClick = execalcClick
  end
  object buthelp: TButton
    Left = 248
    Top = 80
    Width = 75
    Height = 25
    Caption = #46020#50880#47568
    TabOrder = 4
    OnClick = buthelpClick
  end
  object butexit: TButton
    Left = 248
    Top = 128
    Width = 75
    Height = 25
    Caption = #51333#47308
    TabOrder = 5
    OnClick = butexitClick
  end
end
