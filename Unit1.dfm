object Form1: TForm1
  Left = 677
  Top = 386
  Width = 1041
  Height = 590
  Align = alCustom
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1025
    Height = 551
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1086#1089#1083#1091#1075#1080
      object DBGrid1: TDBGrid
        Left = 24
        Top = 0
        Width = 945
        Height = 385
        DataSource = DataModule3.DataSQservice
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 24
        Top = 384
        Width = 945
        Height = 113
        TabOrder = 1
        object Label1: TLabel
          Left = 496
          Top = 24
          Width = 131
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086#1089#1083#1091#1075#1080' '#1079#1072' '#1085#1072#1079#1074#1086#1102
        end
        object Label2: TLabel
          Left = 496
          Top = 64
          Width = 124
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1086#1076#1086#1084' '#1087#1086#1089#1083#1091#1075#1080
        end
        object Button1: TButton
          Left = 8
          Top = 16
          Width = 121
          Height = 33
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 136
          Top = 16
          Width = 137
          Height = 33
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 8
          Top = 64
          Width = 121
          Height = 33
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 136
          Top = 64
          Width = 137
          Height = 33
          Caption = #1047#1074#1110#1090
          TabOrder = 3
          OnClick = Button4Click
        end
        object Edit1: TEdit
          Left = 696
          Top = 24
          Width = 225
          Height = 21
          TabOrder = 4
          OnChange = Edit1Change
        end
        object Edit2: TEdit
          Left = 696
          Top = 64
          Width = 105
          Height = 21
          TabOrder = 5
        end
        object Button5: TButton
          Left = 808
          Top = 64
          Width = 41
          Height = 25
          Caption = #1086#1082
          TabOrder = 6
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 856
          Top = 64
          Width = 73
          Height = 25
          Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
          TabOrder = 7
          OnClick = Button6Click
        end
      end
      object Panel2: TPanel
        Left = 24
        Top = 272
        Width = 945
        Height = 113
        TabOrder = 2
        Visible = False
        object Label3: TLabel
          Left = 24
          Top = 8
          Width = 30
          Height = 13
          Caption = #1053#1072#1079#1074#1072
        end
        object lbl1: TLabel
          Left = 24
          Top = 56
          Width = 85
          Height = 13
          Caption = #1062#1110#1085#1072' '#1079#1072' '#1086#1076#1080#1085#1080#1094#1102
        end
        object lbl2: TLabel
          Left = 400
          Top = 8
          Width = 25
          Height = 13
          Caption = #1054#1087#1080#1089
        end
        object btn1: TButton
          Left = 656
          Top = 8
          Width = 121
          Height = 33
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 0
          OnClick = btn1Click
        end
        object btn3: TButton
          Left = 792
          Top = 56
          Width = 137
          Height = 33
          Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
          TabOrder = 1
          OnClick = btn3Click
        end
        object edt1: TEdit
          Left = 112
          Top = 8
          Width = 169
          Height = 21
          TabOrder = 2
        end
        object edt2: TEdit
          Left = 128
          Top = 56
          Width = 153
          Height = 21
          TabOrder = 3
        end
        object edt3: TEdit
          Left = 440
          Top = 8
          Width = 169
          Height = 21
          TabOrder = 4
        end
        object btn4: TButton
          Left = 792
          Top = 8
          Width = 129
          Height = 33
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 5
          OnClick = btn4Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 16
        Top = 16
        Width = 953
        Height = 401
        DataSource = DataModule3.DataSPers
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btn2: TButton
        Left = 16
        Top = 440
        Width = 145
        Height = 33
        Caption = #1044#1086#1076#1072#1090#1080
        TabOrder = 1
        OnClick = btn2Click
      end
      object btn5: TButton
        Left = 176
        Top = 440
        Width = 129
        Height = 33
        Caption = #1047#1084#1110#1085#1080#1090#1080
        TabOrder = 2
        OnClick = btn5Click
      end
      object btn6: TButton
        Left = 320
        Top = 440
        Width = 113
        Height = 33
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        TabOrder = 3
        OnClick = btn6Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 2
      object lbl3: TLabel
        Left = 264
        Top = 424
        Width = 84
        Height = 13
        Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1076#1072#1090#1086#1102
      end
      object DBGrid3: TDBGrid
        Left = 16
        Top = 24
        Width = 961
        Height = 377
        DataSource = DataModule3.dsDataScheque
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btn7: TButton
        Left = 376
        Top = 464
        Width = 121
        Height = 33
        Caption = #1054#1082
        TabOrder = 1
        OnClick = btn7Click
      end
      object btn8: TButton
        Left = 512
        Top = 464
        Width = 145
        Height = 33
        Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
        TabOrder = 2
        OnClick = btn8Click
      end
      object dtp1: TDateTimePicker
        Left = 376
        Top = 424
        Width = 289
        Height = 25
        Date = 44502.757086956020000000
        Time = 44502.757086956020000000
        TabOrder = 3
      end
    end
    object ts1: TTabSheet
      Caption = #1042#1080#1082#1083#1080#1082
      ImageIndex = 3
      object lbl4: TLabel
        Left = 168
        Top = 456
        Width = 84
        Height = 13
        Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1076#1072#1090#1086#1102
      end
      object dbgrd1: TDBGrid
        Left = 8
        Top = 16
        Width = 985
        Height = 401
        DataSource = DataModule3.dsCall
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object dtp2: TDateTimePicker
        Left = 264
        Top = 448
        Width = 241
        Height = 25
        Date = 44514.818904594910000000
        Time = 44514.818904594910000000
        TabOrder = 1
      end
      object btn9: TButton
        Left = 200
        Top = 480
        Width = 137
        Height = 33
        Caption = #1054#1082
        TabOrder = 2
        OnClick = btn9Click
      end
      object btn10: TButton
        Left = 352
        Top = 480
        Width = 177
        Height = 33
        Caption = #1057#1082#1072#1089#1091#1074#1072#1090#1080
        TabOrder = 3
        OnClick = btn10Click
      end
    end
    object ts2: TTabSheet
      Caption = #1052#1077#1096#1082#1072#1085#1094#1110
      ImageIndex = 4
      object dbgrd2: TDBGrid
        Left = 16
        Top = 16
        Width = 977
        Height = 433
        DataSource = DataModule3.dsInhabit
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnl1: TPanel
        Left = 16
        Top = 456
        Width = 977
        Height = 57
        TabOrder = 1
        object btn11: TButton
          Left = 24
          Top = 16
          Width = 129
          Height = 33
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = btn11Click
        end
        object btn12: TButton
          Left = 168
          Top = 16
          Width = 169
          Height = 33
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = btn12Click
        end
        object btn13: TButton
          Left = 352
          Top = 16
          Width = 121
          Height = 33
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = btn13Click
        end
      end
    end
  end
end
