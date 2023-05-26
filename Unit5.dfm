object Form5: TForm5
  Left = 332
  Top = 137
  Width = 424
  Height = 480
  Caption = 'Latihan 02 Kondisional'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 56
    Top = 104
    Width = 111
    Height = 14
    Caption = 'NILAI KEHADIRAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 56
    Top = 136
    Width = 78
    Height = 14
    Caption = 'NILAI TUGAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 56
    Top = 168
    Width = 61
    Height = 14
    Caption = 'NILAI UTS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 56
    Top = 200
    Width = 87
    Height = 14
    Caption = 'NILAI HARIAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 56
    Top = 232
    Width = 63
    Height = 14
    Caption = 'NILAI UAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 48
    Top = 320
    Width = 39
    Height = 14
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 48
    Top = 352
    Width = 42
    Height = 14
    Caption = 'GRADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 48
    Top = 384
    Width = 26
    Height = 14
    Caption = 'KET.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 385
    Height = 57
    Caption = 'CEK NILAI BOBOT SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object edtnilai1: TEdit
    Left = 192
    Top = 104
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object edtnilai2: TEdit
    Left = 192
    Top = 136
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object edtnilai3: TEdit
    Left = 192
    Top = 168
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object edtnilai4: TEdit
    Left = 192
    Top = 200
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object edtnilai5: TEdit
    Left = 192
    Top = 232
    Width = 73
    Height = 21
    TabOrder = 5
  end
  object edtbobot1: TEdit
    Left = 280
    Top = 104
    Width = 57
    Height = 21
    TabOrder = 6
  end
  object edtbobot2: TEdit
    Left = 280
    Top = 136
    Width = 57
    Height = 21
    TabOrder = 7
  end
  object edtbobot3: TEdit
    Left = 280
    Top = 168
    Width = 57
    Height = 21
    TabOrder = 8
  end
  object edtbobot4: TEdit
    Left = 280
    Top = 200
    Width = 57
    Height = 21
    TabOrder = 9
  end
  object edtbobot5: TEdit
    Left = 280
    Top = 232
    Width = 57
    Height = 21
    TabOrder = 10
  end
  object edttotal: TEdit
    Left = 104
    Top = 320
    Width = 233
    Height = 21
    TabOrder = 11
  end
  object edtgrade: TEdit
    Left = 104
    Top = 352
    Width = 233
    Height = 21
    TabOrder = 12
  end
  object edtket: TEdit
    Left = 104
    Top = 384
    Width = 233
    Height = 21
    TabOrder = 13
  end
  object Button1: TButton
    Left = 48
    Top = 272
    Width = 80
    Height = 30
    Caption = 'HITUNG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 272
    Width = 80
    Height = 30
    Caption = 'HAPUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 224
    Top = 272
    Width = 80
    Height = 30
    Caption = 'KELUAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = Button3Click
  end
  object pnl2: TPanel
    Left = 192
    Top = 72
    Width = 73
    Height = 25
    Caption = 'NILAI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object pnl3: TPanel
    Left = 280
    Top = 72
    Width = 57
    Height = 25
    Caption = 'BOBOT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
end
