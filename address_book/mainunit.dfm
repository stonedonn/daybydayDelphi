object frmMain: TfrmMain
  Left = 373
  Top = 256
  BorderStyle = bsDialog
  Caption = #51452#49548#47197#44288#47532
  ClientHeight = 317
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblName: TLabel
    Left = 16
    Top = 24
    Width = 50
    Height = 13
    Caption = #51060'      '#47492
    Layout = tlCenter
  end
  object lblCellular_phone: TLabel
    Left = 16
    Top = 58
    Width = 52
    Height = 13
    Caption = #55092#45824#51204#54868
    Layout = tlCenter
  end
  object lblTelephone: TLabel
    Left = 16
    Top = 92
    Width = 50
    Height = 13
    Caption = #51204'      '#54868
    Layout = tlCenter
  end
  object lblZipcode: TLabel
    Left = 16
    Top = 126
    Width = 52
    Height = 13
    Caption = #50864#54200#48264#54840
    Layout = tlCenter
  end
  object lblAddress: TLabel
    Left = 16
    Top = 160
    Width = 50
    Height = 13
    Caption = #51452'      '#49548
    Layout = tlCenter
  end
  object txtName: TEdit
    Left = 88
    Top = 24
    Width = 73
    Height = 21
    ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
    TabOrder = 0
  end
  object txtCellular_phone: TEdit
    Left = 88
    Top = 58
    Width = 121
    Height = 21
    ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
    TabOrder = 1
  end
  object txtTelephone: TEdit
    Left = 88
    Top = 92
    Width = 121
    Height = 21
    ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
    TabOrder = 2
  end
  object txtZipcode: TEdit
    Left = 88
    Top = 126
    Width = 73
    Height = 21
    ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
    TabOrder = 3
  end
  object txtAddress: TEdit
    Left = 88
    Top = 160
    Width = 313
    Height = 21
    ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
    TabOrder = 4
  end
  object btnInsert: TButton
    Left = 408
    Top = 16
    Width = 75
    Height = 25
    Caption = #51077#47141
    TabOrder = 5
    OnClick = btnInsertClick
  end
  object btnEdit: TButton
    Left = 408
    Top = 48
    Width = 75
    Height = 25
    Caption = #49688#51221
    TabOrder = 6
    OnClick = btnEditClick
  end
  object btnDelete: TButton
    Left = 408
    Top = 80
    Width = 75
    Height = 25
    Caption = #49325#51228
    TabOrder = 7
    OnClick = btnDeleteClick
  end
  object btnOK: TButton
    Left = 408
    Top = 112
    Width = 75
    Height = 25
    Caption = #54869#51064
    TabOrder = 8
    OnClick = btnOKClick
  end
  object sgdList: TStringGrid
    Left = 8
    Top = 192
    Width = 473
    Height = 120
    DefaultRowHeight = 18
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 9
    OnSelectCell = sgdListSelectCell
    RowHeights = (
      18
      18
      18
      18
      18)
  end
  object btnExit: TButton
    Left = 408
    Top = 144
    Width = 75
    Height = 25
    Caption = #51333#47308
    TabOrder = 10
    OnClick = btnExitClick
  end
  object txtSequence: TEdit
    Left = 176
    Top = 128
    Width = 121
    Height = 21
    ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
    TabOrder = 11
    Visible = False
  end
  object DBConn: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=toughdb321;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=home;Data Source=TOUGHMAN'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 176
    Top = 24
  end
  object qry1: TADOQuery
    Connection = DBConn
    Parameters = <>
    SQL.Strings = (
      'select '
      'sequence, name, cellular_phone, telephone, zipcode, address '
      'from address_book order by reg_datetime desc')
    Left = 224
    Top = 24
  end
  object cmd1: TADOCommand
    Parameters = <>
    Left = 272
    Top = 24
  end
end
