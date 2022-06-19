//---------------------------------------------------------------------------
#include <vcl.h>
#include <stdio.h>
#include <string.h>
#include <Registry.hpp>
#pragma hdrstop

#include "UserDefine.h"
#include "frmLumirControl.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tfrm_LumirControl *frm_LumirControl;
//---------------------------------------------------------------------------
Measurement_Setup   stMeasurementInfo;
Scanner_Control     stScannerInfo;
//---------------------------------------------------------------------------
__fastcall Tfrm_LumirControl::Tfrm_LumirControl(TComponent* Owner)
	: TForm(Owner)
{
	memset((char*)&stMeasurementInfo,0x00,sizeof(Measurement_Setup));
}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::SystemConfig_Load()
{
	int       	iServerPort,iFreqCount;
	AnsiString  szFileName;
	AnsiString 	szServerAddr;
	AnsiString  szFreqList,szFreqValue;

	szFileName = ExtractFilePath( Application->ExeName )+"Config.ini";
	TIniFile *ini = new TIniFile( szFileName );

// Config File Load
	try {
		iServerPort = ini->ReadInteger("LUMIR_NA_Server","ServerPort",8000);
		szServerAddr = ini->ReadString("LUMIR_NA_Server","ServerAddr","192.168.0.1");
// 기존화면 설정값들을 원복시키는 기능(2022.06.18)
		stMeasurementInfo.OperMode = ini->ReadInteger("MeasurementSetup","OperMode",0);
		RadioButton1->Checked = stMeasurementInfo.OperMode==0 ? true : false;
		RadioButton2->Checked = stMeasurementInfo.OperMode==1 ? true : false;
		Edit1->Text = ini->ReadString("MeasurementSetup","FilePath","");
		Edit2->Text = ini->ReadString("MeasurementSetup","FileName","");
		Edit3->Text = ini->ReadString("MeasurementSetup","Frequency","5.4");
		Edit4->Text = ini->ReadString("MeasurementSetup","X_Start","-887.5");
		Edit5->Text = ini->ReadString("MeasurementSetup","Y_Start","-887.5");
		Edit6->Text = ini->ReadString("MeasurementSetup","X_Stop","887.5");
		Edit7->Text = ini->ReadString("MeasurementSetup","Y_Stop","887.5");
		Edit8->Text = ini->ReadString("MeasurementSetup","X_Step","25");
		Edit9->Text = ini->ReadString("MeasurementSetup","Y_Step","25");
		Edit10->Text = ini->ReadString("MeasurementSetup","X_Point","72");
		Edit11->Text = ini->ReadString("MeasurementSetup","Y_Point","72");
		Edit12->Text = ini->ReadString("MeasurementSetup","Probe_Zdist","175");
		Edit13->Text = ini->ReadString("MeasurementSetup","X_Measure_Speed","1");
		Edit14->Text = ini->ReadString("MeasurementSetup","Y_Measure_Speed","0.5");
		Edit15->Text = ini->ReadString("MeasurementSetup","X_Measure_Acc","5");
		Edit16->Text = ini->ReadString("MeasurementSetup","Y_Measure_Acc","2");
		Edit17->Text = ini->ReadString("MeasurementSetup","NA_Power","-5");
		Edit18->Text = ini->ReadString("MeasurementSetup","NA_IF_BW","1000");
		ComboBox1->ItemIndex = ini->ReadInteger("MeasurementSetup","ProbeIndex",0);
		RadioButton3->Checked = ini->ReadInteger("MeasurementSetup","Polarization",0)==0 ? true:false;
		RadioButton4->Checked = ini->ReadInteger("MeasurementSetup","Polarization",0)==1 ? true:false;
		RadioButton5->Checked = ini->ReadInteger("MeasurementSetup","Direction",0)==0 ? true:false;
		RadioButton6->Checked = ini->ReadInteger("MeasurementSetup","Direction",0)==1 ? true:false;
		RadioButton7->Checked = ini->ReadInteger("MeasurementSetup","Main_Pol",0)==0 ? true:false;
		RadioButton8->Checked = ini->ReadInteger("MeasurementSetup","Main_Pol",0)==1 ? true:false;
		RadioButton9->Checked = ini->ReadInteger("MeasurementSetup","Scan_Axis",0)==0 ? true:false;
		RadioButton10->Checked = ini->ReadInteger("MeasurementSetup","Scan_Axis",0)==1 ? true:false;
// Frequency List Recovery
		iFreqCount = ini->ReadInteger("MeasurementSetup","FreqCount",0);
		for(int i=0;i<iFreqCount;i++) {
			szFreqList = "FreqList" + IntToStr(i+1);
			szFreqValue = ini->ReadString("MeasurementSetup",szFreqList,"");
			ListBox1->Items->Add( szFreqValue );
		}
// Scanner Control
		stScannerInfo.Move_Axis = ini->ReadInteger("ScannerControl","Move_Axis",1);
		if (stScannerInfo.Move_Axis==0x01) RadioButton11->Checked = true;
		 else if (stScannerInfo.Move_Axis==0x02) RadioButton12->Checked = true;
		 else if (stScannerInfo.Move_Axis==0x03) RadioButton13->Checked = true;
		 else if (stScannerInfo.Move_Axis==0x04) RadioButton14->Checked = true;
		Edit19->Text = ini->ReadString("ScannerControl","X_Move_Pos","10");
		Edit20->Text = ini->ReadString("ScannerControl","X_Move_Dis","10");
		Edit27->Text = ini->ReadString("ScannerControl","X_Move_Speed","100");
		Edit28->Text = ini->ReadString("ScannerControl","X_Move_Acc","4");
		Edit21->Text = ini->ReadString("ScannerControl","Y_Move_Pos","10");
		Edit22->Text = ini->ReadString("ScannerControl","Y_Move_Dis","10");
		Edit29->Text = ini->ReadString("ScannerControl","Y_Move_Speed","100");
		Edit30->Text = ini->ReadString("ScannerControl","Y_Move_Acc","4");
		Edit23->Text = ini->ReadString("ScannerControl","Z_Move_Pos","10");
		Edit24->Text = ini->ReadString("ScannerControl","Z_Move_Dis","10");
		Edit31->Text = ini->ReadString("ScannerControl","Z_Move_Speed","10");
		Edit32->Text = ini->ReadString("ScannerControl","Z_Move_Acc","2");
		Edit25->Text = ini->ReadString("ScannerControl","P_Move_Pos","0");
		Edit26->Text = ini->ReadString("ScannerControl","P_Move_Dis","90");
		Edit33->Text = ini->ReadString("ScannerControl","P_Move_Speed","5");
		Edit34->Text = ini->ReadString("ScannerControl","P_Move_Acc","1");


	} catch(...) {
	}
// Server Setting
	try {
		Edit40->Text = szServerAddr;
		Edit41->Text = IntToStr(iServerPort);
//		IdTCPClient1->Disconnect();
		IdTCPClient1->Host = szServerAddr;
		IdTCPClient1->Port = iServerPort;
//		IdTCPClient1->Connect();
	} catch(...) {
	}
}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::SystemConfig_Save()
{
	int       	iServerPort;
	AnsiString  szFileName;
	AnsiString 	szServerAddr;
	AnsiString  szFreqList;

	szFileName = ExtractFilePath( Application->ExeName )+"Config.ini";
	TIniFile *ini = new TIniFile( szFileName );

// Config File Load
	try {
		ini->WriteInteger("LUMIR_NA_Server","ServerPort",Edit41->Text.ToIntDef(8000));
		ini->WriteString("LUMIR_NA_Server","ServerAddr",Edit40->Text);
// 기존화면 설정값들을 원복시키는 기능(2022.06.18)
		stMeasurementInfo.OperMode = RadioButton1->Checked==true ? 0 : 1;
		ini->WriteInteger("MeasurementSetup","OperMode",stMeasurementInfo.OperMode);
		ini->WriteString("MeasurementSetup","FilePath",Edit1->Text);
		ini->WriteString("MeasurementSetup","FileName",Edit2->Text);
		ini->WriteString("MeasurementSetup","Frequency",Edit3->Text);
		ini->WriteString("MeasurementSetup","X_Start",Edit4->Text);
		ini->WriteString("MeasurementSetup","Y_Start",Edit5->Text);
		ini->WriteString("MeasurementSetup","X_Stop",Edit6->Text);
		ini->WriteString("MeasurementSetup","Y_Stop",Edit7->Text);
		ini->WriteString("MeasurementSetup","X_Step",Edit8->Text);
		ini->WriteString("MeasurementSetup","Y_Step",Edit9->Text);
		ini->WriteString("MeasurementSetup","X_Point",Edit10->Text);
		ini->WriteString("MeasurementSetup","Y_Point",Edit11->Text);
		ini->WriteString("MeasurementSetup","Probe_Zdist",Edit12->Text);
		ini->WriteString("MeasurementSetup","X_Measure_Speed",Edit13->Text);
		ini->WriteString("MeasurementSetup","Y_Measure_Speed",Edit14->Text);
		ini->WriteString("MeasurementSetup","X_Measure_Acc",Edit15->Text);
		ini->WriteString("MeasurementSetup","Y_Measure_Acc",Edit16->Text);
		ini->WriteString("MeasurementSetup","NA_Power",Edit17->Text);
		ini->WriteString("MeasurementSetup","NA_IF_BW",Edit18->Text);
		ini->WriteInteger("MeasurementSetup","ProbeIndex",ComboBox1->ItemIndex);
		ini->WriteInteger("MeasurementSetup","Polarization",RadioButton3->Checked==true?0:1);
		ini->WriteInteger("MeasurementSetup","Direction",RadioButton5->Checked==true?0:1);
		ini->WriteInteger("MeasurementSetup","Main_Pol",RadioButton7->Checked==true?0:1);
		ini->WriteInteger("MeasurementSetup","Scan_Axis",RadioButton9->Checked==true?0:1);
// Frequency List Store
		ini->WriteInteger("MeasurementSetup","FreqCount",ListBox1->Items->Count);
		for(int i=0;i<ListBox1->Items->Count;i++) {
			szFreqList = "FreqList" + IntToStr(i+1);
			ini->WriteString("MeasurementSetup",szFreqList,ListBox1->Items->Strings[i]);
		}
// Scanner Control
		ini->WriteInteger("ScannerControl","Move_Axis",stScannerInfo.Move_Axis);
		ini->WriteString("ScannerControl","X_Move_Pos",Edit19->Text);
		ini->WriteString("ScannerControl","X_Move_Dis",Edit20->Text);
		ini->WriteString("ScannerControl","X_Move_Speed",Edit27->Text);
		ini->WriteString("ScannerControl","X_Move_Acc",Edit28->Text);
		ini->WriteString("ScannerControl","Y_Move_Pos",Edit21->Text);
		ini->WriteString("ScannerControl","Y_Move_Dis",Edit22->Text);
		ini->WriteString("ScannerControl","Y_Move_Speed",Edit29->Text);
		ini->WriteString("ScannerControl","Y_Move_Acc",Edit30->Text);
		ini->WriteString("ScannerControl","Z_Move_Pos",Edit23->Text);
		ini->WriteString("ScannerControl","Z_Move_Dis",Edit24->Text);
		ini->WriteString("ScannerControl","Z_Move_Speed",Edit31->Text);
		ini->WriteString("ScannerControl","Z_Move_Acc",Edit32->Text);
		ini->WriteString("ScannerControl","P_Move_Pos",Edit25->Text);
		ini->WriteString("ScannerControl","P_Move_Dis",Edit26->Text);
		ini->WriteString("ScannerControl","P_Move_Speed",Edit33->Text);
		ini->WriteString("ScannerControl","P_Move_Acc",Edit34->Text);

	} catch(...) {
	}
}


