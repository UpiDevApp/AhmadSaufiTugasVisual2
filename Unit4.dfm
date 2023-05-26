object Form4: TForm4
  Left = 284
  Top = 224
  Width = 294
  Height = 326
  Caption = 'LATIHAN 01 Kondisional'
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
    Left = 8
    Top = 48
    Width = 41
    Height = 13
    Caption = 'NILAI 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 128
    Width = 41
    Height = 13
    Caption = 'NILAI 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 88
    Width = 41
    Height = 13
    Caption = 'NILAI 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 8
    Top = 160
    Width = 36
    Height = 13
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 8
    Top = 200
    Width = 38
    Height = 13
    Caption = 'GRADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtnilai1: TEdit
    Left = 72
    Top = 48
    Width = 70
    Height = 21
    TabOrder = 0
  end
  object edtnilai2: TEdit
    Left = 72
    Top = 88
    Width = 70
    Height = 21
    TabOrder = 1
  end
  object edtnilai3: TEdit
    Left = 72
    Top = 128
    Width = 70
    Height = 21
    TabOrder = 2
  end
  object pnl2: TPanel
    Left = 72
    Top = 8
    Width = 73
    Height = 25
    Caption = 'NILAI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object pnl3: TPanel
    Left = 160
    Top = 8
    Width = 65
    Height = 25
    Caption = 'BOBOT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object edtbobot1: TEdit
    Left = 160
    Top = 48
    Width = 70
    Height = 21
    TabOrder = 5
  end
  object edtbobot2: TEdit
    Left = 160
    Top = 88
    Width = 70
    Height = 21
    TabOrder = 6
  end
  object edtbobot3: TEdit
    Left = 160
    Top = 128
    Width = 70
    Height = 21
    TabOrder = 7
  end
  object edttotal: TEdit
    Left = 72
    Top = 160
    Width = 161
    Height = 21
    TabOrder = 8
  end
  object edtgrade: TEdit
    Left = 72
    Top = 192
    Width = 161
    Height = 21
    TabOrder = 9
  end
  object Button1: TButton
    Left = 16
    Top = 232
    Width = 73
    Height = 33
    Caption = 'HITUNG'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 232
    Width = 73
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 232
    Width = 65
    Height = 33
    Caption = 'KELUAR'
    TabOrder = 12
    OnClick = Button3Click
  end
end
