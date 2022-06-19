object frm_LumirControl: Tfrm_LumirControl
  Left = 0
  Top = 0
  Caption = #44540#51217#51216#44228' '#52769#51221'  '#54532#47196#44536#47016
  ClientHeight = 561
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 542
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Measurement Setup'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 513
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 16
          Top = 11
          Width = 185
          Height = 105
          Caption = ' '#50868#50689#47784#46300' '
          TabOrder = 0
          object RadioButton1: TRadioButton
            Left = 22
            Top = 32
            Width = 113
            Height = 17
            Caption = 'Continue'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton2: TRadioButton
            Left = 22
            Top = 64
            Width = 113
            Height = 17
            Caption = 'BSU '#50672#46041
            TabOrder = 1
          end
        end
        object GroupBox4: TGroupBox
          Left = 263
          Top = 122
          Width = 410
          Height = 196
          Caption = ' Measurement Range '
          TabOrder = 1
          object Label5: TLabel
            Left = 120
            Top = 26
            Width = 48
            Height = 13
            Caption = 'X-axis'
          end
          object Label6: TLabel
            Left = 248
            Top = 26
            Width = 48
            Height = 13
            Caption = 'Y-axis'
          end
          object Label7: TLabel
            Left = 32
            Top = 48
            Width = 56
            Height = 13
            Caption = 'Start :'
          end
          object Label8: TLabel
            Left = 188
            Top = 48
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 316
            Top = 48
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 32
            Top = 75
            Width = 48
            Height = 13
            Caption = 'Stop :'
          end
          object Label11: TLabel
            Left = 188
            Top = 75
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 316
            Top = 75
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 32
            Top = 102
            Width = 48
            Height = 13
            Caption = 'Step :'
          end
          object Label14: TLabel
            Left = 188
            Top = 102
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 316
            Top = 102
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 32
            Top = 129
            Width = 56
            Height = 13
            Caption = 'Point :'
          end
          object Label17: TLabel
            Left = 188
            Top = 129
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 316
            Top = 129
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Edit4: TEdit
            Left = 102
            Top = 45
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 0
            Text = '-887.5'
          end
          object Edit5: TEdit
            Left = 230
            Top = 45
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 1
            Text = '-887.5'
          end
          object Edit6: TEdit
            Left = 102
            Top = 72
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 2
            Text = '887.5'
          end
          object Edit7: TEdit
            Left = 230
            Top = 72
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 3
            Text = '887.5'
          end
          object Edit8: TEdit
            Left = 102
            Top = 99
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 4
            Text = '25'
          end
          object Edit9: TEdit
            Left = 230
            Top = 99
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 5
            Text = '25'
          end
          object Edit10: TEdit
            Left = 102
            Top = 126
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 6
            Text = '72'
          end
          object Edit11: TEdit
            Left = 230
            Top = 126
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 7
            Text = '72'
          end
          object BitBtn5: TBitBtn
            Left = 102
            Top = 153
            Width = 115
            Height = 25
            Caption = 'Point Cal.'
            TabOrder = 8
            OnClick = BitBtn5Click
          end
          object BitBtn6: TBitBtn
            Left = 230
            Top = 153
            Width = 115
            Height = 25
            Caption = 'Balance'
            TabOrder = 9
            OnClick = BitBtn6Click
          end
        end
        object GroupBox5: TGroupBox
          Left = 679
          Top = 122
          Width = 138
          Height = 95
          Caption = ' Polarization '
          TabOrder = 2
          object RadioButton3: TRadioButton
            Left = 14
            Top = 32
            Width = 113
            Height = 17
            Caption = 'H-Pol'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton4: TRadioButton
            Left = 14
            Top = 59
            Width = 113
            Height = 17
            Caption = 'V-Pol'
            TabOrder = 1
          end
        end
        object GroupBox6: TGroupBox
          Left = 823
          Top = 122
          Width = 164
          Height = 95
          Caption = ' Direction '
          TabOrder = 3
          object RadioButton5: TRadioButton
            Left = 13
            Top = 32
            Width = 140
            Height = 17
            Caption = 'Uni-directional'
            TabOrder = 0
          end
          object RadioButton6: TRadioButton
            Left = 13
            Top = 56
            Width = 140
            Height = 17
            Caption = 'Bi-directional'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
        end
        object GroupBox7: TGroupBox
          Left = 679
          Top = 223
          Width = 138
          Height = 95
          Caption = ' Main-Pol'
          TabOrder = 4
          object RadioButton7: TRadioButton
            Left = 14
            Top = 34
            Width = 113
            Height = 17
            Caption = 'Co-Pol'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton8: TRadioButton
            Left = 14
            Top = 59
            Width = 113
            Height = 17
            Caption = 'Cx-Pol'
            TabOrder = 1
          end
        end
        object GroupBox8: TGroupBox
          Left = 823
          Top = 223
          Width = 164
          Height = 95
          Caption = ' Scan '
          TabOrder = 5
          object RadioButton9: TRadioButton
            Left = 13
            Top = 32
            Width = 140
            Height = 17
            Caption = 'X-axis Scan'
            TabOrder = 0
          end
          object RadioButton10: TRadioButton
            Left = 13
            Top = 59
            Width = 140
            Height = 17
            Caption = 'Y-axis Scan'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
        end
        object GroupBox9: TGroupBox
          Left = 263
          Top = 324
          Width = 410
          Height = 64
          Caption = ' Distance '
          TabOrder = 6
          object Label19: TLabel
            Left = 32
            Top = 24
            Width = 136
            Height = 13
            Caption = 'Probe Distance : '
          end
          object Label20: TLabel
            Left = 257
            Top = 24
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Edit12: TEdit
            Left = 171
            Top = 21
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 0
            Text = '175'
          end
        end
        object GroupBox10: TGroupBox
          Left = 679
          Top = 324
          Width = 308
          Height = 64
          Caption = ' Probe '
          TabOrder = 7
          object ComboBox1: TComboBox
            Left = 64
            Top = 24
            Width = 225
            Height = 21
            ItemIndex = 9
            TabOrder = 0
            Text = 'WR-137 (5.85-8.20 GHz)'
            Items.Strings = (
              'WR-975 (0.75-1.15 GHz)'
              'WR-770 (0.96-1.50 GHz)'
              'WR-650 (1.12-1.70 GHz)'
              'WR-510 (1.45-2.20 GHz)'
              'WR-430 (1.70-2.60 GHz)'
              'WR-340 (2.20-3.30 GHz)'
              'WR-284 (2.60-3.95 GHz)'
              'WR-229 (3.30-4.90 GHz)'
              'WR-187 (3.95-5.85 GHz)'
              'WR-137 (5.85-8.20 GHz)'
              'WR-112 (7.05-10.0 GHz)'
              'WR- 90 (8.20-12.4 GHz)'
              'WR- 75 (10.0-15.0 GHz)'
              'WR- 62 (12.4-18.0 GHz)'
              'WR- 51 (15.0-22.0 GHz)'
              'WR- 42 (18.0-26.5 GHz)'
              'WR- 34 (22.0-33.0 GHz)'
              'WR- 28 (26.5-40.0 GHz)'
              'WR- 22 (32.9-50.1 GHz)'
              'WR- 19 (40.0-60.0 GHz)'
              'WR- 12 (60.0-90.0 GHz)'
              'WR- 10 (75.0-110.0 GHz)'
              'WR-  8 (90.0-140.0 GHz)')
          end
        end
        object GroupBox11: TGroupBox
          Left = 263
          Top = 394
          Width = 410
          Height = 106
          Caption = ' Measurement Speed '
          TabOrder = 8
          object Label21: TLabel
            Left = 120
            Top = 26
            Width = 48
            Height = 13
            Caption = 'X-axis'
          end
          object Label22: TLabel
            Left = 248
            Top = 26
            Width = 48
            Height = 13
            Caption = 'Y-axis'
          end
          object Label23: TLabel
            Left = 32
            Top = 50
            Width = 64
            Height = 13
            Caption = 'Speed : '
          end
          object Label24: TLabel
            Left = 188
            Top = 48
            Width = 28
            Height = 13
            Caption = 'cm/s'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 316
            Top = 48
            Width = 28
            Height = 13
            Caption = 'cm/s'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 32
            Top = 75
            Width = 48
            Height = 13
            Caption = 'Acc. :'
          end
          object Label27: TLabel
            Left = 188
            Top = 75
            Width = 42
            Height = 13
            Caption = 'cm/s'#178
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 316
            Top = 75
            Width = 42
            Height = 13
            Caption = 'cm/s'#178
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Edit13: TEdit
            Left = 102
            Top = 45
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 0
            Text = '1'
          end
          object Edit14: TEdit
            Left = 230
            Top = 45
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 1
            Text = '0.5'
          end
          object Edit15: TEdit
            Left = 102
            Top = 72
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 2
            Text = '5'
          end
          object Edit16: TEdit
            Left = 230
            Top = 72
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 3
            Text = '2'
          end
        end
        object GroupBox12: TGroupBox
          Left = 679
          Top = 394
          Width = 306
          Height = 105
          Caption = ' PNA '
          TabOrder = 9
          object Label29: TLabel
            Left = 16
            Top = 42
            Width = 80
            Height = 13
            Caption = 'RF Power :'
          end
          object Label30: TLabel
            Left = 16
            Top = 67
            Width = 112
            Height = 13
            Caption = 'IF Bandwidth :'
          end
          object Label31: TLabel
            Left = 236
            Top = 40
            Width = 21
            Height = 13
            Caption = 'dBm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 236
            Top = 67
            Width = 14
            Height = 13
            Caption = 'Hz'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Edit17: TEdit
            Left = 150
            Top = 37
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 0
            Text = '-5'
          end
          object Edit18: TEdit
            Left = 150
            Top = 64
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 1
            Text = '1000'
          end
        end
        object GroupBox1: TGroupBox
          Left = 207
          Top = 11
          Width = 778
          Height = 105
          Caption = ' Folder && Files '
          Color = clBtnFace
          ParentBackground = False
          ParentColor = False
          TabOrder = 10
          object Label1: TLabel
            Left = 24
            Top = 33
            Width = 72
            Height = 13
            Caption = 'Folder : '
          end
          object Label2: TLabel
            Left = 24
            Top = 66
            Width = 88
            Height = 13
            Caption = 'FileName : '
          end
          object Edit1: TEdit
            Left = 118
            Top = 30
            Width = 555
            Height = 21
            ReadOnly = True
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 118
            Top = 62
            Width = 555
            Height = 21
            ReadOnly = True
            TabOrder = 1
          end
          object BitBtn1: TBitBtn
            Left = 678
            Top = 28
            Width = 90
            Height = 25
            Caption = 'Path'
            TabOrder = 2
            OnClick = BitBtn1Click
          end
          object BitBtn17: TBitBtn
            Left = 679
            Top = 59
            Width = 90
            Height = 25
            Caption = 'FileSave'
            TabOrder = 3
            OnClick = BitBtn17Click
          end
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 122
          Width = 241
          Height = 377
          Caption = ' Frequency '
          Color = clBtnFace
          ParentBackground = False
          ParentColor = False
          TabOrder = 11
          object Label3: TLabel
            Left = 16
            Top = 33
            Width = 48
            Height = 13
            Caption = 'Freq :'
          end
          object Label4: TLabel
            Left = 105
            Top = 59
            Width = 40
            Height = 13
            Caption = '[Ghz]'
          end
          object Label76: TLabel
            Left = 166
            Top = 129
            Width = 64
            Height = 13
            Caption = '- STEP -'
          end
          object SpeedButton11: TSpeedButton
            Left = 184
            Top = 148
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003C3333339333
              337437FFF3337F3333F73CCC33339333344437773F337F33377733CCC3339337
              4447337F73FF7F3F337F33CCCCC3934444433373F7737F773373333CCCCC9444
              44733337F337773337F3333CCCCC9444443333373F337F3337333333CCCC9444
              473333337F337F337F333333CCCC94444333333373F37F33733333333CCC9444
              7333333337F37F37F33333333CCC944433333333373F7F373333333333CC9447
              33333333337F7F7F3333333333CC94433333333333737F7333333333333C9473
              33333333333737F333333333333C943333333333333737333333333333339733
              3333333333337F33333333333333933333333333333373333333}
            NumGlyphs = 2
            OnClick = SpeedButton11Click
          end
          object SpeedButton12: TSpeedButton
            Left = 184
            Top = 176
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333393333
              333333333337F3333333333333397333333333333337FF333333333333C94333
              3333333333737F333333333333C9473333333333337373F3333333333CC94433
              3333333337F7F7F3333333333CC94473333333333737F73F33333333CCC94443
              333333337F37F37F33333333CCC94447333333337337F373F333333CCCC94444
              33333337F337F337F333333CCCC94444733333373337F3373F3333CCCCC94444
              4333337F3337FF337F3333CCCCC94444473333733F7773FF73F33CCCCC393444
              443337F37737F773F7F33CCC33393374447337F73337F33737FFCCC333393333
              444377733337F333777FC3333339333337437333333733333373}
            NumGlyphs = 2
            OnClick = SpeedButton12Click
          end
          object Label77: TLabel
            Left = 184
            Top = 204
            Width = 24
            Height = 13
            Caption = '0.1'
          end
          object SpeedButton13: TSpeedButton
            Left = 185
            Top = 231
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003C3333339333
              337437FFF3337F3333F73CCC33339333344437773F337F33377733CCC3339337
              4447337F73FF7F3F337F33CCCCC3934444433373F7737F773373333CCCCC9444
              44733337F337773337F3333CCCCC9444443333373F337F3337333333CCCC9444
              473333337F337F337F333333CCCC94444333333373F37F33733333333CCC9444
              7333333337F37F37F33333333CCC944433333333373F7F373333333333CC9447
              33333333337F7F7F3333333333CC94433333333333737F7333333333333C9473
              33333333333737F333333333333C943333333333333737333333333333339733
              3333333333337F33333333333333933333333333333373333333}
            NumGlyphs = 2
            OnClick = SpeedButton13Click
          end
          object SpeedButton14: TSpeedButton
            Left = 185
            Top = 259
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333393333
              333333333337F3333333333333397333333333333337FF333333333333C94333
              3333333333737F333333333333C9473333333333337373F3333333333CC94433
              3333333337F7F7F3333333333CC94473333333333737F73F33333333CCC94443
              333333337F37F37F33333333CCC94447333333337337F373F333333CCCC94444
              33333337F337F337F333333CCCC94444733333373337F3373F3333CCCCC94444
              4333337F3337FF337F3333CCCCC94444473333733F7773FF73F33CCCCC393444
              443337F37737F773F7F33CCC33393374447337F73337F33737FFCCC333393333
              444377733337F333777FC3333339333337437333333733333373}
            NumGlyphs = 2
            OnClick = SpeedButton14Click
          end
          object Label78: TLabel
            Left = 179
            Top = 287
            Width = 32
            Height = 13
            Caption = '0.05'
          end
          object BitBtn2: TBitBtn
            Left = 162
            Top = 52
            Width = 70
            Height = 25
            Caption = 'Add'
            TabOrder = 0
            OnClick = BitBtn2Click
          end
          object BitBtn3: TBitBtn
            Left = 162
            Top = 79
            Width = 70
            Height = 25
            Caption = 'Del'
            TabOrder = 1
            OnClick = BitBtn3Click
          end
          object ListBox1: TListBox
            Left = 17
            Top = 88
            Width = 137
            Height = 237
            ItemHeight = 13
            Sorted = True
            TabOrder = 2
            OnClick = ListBox1Click
          end
          object BitBtn4: TBitBtn
            Left = 16
            Top = 336
            Width = 153
            Height = 25
            Caption = 'Display Frequency'
            TabOrder = 3
            OnClick = BitBtn4Click
          end
          object Edit3: TEdit
            Left = 20
            Top = 54
            Width = 80
            Height = 21
            Alignment = taRightJustify
            TabOrder = 4
            Text = '5.4'
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Scanner Control'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 513
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object GroupBox13: TGroupBox
          Left = 16
          Top = 8
          Width = 665
          Height = 394
          Caption = ' Motion Setup (Move) '
          TabOrder = 0
          object Bevel1: TBevel
            Left = 14
            Top = 23
            Width = 641
            Height = 354
          end
          object Bevel2: TBevel
            Left = 176
            Top = 23
            Width = 120
            Height = 294
          end
          object Bevel3: TBevel
            Left = 296
            Top = 23
            Width = 120
            Height = 294
          end
          object Bevel4: TBevel
            Left = 416
            Top = 23
            Width = 120
            Height = 294
          end
          object Bevel5: TBevel
            Left = 536
            Top = 23
            Width = 120
            Height = 294
          end
          object Bevel6: TBevel
            Left = 14
            Top = 317
            Width = 641
            Height = 60
          end
          object Bevel7: TBevel
            Left = 14
            Top = 81
            Width = 641
            Height = 2
            Shape = bsTopLine
          end
          object Bevel8: TBevel
            Left = 14
            Top = 202
            Width = 641
            Height = 2
            Shape = bsTopLine
          end
          object Label33: TLabel
            Left = 32
            Top = 104
            Width = 112
            Height = 13
            Caption = 'Move(Position)'
          end
          object Label34: TLabel
            Left = 32
            Top = 160
            Width = 112
            Height = 13
            Caption = 'Move(Distance)'
          end
          object Label35: TLabel
            Left = 32
            Top = 221
            Width = 40
            Height = 13
            Caption = 'Speed'
          end
          object Label36: TLabel
            Left = 32
            Top = 272
            Width = 104
            Height = 13
            Caption = 'Accelertation'
          end
          object Label37: TLabel
            Left = 32
            Top = 340
            Width = 32
            Height = 13
            Caption = 'Move'
          end
          object Label38: TLabel
            Left = 239
            Top = 106
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 239
            Top = 162
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 265
            Top = 101
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            NumGlyphs = 2
          end
          object SpeedButton2: TSpeedButton
            Left = 265
            Top = 156
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            NumGlyphs = 2
          end
          object Label40: TLabel
            Left = 357
            Top = 106
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton3: TSpeedButton
            Left = 383
            Top = 101
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            NumGlyphs = 2
            OnClick = SpeedButton3Click
          end
          object Label41: TLabel
            Left = 357
            Top = 162
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton4: TSpeedButton
            Left = 383
            Top = 156
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            NumGlyphs = 2
            OnClick = SpeedButton4Click
          end
          object Label42: TLabel
            Left = 475
            Top = 106
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton5: TSpeedButton
            Left = 501
            Top = 101
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            NumGlyphs = 2
            OnClick = SpeedButton5Click
          end
          object Label43: TLabel
            Left = 475
            Top = 162
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton6: TSpeedButton
            Left = 501
            Top = 156
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            NumGlyphs = 2
            OnClick = SpeedButton6Click
          end
          object Label44: TLabel
            Left = 596
            Top = 106
            Width = 14
            Height = 13
            Caption = #730
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton7: TSpeedButton
            Left = 617
            Top = 101
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            NumGlyphs = 2
          end
          object Label45: TLabel
            Left = 596
            Top = 162
            Width = 14
            Height = 13
            Caption = #730
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton8: TSpeedButton
            Left = 617
            Top = 156
            Width = 23
            Height = 22
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            NumGlyphs = 2
          end
          object Label46: TLabel
            Left = 307
            Top = 128
            Width = 102
            Height = 11
            Caption = '(Limit : '#177'500mm)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 307
            Top = 184
            Width = 102
            Height = 11
            Caption = '(Limit : '#177'500mm)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 426
            Top = 128
            Width = 96
            Height = 11
            Caption = '(Limit : '#177'10mm)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 426
            Top = 184
            Width = 96
            Height = 11
            Caption = '(Limit : '#177'10mm)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 239
            Top = 223
            Width = 28
            Height = 13
            Caption = 'mm/s'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 239
            Top = 274
            Width = 42
            Height = 13
            Caption = 'mm/s'#178
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 188
            Top = 244
            Width = 102
            Height = 11
            Caption = '(Limit : 200mm/s)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 185
            Top = 295
            Width = 108
            Height = 11
            Caption = '(Limit : 50mm/s'#178')'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 357
            Top = 223
            Width = 28
            Height = 13
            Caption = 'mm/s'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label55: TLabel
            Left = 306
            Top = 244
            Width = 96
            Height = 11
            Caption = '(Limit : 20mm/s)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 357
            Top = 274
            Width = 42
            Height = 13
            Caption = 'mm/s'#178
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 303
            Top = 295
            Width = 108
            Height = 11
            Caption = '(Limit : 50mm/s'#178')'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label58: TLabel
            Left = 475
            Top = 223
            Width = 28
            Height = 13
            Caption = 'mm/s'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label59: TLabel
            Left = 424
            Top = 244
            Width = 96
            Height = 11
            Caption = '(Limit : 20mm/s)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 475
            Top = 274
            Width = 42
            Height = 13
            Caption = 'mm/s'#178
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label61: TLabel
            Left = 421
            Top = 295
            Width = 102
            Height = 11
            Caption = '(Limit : 5mm/s'#178')'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 596
            Top = 223
            Width = 28
            Height = 13
            Caption = 'mm/s'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 545
            Top = 244
            Width = 84
            Height = 11
            Caption = '(Limit 10'#730'/s)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 596
            Top = 274
            Width = 42
            Height = 13
            Caption = #730'/s'#178
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 542
            Top = 295
            Width = 108
            Height = 11
            Caption = '(Limit : 10'#730'/s'#178')'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton9: TSpeedButton
            Left = 97
            Top = 331
            Width = 30
            Height = 30
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333FF3333333333333744333333333333F773333333333337
              44473333333333F777F3333333333744444333333333F7733733333333374444
              4433333333F77333733333333744444447333333F7733337F333333744444444
              433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
              9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
              C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
              CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
              CCC333333333333777FF33333333333333CC3333333333333773}
            NumGlyphs = 2
          end
          object SpeedButton10: TSpeedButton
            Left = 146
            Top = 331
            Width = 30
            Height = 30
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FF3333333333333447333333333333377FFF33333333333744473333333
              333337773FF3333333333444447333333333373F773FF3333333334444447333
              33333373F3773FF3333333744444447333333337F333773FF333333444444444
              733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
              999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
              33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
              333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
              33333777333333333333CC333333333333337733333333333333}
            NumGlyphs = 2
          end
          object Label66: TLabel
            Left = 265
            Top = 340
            Width = 72
            Height = 13
            Caption = 'Initial :'
          end
          object RadioButton11: TRadioButton
            Left = 201
            Top = 46
            Width = 80
            Height = 17
            Caption = 'X-axis'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RadioButton11Click
          end
          object RadioButton12: TRadioButton
            Left = 321
            Top = 46
            Width = 80
            Height = 17
            Caption = 'Y-axis'
            TabOrder = 1
            OnClick = RadioButton11Click
          end
          object RadioButton13: TRadioButton
            Left = 441
            Top = 46
            Width = 80
            Height = 17
            Caption = 'Z-axis'
            TabOrder = 2
            OnClick = RadioButton11Click
          end
          object RadioButton14: TRadioButton
            Left = 561
            Top = 46
            Width = 80
            Height = 17
            Caption = 'P-axis'
            TabOrder = 3
            OnClick = RadioButton11Click
          end
          object Edit19: TEdit
            Left = 190
            Top = 101
            Width = 43
            Height = 21
            TabOrder = 4
          end
          object Edit20: TEdit
            Left = 190
            Top = 157
            Width = 43
            Height = 21
            TabOrder = 5
          end
          object Edit21: TEdit
            Left = 308
            Top = 101
            Width = 43
            Height = 21
            TabOrder = 6
          end
          object Edit22: TEdit
            Left = 308
            Top = 157
            Width = 43
            Height = 21
            TabOrder = 7
          end
          object Edit23: TEdit
            Left = 426
            Top = 101
            Width = 43
            Height = 21
            TabOrder = 8
          end
          object Edit24: TEdit
            Left = 426
            Top = 157
            Width = 43
            Height = 21
            TabOrder = 9
          end
          object Edit25: TEdit
            Left = 547
            Top = 101
            Width = 43
            Height = 21
            TabOrder = 10
          end
          object Edit26: TEdit
            Left = 547
            Top = 157
            Width = 43
            Height = 21
            TabOrder = 11
          end
          object Edit27: TEdit
            Left = 190
            Top = 217
            Width = 43
            Height = 21
            TabOrder = 12
          end
          object Edit28: TEdit
            Left = 190
            Top = 269
            Width = 43
            Height = 21
            TabOrder = 13
          end
          object Edit29: TEdit
            Left = 308
            Top = 217
            Width = 43
            Height = 21
            TabOrder = 14
          end
          object Edit30: TEdit
            Left = 308
            Top = 269
            Width = 43
            Height = 21
            TabOrder = 15
          end
          object Edit31: TEdit
            Left = 426
            Top = 217
            Width = 43
            Height = 21
            TabOrder = 16
          end
          object Edit32: TEdit
            Left = 426
            Top = 269
            Width = 43
            Height = 21
            TabOrder = 17
          end
          object Edit33: TEdit
            Left = 547
            Top = 217
            Width = 43
            Height = 21
            TabOrder = 18
          end
          object Edit34: TEdit
            Left = 547
            Top = 269
            Width = 43
            Height = 21
            TabOrder = 19
          end
          object BitBtn7: TBitBtn
            Left = 357
            Top = 331
            Width = 100
            Height = 34
            Caption = ' Zero Set'
            TabOrder = 20
          end
          object BitBtn8: TBitBtn
            Left = 524
            Top = 331
            Width = 100
            Height = 34
            Caption = 'Stop'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 21
          end
        end
        object GroupBox14: TGroupBox
          Left = 687
          Top = 8
          Width = 298
          Height = 489
          Caption = ' Current Value '
          TabOrder = 1
          object StringGrid1: TStringGrid
            Left = 10
            Top = 23
            Width = 279
            Height = 404
            ColCount = 3
            DefaultColWidth = 91
            FixedColor = clBtnShadow
            FixedCols = 0
            RowCount = 16
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
            TabOrder = 0
          end
          object BitBtn9: TBitBtn
            Left = 14
            Top = 435
            Width = 131
            Height = 46
            Caption = 'Monitoring On'
            TabOrder = 1
          end
          object BitBtn10: TBitBtn
            Left = 151
            Top = 435
            Width = 131
            Height = 46
            Caption = 'Monitoring Off'
            TabOrder = 2
          end
        end
        object GroupBox15: TGroupBox
          Left = 16
          Top = 408
          Width = 665
          Height = 89
          Caption = ' Current Position '
          TabOrder = 2
          object Label67: TLabel
            Left = 32
            Top = 49
            Width = 112
            Height = 13
            Caption = 'Move(Position)'
          end
          object Label68: TLabel
            Left = 239
            Top = 50
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 357
            Top = 50
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label70: TLabel
            Left = 475
            Top = 50
            Width = 14
            Height = 13
            Caption = 'mm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label71: TLabel
            Left = 596
            Top = 50
            Width = 14
            Height = 13
            Caption = #730
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = []
            ParentFont = False
          end
          object Label72: TLabel
            Left = 190
            Top = 25
            Width = 48
            Height = 13
            Caption = 'X-axis'
          end
          object Label73: TLabel
            Left = 308
            Top = 25
            Width = 48
            Height = 13
            Caption = 'Y-axis'
          end
          object Label74: TLabel
            Left = 426
            Top = 25
            Width = 48
            Height = 13
            Caption = 'Z-axis'
          end
          object Label75: TLabel
            Left = 547
            Top = 25
            Width = 48
            Height = 13
            Caption = 'P-axis'
          end
          object Edit35: TEdit
            Left = 190
            Top = 44
            Width = 43
            Height = 21
            TabOrder = 0
          end
          object Edit36: TEdit
            Left = 308
            Top = 44
            Width = 43
            Height = 21
            TabOrder = 1
          end
          object Edit37: TEdit
            Left = 426
            Top = 44
            Width = 43
            Height = 21
            TabOrder = 2
          end
          object Edit38: TEdit
            Left = 547
            Top = 44
            Width = 43
            Height = 21
            TabOrder = 3
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Calibration'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 513
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object GroupBox16: TGroupBox
          Left = 7
          Top = 8
          Width = 298
          Height = 489
          Caption = ' Current Value '
          TabOrder = 0
          object StringGrid2: TStringGrid
            Left = 10
            Top = 23
            Width = 279
            Height = 458
            ColCount = 3
            DefaultColWidth = 91
            FixedColor = clBtnShadow
            FixedCols = 0
            RowCount = 16
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
            TabOrder = 0
          end
        end
        object GroupBox17: TGroupBox
          Left = 311
          Top = 8
          Width = 674
          Height = 410
          Caption = ' Current Value Graph '
          TabOrder = 1
          object Chart1: TChart
            Left = 14
            Top = 23
            Width = 651
            Height = 384
            Title.Text.Strings = (
              'TChart')
            View3D = False
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series1: TLineSeries
              Brush.BackColor = clDefault
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object Series2: TLineSeries
              Brush.BackColor = clDefault
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
        end
        object GroupBox18: TGroupBox
          Left = 311
          Top = 424
          Width = 674
          Height = 73
          Caption = ' File '
          TabOrder = 2
          object BitBtn13: TBitBtn
            Left = 14
            Top = 19
            Width = 115
            Height = 46
            Caption = 'Calibration'
            TabOrder = 0
          end
          object BitBtn14: TBitBtn
            Left = 549
            Top = 19
            Width = 115
            Height = 46
            Caption = 'Save'
            TabOrder = 1
          end
          object GroupBox19: TGroupBox
            Left = 138
            Top = 16
            Width = 399
            Height = 49
            Caption = ' Insertion Loss Save File '
            TabOrder = 2
            object Edit39: TEdit
              Left = 9
              Top = 20
              Width = 381
              Height = 21
              TabOrder = 0
            end
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Measurement'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 513
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object GroupBox20: TGroupBox
          Left = 10
          Top = 11
          Width = 138
          Height = 489
          Caption = ' Frequency '
          TabOrder = 0
          object StringGrid3: TStringGrid
            Left = 10
            Top = 23
            Width = 114
            Height = 404
            ColCount = 1
            DefaultColWidth = 110
            FixedColor = clBtnShadow
            FixedCols = 0
            RowCount = 16
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupBox21: TGroupBox
          Left = 154
          Top = 11
          Width = 635
          Height = 489
          Caption = ' Data '
          TabOrder = 1
          object PaintBox1: TPaintBox
            Left = 7
            Top = 23
            Width = 306
            Height = 230
          end
          object PaintBox2: TPaintBox
            Left = 319
            Top = 23
            Width = 306
            Height = 230
          end
          object Chart2: TChart
            Left = 7
            Top = 259
            Width = 306
            Height = 226
            Legend.Visible = False
            Title.Text.Strings = (
              'TChart')
            View3D = False
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series3: TLineSeries
              Brush.BackColor = clDefault
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object Series4: TLineSeries
              Brush.BackColor = clDefault
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
          object Chart3: TChart
            Left = 322
            Top = 259
            Width = 306
            Height = 226
            Legend.Visible = False
            Title.Text.Strings = (
              'TChart')
            View3D = False
            TabOrder = 1
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series5: TLineSeries
              Brush.BackColor = clDefault
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object Series6: TLineSeries
              Brush.BackColor = clDefault
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
        end
        object GroupBox22: TGroupBox
          Left = 794
          Top = 11
          Width = 195
          Height = 197
          Caption = ' Measurement '
          TabOrder = 2
          object BitBtn11: TBitBtn
            Left = 8
            Top = 21
            Width = 181
            Height = 81
            Caption = 'Measurement'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object BitBtn12: TBitBtn
            Left = 8
            Top = 108
            Width = 181
            Height = 81
            Caption = 'STOP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox23: TGroupBox
          Left = 795
          Top = 214
          Width = 195
          Height = 286
          Caption = ' Information '
          TabOrder = 3
          object StringGrid4: TStringGrid
            Left = 5
            Top = 24
            Width = 186
            Height = 246
            ColCount = 3
            DefaultColWidth = 60
            DefaultRowHeight = 21
            FixedCols = 0
            RowCount = 11
            FixedRows = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = #44404#47548#52404
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
            ParentFont = False
            ScrollBars = ssNone
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Comm Setup'
      ImageIndex = 4
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 513
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object GroupBox24: TGroupBox
          Left = 16
          Top = 16
          Width = 353
          Height = 89
          Caption = ' Network Analyzer Setting '
          TabOrder = 0
          object Label79: TLabel
            Left = 10
            Top = 27
            Width = 80
            Height = 13
            Alignment = taRightJustify
            Caption = 'IP Address'
          end
          object Label80: TLabel
            Left = 58
            Top = 54
            Width = 32
            Height = 13
            Alignment = taRightJustify
            Caption = 'Port'
          end
          object Edit40: TEdit
            Left = 96
            Top = 24
            Width = 150
            Height = 21
            TabOrder = 0
            Text = '127.0.0.1'
          end
          object Edit41: TEdit
            Left = 96
            Top = 51
            Width = 150
            Height = 21
            TabOrder = 1
            Text = '5024'
          end
          object BitBtn18: TBitBtn
            Left = 252
            Top = 22
            Width = 90
            Height = 25
            Caption = #51217#49549
            TabOrder = 2
            OnClick = BitBtn18Click
          end
          object BitBtn19: TBitBtn
            Left = 252
            Top = 49
            Width = 90
            Height = 25
            Caption = #54644#51228
            TabOrder = 3
            OnClick = BitBtn19Click
          end
        end
        object GroupBox25: TGroupBox
          Left = 375
          Top = 16
          Width = 258
          Height = 89
          Caption = ' '#51217#49549#53580#49828#53944' '
          TabOrder = 1
          object BitBtn15: TBitBtn
            Left = 15
            Top = 22
            Width = 226
            Height = 25
            Caption = 'Network Analyzer Reset'
            TabOrder = 0
            OnClick = BitBtn15Click
          end
          object BitBtn16: TBitBtn
            Left = 15
            Top = 53
            Width = 226
            Height = 25
            Caption = 'Network Analyzer Test'
            TabOrder = 1
            OnClick = BitBtn16Click
          end
        end
        object GroupBox26: TGroupBox
          Left = 16
          Top = 111
          Width = 969
          Height = 394
          Caption = ' Network Analyzer Command '
          TabOrder = 2
          object Label81: TLabel
            Left = 11
            Top = 32
            Width = 56
            Height = 13
            Caption = 'Command'
          end
          object Edit42: TEdit
            Left = 73
            Top = 29
            Width = 789
            Height = 21
            TabOrder = 0
            Text = 'SYSTem:FPReset'
          end
          object BitBtn20: TBitBtn
            Left = 868
            Top = 27
            Width = 90
            Height = 25
            Caption = #51204#49569
            TabOrder = 1
            OnClick = BitBtn20Click
          end
          object RichEdit1: TRichEdit
            Left = 10
            Top = 58
            Width = 951
            Height = 321
            Font.Charset = HANGEUL_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548#52404
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 2
            Zoom = 100
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 542
    Width = 1008
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 750
      end
      item
        Width = 50
      end>
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.PNF'
    Filter = #52769#51221#54532#47196#44536#47016' '#51221#48372#54028#51068'(*.PNF)|*.PNF'
    Left = 707
    Top = 4
  end
  object IdTCPClient1: TIdTCPClient
    Intercept = IdConnectionIntercept1
    ConnectTimeout = 0
    Port = 0
    ReadTimeout = 2000
    Left = 628
    Top = 1
  end
  object IdConnectionIntercept1: TIdConnectionIntercept
    OnReceive = IdConnectionIntercept1Receive
    Left = 668
    Top = 1
  end
  object NA_Timer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = NA_TimerTimer
    Left = 748
    Top = 1
  end
end
