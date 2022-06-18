#include <vcl.h>

#ifndef User_DataStruct_Define
#define User_DataStruct_Define
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
typedef struct  _Measurement_Setup {
	int   			OperMode;         			// ����  1:Continue , 2:BSU
	int         FrequencyCount;       	// �� �������� Ȯ���ʿ�
	double      FrequencyList[128];     // ���ļ�����Ʈ
	int         DisplayFrequency;       // �� �������� Ȯ���ʿ�
	AnsiString  szFilePath;
	AnsiString  szFileName;
//	char        szFilePath[1024];
//	char        szFileName[1024];
	double      X_Scan[3];              // Start , End , Step
	double      X_Scan_N;
	double      Y_Scan[3];              // Start , End , Step
	double      Y_Scan_N;
	double      Probe_Zdist;            // Probe & AUT Distance
	double      X_Measure_Speed;        // X_axis �����ӵ�
	double      X_Measure_Acc;        	// X_axis �������ӵ�
	double      Y_Measure_Speed;        // Y_axis �����ӵ�
	double      Y_Measure_Acc;        	// Y_axis �������ӵ�
	int         Measure_AUT_Pol;        // ����(Polarization) , 0:Horizontal , 1:Vertical
	int         Measure_Main_Pol;       // Main Polarization) , 0:Co Pol , 1:Cx Pol
	int         Direction;              // ������ĵ��� -> Bi-D : 2 , Uni-D : 1
	int         Measure_Scan_Axis;      // ��ĵ���� 0:X . 1:Y
	int         Probe;                  // ���� Probe Number-WG ��ȣ
	int         NA_Power;               // Network Analyzer Power
	int         NA_IF_BW;               // Network Analyzer IF BandWidth
} Measurement_Setup;

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
typedef struct  _Scanner_Control {
	int         Move_Axis;              // �̵� Axis ����(1:X , 2:Y, 3:Z , 4:P)
	double      X_Move_Pos;           	// X_axis �̵���ġ
	double      X_Move_Dis;           	// X_axis �̵��Ÿ�
	double      X_Move_Speed;         	// X_axis �̵��ӵ�
	double      X_Move_Acc;           	// X_axis �̵����ӵ�
	double      Y_Move_Pos;           	// Y_axis �̵���ġ
	double      Y_Move_Dis;           	// Y_axis �̵��Ÿ�
	double      Y_Move_Speed;         	// Y_axis �̵��ӵ�
	double      Y_Move_Acc;           	// Y_axis �̵����ӵ�
	double      Z_Move_Pos;           	// Z_axis �̵���ġ
	double      Z_Move_Dis;           	// Z_axis �̵��Ÿ�
	double      Z_Move_Speed;         	// Z_axis �̵��ӵ�
	double      Z_Move_Acc;           	// Z_axis �̵����ӵ�
	double      P_Move_Pos;           	// P_axis �̵���ġ
	double      P_Move_Dis;           	// P_axis �̵��Ÿ�
	double      P_Move_Speed;         	// P_axis �̵��ӵ�
	double      P_Move_Acc;           	// P_axis �̵����ӵ�
	double      X_Pos;                  // X_axis ������ġ
	double      Y_Pos;                  // Y_axis ������ġ
	double      Z_Pos;                  // X_axis ������ġ
	double      P_Pos;                  // P_axis ������ġ
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
