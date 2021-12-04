object Form1: TForm1
  Left = 192
  Top = 125
  Width = 385
  Height = 174
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 56
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 184
    Top = 40
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 184
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
end
