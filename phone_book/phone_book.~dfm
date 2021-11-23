object fmMain: TfmMain
  Left = 308
  Top = 174
  Width = 771
  Height = 530
  Caption = #51452#49548#47197' '#54532#47196#44536#47016
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sgdList: TStringGrid
    Left = 0
    Top = 336
    Width = 753
    Height = 155
    Align = alCustom
    ColCount = 8
    TabOrder = 0
    OnSelectCell = sgdListSelectCell
    ColWidths = (
      64
      27
      40
      81
      76
      50
      225
      178)
  end
  object grbText: TGroupBox
    Left = 0
    Top = 0
    Width = 753
    Height = 273
    Caption = #51077#47141#46976
    TabOrder = 1
    object lAddress: TLabel
      Left = 24
      Top = 204
      Width = 43
      Height = 13
      Caption = #51452'       '#49548
    end
    object lName: TLabel
      Left = 24
      Top = 48
      Width = 43
      Height = 13
      Caption = #51060'       '#47492
    end
    object lZipcode: TLabel
      Left = 24
      Top = 168
      Width = 44
      Height = 13
      Caption = #50864#54200#48264#54840
    end
    object lTelephone: TLabel
      Left = 24
      Top = 128
      Width = 44
      Height = 13
      Caption = #51204#54868#48264#54840
    end
    object lPhoneNumber: TLabel
      Left = 24
      Top = 88
      Width = 44
      Height = 13
      Caption = #55092#45824#51204#54868
    end
    object lEmail: TLabel
      Left = 168
      Top = 240
      Width = 14
      Height = 16
      Caption = '@'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 248
      Width = 40
      Height = 13
      Caption = 'E-mail    '
    end
    object eTelephone: TEdit
      Left = 88
      Top = 120
      Width = 113
      Height = 21
      TabOrder = 2
    end
    object eZipcode: TEdit
      Left = 88
      Top = 160
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object ePhoneNumber: TEdit
      Left = 88
      Top = 80
      Width = 113
      Height = 21
      TabOrder = 1
    end
    object eName: TEdit
      Left = 88
      Top = 40
      Width = 65
      Height = 21
      TabOrder = 0
    end
    object eAddress: TEdit
      Left = 88
      Top = 200
      Width = 249
      Height = 21
      TabOrder = 4
    end
    object cbEmail: TComboBox
      Left = 184
      Top = 240
      Width = 153
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Text = #51060#47700#51068#51012' '#51077#47141#54616#49464#50836
      Items.Strings = (
        'naver.com'
        'gmail.com'
        'hanmail.com'
        'nate.com'
        'hotmail.com')
    end
    object eEmail: TEdit
      Left = 88
      Top = 240
      Width = 81
      Height = 21
      TabOrder = 5
    end
    object btnInsert: TButton
      Left = 352
      Top = 32
      Width = 73
      Height = 33
      Caption = #51077#47141
      TabOrder = 7
      OnClick = btnInsertClick
    end
    object btnUpdate: TButton
      Left = 352
      Top = 80
      Width = 73
      Height = 33
      Caption = #49688#51221
      TabOrder = 8
      OnClick = btnUpdateClick
    end
    object btnOK: TButton
      Left = 352
      Top = 176
      Width = 73
      Height = 33
      Caption = #54869#51064
      TabOrder = 9
      OnClick = btnOKClick
    end
    object btnExit: TButton
      Left = 440
      Top = 224
      Width = 73
      Height = 33
      Caption = #51333#47308
      TabOrder = 10
      OnClick = btnExitClick
    end
    object btnDelete: TButton
      Left = 352
      Top = 128
      Width = 73
      Height = 33
      Caption = #49325#51228
      TabOrder = 11
      OnClick = btnDeleteClick
    end
    object btnCancel: TButton
      Left = 352
      Top = 224
      Width = 73
      Height = 33
      Caption = #52712#49548
      TabOrder = 12
      OnClick = btnCancelClick
    end
  end
  object grbSELECT: TGroupBox
    Left = 0
    Top = 272
    Width = 753
    Height = 65
    Caption = #53945#51221' '#48264#54840' '#51312#54924
    TabOrder = 2
    object lSequence: TLabel
      Left = 480
      Top = 36
      Width = 30
      Height = 24
      Caption = #48264#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object eSequence: TEdit
      Left = 512
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnSelect: TButton
      Left = 638
      Top = 16
      Width = 91
      Height = 41
      Caption = #51312#54924
      TabOrder = 1
      OnClick = btnSelectClick
    end
  end
  object DBConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=140119;Persist Security Info=True;U' +
      'ser ID=phone_book;Initial Catalog=address_book;Data Source=.;Use' +
      ' Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wo' +
      'rkstation ID=DESKTOP-E4HHIME;Use Encryption for Data=False;Tag w' +
      'ith column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 168
    Top = 32
  end
  object qry1: TADOQuery
    Connection = DBConn
    Parameters = <>
    SQL.Strings = (
      'select'
      'sequence, name, phone_number, telephone, zipcode, address, email'
      'from phone_book order by reg_datetime desc')
    Left = 208
    Top = 32
  end
  object cmd1: TADOCommand
    Connection = DBConn
    Parameters = <>
    Left = 248
    Top = 32
  end
  object qry2: TADOQuery
    Connection = DBConn
    Parameters = <>
    Left = 208
    Top = 72
  end
end
