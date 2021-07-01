object Form2: TForm2
  Left = 735
  Top = 325
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1093#1086#1076' '#1087#1086#1076' '#1072#1076#1084#1080#1085#1086#1084
  ClientHeight = 210
  ClientWidth = 268
  Color = 11554145
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 50
    Height = 19
    Caption = #1051#1086#1075#1080#1085':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 58
    Height = 19
    Caption = #1055#1072#1088#1086#1083#1100':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 48
    Width = 233
    Height = 27
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'Admin'
  end
  object Edit2: TEdit
    Left = 24
    Top = 112
    Width = 233
    Height = 27
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    Text = '123'
  end
  object Button1: TButton
    Left = 24
    Top = 168
    Width = 233
    Height = 33
    Caption = #1042#1086#1081#1090#1080
    Default = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
