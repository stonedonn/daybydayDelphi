object Form1: TForm1
  Left = 192
  Top = 125
  Width = 313
  Height = 312
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
    Left = 80
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Apple'
      'Orange'
      'Banana')
  end
end
