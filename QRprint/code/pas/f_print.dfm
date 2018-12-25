object frm_print: Tfrm_print
  Left = 0
  Top = 0
  Caption = 'frm_print'
  ClientHeight = 300
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_print: TRzPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 300
    Align = alClient
    TabOrder = 0
    object btnImport: TButton
      Left = 152
      Top = 72
      Width = 193
      Height = 105
      Caption = #25171#21360
      TabOrder = 0
    end
  end
  object dlgOpenExcel: TOpenDialog
    Left = 40
    Top = 216
  end
  object frxrprtBarprint: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43430.426403657410000000
    ReportOptions.LastChange = 43430.428513935190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 216
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 50.000000000000000000
      PaperHeight = 30.000000000000000000
      PaperSize = 256
    end
  end
  object frxdbdtstBarprint: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 192
    Top = 217
  end
end
