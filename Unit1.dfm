object Form1: TForm1
  Left = 246
  Top = 188
  Width = 928
  Height = 480
  Caption = 'Satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 96
    Top = 32
    Width = 41
    Height = 19
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 96
    Top = 64
    Width = 64
    Height = 19
    Caption = 'Deskripsi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 96
    Top = 328
    Width = 115
    Height = 19
    Caption = 'Masukkan Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 208
    Top = 32
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 208
    Top = 64
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 176
    Top = 112
    Width = 57
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 248
    Top = 112
    Width = 57
    Height = 33
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 320
    Top = 112
    Width = 57
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 88
    Top = 160
    Width = 441
    Height = 145
    DataSource = DataModule2.dsSatuan
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 232
    Top = 328
    Width = 297
    Height = 21
    TabOrder = 6
  end
  object btn5: TButton
    Left = 96
    Top = 112
    Width = 65
    Height = 33
    Caption = 'BARU'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn4: TButton
    Left = 392
    Top = 112
    Width = 65
    Height = 33
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = btn4Click
  end
end
