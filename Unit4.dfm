object Form4: TForm4
  Left = 654
  Top = 156
  Width = 683
  Height = 714
  Caption = #1060#1110#1088#1084#1072' '#1087#1086' '#1085#1072#1076#1072#1085#1085#1102' '#1077#1083#1077#1082#1090#1088#1086#1090#1077#1093#1085#1110#1095#1085#1080#1093' '#1088#1086#1073#1110#1090' '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 24
    Top = 24
    Width = 633
    Height = 345
    DataSource = DataModule3.dsDataScheque
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnl1: TPanel
    Left = 24
    Top = 368
    Width = 633
    Height = 57
    TabOrder = 1
    object lbl1: TLabel
      Left = 8
      Top = 16
      Width = 35
      Height = 13
      Caption = #1063#1077#1082' '#8470
    end
    object lbl2: TLabel
      Left = 152
      Top = 16
      Width = 30
      Height = 13
      Caption = #1044#1072#1090#1072':'
    end
    object lbl3: TLabel
      Left = 472
      Top = 24
      Width = 99
      Height = 13
      Caption = #1057#1091#1084#1072' '#1087#1086' '#1095#1077#1082'y ('#1075#1088#1085'):'
    end
    object dtp1: TDateTimePicker
      Left = 200
      Top = 16
      Width = 153
      Height = 17
      Date = 44509.034032673610000000
      Time = 44509.034032673610000000
      TabOrder = 0
    end
    object btn1: TButton
      Left = 368
      Top = 16
      Width = 97
      Height = 25
      Caption = #1057#1090#1074#1086#1088#1080#1090#1080' '#1095#1077#1082
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  object pnl2: TPanel
    Left = 24
    Top = 432
    Width = 633
    Height = 209
    Enabled = False
    TabOrder = 2
    object lbl4: TLabel
      Left = 16
      Top = 8
      Width = 45
      Height = 13
      Caption = #1055#1086#1089#1083#1091#1075'a:'
    end
    object lbl5: TLabel
      Left = 16
      Top = 32
      Width = 117
      Height = 13
      Caption = #1062#1110#1085#1072' '#1079#1072' '#1086#1076#1080#1085#1080#1094#1102' ('#1075#1088#1085'):'
    end
    object lbl6: TLabel
      Left = 24
      Top = 56
      Width = 50
      Height = 13
      Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100':'
    end
    object lbl7: TLabel
      Left = 16
      Top = 80
      Width = 52
      Height = 13
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083':'
    end
    object lbl8: TLabel
      Left = 16
      Top = 104
      Width = 120
      Height = 13
      Caption = #1042#1072#1088#1090#1110#1089#1090#1100' '#1074#1080#1082#1083#1080#1082#1091' ('#1075#1088#1085'):'
    end
    object lbl9: TLabel
      Left = 16
      Top = 128
      Width = 62
      Height = 13
      Caption = #1052#1077#1096#1082#1072#1085#1077#1094#1100':'
    end
    object ud1: TUpDown
      Left = 209
      Top = 56
      Width = 16
      Height = 21
      Associate = edt1
      Position = 1
      TabOrder = 0
    end
    object edt1: TEdit
      Left = 96
      Top = 56
      Width = 113
      Height = 21
      TabOrder = 1
      Text = '1'
      OnChange = edt1Change
    end
    object btn2: TButton
      Left = 16
      Top = 168
      Width = 73
      Height = 25
      Caption = #1044#1086#1076#1072#1090#1080
      TabOrder = 2
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 96
      Top = 168
      Width = 73
      Height = 25
      Caption = #1042#1080#1076#1072#1083#1080#1090#1080
      Enabled = False
      TabOrder = 3
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 176
      Top = 168
      Width = 49
      Height = 25
      Caption = #1044#1088#1091#1082
      Enabled = False
      TabOrder = 4
      OnClick = btn4Click
    end
    object dblkcbb2: TDBLookupComboBox
      Left = 88
      Top = 80
      Width = 121
      Height = 21
      KeyField = #1050#1086#1076' '#1087#1077#1088#1089#1086#1085#1072#1083#1091
      ListField = #1055#1030#1041
      ListSource = DataModule3.DataSPers
      TabOrder = 5
    end
    object dblkcbb1: TDBLookupComboBox
      Left = 88
      Top = 8
      Width = 129
      Height = 21
      KeyField = #1050#1086#1076' '#1087#1086#1089#1083#1091#1075#1080
      ListField = #1053#1072#1079#1074#1072
      ListSource = DataModule3.dsTservice
      TabOrder = 6
    end
    object dblkcbb3: TDBLookupComboBox
      Left = 96
      Top = 120
      Width = 129
      Height = 21
      KeyField = #1050#1086#1076' '#1084#1077#1096#1082#1072#1085#1094#1103
      ListField = #1055#1030#1041
      ListSource = DataModule3.dsInhabit
      TabOrder = 7
    end
  end
  object dbgrd2: TDBGrid
    Left = 264
    Top = 448
    Width = 376
    Height = 177
    DataSource = DataModule3.dsCheque
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object mm1: TMainMenu
    Top = 16
    object N1: TMenuItem
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082#1080
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1055#1088#1086' '#1076#1086#1076#1072#1090#1086#1082
      OnClick = N3Click
    end
  end
end
