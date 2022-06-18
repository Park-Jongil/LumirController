#include <vcl.h>

#ifndef User_DataStruct_Define
#define User_DataStruct_Define
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
typedef struct  _Measurement_Setup {
	int   			OperMode;         			// 운영모드  1:Continue , 2:BSU
	int         FrequencyCount;       	// 왜 정수인지 확인필요
	double      FrequencyList[128];     // 주파수리스트
	int         DisplayFrequency;       // 왜 정수인지 확인필요
	AnsiString  szFilePath;
	AnsiString  szFileName;
//	char        szFilePath[1024];
//	char        szFileName[1024];
	double      X_Scan[3];              // Start , End , Step
	double      X_Scan_N;
	double      Y_Scan[3];              // Start , End , Step
	double      Y_Scan_N;
	double      Probe_Zdist;            // Probe & AUT Distance
	double      X_Measure_Speed;        // X_axis 측정속도
	double      X_Measure_Acc;        	// X_axis 측정가속도
	double      Y_Measure_Speed;        // Y_axis 측정속도
	double      Y_Measure_Acc;        	// Y_axis 측정가속도
	int         Measure_AUT_Pol;        // 편파(Polarization) , 0:Horizontal , 1:Vertical
	int         Measure_Main_Pol;       // Main Polarization) , 0:Co Pol , 1:Cx Pol
	int         Direction;              // 측정스캔방식 -> Bi-D : 2 , Uni-D : 1
	int         Measure_Scan_Axis;      // 스캔방향 0:X . 1:Y
	int         Probe;                  // 측정 Probe Number-WG 번호
	int         NA_Power;               // Network Analyzer Power
	int         NA_IF_BW;               // Network Analyzer IF BandWidth
} Measurement_Setup;

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
typedef struct  _Scanner_Control {
	int         Move_Axis;              // 이동 Axis 선택(1:X , 2:Y, 3:Z , 4:P)
	double      X_Move_Pos;           	// X_axis 이동위치
	double      X_Move_Dis;           	// X_axis 이동거리
	double      X_Move_Speed;         	// X_axis 이동속도
	double      X_Move_Acc;           	// X_axis 이동가속도
	double      Y_Move_Pos;           	// Y_axis 이동위치
	double      Y_Move_Dis;           	// Y_axis 이동거리
	double      Y_Move_Speed;         	// Y_axis 이동속도
	double      Y_Move_Acc;           	// Y_axis 이동가속도
	double      Z_Move_Pos;           	// Z_axis 이동위치
	double      Z_Move_Dis;           	// Z_axis 이동거리
	double      Z_Move_Speed;         	// Z_axis 이동속도
	double      Z_Move_Acc;           	// Z_axis 이동가속도
	double      P_Move_Pos;           	// P_axis 이동위치
	double      P_Move_Dis;           	// P_axis 이동거리
	double      P_Move_Speed;         	// P_axis 이동속도
	double      P_Move_Acc;           	// P_axis 이동가속도
	double      X_Pos;                  // X_axis 현재위치
	double      Y_Pos;                  // Y_axis 현재위치
	double      Z_Pos;                  // X_axis 현재위치
	double      P_Pos;                  // P_axis 현재위치
} Scanner_Control;

//---------------------------------------------------------------------------
// DataBase Structure
//---------------------------------------------------------------------------
typedef struct  _QueryData {
	char    szCheckDate[32];
	int     EventCode;
	char    szDescript[128];
} QueryData;

//---------------------------------------------------------------------------
#endif