//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::BitBtn1Click(TObject *Sender)
{

  SaveDialog1->InitialDir = ExtractFilePath(Application->ExeName);
  if (SaveDialog1->Execute()) {
		Edit1->Text = ExtractFilePath(SaveDialog1->FileName);
		Edit2->Text = ExtractFileName(SaveDialog1->FileName);
		stMeasurementInfo.szFilePath = Edit1->Text;
		stMeasurementInfo.szFileName = Edit2->Text;
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::FormShow(TObject *Sender)
{
	BitBtn11->Caption = "Measurement\nStart";
	ChartData_Initialize();
	Scanner_Control_EnableMenu();
	SystemConfig_Load();
	Scanner_Control_EnableMenu();         		// X 좌료로 초기화 설정
	ScannerControl_FrequencyGrid_Update();    // Grid 초기화
	Calibration_FrequencyGrid_Update();
	Measurement_FrequencyGrid_Update();
  Measurement_FrequencyInfo_Update();
}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::FormClose(TObject *Sender, TCloseAction &Action)

{
	SystemConfig_Save();
}


//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::ChartData_Initialize()
{
  Chart1->Series[0]->Clear();
  Chart1->Series[1]->Clear();
  for(int i=0;i<20;i++) {
    Chart1->Series[0]->AddY( rand() * 100 , i );
    Chart1->Series[1]->AddY( rand() * 100 , i );
	}
  Chart2->Series[0]->Clear();
  Chart2->Series[1]->Clear();
  for(int i=0;i<20;i++) {
	Chart2->Series[0]->AddY( rand() * 100 , i );
	Chart2->Series[1]->AddY( rand() * 100 , i );
  }
  Chart3->Series[0]->Clear();
  Chart3->Series[1]->Clear();
  for(int i=0;i<20;i++) {
	Chart3->Series[0]->AddY( rand() * 100 , i );
	Chart3->Series[1]->AddY( rand() * 100 , i );
	}
}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::BitBtn2Click(TObject *Sender)
{
	int       iChkFlag;
	AnsiString        szChkStr;

	iChkFlag = 0;
	for(int i=0;i<ListBox1->Items->Count;i++) {
		szChkStr = ListBox1->Items->Strings[ i  ];
		if ( szChkStr == Edit3->Text) iChkFlag = 1;
	}
	if (iChkFlag == 1) {
	} else {
		ListBox1->Items->Add( Edit3->Text );
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::BitBtn3Click(TObject *Sender)
{
	ListBox1->Items->Delete( ListBox1->ItemIndex );
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::ListBox1Click(TObject *Sender)
{
	Edit3->Text = ListBox1->Items->Strings[ListBox1->ItemIndex];
}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::BitBtn4Click(TObject *Sender)
{
// Display Frequency Choice
	stMeasurementInfo.DisplayFrequency = ListBox1->ItemIndex;
}

//---------------------------------------------------------------------------


void __fastcall Tfrm_LumirControl::SpeedButton11Click(TObject *Sender)
{
	double    ChkNumber;

	try {
		ChkNumber = Edit3->Text.ToDouble();
		ChkNumber = ChkNumber + 0.1;
		Edit3->Text = FloatToStr(ChkNumber);
	} catch(...) {
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::SpeedButton12Click(TObject *Sender)
{
	double    ChkNumber;

	try {
		ChkNumber = Edit3->Text.ToDouble();
		ChkNumber = ChkNumber - 0.1;
		Edit3->Text = FloatToStr(ChkNumber);
	} catch(...) {
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::SpeedButton13Click(TObject *Sender)
{
	double    ChkNumber;

	try {
		ChkNumber = Edit3->Text.ToDouble();
		ChkNumber = ChkNumber + 0.05;
		Edit3->Text = FloatToStr(ChkNumber);
	} catch(...) {
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::SpeedButton14Click(TObject *Sender)
{
	double    ChkNumber;

	try {
		ChkNumber = Edit3->Text.ToDouble();
		ChkNumber = ChkNumber - 0.05;
		Edit3->Text = FloatToStr(ChkNumber);
	} catch(...) {
	}
}


//---------------------------------------------------------------------------
double __fastcall Tfrm_LumirControl::Fn_Make_Round(double Value)
{
	if ( Value >= 0 ) {
		if ( fmod(Value,1) != 0.0 )
			Value = floor(Value)+1;
	}
	else
		Value = floor(Value);
	return Value;
}


//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::Measurement_Point_Calculation()
{
	double		maxFreq;			// 최고 높은 주파수
	double		minStep;			// 최고 높은 주파수로 계산한 최소 측정 간격
	int				i,bTF;					// Edit창에 숫자 정상여부

	bTF = true;
	try {
		if ( stMeasurementInfo.X_Scan[0] > 0)	{				// 음수이어야 함.
			bTF = false ;
			MessageDlg( "Start 는 음수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.X_Scan[1] < 0)	{				// 음수이어야 함.
			bTF = false ;
			MessageDlg( "Stop 는 양수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.X_Scan[2] < 0)	{
			stMeasurementInfo.X_Scan[2] = stMeasurementInfo.X_Scan[2] * -1;
		} else if ( stMeasurementInfo.X_Scan[2] == 0)	{
			bTF = false ;
			MessageDlg( "Step 는 양수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.Y_Scan[0] > 0)	{				// 음수이어야 함.
			bTF = false ;
			MessageDlg( "Start 는 음수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.Y_Scan[1] < 0)	{				// 음수이어야 함.
			bTF = false ;
			MessageDlg( "Stop 는 양수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.Y_Scan[2] < 0)	{
			stMeasurementInfo.Y_Scan[2] = stMeasurementInfo.Y_Scan[2] * -1;
		} else if ( stMeasurementInfo.Y_Scan[2] == 0)	{
			bTF = false ;
			MessageDlg( "Step 는 양수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
// 최고주파수 찾기
		if (bTF == true) {
			maxFreq = 0;
			for ( i=0 ; i < stMeasurementInfo.FrequencyCount ; i++ ) {
				if ( maxFreq < stMeasurementInfo.FrequencyList[i] ) {
					maxFreq = stMeasurementInfo.FrequencyList[i];
				}
			}
// 최소 step 계산, 최고 주파수의 0.45 파장
			minStep = floor(300/maxFreq*100*0.45)/100;				// floor 소수점 버림.
// Step 크기 확인
			if ( minStep < stMeasurementInfo.X_Scan[2] ) {
				stMeasurementInfo.X_Scan[2] = minStep;
			}
			if ( minStep < stMeasurementInfo.Y_Scan[2] ) {
				stMeasurementInfo.Y_Scan[2] = minStep;
			}
// 시작, 끝이 측정간격의 배수로 셋팅
			stMeasurementInfo.X_Scan[0]	= Fn_Make_Round(stMeasurementInfo.X_Scan[0]/stMeasurementInfo.X_Scan[2])	* stMeasurementInfo.X_Scan[2];
			stMeasurementInfo.X_Scan[1]	= Fn_Make_Round(stMeasurementInfo.X_Scan[1]/stMeasurementInfo.X_Scan[2])	* stMeasurementInfo.X_Scan[2];
			stMeasurementInfo.Y_Scan[0]	= Fn_Make_Round(stMeasurementInfo.Y_Scan[0]/stMeasurementInfo.Y_Scan[2])	* stMeasurementInfo.Y_Scan[2];
			stMeasurementInfo.Y_Scan[1]	= Fn_Make_Round(stMeasurementInfo.Y_Scan[1]/stMeasurementInfo.Y_Scan[2])	* stMeasurementInfo.Y_Scan[2];
// 셋팅된 측정범위에서 측정 포인트 수 계산
			stMeasurementInfo.X_Scan_N  = (int)(fabs(stMeasurementInfo.X_Scan[1] - stMeasurementInfo.X_Scan[0])/stMeasurementInfo.X_Scan[2] ) +1;
			stMeasurementInfo.Y_Scan_N  = (int)(fabs(stMeasurementInfo.Y_Scan[1] - stMeasurementInfo.Y_Scan[0])/stMeasurementInfo.Y_Scan[2] ) +1;
// 결과를 다시 텍스트 박스에 업데이트 한다.
			Edit4->Text = FloatToStr(stMeasurementInfo.X_Scan[0]);
			Edit5->Text = FloatToStr(stMeasurementInfo.Y_Scan[0]);
			Edit6->Text = FloatToStr(stMeasurementInfo.X_Scan[1]);
			Edit7->Text = FloatToStr(stMeasurementInfo.Y_Scan[1]);
			Edit8->Text = FloatToStr(stMeasurementInfo.X_Scan[2]);
			Edit9->Text = FloatToStr(stMeasurementInfo.Y_Scan[2]);
			Edit10->Text = FloatToStr(stMeasurementInfo.X_Scan_N);
			Edit11->Text = FloatToStr(stMeasurementInfo.Y_Scan_N);
		}
	} catch(...) {
	}

}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::Measurement_Balance_Calculation()
{
	double		maxFreq;			// 최고 높은 주파수
	double		minStep;			// 최고 높은 주파수로 계산한 최소 측정 간격
	int				bTF1;					// Edit창에 숫자 정상여부
	int				bTF2;					// 측정 간격이 minStep보다 같은지 확인
	int				i;

	bTF1 = true;
	bTF2 = true;
	try {
		if ( stMeasurementInfo.X_Scan[0] > 0)	{				// 음수이어야 함.
			bTF1 = false ;
			MessageDlg( "Start 는 음수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.X_Scan[1] < 0)	{				// 음수이어야 함.
			bTF1 = false ;
			MessageDlg( "Stop 는 양수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.X_Scan[2] < 0)	{
			stMeasurementInfo.X_Scan[2] = stMeasurementInfo.X_Scan[2] * -1;
		} else if ( stMeasurementInfo.X_Scan[2] == 0)	{
			bTF1 = false ;
			MessageDlg( "Step 는 양수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.Y_Scan[0] > 0)	{				// 음수이어야 함.
			bTF1 = false ;
			MessageDlg( "Start 는 음수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.Y_Scan[1] < 0)	{				// 음수이어야 함.
			bTF1 = false ;
			MessageDlg( "Stop 는 양수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
		if ( stMeasurementInfo.Y_Scan[2] < 0)	{
			stMeasurementInfo.Y_Scan[2] = stMeasurementInfo.Y_Scan[2] * -1;
		} else if ( stMeasurementInfo.Y_Scan[2] == 0)	{
			bTF1 = false ;
			MessageDlg( "Step 는 양수이어야 합니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
// 최고주파수 찾기
		if (bTF1 == true) {
			maxFreq = 0;
			for ( i=0 ; i < stMeasurementInfo.FrequencyCount ; i++ ) {
				if ( maxFreq < stMeasurementInfo.FrequencyList[i] ) {
					maxFreq = stMeasurementInfo.FrequencyList[i];
				}
			}
// 최소 step 계산, 최고 주파수의 0.45 파장
			minStep = floor(300/maxFreq*100*0.45)/100;				// floor 소수점 버림.
// X축 - 측정범위내에서 측정 간격을 최소 측정 간격보다 작게 측정포인트 수 증가.
			bTF2 = true;
			while ( bTF2 ) {
				stMeasurementInfo.X_Scan[2] = fabs(stMeasurementInfo.X_Scan[1] - stMeasurementInfo.X_Scan[0])/(stMeasurementInfo.X_Scan_N-1);
				if ( stMeasurementInfo.X_Scan[2] > minStep ) {
					stMeasurementInfo.X_Scan_N = stMeasurementInfo.X_Scan_N + 1;
				} else {
					bTF2 = false;
				}
			}
			bTF2 = true;
			while ( bTF2 ) {
				stMeasurementInfo.Y_Scan[2] = fabs(stMeasurementInfo.Y_Scan[1] - stMeasurementInfo.Y_Scan[0])/(stMeasurementInfo.Y_Scan_N-1);
				if ( stMeasurementInfo.Y_Scan[2] > minStep ) {
					stMeasurementInfo.Y_Scan_N = stMeasurementInfo.Y_Scan_N + 1;
				} else {
					bTF2 = false;
				}
			}
// 소수점 2자리
			stMeasurementInfo.X_Scan[2] = floor(stMeasurementInfo.X_Scan[2]*100)/100;				// floor 소수점 버림.
			stMeasurementInfo.Y_Scan[2] = floor(stMeasurementInfo.Y_Scan[2]*100)/100;				// floor 소수점 버림.
// 결과를 다시 텍스트 박스에 업데이트 한다.
			Edit4->Text = FloatToStr(stMeasurementInfo.X_Scan[0]);
			Edit5->Text = FloatToStr(stMeasurementInfo.Y_Scan[0]);
			Edit6->Text = FloatToStr(stMeasurementInfo.X_Scan[1]);
			Edit7->Text = FloatToStr(stMeasurementInfo.Y_Scan[1]);
			Edit8->Text = FloatToStr(stMeasurementInfo.X_Scan[2]);
			Edit9->Text = FloatToStr(stMeasurementInfo.Y_Scan[2]);
			Edit10->Text = FloatToStr(stMeasurementInfo.X_Scan_N);
			Edit11->Text = FloatToStr(stMeasurementInfo.Y_Scan_N);
		}
	} catch(...) {
	}
}


//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::BitBtn5Click(TObject *Sender)
{
	Measurement_Information_Update();
	Measurement_Point_Calculation();
}


//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::BitBtn6Click(TObject *Sender)
{
	Measurement_Information_Update();
	Measurement_Balance_Calculation();
	Measurement_Information_Update();
	Measurement_Point_Calculation();
}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::Measurement_Information_Update()
{
	AnsiString  szProbe;

	try {
// List Update
		stMeasurementInfo.OperMode = RadioButton1->Checked==true ? 0 : 1;
		stMeasurementInfo.FrequencyCount = ListBox1->Items->Count;
		for(int i=0;i<stMeasurementInfo.FrequencyCount;i++) {
			stMeasurementInfo.FrequencyList[i] = ListBox1->Items->Strings[i].ToDouble();
		}
		stMeasurementInfo.X_Scan[0] = Edit4->Text.ToDouble();
		stMeasurementInfo.X_Scan[1] = Edit6->Text.ToDouble();
		stMeasurementInfo.X_Scan[2] = Edit8->Text.ToDouble();
		stMeasurementInfo.X_Scan_N  = Edit10->Text.ToDouble();
		stMeasurementInfo.Y_Scan[0] = Edit5->Text.ToDouble();
		stMeasurementInfo.Y_Scan[1] = Edit7->Text.ToDouble();
		stMeasurementInfo.Y_Scan[2] = Edit9->Text.ToDouble();
		stMeasurementInfo.Y_Scan_N = Edit11->Text.ToDouble();
		stMeasurementInfo.Probe_Zdist = Edit12->Text.ToDouble();
		stMeasurementInfo.X_Measure_Speed = Edit13->Text.ToDouble();
		stMeasurementInfo.Y_Measure_Speed = Edit14->Text.ToDouble();
		stMeasurementInfo.X_Measure_Acc = Edit15->Text.ToDouble();
		stMeasurementInfo.Y_Measure_Acc = Edit16->Text.ToDouble();
		stMeasurementInfo.Measure_AUT_Pol = RadioButton3->Checked==true ? 0 : 1;
		stMeasurementInfo.Measure_Main_Pol = RadioButton7->Checked==true ? 0 : 1;
		stMeasurementInfo.Direction = RadioButton5->Checked==true ? 2 : 1;
		stMeasurementInfo.Measure_Scan_Axis = RadioButton9->Checked==true ? 0 : 1;
		szProbe = ComboBox1->Text.SubString(4,3);
		stMeasurementInfo.Probe = szProbe.ToIntDef(0);
		stMeasurementInfo.NA_Power = Edit17->Text.ToIntDef(0);
		stMeasurementInfo.NA_IF_BW = Edit18->Text.ToIntDef(0);
	} catch(...) {
	}
}


//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::Measurement_Setup_FileSave()
{
	FILE  *fp;
	AnsiString  szFileName;

	szFileName = stMeasurementInfo.szFilePath + stMeasurementInfo.szFileName;
	fp = fopen(szFileName.c_str(),"wt");
	if (fp != NULL) {
		fprintf(fp,"freq_N    %d\n",stMeasurementInfo.FrequencyCount);
		fprintf(fp,"freq      ");
		for(int i=0;i<stMeasurementInfo.FrequencyCount;i++) {
			fprintf(fp,"%7.5f ",stMeasurementInfo.FrequencyList[i]);
		}
		fprintf(fp,"\n");
		fprintf(fp,"X_Range   %6.1f  %6.1f  %d\n",stMeasurementInfo.X_Scan[0],stMeasurementInfo.X_Scan[1],int(stMeasurementInfo.X_Scan[2]));
		fprintf(fp,"Y_Range   %6.1f  %6.1f  %d\n",stMeasurementInfo.Y_Scan[0],stMeasurementInfo.Y_Scan[1],int(stMeasurementInfo.Y_Scan[2]));
		fprintf(fp,"XNearN    %d\n",int(stMeasurementInfo.X_Scan_N));
		fprintf(fp,"YNearN    %d\n",int(stMeasurementInfo.Y_Scan_N));
		fprintf(fp,"ZDis      %6.4f\n",stMeasurementInfo.Probe_Zdist);
		fprintf(fp,"Speed     %6.4f  %6.4f\n",stMeasurementInfo.X_Measure_Speed,stMeasurementInfo.Y_Measure_Speed);
		fprintf(fp,"Acc       %6.4f  %6.4f\n",stMeasurementInfo.X_Measure_Acc,stMeasurementInfo.Y_Measure_Acc);

		fprintf(fp,"AUT_Pol   %d\n",int(stMeasurementInfo.Measure_AUT_Pol));
		fprintf(fp,"Main_Pol  %d\n",int(stMeasurementInfo.Measure_Main_Pol));
		fprintf(fp,"Direction %d\n",int(stMeasurementInfo.Direction));
 		fprintf(fp,"Probe     %d\n",int(stMeasurementInfo.Probe));
  	fprintf(fp,"ScanAxis  %d\n",int(stMeasurementInfo.Measure_Scan_Axis));

		fprintf(fp,"RF_Pow    %d\n",int(stMeasurementInfo.NA_Power));
		fprintf(fp,"IF_BW     %d\n",int(stMeasurementInfo.NA_IF_BW));
	}
	fclose(fp);
}
//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::BitBtn17Click(TObject *Sender)
{
  Measurement_Information_Update();
	Measurement_Setup_FileSave();
}

//---------------------------------------------------------------------------
// Scanner Control Code
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::Scanner_Control_EnableMenu()
{
  int         i;
  TComponent  *ChkCtrl;

	for(i=19;i<=34;i++) {
		ChkCtrl = FindComponent("Edit" + IntToStr(i));
		if (ChkCtrl != NULL) {
			static_cast<TEdit*>(ChkCtrl)->Enabled = false;
		}
	}
	if (RadioButton11->Checked==true) {
		stScannerInfo.Move_Axis = 1;
		Edit19->Enabled = true;
		Edit20->Enabled = true;
		Edit27->Enabled = true;
		Edit28->Enabled = true;
	} else if (RadioButton12->Checked==true) {
		stScannerInfo.Move_Axis = 2;
		Edit21->Enabled = true;
		Edit22->Enabled = true;
		Edit29->Enabled = true;
		Edit30->Enabled = true;
	} else if (RadioButton13->Checked==true) {
		stScannerInfo.Move_Axis = 3;
		Edit23->Enabled = true;
		Edit24->Enabled = true;
		Edit31->Enabled = true;
		Edit32->Enabled = true;
	} else if (RadioButton14->Checked==true) {
		stScannerInfo.Move_Axis = 4;
		Edit25->Enabled = true;
		Edit26->Enabled = true;
		Edit33->Enabled = true;
		Edit34->Enabled = true;
	}
}



//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::Network_Analyzer_Initialize_Command()
{
	if ( IdTCPClient1->Connected() == true ) {
		IdTCPClient1->IOHandler->WriteLn("SYSYem:FPReset");
		IdTCPClient1->IOHandler->WriteLn("CALCulate:PARameter:DEFine:EXT \"Meas1\", \"S21\"");
		IdTCPClient1->IOHandler->WriteLn("DISPlay:WINDow1:STATE ON");
		IdTCPClient1->IOHandler->WriteLn("DISPlay:WINDow1:TRACe1:FEED \"Meas1\"");
		IdTCPClient1->IOHandler->WriteLn("CALCulate1:PARameter:SELect \"Meas1\"");
		IdTCPClient1->IOHandler->WriteLn("CALCulate1:MARKer:STATe ON");
		IdTCPClient1->IOHandler->WriteLn("DISP:WIND:TRAC:Y:RLEV -50");
	}
}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::Network_Analyzer_Query_Device()
{
	if ( IdTCPClient1->Connected() == true ) {
		IdTCPClient1->IOHandler->WriteLn("ISDN?");
	}
}

AnsiString __fastcall Tfrm_LumirControl::Network_Analyzer_Receive_Data(int iLimitTime)
{
	AnsiString  szRecvBuf;

	if ( IdTCPClient1->Connected() == true ) {
		for(int i=0;i<=iLimitTime;i+=50) {
			Application->ProcessMessages();
			if (IdTCPClient1->IOHandler->InputBufferIsEmpty()==false) {
				szRecvBuf = IdTCPClient1->IOHandler->ReadString(IdTCPClient1->IOHandler->InputBuffer->Size );
				return(szRecvBuf);
			} else {
				Sleep(50);
			}
		}
	}
	szRecvBuf = "Data Not Received";
	return(szRecvBuf);
}


//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::BitBtn18Click(TObject *Sender)
{
	try {
		IdTCPClient1->Host = Edit40->Text;
		IdTCPClient1->Port = Edit41->Text.ToIntDef(8000);
		IdTCPClient1->Connect();
	} catch(...) {
  }
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::BitBtn19Click(TObject *Sender)
{
	IdTCPClient1->Socket->Close();
	IdTCPClient1->Disconnect();
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::BitBtn20Click(TObject *Sender)
{
	AnsiString  szRecvBuf;
	int 				readsize;

	if ( IdTCPClient1->Connected() == true ) {
//		IdTCPClient1->IOHandler->WriteLn(Edit42->Text);
		IdTCPClient1->Socket->WriteLn(Edit42->Text);
		szRecvBuf = IdTCPClient1->Socket->ReadLn();
//		szRecvBuf = Network_Analyzer_Receive_Data(3000);
		if (szRecvBuf.Length() != 0x00) RichEdit1->Lines->Add( szRecvBuf );
		 else RichEdit1->Lines->Add( "Read Timeout" );
	}
}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::IdConnectionIntercept1Receive(TIdConnectionIntercept *ASender,
					TIdBytes &ABuffer)
{
/*
	char   szBuffer[8192] , szTemp[1024];

	if ( IdTCPClient1->Connected() == true ) {
		memset(szBuffer,0x00,sizeof(szBuffer));
		for(int i=0; i<ABuffer.Length; i++) szBuffer[i] = ABuffer[i];
		RichEdit1->Lines->Add( szBuffer );
	}
	sprintf(szTemp,"Received = %d\n", ABuffer.Length);
	RichEdit1->Lines->Add( szTemp );
*/
}


//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::BitBtn15Click(TObject *Sender)
{
	if ( IdTCPClient1->Connected() == true ) {
		Network_Analyzer_Initialize_Command();
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::BitBtn16Click(TObject *Sender)
{
	if ( IdTCPClient1->Connected() == true ) {
		Network_Analyzer_Query_Device();
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::RadioButton11Click(TObject *Sender)
{
	Scanner_Control_EnableMenu();
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::NA_TimerTimer(TObject *Sender)
{
	AnsiString  szRecvBuf;

	if ( IdTCPClient1->Connected() == true ) {
		if (IdTCPClient1->IOHandler->InputBufferIsEmpty()==false) {
			szRecvBuf = IdTCPClient1->IOHandler->ReadString(IdTCPClient1->IOHandler->InputBuffer->Size );
			RichEdit1->Lines->Add( szRecvBuf );
		} else {
			return;
		}
	}
}

//---------------------------------------------------------------------------
// Scanner Control Functions
//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::ScannerControl_FrequencyGrid_Update()
{
	StringGrid1->Cells[0][0] = "Frequency";
	StringGrid1->Cells[1][0] = "Amplitude";
	StringGrid1->Cells[2][0] = "Phase";
}

//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::SpeedButton3Click(TObject *Sender)
{
	double  CheckLimit;

	try {
		CheckLimit = Edit21->Text.ToDouble();
		if ( fabs(CheckLimit) > 500) {
			MessageDlg( "허용범위를 초과하였습니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
	} catch(...) {
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::SpeedButton4Click(TObject *Sender)
{
	double  CheckLimit;

	try {
		CheckLimit = Edit22->Text.ToDouble();
		if ( fabs(CheckLimit) > 500) {
			MessageDlg( "허용범위를 초과하였습니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
	} catch(...) {
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::SpeedButton5Click(TObject *Sender)
{
	double  CheckLimit;

	try {
		CheckLimit = Edit23->Text.ToDouble();
		if ( fabs(CheckLimit) > 10) {
			MessageDlg( "허용범위를 초과하였습니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
	} catch(...) {
	}
}
//---------------------------------------------------------------------------

void __fastcall Tfrm_LumirControl::SpeedButton6Click(TObject *Sender)
{
	double  CheckLimit;

	try {
		CheckLimit = Edit24->Text.ToDouble();
		if ( fabs(CheckLimit) > 10) {
			MessageDlg( "허용범위를 초과하였습니다." , mtWarning , TMsgDlgButtons() << mbOK , 0);
		}
	} catch(...) {
	}
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
// Calibration Functions
//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::Calibration_FrequencyGrid_Update()
{
	StringGrid2->Cells[0][0] = "Frequency";
	StringGrid2->Cells[1][0] = "Amplitude";
	StringGrid2->Cells[2][0] = "Phase";
}

//---------------------------------------------------------------------------
// Measurement Functions
//---------------------------------------------------------------------------
void __fastcall Tfrm_LumirControl::Measurement_FrequencyGrid_Update()
{
	StringGrid3->Cells[0][0] = "Frequency";
}

void __fastcall Tfrm_LumirControl::Measurement_FrequencyInfo_Update()
{
	StringGrid4->ColWidths[0] = 80;
	StringGrid4->ColWidths[1] = 60;
	StringGrid4->ColWidths[2] = 40;
	StringGrid4->Cells[0][0] = "Frequency";
	StringGrid4->Cells[1][0] = "5.1";     // Display Frequency
	StringGrid4->Cells[2][0] = "GHz";
	StringGrid4->Cells[0][1] = "X Start";
	StringGrid4->Cells[0][2] = "X Stop";
	StringGrid4->Cells[0][3] = "Y Start";
	StringGrid4->Cells[0][4] = "Y Stop";
	StringGrid4->Cells[0][5] = "X Strp";
	StringGrid4->Cells[0][6] = "Y Strp";
	StringGrid4->Cells[0][7] = "Start Time";
	StringGrid4->Cells[0][8] = "Stop Time";
	StringGrid4->Cells[0][9] = "Time Remain";
	StringGrid4->Cells[0][10] = "Cut";
}

