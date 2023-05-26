object Form2: TForm2
  Left = 308
  Top = 166
  Width = 928
  Height = 480
  Caption = 'LATIHAN 1'
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
    Left = 64
    Top = 56
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object lbl2: TLabel
    Left = 64
    Top = 104
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object lbl3: TLabel
    Left = 64
    Top = 168
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object edt1: TEdit
    Left = 136
    Top = 56
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 136
    Top = 96
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 136
    Top = 160
    Width = 137
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 328
    Top = 48
    Width = 81
    Height = 49
    Caption = 'Hitung'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 328
    Top = 128
    Width = 81
    Height = 49
    Caption = 'Selesai'
    TabOrder = 4
    OnClick = btn2Click
  end
end
