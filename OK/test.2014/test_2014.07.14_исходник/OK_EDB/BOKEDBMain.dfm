object BOKEDBForm: TBOKEDBForm
  Left = 261
  Top = 110
  Width = 1003
  Height = 730
  Caption = 'BOKEDBForm'
  Color = clBtnFace
  Constraints.MinHeight = 250
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 664
    Width = 995
    Height = 20
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object PC_Main: TPageControl
    Left = 0
    Top = 0
    Width = 995
    Height = 664
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1054#1090#1076#1077#1083' '#1050#1072#1076#1088#1086#1074' '#1045#1076#1080#1085#1072#1103' '#1041#1072#1079#1072
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 987
        Height = 636
        Align = alClient
        TabOrder = 0
        object GroupBox2: TGroupBox
          Left = 2
          Top = 15
          Width = 983
          Height = 223
          Align = alTop
          Constraints.MinHeight = 223
          Constraints.MinWidth = 980
          TabOrder = 0
          object Label10EDB: TLabel
            Left = 9
            Top = 17
            Width = 28
            Height = 13
            Caption = #1052#1060#1054
          end
          object Label1: TLabel
            Left = 232
            Top = 8
            Width = 162
            Height = 13
            Caption = #1056#1077#1089#1087#1091#1073#1083#1080#1082#1072':  '#1054#1073#1083#1072#1089#1090#1100'   '#1060#1080#1083#1080#1072#1083
          end
          object Label2XalkEDB: TLabel
            Left = 654
            Top = 16
            Width = 144
            Height = 130
            Caption = 
              #1044#1040#1042#1051#1040#1058'-'#1058#1048#1046#1054#1056#1040#1058' '#1061#1040#1051#1050' '#1041#1040#1053#1050#1048' '#1041#1054#1064#1050#1040#1056#1059#1042#1048' '#1040#1055#1055#1040'- '#1056#1040#1058#1048', '#1050#1054#1056#1040#1050#1040#1051#1055#1054#1043#1048#1057'- '#1058#1054 +
              #1053' '#1056#1045#1057#1055#1059#1041#1051#1048#1050#1040#1057#1048', '#1042#1048#1051#1054#1071#1058#1051#1040#1056' '#1042#1040' '#1058#1054#1064#1050#1045#1053#1058' '#1064#1040#1061#1040#1056' '#1040#1055#1055#1040#1056#1040#1058#1048' '#1042#1040' '#1058#1059'- '#1052#1040#1053' (' +
              #1064#1040#1061#1040#1056') '#1060#1048#1051#1048#1040#1051#1051#1040'- '#1056#1048#1044#1040' '#1061#1054#1044#1048#1052#1051#1040#1056' '#1057#1054#1053#1048' '#1042#1040' '#1058#1040#1056#1050#1048#1041#1048' '#1058#1059#1043#1056#1048#1057#1048#1044#1040' '#1052#1040#1066#1051#1059#1052#1054 +
              #1058
            WordWrap = True
          end
          object Label3: TLabel
            Left = 744
            Top = 142
            Width = 7
            Height = 13
            Caption = #1057
            Visible = False
          end
          object Label4: TLabel
            Left = 856
            Top = 142
            Width = 12
            Height = 13
            Caption = #1087#1086
            Visible = False
          end
          object edMFO: TEdit
            Left = 48
            Top = 13
            Width = 120
            Height = 21
            MaxLength = 5
            TabOrder = 0
            OnKeyUp = edMFOKeyUp
          end
          object bbGoToFilialEDB: TBitBtn
            Left = 10
            Top = 40
            Width = 160
            Height = 22
            Action = ActGoToFilial
            Caption = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1092#1080#1083#1080#1072#1083
            TabOrder = 1
          end
          object bbMutahassislar: TButton
            Left = 820
            Top = 95
            Width = 140
            Height = 22
            Caption = #1052#1091#1090#1072#1093#1072#1089#1089#1080#1089#1083#1072#1088
            TabOrder = 2
            Visible = False
            OnClick = bbMutahassislarClick
          end
          object ilova3: TBitBtn
            Left = 820
            Top = 45
            Width = 140
            Height = 22
            Caption = #1048#1083#1086#1074#1072' 3'
            TabOrder = 3
            OnClick = ilova3Click
          end
          object chbTESTEDB: TCheckBox
            Left = 656
            Top = 148
            Width = 57
            Height = 17
            Caption = 'TEST'
            TabOrder = 4
            Visible = False
          end
          object cbRGN: TComboBox
            Left = 184
            Top = 23
            Width = 307
            Height = 21
            ItemHeight = 13
            TabOrder = 5
            OnSelect = cbRGNSelect
          end
          object CBII: TComboBox
            Left = 184
            Top = 44
            Width = 307
            Height = 21
            ItemHeight = 13
            TabOrder = 6
          end
          object ilova4: TBitBtn
            Left = 820
            Top = 70
            Width = 140
            Height = 22
            Caption = #1048#1083#1086#1074#1072' 4'
            TabOrder = 7
            Visible = False
            OnClick = ilova4Click
          end
          object ilova2: TBitBtn
            Left = 820
            Top = 20
            Width = 140
            Height = 22
            Caption = #1048#1083#1086#1074#1072' 2'
            TabOrder = 8
            OnClick = ilova2Click
          end
          object dtp_From4: TDateTimePicker
            Left = 766
            Top = 138
            Width = 80
            Height = 21
            CalAlignment = dtaLeft
            Date = 40854.4070429977
            Time = 40854.4070429977
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 9
            Visible = False
          end
          object dtp_To4: TDateTimePicker
            Left = 879
            Top = 138
            Width = 80
            Height = 21
            CalAlignment = dtaLeft
            Date = 40854.4070429977
            Time = 40854.4070429977
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 10
            Visible = False
          end
          object bbSudimostiedb: TBitBtn
            Left = 242
            Top = 95
            Width = 170
            Height = 22
            Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1089#1091#1076#1080#1084#1086#1089#1090#1103#1093
            TabOrder = 11
            OnClick = bbSudimostiedbClick
          end
          object bbNeuvolennieedb: TBitBtn
            Left = 242
            Top = 120
            Width = 170
            Height = 22
            Hint = #1053#1077#1091#1074#1086#1083#1077#1085#1085#1099#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1080' '#1074' '#1089#1086#1089#1090#1086#1103#1085#1080#1080' '#1055#1088#1080#1085#1103#1090', '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1080' '#1091#1074#1086#1083#1077#1085#1085#1099#1077
            Caption = #1053#1077#1091#1074#1086#1083#1077#1085#1085#1099#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1080
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            OnClick = bbNeuvolennieedbClick
          end
          object BbStatExelEDB: TBitBtn
            Left = 10
            Top = 95
            Width = 160
            Height = 22
            Caption = #1064#1090#1072#1090' '#1074' '#1069#1082#1089#1077#1083#1100
            TabOrder = 13
            OnClick = BbStatExelEDBClick
          end
          object bbDoljnostiEDB: TBitBtn
            Left = 10
            Top = 145
            Width = 160
            Height = 22
            Hint = #1044#1086#1083#1078#1085#1086#1089#1090#1080
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080' ('#1064#1090#1072#1090')'
            TabOrder = 14
            OnClick = bbDoljnostiEDBClick
          end
          object bbDepEDB: TBitBtn
            Left = 10
            Top = 120
            Width = 160
            Height = 22
            Hint = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' ('#1064#1090#1072#1090')'
            TabOrder = 15
            OnClick = bbDepEDBClick
          end
          object ilova1_2: TBitBtn
            Left = 496
            Top = 20
            Width = 146
            Height = 22
            Caption = #1048#1083#1086#1074#1072' 1('#1087#1086' '#1064#1090#1072#1090#1091')'
            TabOrder = 16
            OnClick = ilova1_2Click
          end
          object ilova1_3: TBitBtn
            Left = 496
            Top = 45
            Width = 146
            Height = 22
            Caption = #1048#1083#1086#1074#1072' 1('#1042#1085#1077#1096#1090#1072#1090')'
            TabOrder = 17
            OnClick = ilova1_3Click
          end
          object bbCheckPoStatuEdb: TBitBtn
            Left = 242
            Top = 145
            Width = 170
            Height = 22
            Hint = #1055#1088#1086#1074#1077#1088#1082#1072' '#1087#1086' '#1096#1090#1072#1090#1091
            Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1087#1086' '#1096#1090#1072#1090#1091
            TabOrder = 18
            OnClick = bbCheckPoStatuEdbClick
          end
          object bbSpecialEDB: TBitBtn
            Left = 10
            Top = 170
            Width = 105
            Height = 22
            Hint = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103' ('#1042#1077#1088'.1)'
            Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
            TabOrder = 19
            OnClick = bbSpecialEDBClick
          end
          object bbSpecial2edb: TBitBtn
            Left = 120
            Top = 170
            Width = 50
            Height = 22
            Hint = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103' ('#1074#1077#1088'.2)'
            Caption = '('#1042#1077#1088'.2)'
            TabOrder = 20
            OnClick = bbSpecial2edbClick
          end
          object bbStatEDB: TBitBtn
            Left = 242
            Top = 170
            Width = 170
            Height = 22
            Hint = #1064#1090#1072#1090#1085#1086#1077' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077
            Caption = #1064#1090#1072#1090#1085#1086#1077' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077
            TabOrder = 21
            OnClick = bbStatEDBClick
          end
          object bbStatEDB_XB: TBitBtn
            Left = 242
            Top = 70
            Width = 170
            Height = 22
            Hint = #1064#1090#1072#1090#1085#1086#1077' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077' '#1061#1072#1083#1082' '#1041#1072#1085#1082
            Caption = #1064#1090#1072#1090#1085#1086#1077' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077' ('#1061#1041')'
            TabOrder = 22
            OnClick = bbStatEDB_XBClick
          end
          object bbStatEDB_XB_SUM: TBitBtn
            Left = 496
            Top = 70
            Width = 146
            Height = 22
            Hint = #1057#1091#1084#1084#1072#1088#1085#1086#1077' '#1064#1090#1072#1090#1085#1086#1077' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1077' ('#1061#1072#1083#1082' '#1041#1072#1085#1082')'
            Caption = #1057#1091#1084#1084#1072#1088#1085#1086#1077' '#1064#1090'.'#1088#1072#1089#1087'-'#1077' ('#1061#1041')'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 23
            OnClick = bbStatEDB_XB_SUMClick
          end
          object bbSpecial3edb: TBitBtn
            Left = 10
            Top = 194
            Width = 79
            Height = 22
            Hint = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103' ('#1042#1077#1088'.3)'
            Caption = #1057#1087#1077#1094'-'#1103' ('#1042#1077#1088'.3)'
            TabOrder = 24
            OnClick = bbSpecial3edbClick
          end
        end
        object MemoProt: TMemo
          Left = 2
          Top = 238
          Width = 983
          Height = 396
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1074' '#1043#1054
      ImageIndex = 1
      object gb_EDB_: TGroupBox
        Left = 0
        Top = 0
        Width = 987
        Height = 636
        Align = alClient
        Caption = ' '#1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1074' '#1043#1054' '
        TabOrder = 0
        Visible = False
        object cdbgOK_PERSONAL: TClientDBGrid
          Left = 2
          Top = 15
          Width = 983
          Height = 304
          Align = alClient
          DataSource = dsOKPersonal
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = cdbgOK_PERSONALDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'branch'
              Title.Caption = #1052#1060#1054
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'personal_code'
              Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082'('#1082#1086#1076')'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tabno'
              Title.Caption = #1058#1072#1073' N'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'family'
              Title.Alignment = taCenter
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'first_NAME'
              Title.Alignment = taCenter
              Title.Caption = #1048#1084#1103
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PATRONYMIC'
              Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              Width = 55
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'birthday'
              Title.Alignment = taCenter
              Title.Caption = #1044#1077#1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'department_code'
              Title.Caption = #1054#1090#1076#1077#1083'('#1082#1086#1076')'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'department_show'
              Title.Caption = #1054#1090#1076#1077#1083
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'post_code'
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100'('#1082#1086#1076')'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'post_show'
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'department_code_new'
              Title.Caption = #1053#1086#1074#1099#1081' '#1086#1090#1076#1077#1083'('#1082#1086#1076')'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'new_department_show'
              Title.Caption = #1053#1086#1074#1099#1081' '#1086#1090#1076#1077#1083
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'post_code_new'
              Title.Caption = #1053#1086#1074#1072#1103' '#1076#1086#1083#1078#1085#1086#1089#1090#1100'('#1082#1086#1076')'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'new_post_show'
              Title.Caption = #1053#1086#1074#1072#1103' '#1076#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ins_date'
              Title.Caption = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1082#1080
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'state_code'
              Title.Caption = #1050#1086#1076
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'state_name'
              Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'v_date'
              Title.Caption = #1054#1087#1077#1088'.'#1076#1077#1085#1100' '#1086#1090#1087#1088#1072#1074#1082#1080
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REPLY_DATE'
              Title.Caption = #1044#1072#1090#1072' '#1086#1090#1074#1077#1090#1072' '#1043#1054
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INS_DATE_POD'
              Title.Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_NAME_POD'
              Title.Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INS_DATE_UTV'
              Title.Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_NAME_UTV'
              Title.Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INS_DATE_UVOL'
              Title.Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1086' '#1091#1074#1086#1083#1080#1090#1100
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_NAME_UVOL'
              Title.Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1086' '#1091#1074#1086#1083#1080#1090#1100
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INS_DATE_OTKAZ'
              Title.Caption = #1054#1090#1082#1072#1079#1072#1090#1100
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_NAME_OTKAZ'
              Title.Caption = #1054#1090#1082#1072#1079#1072#1090#1100
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMMENTS'
              Title.Caption = #1055#1088#1080#1095#1080#1085#1072' ('#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080')'
              Width = 250
              Visible = True
            end>
        end
        object GroupBox5: TGroupBox
          Left = 2
          Top = 319
          Width = 983
          Height = 65
          Align = alBottom
          TabOrder = 1
          object Label2: TLabel
            Left = 128
            Top = 34
            Width = 180
            Height = 13
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1082#1072#1079#1072' ('#1080#1083#1080' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080')'
          end
          object BitBtn1: TBitBtn
            Left = 10
            Top = 10
            Width = 103
            Height = 20
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object bbgotopers: TBitBtn
            Left = 120
            Top = 10
            Width = 140
            Height = 20
            Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
            TabOrder = 1
            OnClick = bbgotopersClick
          end
          object bbPodtv: TBitBtn
            Left = 270
            Top = 10
            Width = 140
            Height = 20
            Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
            Enabled = False
            TabOrder = 2
            OnClick = bbPodtvClick
          end
          object bbUtv: TBitBtn
            Left = 420
            Top = 10
            Width = 140
            Height = 20
            Caption = #1059#1090#1074#1077#1088#1076#1080#1090#1100' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
            Enabled = False
            TabOrder = 3
            OnClick = bbUtvClick
          end
          object bbsubmituvol: TBitBtn
            Left = 570
            Top = 10
            Width = 140
            Height = 20
            Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1091#1074#1086#1083#1080#1090#1100
            Enabled = False
            TabOrder = 4
            OnClick = bbsubmituvolClick
          end
          object bbOtkaz: TBitBtn
            Left = 720
            Top = 10
            Width = 140
            Height = 20
            Caption = #1054#1090#1082#1072#1079#1072#1090#1100
            Enabled = False
            TabOrder = 5
            OnClick = bbOtkazClick
          end
          object bbFiltrGO: TBitBtn
            Left = 872
            Top = 10
            Width = 75
            Height = 20
            Caption = #1060#1080#1083#1100#1090#1088
            TabOrder = 6
            OnClick = bbFiltrGOClick
          end
          object BitBtn4: TBitBtn
            Left = 10
            Top = 34
            Width = 103
            Height = 20
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100'>>'
            TabOrder = 7
            OnClick = BitBtn4Click
          end
          object edCOMMENTS: TEdit
            Left = 312
            Top = 32
            Width = 633
            Height = 21
            TabOrder = 8
          end
        end
        object gbFiltr: TGroupBox
          Left = 2
          Top = 384
          Width = 983
          Height = 250
          Align = alBottom
          Caption = '  '#1060#1080#1083#1100#1090#1088'  '
          TabOrder = 2
          Visible = False
          object Label19: TLabel
            Left = 200
            Top = 227
            Width = 12
            Height = 13
            Caption = #1087#1086
          end
          object BitBtn2: TBitBtn
            Left = 8
            Top = 56
            Width = 75
            Height = 25
            Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
            TabOrder = 0
            OnClick = BitBtn2Click
          end
          object BitBtn3: TBitBtn
            Left = 8
            Top = 88
            Width = 75
            Height = 25
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100
            TabOrder = 1
            OnClick = BitBtn3Click
          end
          object gbFields: TGroupBox
            Left = 92
            Top = 64
            Width = 889
            Height = 158
            Align = alCustom
            TabOrder = 2
          end
          object ClientDBGrid1: TClientDBGrid
            Left = 92
            Top = 8
            Width = 885
            Height = 60
            Align = alCustom
            DataSource = dsOKPersonalFiltr
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'branch'
                Title.Caption = #1052#1060#1054
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'department_show'
                Title.Caption = #1054#1090#1076#1077#1083
                Width = 175
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'post_show'
                Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                Width = 175
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'new_department_show'
                Title.Caption = #1053#1086#1074#1099#1081' '#1086#1090#1076#1077#1083
                Width = 175
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'new_post_show'
                Title.Caption = #1053#1086#1074#1072#1103' '#1076#1086#1083#1078#1085#1086#1089#1090#1100
                Width = 175
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'state_name'
                Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                Width = 150
                Visible = True
              end>
          end
          object Memo1: TMemo
            Left = 8
            Top = 160
            Width = 81
            Height = 57
            Lines.Strings = (
              'Memo1')
            TabOrder = 4
            Visible = False
          end
          object BitBtn5: TBitBtn
            Left = 8
            Top = 120
            Width = 75
            Height = 25
            Caption = #1057#1087#1088#1103#1090#1072#1090#1100
            TabOrder = 5
            OnClick = bbFiltrGOClick
          end
          object chbfiltr: TCheckBox
            Left = 8
            Top = 32
            Width = 73
            Height = 17
            Caption = #1040#1088#1093#1080#1074
            TabOrder = 6
            OnClick = chbfiltrClick
          end
          object chbPeriod: TCheckBox
            Left = 8
            Top = 227
            Width = 89
            Height = 17
            Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076' c'
            TabOrder = 7
          end
          object dtpPeriodFrom: TDateTimePicker
            Left = 110
            Top = 225
            Width = 80
            Height = 21
            CalAlignment = dtaLeft
            Date = 40854.4070429977
            Time = 40854.4070429977
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 8
          end
          object dtpPeriodTo: TDateTimePicker
            Left = 223
            Top = 225
            Width = 80
            Height = 21
            CalAlignment = dtaLeft
            Date = 40854.4070429977
            Time = 40854.4070429977
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 9
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1074' '#1086#1073#1083#1072#1089#1090#1080
      ImageIndex = 2
      object gb_Obl: TGroupBox
        Left = 0
        Top = 0
        Width = 987
        Height = 636
        Align = alClient
        Caption = ' '#1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1074' '#1086#1073#1083#1072#1089#1090#1080' '
        TabOrder = 0
        Visible = False
        object cdbgOK_PERSONAL_OBL: TClientDBGrid
          Left = 2
          Top = 15
          Width = 983
          Height = 304
          Align = alClient
          DataSource = dsOKPersonal_OBL
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = cdbgOK_PERSONAL_OBLDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'branch'
              Title.Caption = #1052#1060#1054
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'personal_code'
              Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082'('#1082#1086#1076')'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tabno'
              Title.Caption = #1058#1072#1073' N'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'family'
              Title.Alignment = taCenter
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'first_NAME'
              Title.Alignment = taCenter
              Title.Caption = #1048#1084#1103
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PATRONYMIC'
              Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              Width = 55
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'birthday'
              Title.Alignment = taCenter
              Title.Caption = #1044#1077#1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'department_code'
              Title.Caption = #1054#1090#1076#1077#1083'('#1082#1086#1076')'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'department_show'
              Title.Caption = #1054#1090#1076#1077#1083
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'post_code'
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100'('#1082#1086#1076')'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'post_show'
              Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'department_code_new'
              Title.Caption = #1053#1086#1074#1099#1081' '#1086#1090#1076#1077#1083'('#1082#1086#1076')'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'new_department_show'
              Title.Caption = #1053#1086#1074#1099#1081' '#1086#1090#1076#1077#1083
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'post_code_new'
              Title.Caption = #1053#1086#1074#1072#1103' '#1076#1086#1083#1078#1085#1086#1089#1090#1100'('#1082#1086#1076')'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'new_post_show'
              Title.Caption = #1053#1086#1074#1072#1103' '#1076#1086#1083#1078#1085#1086#1089#1090#1100
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ins_date'
              Title.Caption = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088#1072#1074#1082#1080
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'state_code'
              Title.Caption = #1050#1086#1076
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'state_name'
              Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'v_date'
              Title.Caption = #1054#1087#1077#1088'.'#1076#1077#1085#1100' '#1086#1090#1087#1088#1072#1074#1082#1080
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REPLY_DATE'
              Title.Caption = #1044#1072#1090#1072' '#1086#1090#1074#1077#1090#1072' '#1043#1054
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INS_DATE_POD'
              Title.Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_NAME_POD'
              Title.Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INS_DATE_UTV'
              Title.Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_NAME_UTV'
              Title.Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INS_DATE_UVOL'
              Title.Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1086' '#1091#1074#1086#1083#1080#1090#1100
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_NAME_UVOL'
              Title.Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1086' '#1091#1074#1086#1083#1080#1090#1100
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INS_DATE_OTKAZ'
              Title.Caption = #1054#1090#1082#1072#1079#1072#1090#1100
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMP_NAME_OTKAZ'
              Title.Caption = #1054#1090#1082#1072#1079#1072#1090#1100
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMMENTS'
              Title.Caption = #1055#1088#1080#1095#1080#1085#1072'('#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080')'
              Visible = True
            end>
        end
        object GroupBox6: TGroupBox
          Left = 2
          Top = 319
          Width = 983
          Height = 65
          Align = alBottom
          TabOrder = 1
          object Label10: TLabel
            Left = 128
            Top = 34
            Width = 180
            Height = 13
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1082#1072#1079#1072' ('#1080#1083#1080' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080')'
          end
          object BitBtn6: TBitBtn
            Left = 10
            Top = 10
            Width = 103
            Height = 20
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object bbgotopersOBL: TBitBtn
            Left = 120
            Top = 10
            Width = 140
            Height = 20
            Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
            TabOrder = 1
            OnClick = bbgotopersClick
          end
          object bbPodtvOBL: TBitBtn
            Left = 270
            Top = 10
            Width = 140
            Height = 20
            Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
            Enabled = False
            TabOrder = 2
            OnClick = bbPodtvClick
          end
          object bbUtvOBL: TBitBtn
            Left = 420
            Top = 10
            Width = 140
            Height = 20
            Caption = #1059#1090#1074#1077#1088#1076#1080#1090#1100' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
            Enabled = False
            TabOrder = 3
            OnClick = bbUtvClick
          end
          object bbsubmituvolOBL: TBitBtn
            Left = 570
            Top = 10
            Width = 140
            Height = 20
            Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1091#1074#1086#1083#1080#1090#1100
            Enabled = False
            TabOrder = 4
            OnClick = bbsubmituvolClick
          end
          object bbOtkazOBL: TBitBtn
            Left = 720
            Top = 10
            Width = 140
            Height = 20
            Caption = #1054#1090#1082#1072#1079#1072#1090#1100
            Enabled = False
            TabOrder = 5
            OnClick = bbOtkazClick
          end
          object bbFiltrOBL: TBitBtn
            Left = 872
            Top = 10
            Width = 75
            Height = 20
            Caption = #1060#1080#1083#1100#1090#1088
            TabOrder = 6
            OnClick = bbFiltrOBLClick
          end
          object BitBtn7: TBitBtn
            Left = 10
            Top = 34
            Width = 103
            Height = 20
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100'>>'
            TabOrder = 7
            OnClick = BitBtn7Click
          end
          object edComments_OBL: TEdit
            Left = 312
            Top = 32
            Width = 633
            Height = 21
            TabOrder = 8
          end
        end
        object gbFiltrOBL: TGroupBox
          Left = 2
          Top = 384
          Width = 983
          Height = 250
          Align = alBottom
          Caption = '  '#1060#1080#1083#1100#1090#1088'  '
          TabOrder = 2
          Visible = False
          object Label18: TLabel
            Left = 200
            Top = 227
            Width = 12
            Height = 13
            Caption = #1087#1086
          end
          object BitBtn13: TBitBtn
            Left = 8
            Top = 56
            Width = 75
            Height = 25
            Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
            TabOrder = 0
            OnClick = BitBtn13Click
          end
          object BitBtn14: TBitBtn
            Left = 8
            Top = 88
            Width = 75
            Height = 25
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100
            TabOrder = 1
            OnClick = BitBtn3Click
          end
          object gbFieldsOBL: TGroupBox
            Left = 92
            Top = 64
            Width = 889
            Height = 158
            Align = alCustom
            TabOrder = 2
          end
          object ClientDBGrid3: TClientDBGrid
            Left = 92
            Top = 8
            Width = 885
            Height = 60
            Align = alCustom
            DataSource = dsOKPersonalFiltr
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'branch'
                Title.Caption = #1052#1060#1054
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'department_show'
                Title.Caption = #1054#1090#1076#1077#1083
                Width = 175
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'post_show'
                Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                Width = 175
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'new_department_show'
                Title.Caption = #1053#1086#1074#1099#1081' '#1086#1090#1076#1077#1083
                Width = 175
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'new_post_show'
                Title.Caption = #1053#1086#1074#1072#1103' '#1076#1086#1083#1078#1085#1086#1089#1090#1100
                Width = 175
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'state_name'
                Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
                Width = 150
                Visible = True
              end>
          end
          object Memo2: TMemo
            Left = 8
            Top = 160
            Width = 81
            Height = 57
            Lines.Strings = (
              'Memo1')
            TabOrder = 4
            Visible = False
          end
          object BitBtn15: TBitBtn
            Left = 8
            Top = 120
            Width = 75
            Height = 25
            Caption = #1057#1087#1088#1103#1090#1072#1090#1100
            TabOrder = 5
            OnClick = bbFiltrGOClick
          end
          object chbfiltrOBL: TCheckBox
            Left = 8
            Top = 32
            Width = 73
            Height = 17
            Caption = #1040#1088#1093#1080#1074
            TabOrder = 6
            OnClick = chbfiltrOBLClick
          end
          object dtpPeriodToOBL: TDateTimePicker
            Left = 223
            Top = 225
            Width = 80
            Height = 21
            CalAlignment = dtaLeft
            Date = 40854.4070429977
            Time = 40854.4070429977
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 7
          end
          object dtpPeriodFromOBL: TDateTimePicker
            Left = 110
            Top = 225
            Width = 80
            Height = 21
            CalAlignment = dtaLeft
            Date = 40854.4070429977
            Time = 40854.4070429977
            DateFormat = dfShort
            DateMode = dmComboBox
            Kind = dtkDate
            ParseInput = False
            TabOrder = 8
          end
          object chbPeriodOBL: TCheckBox
            Left = 8
            Top = 227
            Width = 89
            Height = 17
            Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076' c'
            TabOrder = 9
          end
        end
      end
    end
    object TabFiltr: TTabSheet
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1056#1077#1089#1087#1091#1073#1083#1080#1082#1077
      ImageIndex = 3
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 987
        Height = 636
        Align = alClient
        Caption = ' '#1060#1080#1083#1100#1090#1088' '#1087#1086' '#1056#1077#1089#1087#1091#1073#1083#1080#1082#1077' '
        TabOrder = 0
        object gbPersonal: TGroupBox
          Left = 2
          Top = 15
          Width = 983
          Height = 74
          Align = alTop
          TabOrder = 0
          object lbStatus: TLabel
            Left = 288
            Top = 20
            Width = 3
            Height = 13
          end
          object Label32: TLabel
            Left = 449
            Top = 15
            Width = 83
            Height = 13
            Caption = #1044#1072#1090#1072' '#1056#1086#1078#1076#1077#1085#1080#1103':'
            Enabled = False
            Visible = False
          end
          object Label13: TLabel
            Left = 188
            Top = 8
            Width = 28
            Height = 13
            Caption = #1052#1060#1054
          end
          object Label12: TLabel
            Left = 12
            Top = 8
            Width = 162
            Height = 13
            Caption = #1056#1077#1089#1087#1091#1073#1083#1080#1082#1072':  '#1054#1073#1083#1072#1089#1090#1100'   '#1060#1080#1083#1080#1072#1083
          end
          object dbeOKGender: TDBEdit
            Tag = 1
            Left = 748
            Top = 41
            Width = 40
            Height = 21
            TabStop = False
            DataField = 'gender_code'
            DataSource = BOKForm.dsOKPersonal_NEW
            Enabled = False
            TabOrder = 5
            Visible = False
          end
          object dblcbOKGender: TDBLookupComboBox
            Left = 792
            Top = 41
            Width = 137
            Height = 21
            DataField = 'GENDER_CODE'
            DataSource = BOKForm.dsOKPersonal_NEW
            DropDownRows = 10
            Enabled = False
            KeyField = 'GENDER_CODE'
            ListField = 'GENDER_NAME'
            ListFieldIndex = 1
            ListSource = BOKForm.dsSSokgender_SET
            TabOrder = 6
            TabStop = False
            Visible = False
          end
          object dblcbOKFamilyStatus: TDBLookupComboBox
            Left = 792
            Top = 15
            Width = 137
            Height = 21
            DataField = 'FAMILY_STATUS_CODE'
            DataSource = BOKForm.dsOKPersonal_NEW
            DropDownRows = 10
            Enabled = False
            KeyField = 'FAMILY_STATUS_CODE'
            ListField = 'FAMILY_STATUS_NAME'
            ListFieldIndex = 1
            ListSource = BOKForm.dsSSOKFAMILYSTATUS_SET
            TabOrder = 4
            TabStop = False
            Visible = False
          end
          object dbeOKFamilyStatus: TDBEdit
            Tag = 1
            Left = 748
            Top = 15
            Width = 40
            Height = 21
            DataField = 'family_status_code'
            DataSource = BOKForm.dsOKPersonal_NEW
            Enabled = False
            TabOrder = 3
            Visible = False
          end
          object chbFamilyStatus: TCheckBox
            Left = 624
            Top = 15
            Width = 121
            Height = 17
            Caption = #1057#1077#1084#1077#1081#1085'.'#1087#1086#1083#1086#1078#1077#1085#1080#1077':'
            Enabled = False
            TabOrder = 7
            Visible = False
          end
          object chbGender: TCheckBox
            Left = 624
            Top = 41
            Width = 73
            Height = 17
            Caption = #1055#1086#1083':'
            Enabled = False
            TabOrder = 8
            Visible = False
          end
          object medOK_BIRTHDAY: TMaskEdit
            Left = 539
            Top = 15
            Width = 78
            Height = 21
            Enabled = False
            EditMask = '!99/99/9999;'
            MaxLength = 10
            TabOrder = 9
            Text = '  .  .    '
            Visible = False
          end
          object edBranchFilter: TEdit
            Left = 224
            Top = 8
            Width = 65
            Height = 21
            Enabled = False
            TabOrder = 0
          end
          object cbRGN_2: TComboBox
            Left = 12
            Top = 30
            Width = 397
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            OnSelect = cbRGN_2Select
          end
          object CBII_2: TComboBox
            Left = 12
            Top = 50
            Width = 397
            Height = 21
            ItemHeight = 13
            TabOrder = 2
          end
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 177
          Width = 983
          Height = 52
          Align = alTop
          Caption = ' '#1055#1086#1080#1089#1082' '#1087#1086' '#1089#1090#1072#1078#1091' '
          TabOrder = 1
          object Label5: TLabel
            Left = 257
            Top = 24
            Width = 16
            Height = 13
            Caption = #1054#1090':'
          end
          object Label6: TLabel
            Left = 329
            Top = 24
            Width = 18
            Height = 13
            Caption = #1044#1086':'
          end
          object Label9: TLabel
            Left = 400
            Top = 24
            Width = 17
            Height = 13
            Caption = #1083#1077#1090
          end
          object RadioGroup1: TRadioGroup
            Left = 8
            Top = 13
            Width = 233
            Height = 33
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              #1054#1073#1097#1080#1081
              #1041#1072#1085#1082#1086#1074#1089#1082#1080#1081)
            TabOrder = 0
          end
          object Edit1: TEdit
            Left = 284
            Top = 24
            Width = 37
            Height = 21
            TabOrder = 1
          end
          object Edit2: TEdit
            Left = 356
            Top = 24
            Width = 37
            Height = 21
            TabOrder = 2
          end
          object bOk: TButton
            Left = 432
            Top = 24
            Width = 75
            Height = 21
            Caption = #1043#1086#1090#1086#1074#1086
            Default = True
            ModalResult = 1
            TabOrder = 3
            OnClick = bOkClick
          end
        end
        object gbAddress: TGroupBox
          Left = 2
          Top = 321
          Width = 983
          Height = 313
          Align = alClient
          TabOrder = 2
        end
        object GroupBox7: TGroupBox
          Left = 2
          Top = 229
          Width = 983
          Height = 40
          Align = alTop
          TabOrder = 3
          object Label11: TLabel
            Left = 8
            Top = 15
            Width = 103
            Height = 13
            Caption = #1059#1095#1077#1073#1085#1086#1077' '#1079#1072#1074#1077#1076#1077#1085#1080#1077':'
          end
          object lbEducation: TLabel
            Left = 190
            Top = 15
            Width = 113
            Height = 13
            Caption = '(F9 - '#1074#1099#1073#1086#1088' '#1080#1079' '#1089#1087#1080#1089#1082#1072')'
            Constraints.MaxWidth = 170
          end
          object edInstitution: TEdit
            Left = 116
            Top = 12
            Width = 64
            Height = 21
            TabOrder = 0
            OnKeyDown = FormKeyDown
          end
          object Button2: TButton
            Left = 318
            Top = 12
            Width = 75
            Height = 21
            Caption = #1043#1086#1090#1086#1074#1086
            Default = True
            ModalResult = 1
            TabOrder = 1
            OnClick = Button2Click
          end
        end
        object GroupBox8: TGroupBox
          Left = 2
          Top = 269
          Width = 983
          Height = 52
          Align = alTop
          Caption = ' '#1054#1090#1089#1091#1090#1089#1090#1074#1091#1102#1097#1080#1077'  '
          TabOrder = 4
          object RadioGroup2: TRadioGroup
            Left = 8
            Top = 13
            Width = 233
            Height = 33
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              #1087#1086' '#1073#1086#1083#1077#1079#1085#1080
              #1080#1079'-'#1079#1072' '#1091#1095#1077#1073#1099)
            TabOrder = 0
          end
          object Button3: TButton
            Left = 248
            Top = 21
            Width = 75
            Height = 21
            Caption = #1043#1086#1090#1086#1074#1086
            Default = True
            ModalResult = 1
            TabOrder = 1
            OnClick = Button3Click
          end
        end
        object GroupBox9: TGroupBox
          Left = 2
          Top = 89
          Width = 983
          Height = 88
          Align = alTop
          TabOrder = 5
          object Label30: TLabel
            Left = 12
            Top = 11
            Width = 52
            Height = 13
            Caption = #1060#1072#1084#1080#1083#1080#1103':'
          end
          object Label23: TLabel
            Left = 12
            Top = 36
            Width = 25
            Height = 13
            Caption = #1048#1084#1103':'
          end
          object Label8: TLabel
            Left = 257
            Top = 11
            Width = 61
            Height = 13
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
          end
          object Label7: TLabel
            Left = 257
            Top = 36
            Width = 34
            Height = 13
            Caption = #1054#1090#1076#1077#1083':'
          end
          object lbPost: TLabel
            Left = 394
            Top = 11
            Width = 113
            Height = 13
            Caption = '(F9 - '#1074#1099#1073#1086#1088' '#1080#1079' '#1089#1087#1080#1089#1082#1072')'
            Constraints.MaxWidth = 170
          end
          object lbDepartment: TLabel
            Left = 394
            Top = 36
            Width = 113
            Height = 13
            Caption = '(F9 - '#1074#1099#1073#1086#1088' '#1080#1079' '#1089#1087#1080#1089#1082#1072')'
            Constraints.MaxWidth = 170
          end
          object Label14: TLabel
            Left = 528
            Top = 7
            Width = 82
            Height = 13
            Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103':'
            Enabled = False
            Visible = False
          end
          object lbSpecial: TLabel
            Left = 664
            Top = 7
            Width = 113
            Height = 13
            Caption = '(F9 - '#1074#1099#1073#1086#1088' '#1080#1079' '#1089#1087#1080#1089#1082#1072')'
            Constraints.MaxWidth = 170
            Enabled = False
            Visible = False
          end
          object lbBasis: TLabel
            Left = 664
            Top = 32
            Width = 113
            Height = 13
            Caption = '(F9 - '#1074#1099#1073#1086#1088' '#1080#1079' '#1089#1087#1080#1089#1082#1072')'
            Constraints.MaxWidth = 170
            Enabled = False
            Visible = False
          end
          object Label15: TLabel
            Left = 664
            Top = 57
            Width = 113
            Height = 13
            Caption = '(F9 - '#1074#1099#1073#1086#1088' '#1080#1079' '#1089#1087#1080#1089#1082#1072')'
            Constraints.MaxWidth = 170
            Enabled = False
            Visible = False
          end
          object Label16: TLabel
            Left = 528
            Top = 32
            Width = 77
            Height = 13
            Caption = #1055#1088#1080#1079#1085#1072#1082' '#1086#1073#1088'-'#1103':'
            Enabled = False
            Visible = False
          end
          object Label17: TLabel
            Left = 528
            Top = 57
            Width = 71
            Height = 13
            Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077':'
            Enabled = False
            Visible = False
          end
          object Button1: TButton
            Left = 12
            Top = 59
            Width = 75
            Height = 21
            Caption = #1043#1086#1090#1086#1074#1086
            Default = True
            ModalResult = 1
            TabOrder = 0
            OnClick = Button1Click
          end
          object EdFamily: TEdit
            Left = 112
            Top = 11
            Width = 121
            Height = 21
            TabOrder = 1
          end
          object edname: TEdit
            Left = 112
            Top = 36
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object bClear: TButton
            Left = 112
            Top = 64
            Width = 75
            Height = 16
            Caption = #1054#1095#1080#1089#1090#1080#1090#1100
            TabOrder = 3
            OnClick = bClearClick
          end
          object edPost: TEdit
            Left = 324
            Top = 11
            Width = 64
            Height = 21
            TabOrder = 4
            OnKeyDown = FormKeyDown
          end
          object edDepartment: TEdit
            Left = 324
            Top = 36
            Width = 64
            Height = 21
            TabOrder = 5
            OnKeyDown = FormKeyDown
          end
          object edSpecial: TEdit
            Left = 624
            Top = 7
            Width = 36
            Height = 21
            Enabled = False
            TabOrder = 6
            Visible = False
            OnKeyDown = FormKeyDown
          end
          object edEducation: TEdit
            Left = 624
            Top = 57
            Width = 36
            Height = 21
            Enabled = False
            TabOrder = 7
            Visible = False
            OnKeyDown = FormKeyDown
          end
          object edBasis: TEdit
            Left = 624
            Top = 32
            Width = 36
            Height = 21
            Enabled = False
            TabOrder = 8
            Visible = False
            OnKeyDown = FormKeyDown
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 208
    Top = 464
    object N1: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1092#1072#1081#1083' '#1086#1090#1074#1077#1090#1072
      ImageIndex = 11
      object basa1: TMenuItem
        Caption = #1054#1090#1076#1077#1083' '#1050#1072#1076#1088#1086#1074' '#1045#1076#1080#1085#1072#1103' '#1041#1072#1079#1072
        Hint = #1047#1072#1087#1088#1086#1089#1099' '#1074' '#1053#1048#1050#1048
        ImageIndex = 4
      end
    end
    object N5: TMenuItem
      Caption = '?'
      object N6: TMenuItem
        Action = Actabout
      end
    end
  end
  object ActionList1: TActionList
    Left = 34
    Top = 584
    object Actabout: TAction
      Category = 'help'
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
      OnExecute = ActaboutExecute
    end
    object ActGoToFilial: TAction
      Category = 'help'
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1092#1080#1083#1080#1072#1083
      OnExecute = ActGoToFilialExecute
    end
  end
  object cdsTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 464
  end
  object CDS_DBBranch: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 664
    Top = 456
  end
  object ExecPrc: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 448
  end
  object cdsssokpost: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 680
    Top = 448
  end
  object cdsOKPersonal: TClientDataSetEx
    Aggregates = <>
    Params = <>
    ReadOnly = True
    Left = 646
    Top = 240
  end
  object dsOKPersonal: TDataSource
    DataSet = cdsOKPersonal
    Left = 644
    Top = 250
  end
  object cdsSSOKDepartment_RO: TClientDataSetEx
    Aggregates = <>
    Params = <>
    Left = 486
    Top = 456
  end
  object cdsSSOKPost_SET: TClientDataSetEx
    Aggregates = <>
    Params = <>
    Left = 614
    Top = 280
  end
  object cdsSS_OK_GOSUBMIT: TClientDataSetEx
    Aggregates = <>
    Params = <>
    Left = 486
    Top = 480
  end
  object cdsOKPersonalFiltr: TClientDataSetEx
    Aggregates = <>
    Params = <>
    BeforePost = cdsOKPersonalFiltrBeforePost
    Left = 790
    Top = 304
  end
  object dsOKPersonalFiltr: TDataSource
    DataSet = cdsOKPersonalFiltr
    Left = 772
    Top = 226
  end
  object dsOKPersonal_OBL: TDataSource
    DataSet = cdsOKPersonal_OBL
    Left = 620
    Top = 258
  end
  object cdsOKPersonal_OBL: TClientDataSetEx
    Aggregates = <>
    Params = <>
    ReadOnly = True
    Left = 622
    Top = 280
  end
  object cdsTempSource: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 488
  end
  object CDS_DBBranchStat: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 464
  end
  object cdsTempDoljn: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 472
  end
  object Source: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 400
  end
end
