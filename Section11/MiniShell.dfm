object ShellForm: TShellForm
  Left = 201
  Top = 292
  Width = 473
  Height = 402
  Caption = 'Mini Shell'
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
    Left = 40
    Top = 16
    Width = 44
    Height = 16
    Caption = #46356#47113#53664#47532
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 216
    Top = 16
    Width = 22
    Height = 16
    Caption = #54028#51068
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 272
    Width = 44
    Height = 16
    Caption = #46300#46972#51060#48652
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 216
    Top = 272
    Width = 47
    Height = 16
    Caption = #54028#51068' '#50976#54805
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DriveComboBox1: TDriveComboBox
    Left = 40
    Top = 296
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 0
  end
  object FilterComboBox1: TFilterComboBox
    Left = 216
    Top = 296
    Width = 145
    Height = 21
    FileList = FileListBox1
    TabOrder = 1
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 40
    Top = 40
    Width = 145
    Height = 217
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 2
  end
  object FileListBox1: TFileListBox
    Left = 216
    Top = 40
    Width = 145
    Height = 217
    ItemHeight = 13
    TabOrder = 3
    OnDblClick = FileListBox1DblClick
  end
  object BtnRun: TButton
    Left = 376
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Run'
    Default = True
    TabOrder = 4
    OnClick = FileListBox1DblClick
  end
  object BtnCancel: TButton
    Left = 376
    Top = 88
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 5
    OnClick = BtnCancelClick
  end
end
