object Form11: TForm11
  Left = 190
  Top = 125
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1090#1072#1090#1091#1089' '#1076#1086#1089#1090#1072#1074#1082#1080
  ClientHeight = 437
  ClientWidth = 1119
  Color = 12342601
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 896
    Top = 56
    Width = 217
    Height = 177
    Stretch = True
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 873
    Height = 437
    Align = alLeft
    DataSource = DM.DeliveryDataSource
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
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
  end
  object Button1: TButton
    Left = 895
    Top = 400
    Width = 218
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 887
    Top = 16
    Width = 226
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
end
