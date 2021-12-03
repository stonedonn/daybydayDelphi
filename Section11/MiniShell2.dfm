object Form1: TForm1
  Left = 693
  Top = 262
  Width = 344
  Height = 202
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
  object Edit1: TEdit
    Left = 32
    Top = 32
    Width = 257
    Height = 25
    TabOrder = 0
  end
  object BtnRun: TButton
    Left = 48
    Top = 104
    Width = 81
    Height = 33
    Caption = 'Run'
    Default = True
    TabOrder = 1
    OnClick = BtnRunClick
  end
  object BtnBrowse: TButton
    Left = 192
    Top = 104
    Width = 81
    Height = 33
    Caption = 'Browse'
    Default = True
    TabOrder = 2
    OnClick = BtnBrowseClick
  end
  object OpenDialog1: TOpenDialog
    Filter = #49892#54665' '#54028#51068'|*.exe'
    Left = 280
    Top = 104
  end
end
