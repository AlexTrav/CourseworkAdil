object Form14: TForm14
  Left = 543
  Top = 269
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1080#1076#1077#1086' '#1092#1086#1082#1091#1089#1099
  ClientHeight = 533
  ClientWidth = 1131
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
    Left = 894
    Top = 96
    Width = 117
    Height = 19
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1074#1080#1076#1077#1086':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 873
    Height = 533
    Align = alLeft
    DataSource = DM.VideoDataSource
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Button2: TButton
    Left = 895
    Top = 15
    Width = 218
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 895
    Top = 47
    Width = 218
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 893
    Top = 128
    Width = 217
    Height = 27
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnKeyPress = Edit1KeyPress
  end
  object Button4: TButton
    Left = 893
    Top = 168
    Width = 218
    Height = 25
    Caption = #1055#1086#1080#1089#1082
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button1: TButton
    Left = 895
    Top = 491
    Width = 218
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
end
