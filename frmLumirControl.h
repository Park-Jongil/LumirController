//---------------------------------------------------------------------------

#ifndef frmLumirControlH
#define frmLumirControlH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.Grids.hpp>
#include <VCLTee.Chart.hpp>
#include <VCLTee.Series.hpp>
#include <VclTee.TeeGDIPlus.hpp>
#include <VCLTee.TeEngine.hpp>
#include <VCLTee.TeeProcs.hpp>
#include <Vcl.Mask.hpp>
#include <IdBaseComponent.hpp>
#include <IdComponent.hpp>
#include <IdTCPClient.hpp>
#include <IdTCPConnection.hpp>
#include <IdGlobal.hpp>
#include <IdIntercept.hpp>
//---------------------------------------------------------------------------
class Tfrm_LumirControl : public TForm
{
__published:	// IDE-managed Components
	TPageControl *PageControl1;
	TTabSheet *TabSheet1;
	TTabSheet *TabSheet2;
	TTabSheet *TabSheet3;
	TTabSheet *TabSheet4;
	TTabSheet *TabSheet5;
	TStatusBar *StatusBar1;
	TPanel *Panel2;
	TGroupBox *GroupBox3;
	TRadioButton *RadioButton1;
	TRadioButton *RadioButton2;
	TGroupBox *GroupBox4;
	TGroupBox *GroupBox5;
	TGroupBox *GroupBox6;
	TRadioButton *RadioButton3;
	TRadioButton *RadioButton4;
	TRadioButton *RadioButton5;
	TRadioButton *RadioButton6;
	TGroupBox *GroupBox7;
	TRadioButton *RadioButton7;
	TRadioButton *RadioButton8;
	TGroupBox *GroupBox8;
	TRadioButton *RadioButton9;
	TRadioButton *RadioButton10;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TEdit *Edit4;
	TLabel *Label8;
	TEdit *Edit5;
	TLabel *Label9;
	TLabel *Label10;
	TEdit *Edit6;
	TLabel *Label11;
	TEdit *Edit7;
	TLabel *Label12;
	TLabel *Label13;
	TEdit *Edit8;
	TLabel *Label14;
	TEdit *Edit9;
	TLabel *Label15;
	TLabel *Label16;
	TEdit *Edit10;
	TLabel *Label17;
	TEdit *Edit11;
	TLabel *Label18;
	TBitBtn *BitBtn5;
	TBitBtn *BitBtn6;
	TGroupBox *GroupBox9;
	TLabel *Label19;
	TEdit *Edit12;
	TLabel *Label20;
	TGroupBox *GroupBox10;
	TComboBox *ComboBox1;
	TGroupBox *GroupBox11;
	TLabel *Label21;
	TLabel *Label22;
	TLabel *Label23;
	TLabel *Label24;
	TLabel *Label25;
	TLabel *Label26;
	TLabel *Label27;
	TLabel *Label28;
	TEdit *Edit13;
	TEdit *Edit14;
	TEdit *Edit15;
	TEdit *Edit16;
	TGroupBox *GroupBox12;
	TLabel *Label29;
	TLabel *Label30;
	TEdit *Edit17;
	TEdit *Edit18;
	TLabel *Label31;
	TLabel *Label32;
	TGroupBox *GroupBox1;
	TLabel *Label1;
	TLabel *Label2;
	TEdit *Edit1;
	TEdit *Edit2;
	TBitBtn *BitBtn1;
	TGroupBox *GroupBox2;
	TLabel *Label3;
	TLabel *Label4;
	TBitBtn *BitBtn2;
	TBitBtn *BitBtn3;
	TListBox *ListBox1;
	TBitBtn *BitBtn4;
	TPanel *Panel1;
	TPanel *Panel3;
	TPanel *Panel4;
	TPanel *Panel5;
	TGroupBox *GroupBox13;
	TGroupBox *GroupBox14;
	TGroupBox *GroupBox15;
	TBevel *Bevel1;
	TBevel *Bevel2;
	TBevel *Bevel3;
	TBevel *Bevel4;
	TBevel *Bevel5;
	TBevel *Bevel6;
	TBevel *Bevel7;
	TBevel *Bevel8;
	TRadioButton *RadioButton11;
	TRadioButton *RadioButton12;
	TRadioButton *RadioButton13;
	TRadioButton *RadioButton14;
	TLabel *Label33;
	TLabel *Label34;
	TLabel *Label35;
	TLabel *Label36;
	TLabel *Label37;
	TEdit *Edit19;
	TLabel *Label38;
	TEdit *Edit20;
	TLabel *Label39;
	TSpeedButton *SpeedButton1;
	TSpeedButton *SpeedButton2;
	TEdit *Edit21;
	TLabel *Label40;
	TSpeedButton *SpeedButton3;
	TEdit *Edit22;
	TLabel *Label41;
	TSpeedButton *SpeedButton4;
	TEdit *Edit23;
	TLabel *Label42;
	TSpeedButton *SpeedButton5;
	TEdit *Edit24;
	TLabel *Label43;
	TSpeedButton *SpeedButton6;
	TEdit *Edit25;
	TLabel *Label44;
	TSpeedButton *SpeedButton7;
	TEdit *Edit26;
	TLabel *Label45;
	TSpeedButton *SpeedButton8;
	TLabel *Label46;
	TLabel *Label47;
	TLabel *Label48;
	TLabel *Label49;
	TEdit *Edit27;
	TLabel *Label50;
	TEdit *Edit28;
	TLabel *Label51;
	TLabel *Label52;
	TLabel *Label53;
	TEdit *Edit29;
	TLabel *Label54;
	TLabel *Label55;
	TLabel *Label56;
	TEdit *Edit30;
	TLabel *Label57;
	TEdit *Edit31;
	TLabel *Label58;
	TLabel *Label59;
	TLabel *Label60;
	TEdit *Edit32;
	TLabel *Label61;
	TEdit *Edit33;
	TLabel *Label62;
	TLabel *Label63;
	TLabel *Label64;
	TEdit *Edit34;
	TLabel *Label65;
	TSpeedButton *SpeedButton9;
	TSpeedButton *SpeedButton10;
	TBitBtn *BitBtn7;
	TBitBtn *BitBtn8;
	TLabel *Label66;
	TLabel *Label67;
	TEdit *Edit35;
	TEdit *Edit36;
	TEdit *Edit37;
	TEdit *Edit38;
	TLabel *Label68;
	TLabel *Label69;
	TLabel *Label70;
	TLabel *Label71;
	TLabel *Label72;
	TLabel *Label73;
	TLabel *Label74;
	TLabel *Label75;
	TStringGrid *StringGrid1;
	TBitBtn *BitBtn9;
	TBitBtn *BitBtn10;
	TGroupBox *GroupBox16;
	TStringGrid *StringGrid2;
	TGroupBox *GroupBox17;
	TGroupBox *GroupBox18;
	TBitBtn *BitBtn13;
	TBitBtn *BitBtn14;
	TGroupBox *GroupBox19;
	TEdit *Edit39;
	TChart *Chart1;
	TLineSeries *Series1;
	TLineSeries *Series2;
	TGroupBox *GroupBox20;
	TStringGrid *StringGrid3;
	TGroupBox *GroupBox21;
	TGroupBox *GroupBox22;
	TGroupBox *GroupBox23;
	TBitBtn *BitBtn11;
	TBitBtn *BitBtn12;
	TStringGrid *StringGrid4;
	TChart *Chart2;
	TChart *Chart3;
	TPaintBox *PaintBox1;
	TPaintBox *PaintBox2;
	TLineSeries *Series3;
	TLineSeries *Series4;
	TLineSeries *Series5;
	TLineSeries *Series6;
	TSaveDialog *SaveDialog1;
	TLabel *Label76;
	TSpeedButton *SpeedButton11;
	TSpeedButton *SpeedButton12;
	TLabel *Label77;
	TSpeedButton *SpeedButton13;
	TSpeedButton *SpeedButton14;
	TLabel *Label78;
	TEdit *Edit3;
	TGroupBox *GroupBox24;
	TLabel *Label79;
	TEdit *Edit40;
	TLabel *Label80;
	TEdit *Edit41;
	TBitBtn *BitBtn17;
	TBitBtn *BitBtn18;
	TBitBtn *BitBtn19;
	TGroupBox *GroupBox25;
	TBitBtn *BitBtn15;
	TBitBtn *BitBtn16;
	TGroupBox *GroupBox26;
	TLabel *Label81;
	TEdit *Edit42;
	TBitBtn *BitBtn20;
	TRichEdit *RichEdit1;
	TIdTCPClient *IdTCPClient1;
	TIdConnectionIntercept *IdConnectionIntercept1;
	TTimer *NA_Timer;
	void __fastcall BitBtn1Click(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall BitBtn2Click(TObject *Sender);
	void __fastcall BitBtn3Click(TObject *Sender);
	void __fastcall ListBox1Click(TObject *Sender);
	void __fastcall SpeedButton11Click(TObject *Sender);
	void __fastcall SpeedButton12Click(TObject *Sender);
	void __fastcall SpeedButton13Click(TObject *Sender);
	void __fastcall SpeedButton14Click(TObject *Sender);
	void __fastcall BitBtn17Click(TObject *Sender);
	void __fastcall BitBtn18Click(TObject *Sender);
	void __fastcall BitBtn19Click(TObject *Sender);
	void __fastcall BitBtn20Click(TObject *Sender);
	void __fastcall IdConnectionIntercept1Receive(TIdConnectionIntercept *ASender, TIdBytes &ABuffer);
	void __fastcall BitBtn15Click(TObject *Sender);
	void __fastcall BitBtn16Click(TObject *Sender);
	void __fastcall RadioButton11Click(TObject *Sender);
	void __fastcall NA_TimerTimer(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall BitBtn5Click(TObject *Sender);
	void __fastcall BitBtn6Click(TObject *Sender);
	void __fastcall BitBtn4Click(TObject *Sender);
	void __fastcall SpeedButton3Click(TObject *Sender);
	void __fastcall SpeedButton4Click(TObject *Sender);
	void __fastcall SpeedButton5Click(TObject *Sender);
	void __fastcall SpeedButton6Click(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall Tfrm_LumirControl(TComponent* Owner);
  void __fastcall SystemConfig_Load();
	void __fastcall SystemConfig_Save();
	void __fastcall ChartData_Initialize();
	double __fastcall Fn_Make_Round(double Value);
	void __fastcall Measurement_Point_Calculation();
	void __fastcall Measurement_Balance_Calculation();
	void __fastcall Measurement_Information_Update();
	void __fastcall Measurement_Setup_FileSave();
	void __fastcall Network_Analyzer_Initialize_Command();
	void __fastcall Network_Analyzer_Query_Device();
	void __fastcall Scanner_Control_EnableMenu();
	AnsiString __fastcall Network_Analyzer_Receive_Data(int iLimitTime);



};
//---------------------------------------------------------------------------
extern PACKAGE Tfrm_LumirControl *frm_LumirControl;
//---------------------------------------------------------------------------
#endif
