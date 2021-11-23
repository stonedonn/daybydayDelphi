object Form1: TForm1
  Left = 302
  Top = 188
  Width = 540
  Height = 179
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
  object qryCustomer: TQuery
    DatabaseName = 'MS Access Database'
    Left = 32
    Top = 16
  end
  object Query2: TQuery
    Left = 72
    Top = 16
  end
  object RvProject1: TRvProject
    Left = 112
    Top = 16
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 152
    Top = 16
  end
  object RvQueryConnection1: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Left = 192
    Top = 16
  end
  object RvQueryConnection2: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Left = 232
    Top = 16
  end
end
