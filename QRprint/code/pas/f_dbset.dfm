object frm_dbset: Tfrm_dbset
  Left = 566
  Top = 338
  Caption = #25968#25454#24211#38142#25509
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object lblAddress: TLabel
    Left = 32
    Top = 40
    Width = 102
    Height = 19
    Caption = #25968#25454#24211#22320#22336#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDbName: TLabel
    Left = 32
    Top = 89
    Width = 102
    Height = 19
    Caption = #25968#25454#24211#21517#31216#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblUserID: TLabel
    Left = 32
    Top = 133
    Width = 85
    Height = 19
    Caption = #36830#25509#36134#21495#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPassword: TLabel
    Left = 32
    Top = 176
    Width = 85
    Height = 19
    Caption = #36830#25509#23494#30721#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblStatus: TLabel
    Left = 32
    Top = 8
    Width = 72
    Height = 19
    Caption = 'lblStatus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtAddress: TEdit
    Left = 140
    Top = 38
    Width = 245
    Height = 21
    TabOrder = 0
    Text = 'edtAddress'
  end
  object edtDbName: TEdit
    Left = 140
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtDbName'
  end
  object edtUserID: TEdit
    Left = 140
    Top = 132
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edtUserID'
  end
  object edtPassword: TEdit
    Left = 140
    Top = 175
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edtPassword'
  end
  object btnSave: TButton
    Left = 224
    Top = 209
    Width = 161
    Height = 25
    Caption = #20445#23384#35774#32622
    TabOrder = 4
  end
  object btnTest: TButton
    Left = 32
    Top = 209
    Width = 161
    Height = 25
    Caption = #27979#35797#36830#25509
    TabOrder = 5
  end
  object conDB: TADOConnection
    Left = 352
    Top = 120
  end
end
