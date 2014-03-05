object Form1: TForm1
  Left = 538
  Top = 137
  Width = 385
  Height = 494
  Caption = 'Encrypt/Decrypt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 36
    Width = 66
    Height = 13
    Caption = 'Source folder:'
  end
  object Label2: TLabel
    Left = 25
    Top = 118
    Width = 85
    Height = 13
    Caption = 'Destination folder:'
  end
  object Label3: TLabel
    Left = 27
    Top = 449
    Width = 136
    Height = 12
    Caption = 'Credits: ricardocasu@gmail.com'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 232
    Top = 367
    Width = 112
    Height = 35
    Caption = 'Encrypt/Deprypt'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 25
    Top = 64
    Width = 33
    Height = 25
    Caption = '...'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 65
    Top = 66
    Width = 280
    Height = 21
    TabOrder = 2
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 26
    Top = 144
    Width = 320
    Height = 193
    ItemHeight = 16
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 317
    Top = 8
  end
end
