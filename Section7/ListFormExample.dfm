object ListForm: TListForm
  Left = 314
  Top = 206
  Width = 386
  Height = 263
  Caption = 'ListForm'
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
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnAdd: TButton
    Left = 32
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Add Item'
    Default = True
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnInsert: TButton
    Left = 120
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Insert Item'
    TabOrder = 2
    OnClick = btnInsertClick
  end
  object btnDelete: TButton
    Left = 32
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Delete Item'
    TabOrder = 3
    OnClick = btnDeleteClick
  end
  object btnRead: TButton
    Left = 120
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Read Item'
    TabOrder = 4
    OnClick = btnReadClick
  end
  object ListBox1: TListBox
    Left = 216
    Top = 32
    Width = 121
    Height = 153
    ItemHeight = 13
    TabOrder = 5
  end
end
