unit BOKMainSTAT;
{ ����� ������ group_id=70 !!!}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ActnList, ImgList, ComCtrls, ToolWin, Base,
  AboutDlg, StdCtrls, DB, DBClient, CheckLst, DBCtrls, Grids, //QRExport,
  DBGrids,ComObj, Buttons, Utils, Mask, strutils, errDlg, DBActns,
  Jpeg,SelDlg, DateUtils, ShellAPI;

type
  TBOKFormSTAT = class(TBaseForm)
    CoolBar: TCoolBar;
    psMenuBar: TPageScroller;
    psToolBar: TPageScroller;
    ToolBar: TToolBar;
    StatusBar: TStatusBar;
    ImageList: TImageList;
    ActionList: TActionList;
    MainMenu: TMainMenu;
    MenuBar: TToolBar;
    Splitter: TSplitter;
    actToolBar: TAction;
    actStatusBar: TAction;
    actAbout: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    cdsSSOKPost_SET: TClientDataSetEx;
    dsSSOKPost_SET: TDataSource;
    cdsSSOKEducation_SET: TClientDataSetEx;
    dsSSOKEducation_SET: TDataSource;
    cdsSSOKInstitution_SET: TClientDataSet;
    dsSSOKInstitution_SET: TDataSource;
    cdsSSOKNationality_SET: TClientDataSetEx;
    dsSSOKNationality_SET: TDataSource;
    cdsSSOKParty_SET: TClientDataSetEx;
    dsSSOKParty_SET: TDataSource;
    cdsSSOKDegree_SET: TClientDataSetEx;
    dsSSOKDegree_SET: TDataSource;
    cdsSSOKAcademic_SET: TClientDataSetEx;
    dsSSOKAcademic_SET: TDataSource;
    cdsSSOKLanguage_SET: TClientDataSetEx;
    dsSSOKLanguage_SET: TDataSource;
    cdsSSOKLevelLanguage_SET: TClientDataSetEx;
    dsSSOKLevelLanguage_SET: TDataSource;
    cdsSSOKTypePeriod_SET: TClientDataSetEx;
    dsSSOKTypePeriod_SET: TDataSource;
    cdsSSOKRelation_SET: TClientDataSetEx;
    dsSSOKRelation_SET: TDataSource;
    cdsSSOKQualification_SET: TClientDataSetEx;
    dsSSOKQualification_SET: TDataSource;
    cdsSSOKLeave_SET: TClientDataSetEx;
    dsSSOKLeave_SET: TDataSource;
    cdsSSOKMotiveDismissial_SET: TClientDataSetEx;
    dsSSOKMotiveDismissial_SET: TDataSource;
    cdsSSOKYouth_SET: TClientDataSetEx;
    dsSSOKYouth_SET: TDataSource;
    cdsSSOKDepartmentType_SET: TClientDataSetEx;
    dsSSOKDepartmentType_SET: TDataSource;
    cdsSSOKArticle_SET: TClientDataSetEx;
    dsSSOKArticle_SET: TDataSource;
    cdsSSOKDepartment_SET: TClientDataSetEx;
    dsSSOKDepartment_SET: TDataSource;
    actSSOKPost: TAction;
    actSSOKEducation: TAction;
    actSSOKNationality: TAction;
    actSSOKParty: TAction;
    actSSOKDegree: TAction;
    actSSOKAcademic: TAction;
    actSSOKLanguage: TAction;
    actSSOKLevelLanguage: TAction;
    actSSOKTypePeriod: TAction;
    actSSOKRelation: TAction;
    actSSOKQualification: TAction;
    actSSOKLeave: TAction;
    actSSOKMotiveDismissial: TAction;
    actSSOKYouth: TAction;
    actSSOKDepartmentType: TAction;
    actSSOKDepartment: TAction;
    actSSOKArticle: TAction;
    actSSOKCommandType: TAction;
    actSSOKTemplateCommand: TAction;
    cdsSSOKCommandType_Set: TClientDataSetEx;
    dsSSOKCommandType_Set: TDataSource;
    cdsSSOKTemplateCommand_SET: TClientDataSetEx;
    dsSSOKTemplateCommand_SET: TDataSource;
    FormPanel: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    OpenPanel: TPanel;
    OpenCenterPanel: TPanel;
    gbAddress: TGroupBox;
    Label78: TLabel;
    btnOnOpenPanel: TButton;
    gbPassport: TGroupBox;
    gbPersonal: TGroupBox;
    dbeOK_FAMILY: TDBEdit;
    dbeOK_BIRTHDAY: TDBEdit;
    actTable: TAction;
    actForm: TAction;
    actNew: TAction;
    actUndoChanges: TAction;
    actEdit: TAction;
    actUnactive: TAction;
    ToolButton5: TToolButton;
    ActPrev: TAction;
    actFilter: TAction;
    ToolButton8: TToolButton;
    TablePanel: TPanel;
    Panel6: TPanel;
    cdbgOK_PERSONAL: TClientDBGrid;
    cdsOKPersonal: TClientDataSetEx;
    dsOKPersonal: TDataSource;
    cdsSSokgender_SET: TClientDataSetEx;
    cdsSSOKFamilyStatus_SET: TClientDataSetEx;
    cdsSSOKRegType_SET: TClientDataSetEx;
    dsSSOKREGTYPE_SET: TDataSource;
    dsSSOKFAMILYSTATUS_SET: TDataSource;
    dsSSokgender_SET: TDataSource;
    dbeOK_PATRONYMIC: TDBEdit;
    dbeOK_FIRST_NAME: TDBEdit;
    Label26: TLabel;
    dbeOK_PASS_SERIYA: TDBEdit;
    Label27: TLabel;
    dbeOK_PASS_NUM: TDBEdit;
    dbeOK_PASS_DATE: TDBEdit;
    Label22: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    dbeOK_Home_Address: TDBEdit;
    Label21: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    actSaveNew: TAction;
    dbeOKGender: TDBEdit;
    dblcbOKGender: TDBLookupComboBox;
    dblcbOKFamilyStatus: TDBLookupComboBox;
    dbeOKFamilyStatus: TDBEdit;
    dblcbOKNationality: TDBLookupComboBox;
    dbeOKNationality: TDBEdit;
    dblcbOKRegType: TDBLookupComboBox;
    actDetails: TAction;
    lbStatus: TLabel;
    cdsOKPersonal_NEW: TClientDataSetEx;
    dsOKPersonal_NEW: TDataSource;
    cdbgOKPERSONAL_NEW: TClientDBGrid;
    dbeOKdistr: TDBEdit;
    Label34: TLabel;
    dbeOK_TELEFON: TDBEdit;
    dbeOK_RECORD_BOOK_SERIES: TDBEdit;
    dbeOK_RECORD_BOOK_NUMBER: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    tbStat: TToolButton;
    actRef: TAction;
    RefPanel: TPanel;
    PC: TPageControl;
    TabMessage: TTabSheet;
    Memo1: TMemo;
    actSaveExist: TAction;
    DetailsPanel: TPanel;
    actRefresh1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    DataSetRefreshSt: TDataSetRefresh;
    Label37: TLabel;
    cdsSSokStatus_SET: TClientDataSetEx;
    dsSSokStatus_SET: TDataSource;
    dsOKEducation: TDataSource;
    cdsOKEducation: TClientDataSetEx;
    cdsSSOkBasis_Set: TClientDataSetEx;
    dsSSOkBasis_Set: TDataSource;
    GroupBox43: TGroupBox;
    GroupBox44: TGroupBox;
    PCDetails: TPageControl;
    TabOKEducation_0: TTabSheet;
    GroupBox24: TGroupBox;
    cdbgOKEducation: TClientDBGrid;
    GroupBox25: TGroupBox;
    TabSheet_13: TTabSheet;
    TabDegree_2: TTabSheet;
    GroupBox28: TGroupBox;
    TabSheet_1: TTabSheet;
    TabSheet_6: TTabSheet;
    TabSheet_8: TTabSheet;
    TabSheet_7: TTabSheet;
    TabOKRise_9: TTabSheet;
    TabSheet_16: TTabSheet;
    TabDetailsMessage: TTabSheet;
    TabSheet_14: TTabSheet;
    TabSheet_3: TTabSheet;
    TabOKScientific_4: TTabSheet;
    TabSheet_5: TTabSheet;
    TabSheet_10: TTabSheet;
    TabSheet_11: TTabSheet;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    dbeDetailsPCode: TDBEdit;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    ActDetailNew: TAction;
    ActDetailSave: TAction;
    ActDetailDelete: TAction;
    ActDetailUndo: TAction;
    GroupBox29: TGroupBox;
    cdbgOKAcademic: TClientDBGrid;
    GroupBox45: TGroupBox;
    Label73: TLabel;
    Label75: TLabel;
    BitBtn2: TBitBtn;
    dblcbSSOKAcademic: TDBLookupComboBox;
    BitBtn6: TBitBtn;
    dbedAcademicDate: TDBEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    cdsOKAcademic: TClientDataSetEx;
    dsOKAcademic: TDataSource;
    cdbgOKDegree: TClientDBGrid;
    GroupBox46: TGroupBox;
    Label52: TLabel;
    Label60: TLabel;
    BitBtn9: TBitBtn;
    dblcbSSOKdegree: TDBLookupComboBox;
    BitBtn10: TBitBtn;
    dbedDegreeDate: TDBEdit;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    cdsOKDegree: TClientDataSetEx;
    dsOKDegree: TDataSource;
    TabSheet_19: TTabSheet;
    TabSheet_20: TTabSheet;
    TabSheet_18: TTabSheet;
    TabSheet_17: TTabSheet;
    TabSheet_12: TTabSheet;
    GroupBox26: TGroupBox;
    cdbgOKAward: TClientDBGrid;
    GroupBox31: TGroupBox;
    Label61: TLabel;
    Label71: TLabel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    dbedAwardInfo: TDBEdit;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    cdsOKAward: TClientDataSetEx;
    dsOKAward: TDataSource;
    dbedAwardDate: TDBEdit;
    cdsOKScientific: TClientDataSetEx;
    dsOKScientific: TDataSource;
    cdsOkvoyage: TClientDataSetEx;
    dsOKvoyage: TDataSource;
    cdsOkLanguage: TClientDataSetEx;
    dsOKLanguage: TDataSource;
    cdsOkRelation: TClientDataSetEx;
    dsOkRelation: TDataSource;
    GroupBox23: TGroupBox;
    cdbgOKScientific: TClientDBGrid;
    GroupBox27: TGroupBox;
    Label72: TLabel;
    Label74: TLabel;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    dbedScientificInfo: TDBEdit;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    dbedScientificDate: TDBEdit;
    GroupBox30: TGroupBox;
    cdbgOKvoyage: TClientDBGrid;
    GroupBox32: TGroupBox;
    Label76: TLabel;
    Label77: TLabel;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    DBEdit3: TDBEdit;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    DBEdit4: TDBEdit;
    GroupBox33: TGroupBox;
    cdbgOKLanguage: TClientDBGrid;
    GroupBox34: TGroupBox;
    Label79: TLabel;
    Label80: TLabel;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    GroupBox35: TGroupBox;
    cdbgOKRelation: TClientDBGrid;
    GroupBox37: TGroupBox;
    cdbgOKPeriod: TClientDBGrid;
    GroupBox39: TGroupBox;
    cdbgOKRise: TClientDBGrid;
    GroupBox40: TGroupBox;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    BitBtn39: TBitBtn;
    BitBtn40: TBitBtn;
    DBEdit12: TDBEdit;
    GroupBox41: TGroupBox;
    cdbgOKElection: TClientDBGrid;
    GroupBox42: TGroupBox;
    Label87: TLabel;
    Label88: TLabel;
    BitBtn41: TBitBtn;
    BitBtn42: TBitBtn;
    BitBtn43: TBitBtn;
    BitBtn44: TBitBtn;
    DBEdit14: TDBEdit;
    GroupBox47: TGroupBox;
    cdbgOKPremium: TClientDBGrid;
    GroupBox48: TGroupBox;
    Label89: TLabel;
    Label90: TLabel;
    BitBtn45: TBitBtn;
    BitBtn46: TBitBtn;
    DBEdit15: TDBEdit;
    BitBtn47: TBitBtn;
    BitBtn48: TBitBtn;
    DBEdit16: TDBEdit;
    GroupBox49: TGroupBox;
    cdbgOKArmy: TClientDBGrid;
    GroupBox50: TGroupBox;
    Label91: TLabel;
    Label92: TLabel;
    BitBtn49: TBitBtn;
    BitBtn50: TBitBtn;
    BitBtn51: TBitBtn;
    BitBtn52: TBitBtn;
    DBEdit18: TDBEdit;
    GroupBox51: TGroupBox;
    cdbgOKParty: TClientDBGrid;
    GroupBox52: TGroupBox;
    Label93: TLabel;
    Label94: TLabel;
    BitBtn53: TBitBtn;
    BitBtn54: TBitBtn;
    DBEd_Pvp: TDBEdit;
    BitBtn55: TBitBtn;
    BitBtn56: TBitBtn;
    DBEd_Gvp: TDBEdit;
    GroupBox53: TGroupBox;
    cdbgOKYouth: TClientDBGrid;
    GroupBox54: TGroupBox;
    Label95: TLabel;
    Label96: TLabel;
    BitBtn57: TBitBtn;
    BitBtn58: TBitBtn;
    DBEdit21: TDBEdit;
    BitBtn59: TBitBtn;
    BitBtn60: TBitBtn;
    DBEdit22: TDBEdit;
    GroupBox57: TGroupBox;
    cdbgOKLeave: TClientDBGrid;
    GroupBox59: TGroupBox;
    cdbgOKconvictions: TClientDBGrid;
    GroupBox61: TGroupBox;
    cdbgOKaddinform: TClientDBGrid;
    GroupBox62: TGroupBox;
    Label103: TLabel;
    Label104: TLabel;
    BitBtn73: TBitBtn;
    BitBtn74: TBitBtn;
    DBEdit29: TDBEdit;
    BitBtn75: TBitBtn;
    BitBtn76: TBitBtn;
    DBEdit30: TDBEdit;
    GroupBox65: TGroupBox;
    cdbgOKPenalty: TClientDBGrid;
    GroupBox66: TGroupBox;
    Label107: TLabel;
    Label108: TLabel;
    BitBtn81: TBitBtn;
    BitBtn82: TBitBtn;
    DBEdit33: TDBEdit;
    BitBtn83: TBitBtn;
    BitBtn84: TBitBtn;
    DBEdit34: TDBEdit;
    GroupBox67: TGroupBox;
    cdbgOKChangeFIO: TClientDBGrid;
    GroupBox68: TGroupBox;
    Label109: TLabel;
    Label110: TLabel;
    BitBtn85: TBitBtn;
    BitBtn86: TBitBtn;
    DBEdit35: TDBEdit;
    BitBtn87: TBitBtn;
    BitBtn88: TBitBtn;
    DBEdit36: TDBEdit;
    DBLCBlanglevel: TDBLookupComboBox;
    dblcbParty: TDBLookupComboBox;
    dblcbYouth: TDBLookupComboBox;
    dblcbPenalty: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label111: TLabel;
    DBLCBlang: TDBLookupComboBox;
    dsOKPeriod: TDataSource;
    dsOKPremium: TDataSource;
    dsOKRise: TDataSource;
    dsOKElection: TDataSource;
    dsOKArmy: TDataSource;
    dsOKYouth: TDataSource;
    dsOKParty: TDataSource;
    dsOKLeave: TDataSource;
    cdsOKRise: TClientDataSetEx;
    cdsOKPeriod: TClientDataSetEx;
    cdsOKPremium: TClientDataSetEx;
    cdsOKElection: TClientDataSetEx;
    cdsOKLeave: TClientDataSetEx;
    cdsOKYouth: TClientDataSetEx;
    cdsOKArmy: TClientDataSetEx;
    cdsOKParty: TClientDataSetEx;
    Label127: TLabel;
    DBEdit46: TDBEdit;
    Label86: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label130: TLabel;
    dsOKConvictions: TDataSource;
    dsOKPenalty: TDataSource;
    dsSSOKDepartment_RO: TDataSource;
    cdsOKPenalty: TClientDataSetEx;
    cdsOKConvictions: TClientDataSetEx;
    cdsSSOKDepartment_RO: TClientDataSetEx;
    dsSSOKArmy_SET: TDataSource;
    dsOKAddInform: TDataSource;
    dsSSOKFitnessArmy_SET: TDataSource;
    cdsSSOKFitnessArmy_SET: TClientDataSetEx;
    cdsSSOKArmy_SET: TClientDataSetEx;
    cdsOKAddInform: TClientDataSetEx;
    DBLookupComboBox6: TDBLookupComboBox;
    Label131: TLabel;
    Label132: TLabel;
    DBEdit50: TDBEdit;
    Label133: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    Label137: TLabel;
    DBEdit55: TDBEdit;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label134: TLabel;
    Label142: TLabel;
    DBEd_Gpn: TDBEdit;
    Label143: TLabel;
    DBEd_Ppn: TDBEdit;
    Label144: TLabel;
    dsSSOKPenalty_Set: TDataSource;
    dsOKChangeFIO: TDataSource;
    dsOKPost: TDataSource;
    cdsOKPost: TClientDataSetEx;
    cdsSSOKPenalty_Set: TClientDataSetEx;
    cdsOKChangeFIO: TClientDataSetEx;
    DBEdit65: TDBEdit;
    Label151: TLabel;
    Label152: TLabel;
    dsOKFiltr: TDataSource;
    cdsOKFiltr: TClientDataSetEx;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    DBEdit68: TDBEdit;
    Memo2: TMemo;
    dsSSOKVacancy_Set: TDataSource;
    TabOKStat: TTabSheet;
    actAppoint: TAction;
    actDismiss: TAction;
    dsOKStatSalary: TDataSource;
    dsOKStat: TDataSource;
    cdsOKStat: TClientDataSetEx;
    cdsOKStatSalary: TClientDataSetEx;
    dsOKRezerv: TDataSource;
    cdsSSOKVacancy_Set: TClientDataSetEx;
    cdsOKRezerv: TClientDataSetEx;
    actStatNew: TAction;
    actStatSave: TAction;
    actStatDelete: TAction;
    actStatUndo: TAction;
    actStatSalary: TAction;
    dbeokRegion: TDBEdit;
    dsSDistr: TDataSource;
    dsSRegion: TDataSource;
    cdsSRegion: TClientDataSetEx;
    cdsSDistr: TClientDataSetEx;
    dsOKPhoto: TDataSource;
    dsSDistr_RO: TDataSource;
    cdsOKPhoto: TClientDataSetEx;
    cdsTempSource: TClientDataSetEx;
    cdsSDistr_RO: TClientDataSetEx;
    DBLCBokregion: TDBLookupComboBox;
    DBLCBokdistr: TDBLookupComboBox;
    Label106: TLabel;
    Label156: TLabel;
    actChangeFIO: TAction;
    Button2: TButton;
    Panel2: TPanel;
    GroupBox21: TGroupBox;
    Label2: TLabel;
    lbDistrRO2: TLabel;
    Label5: TLabel;
    lbGdePropisan2: TLabel;
    bbSaveForm: TButton;
    dbedHOME_ADDRESSFACT: TDBEdit;
    DBEdit71: TDBEdit;
    DBLookupComboBox12: TDBLookupComboBox;
    DBEdit72: TDBEdit;
    GroupBox22: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbFormRegPlace: TLabel;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    dbedFormPASS_REG: TDBEdit;
    GroupBox63: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label31: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBLookupComboBox18: TDBLookupComboBox;
    DBLookupComboBox19: TDBLookupComboBox;
    DBEdit84: TDBEdit;
    DBLCBnationality: TDBLookupComboBox;
    DBEdnationality: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    Button3: TButton;
    Label58: TLabel;
    actDetailsFirst: TAction;
    actDetailsPrev: TAction;
    actDetailsNext: TAction;
    actDetailsLast: TAction;
    N61: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    N81: TMenuItem;
    actOrder: TAction;
    actSSOKPenalty: TAction;
    N7: TMenuItem;
    TabPhoto: TTabSheet;
    actPhotoInsert: TAction;
    actPhotoRemove: TAction;
    SignaturePanel: TPanel;
    ScrollBox: TScrollBox;
    actPhotoAttach: TAction;
    actPhotoActualSize: TAction;
    Panel4: TPanel;
    BitBtn89: TBitBtn;
    BitBtn90: TBitBtn;
    BitBtn91: TBitBtn;
    BitBtn92: TBitBtn;
    actPhotoSave: TAction;
    BitBtn93: TBitBtn;
    Panel7: TPanel;
    Panel8: TPanel;
    imgPreview: TImage;
    actAnketa: TAction;
    actLichKartaA: TAction;
    Button4: TButton;
    Button5: TButton;
    dsSDistrRO2: TDataSource;
    cdsSDistrRO2: TClientDataSetEx;
    dblcbOKEducationTitle: TDBLookupComboBox;
    Label50: TLabel;
    dsSSOKEducationTitle_SET: TDataSource;
    cdsSSOKEducationTitle_SET: TClientDataSetEx;
    Label49: TLabel;
    DBLookupComboBox21: TDBLookupComboBox;
    TabOKPersonal: TTabSheet;
    GroupBox18: TGroupBox;
    ToolButton2: TToolButton;
    actRef2: TAction;
    actObiektivka: TAction;
    DBEdit73: TDBEdit;
    Label51: TLabel;
    OptionsPanel: TPanel;
    Label53: TLabel;
    gbStateBook: TGroupBox;
    Label57: TLabel;
    Label59: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    clbActive: TColorBox;
    clbArrest: TColorBox;
    clbAphClose: TColorBox;
    clbHand: TColorBox;
    actOptions: TAction;
    Label65: TLabel;
    edBossNew: TEdit;
    Label54: TLabel;
    Label56: TLabel;
    edOfficeAddress: TEdit;
    Button7: TButton;
    actRezervShow: TAction;
    actRezervSet: TAction;
    actToExcel: TAction;
    actDelete: TAction;
    BitBtn98: TBitBtn;
    BitBtn97: TBitBtn;
    Label66: TLabel;
    DBEdit90: TDBEdit;
    DBLookupComboBox23: TDBLookupComboBox;
    cdsSSOKProfmember_SET: TClientDataSetEx;
    dsSSOKProfmember_SET: TDataSource;
    Label67: TLabel;
    DBEdit91: TDBEdit;
    DBLookupComboBox24: TDBLookupComboBox;
    cdsUsers: TClientDataSetEx;
    DBLookupComboBox28: TDBLookupComboBox;
    dblcbelection: TDBLookupComboBox;
    dsSSOKelection_SET: TDataSource;
    cdsSSOKelection_SET: TClientDataSetEx;
    chbTabVisible: TCheckBox;
    Button6: TButton;
    actLichKartaB: TAction;
    dsTempSource: TDataSource;
    GroupBox1: TGroupBox;
    Label47: TLabel;
    CBDetails: TComboBox;
    BitBtn80: TBitBtn;
    BitBtn77: TBitBtn;
    BitBtn78: TBitBtn;
    BitBtn79: TBitBtn;
    Label121: TLabel;
    Label157: TLabel;
    DBEdit13: TDBEdit;
    DBEdit49: TDBEdit;
    DBLookupComboBox30: TDBLookupComboBox;
    DBLookupComboBox31: TDBLookupComboBox;
    actObiektivkaRTF: TAction;
    actLichKartaB_rtf: TAction;
    actStat: TAction;
    cdsTemp: TClientDataSetEx;
    dsTemp: TDataSource;
    actStatDep: TAction;
    DBEdit96: TDBEdit;
    Label164: TLabel;
    Label165: TLabel;
    DBEdit97: TDBEdit;
    BitBtn61: TBitBtn;
    actChangePassport: TAction;
    actAppointNew: TAction;
    BitBtn62: TBitBtn;
    dsSSOKBaseMove_RO: TDataSource;
    cdsSSOKBaseMove_Set: TClientDataSetEx;
    Source: TClientDataSetEx;
    dsSSOKmotive_SET: TDataSource;
    cdsSSOKmotive_SET: TClientDataSetEx;
    DBLookupComboBox33: TDBLookupComboBox;
    DBLookupComboBox34: TDBLookupComboBox;
    Label159: TLabel;
    Label160: TLabel;
    Splitter3: TSplitter;
    TreeV_OLD: TTreeView;
    Panel3: TPanel;
    Pages: TPageControl;
    TabSheet2: TTabSheet;
    ScrollBox1: TScrollBox;
    GroupBox2: TGroupBox;
    cdsDerevo: TClientDataSetEx;
    GroupBox3: TGroupBox;
    ClientDBGrid1: TClientDBGrid;
    lbDepCode: TLabel;
    lbDepName: TLabel;
    Label167: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label168: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    edFilial: TEdit;
    DBEdit5: TDBEdit;
    Label68: TLabel;
    DBEdit6: TDBEdit;
    Label69: TLabel;
    BitBtn63: TBitBtn;
    actDekret: TAction;
    BitBtn96: TBitBtn;
    actDekretOut: TAction;
    actShuBankda: TAction;
    chbGluk: TCheckBox;
    chbSaveFiltr: TCheckBox;
    actLichKarta: TAction;
    dsOKRezervDetail: TDataSource;
    cdsOKRezervDetail: TClientDataSetEx;
    cdsokRezervPost1: TClientDataSetEx;
    cdsokRezervDep1: TClientDataSetEx;
    cdsokRezervPost2: TClientDataSetEx;
    cdsokRezervDep2: TClientDataSetEx;
    dsokRezervPost1: TDataSource;
    dsokRezervDep1: TDataSource;
    dsokRezervPost2: TDataSource;
    dsokRezervDep2: TDataSource;
    dsSMfo1: TDataSource;
    dsSMfo2: TDataSource;
    dsPers: TDataSource;
    cdsSMfo2: TClientDataSetEx;
    cdsPers: TClientDataSetEx;
    cdsSMfo1: TClientDataSetEx;
    bbSaveOptions: TBitBtn;
    dsSSOKSpecial_SET: TDataSource;
    cdsSSOKSpecial_SET: TClientDataSetEx;
    Label170: TLabel;
    dbedSpec: TDBEdit;
    dblcbSpec: TDBLookupComboBox;
    dsSSokSpecial_RO: TDataSource;
    cdsSSokSpecial_RO: TClientDataSetEx;
    dblcbArmyGroup: TDBLookupComboBox;
    dblcbCategoryArmy: TDBLookupComboBox;
    dblcbMilitaryrank: TDBLookupComboBox;
    dblcbStaff: TDBLookupComboBox;
    dblcbTypeForce: TDBLookupComboBox;
    dsSSOKarmygroup: TDataSource;
    cdsSSOKarmygroup: TClientDataSetEx;
    dsssokCATEGORYARMY: TDataSource;
    dsssokMILITARYRANK: TDataSource;
    dsssokSTAFF: TDataSource;
    dsssokTYPEFORCE: TDataSource;
    cdsssokCATEGORYARMY: TClientDataSetEx;
    cdsssokMILITARYRANK: TClientDataSetEx;
    cdsssokSTAFF: TClientDataSetEx;
    cdsssokTYPEFORCE: TClientDataSetEx;
    actReAccept: TAction;
    ToolButton4: TToolButton;
    N15: TMenuItem;
    GroupBox4: TGroupBox;
    Label173: TLabel;
    edDepartmentcodeNew: TEdit;
    Label176: TLabel;
    edDEPARTMENTNUMnew: TEdit;
    edDepartmentNameNew: TEdit;
    Label175: TLabel;
    bbFindDep: TBitBtn;
    actFindDep: TAction;
    Label177: TLabel;
    DBEdit8: TDBEdit;
    Label178: TLabel;
    DBEdit9: TDBEdit;
    IIASPanel: TPanel;
    actIIAS: TAction;
    GroupBox5: TGroupBox;
    Label180: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label192: TLabel;
    Label194: TLabel;
    DBEdit10: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    DBEdit38: TDBEdit;
    ed_iias_birth_distr: TDBEdit;
    ed_iias_birth_region: TDBEdit;
    dblcb_iias_birth_region: TDBLookupComboBox;
    dblcb_iias_birth_distr: TDBLookupComboBox;
    edBirth: TDBEdit;
    ed_iias_str: TDBEdit;
    DBLCB_iias_str: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    Label198: TLabel;
    Label199: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    GroupBox7: TGroupBox;
    Label200: TLabel;
    Label202: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label209: TLabel;
    bbSaveIIAS: TButton;
    DBEdit70: TDBEdit;
    DBLookupComboBox20: TDBLookupComboBox;
    DBLookupComboBox22: TDBLookupComboBox;
    Button15: TButton;
    DBLookupComboBox25: TDBLookupComboBox;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit98: TDBEdit;
    Label210: TLabel;
    ed_iias_uvd_distr: TDBEdit;
    dblcb_iias_uvd_distr: TDBLookupComboBox;
    dsDistr: TDataSource;
    cdsDistr: TClientDataSetEx;
    Label211: TLabel;
    DBEdit100: TDBEdit;
    ed_iias_birth_region_prim: TDBEdit;
    ed_iias_birth_distr_prim: TDBEdit;
    lbBirth: TLabel;
    Label212: TLabel;
    Label179: TLabel;
    DBEdit24: TDBEdit;
    Label181: TLabel;
    DBLCB_iias_live_str: TDBLookupComboBox;
    Label185: TLabel;
    ed_iias_live_region: TDBEdit;
    dblcb_iias_live_region: TDBLookupComboBox;
    Label186: TLabel;
    ed_iias_live_distr: TDBEdit;
    dblcb_iias_live_distr: TDBLookupComboBox;
    ed_iias_live_distr_prim: TDBEdit;
    Label187: TLabel;
    ed_iias_live_region_prim: TDBEdit;
    Label188: TLabel;
    Label193: TLabel;
    DBLookupComboBox16: TDBLookupComboBox;
    Label195: TLabel;
    DBEdit54: TDBEdit;
    Label196: TLabel;
    DBEdit56: TDBEdit;
    Label197: TLabel;
    dblcbS_STR: TDBLookupComboBox;
    Label201: TLabel;
    DBEdit57: TDBEdit;
    dsS_STR: TDataSource;
    cdsS_STR: TClientDataSetEx;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label97: TLabel;
    Label84: TLabel;
    Label83: TLabel;
    Label55: TLabel;
    Label126: TLabel;
    Label125: TLabel;
    Label124: TLabel;
    Label123: TLabel;
    Label122: TLabel;
    Label120: TLabel;
    Label119: TLabel;
    dblcbTypeperiod: TDBLookupComboBox;
    dblcbBaseMove: TDBLookupComboBox;
    dblcbArticle: TDBLookupComboBox;
    DBEdit811: TDBEdit;
    DBEdit808: TDBEdit;
    DBEdit807: TDBEdit;
    DBEdit806: TDBEdit;
    DBEdit802: TDBEdit;
    DBEdit801: TDBEdit;
    DBEd_poststring: TDBEdit;
    DBEd_depstring: TDBEdit;
    ChbArticle: TCheckBox;
    BitBtn36: TBitBtn;
    BitBtn35: TBitBtn;
    BitBtn34: TBitBtn;
    BitBtn33: TBitBtn;
    TabSheet3: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBEdit106: TDBEdit;
    Label221: TLabel;
    TabSheet4: TTabSheet;
    BitBtn99: TBitBtn;
    BitBtn100: TBitBtn;
    BitBtn101: TBitBtn;
    BitBtn102: TBitBtn;
    Label215: TLabel;
    Label216: TLabel;
    DBLookupComboBox17: TDBLookupComboBox;
    Label218: TLabel;
    Label222: TLabel;
    DBEdit104: TDBEdit;
    Label234: TLabel;
    DBLookupComboBox36: TDBLookupComboBox;
    Label236: TLabel;
    DBEdit115: TDBEdit;
    Label217: TLabel;
    DBEdit107: TDBEdit;
    Label220: TLabel;
    DBEdit108: TDBEdit;
    Label223: TLabel;
    DBEdit109: TDBEdit;
    Label224: TLabel;
    DBEdit110: TDBEdit;
    Label225: TLabel;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    Label226: TLabel;
    cdsPrizSystem: TClientDataSetEx;
    dsPrizSystem: TDataSource;
    dsPR_OFF: TDataSource;
    cdsPR_OFF: TClientDataSetEx;
    dsDoljn: TDataSource;
    cdsDoljn: TClientDataSetEx;
    dblcbDoljn: TDBLookupComboBox;
    DBEdit105: TDBEdit;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    Label82: TLabel;
    Label81: TLabel;
    Label118: TLabel;
    Label117: TLabel;
    Label116: TLabel;
    Label115: TLabel;
    Label114: TLabel;
    Label113: TLabel;
    Label112: TLabel;
    DBLCBrelation: TDBLookupComboBox;
    DBEdit709: TDBEdit;
    DBEdit708: TDBEdit;
    DBEdit706: TDBEdit;
    DBEdit705: TDBEdit;
    DBEdit704: TDBEdit;
    DBEdit703: TDBEdit;
    DBEdit702: TDBEdit;
    DBEdit701: TDBEdit;
    BitBtn32: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn30: TBitBtn;
    BitBtn29: TBitBtn;
    TabSheet6: TTabSheet;
    BitBtn103: TBitBtn;
    BitBtn104: TBitBtn;
    BitBtn105: TBitBtn;
    BitBtn106: TBitBtn;
    DBEdit114: TDBEdit;
    DBEdit116: TDBEdit;
    Label219: TLabel;
    Label228: TLabel;
    Label230: TLabel;
    Label232: TLabel;
    Label237: TLabel;
    DBLookupComboBox29: TDBLookupComboBox;
    DBLookupComboBox27: TDBLookupComboBox;
    DBLookupComboBox32: TDBLookupComboBox;
    ds_region: TDataSource;
    cds_region: TClientDataSetEx;
    ds_STR: TDataSource;
    cds_STR: TClientDataSetEx;
    ds_distr: TDataSource;
    cds_distr: TClientDataSetEx;
    ds_yesno: TDataSource;
    cds_yesno: TClientDataSetEx;
    ed_iias_live_str: TDBEdit;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    bbEducationCancel: TBitBtn;
    bbEducationDelete: TBitBtn;
    bbEducationNew: TBitBtn;
    bbEducationSave: TBitBtn;
    dbedDiplomNum: TDBEdit;
    DBEdit102: TDBEdit;
    dbedDiplomDate: TDBEdit;
    DBEdit85: TDBEdit;
    dbedProfession: TDBEdit;
    DBLCBinstitution: TDBLookupComboBox;
    dblcbSSOKBasis: TDBLookupComboBox;
    dblcbSSOKEducation: TDBLookupComboBox;
    dblcbSSOKQualification: TDBLookupComboBox;
    Label13: TLabel;
    Label203: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label48: TLabel;
    lbInstitution: TBitBtn;
    TabSheet8: TTabSheet;
    BitBtn107: TBitBtn;
    BitBtn108: TBitBtn;
    BitBtn109: TBitBtn;
    BitBtn110: TBitBtn;
    Label204: TLabel;
    Label229: TLabel;
    Label231: TLabel;
    Label233: TLabel;
    DBEdit37: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    cdsNostraSet: TClientDataSetEx;
    dsNostraSet: TDataSource;
    TabSheet9: TTabSheet;
    BitBtn111: TBitBtn;
    BitBtn112: TBitBtn;
    BitBtn113: TBitBtn;
    BitBtn114: TBitBtn;
    Label70: TLabel;
    Label238: TLabel;
    DBEdit2: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit45: TDBEdit;
    Label241: TLabel;
    Label243: TLabel;
    DBEdit51: TDBEdit;
    DBEdit92: TDBEdit;
    Label244: TLabel;
    Label245: TLabel;
    DBEdit93: TDBEdit;
    Label246: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    Label247: TLabel;
    Label248: TLabel;
    DBLookupComboBox10: TDBLookupComboBox;
    Label239: TLabel;
    DBEdit42: TDBEdit;
    Label240: TLabel;
    DBEdit44: TDBEdit;
    Label235: TLabel;
    DBEdit17: TDBEdit;
    BitBtn115: TBitBtn;
    actShowPhoto: TAction;
    GroupBox8: TGroupBox;
    BitBtn116: TBitBtn;
    cdsOKPhotoBMP: TClientDataSetEx;
    dsOKPhotoBMP: TDataSource;
    GroupBox9: TGroupBox;
    imgSignature: TImage;
    MemoBMP: TMemo;
    TabSheet_21: TTabSheet;
    TabSheet_22: TTabSheet;
    GroupBox10: TGroupBox;
    cdbgokhospital: TClientDBGrid;
    GroupBox11: TGroupBox;
    Label227: TLabel;
    Label242: TLabel;
    Label249: TLabel;
    Label250: TLabel;
    Label251: TLabel;
    BitBtn117: TBitBtn;
    BitBtn118: TBitBtn;
    BitBtn119: TBitBtn;
    BitBtn120: TBitBtn;
    dbedHospitalDateClose: TDBEdit;
    dbedHospitalDateOpen: TDBEdit;
    DBLookupComboBox15: TDBLookupComboBox;
    GroupBox13: TGroupBox;
    Label252: TLabel;
    Label253: TLabel;
    Label254: TLabel;
    Label256: TLabel;
    BitBtn121: TBitBtn;
    BitBtn122: TBitBtn;
    BitBtn123: TBitBtn;
    BitBtn124: TBitBtn;
    DBEdit113: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    TabSheet_23: TTabSheet;
    GroupBox12: TGroupBox;
    cdbgokprivilege: TClientDBGrid;
    GroupBox14: TGroupBox;
    BitBtn125: TBitBtn;
    BitBtn126: TBitBtn;
    BitBtn127: TBitBtn;
    BitBtn128: TBitBtn;
    GroupBox15: TGroupBox;
    cdbgokincrease: TClientDBGrid;
    Label262: TLabel;
    Label263: TLabel;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    Label264: TLabel;
    DBEdit125: TDBEdit;
    dsokhospital: TDataSource;
    dsokprivilege: TDataSource;
    dsokincrease: TDataSource;
    cdsokprivilege: TClientDataSetEx;
    cdsokincrease: TClientDataSetEx;
    cdsokhospital: TClientDataSetEx;
    dsSSokprivilege_SET: TDataSource;
    cdsSSokprivilege_SET: TClientDataSetEx;
    dsSSokhospital_SET: TDataSource;
    cdsSSokhospital_SET: TClientDataSetEx;
    Label265: TLabel;
    DBEdit126: TDBEdit;
    Label255: TLabel;
    Label257: TLabel;
    DBEdit120: TDBEdit;
    Label258: TLabel;
    DBEdit121: TDBEdit;
    Label259: TLabel;
    DBEdit128: TDBEdit;
    DBLookupComboBox11: TDBLookupComboBox;
    dsSSokincrease_SET: TDataSource;
    cdsSSokincrease_SET: TClientDataSetEx;
    Label260: TLabel;
    DBEdit119: TDBEdit;
    TabFilial: TTabSheet;
    actTabel: TAction;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    dsTabel: TDataSource;
    cdsTabel: TClientDataSetEx;
    DBLookupComboBox26: TDBLookupComboBox;
    DBEdit127: TDBEdit;
    Label261: TLabel;
    Label266: TLabel;
    DBEdit129: TDBEdit;
    Label267: TLabel;
    DBEdit130: TDBEdit;
    Label268: TLabel;
    DBEdit131: TDBEdit;
    Label269: TLabel;
    DBEdit132: TDBEdit;
    Label270: TLabel;
    DBEdit133: TDBEdit;
    Label271: TLabel;
    DBEdit134: TDBEdit;
    Label272: TLabel;
    DBEdit135: TDBEdit;
    Label273: TLabel;
    TabSheet10: TTabSheet;
    GroupBox19: TGroupBox;
    cdbgok_business_voyage: TClientDBGrid;
    GroupBox20: TGroupBox;
    Label274: TLabel;
    Label275: TLabel;
    Label276: TLabel;
    Label277: TLabel;
    Label279: TLabel;
    Label280: TLabel;
    Label281: TLabel;
    BitBtn130: TBitBtn;
    BitBtn131: TBitBtn;
    BitBtn132: TBitBtn;
    BitBtn133: TBitBtn;
    DBEdit103: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit137: TDBEdit;
    DBLookupComboBox35: TDBLookupComboBox;
    DBEdit139: TDBEdit;
    DBEdit140: TDBEdit;
    DBEdit141: TDBEdit;
    Label282: TLabel;
    DBLookupComboBox37: TDBLookupComboBox;
    Label283: TLabel;
    DBLookupComboBox38: TDBLookupComboBox;
    DSss_ok_theme_business_voyage: TDataSource;
    DSss_ok_org_business_voyage: TDataSource;
    dsStr_Set: TDataSource;
    CDSss_ok_theme_business_voyage: TClientDataSetEx;
    CDSss_ok_org_business_voyage: TClientDataSetEx;
    cdsStr_Set: TClientDataSetEx;
    dsok_business_voyage: TDataSource;
    cdsok_business_voyage: TClientDataSetEx;
    Label278: TLabel;
    DBEdit138: TDBEdit;
    edRegion_RO2: TDBEdit;
    dblcbRegion_RO2: TDBLookupComboBox;
    edDistrRO_2: TDBEdit;
    dblcbDistrRO_2: TDBLookupComboBox;
    lbDistrRO2_: TLabel;
    lbGdePropisan2_: TLabel;
    edDistrRO2: TDBEdit;
    dblcbRegion_RO3: TDBLookupComboBox;
    DBEdit145: TDBEdit;
    dblcbDistrRO_3: TDBLookupComboBox;
    DBLookupComboBox43: TDBLookupComboBox;
    DSss_ok_passport_type: TDataSource;
    CDSss_ok_passport_type: TClientDataSetEx;
    cdsTabelLeave: TClientDataSetEx;
    GB_tabel_date: TGroupBox;
    TabPost: TTabSheet;
    GroupBox38: TGroupBox;
    GroupBox55: TGroupBox;
    GroupBox64: TGroupBox;
    BitBtn138: TBitBtn;
    cdsSSOKkv_kurs_SET: TClientDataSetEx;
    dsSSOKkv_kurs_SET: TDataSource;
    actKurs: TAction;
    dsOKKurs: TDataSource;
    cdsOKKurs: TClientDataSetEx;
    DBEdit147: TDBEdit;
    DBLookupComboBox44: TDBLookupComboBox;
    DBEdit149: TDBEdit;
    DBLookupComboBox47: TDBLookupComboBox;
    Label287: TLabel;
    DBLookupComboBox48: TDBLookupComboBox;
    CDSssok_theme_business_voyage_SET: TClientDataSetEx;
    DSssok_theme_business_voyage_SET: TDataSource;
    cdsssok_org_business_voyage_SET: TClientDataSetEx;
    dsssok_org_business_voyage_SET: TDataSource;
    ListDetail: TListBox;
    TabSheet11: TTabSheet;
    cdsOK_kurs: TClientDataSetEx;
    dsOK_kurs: TDataSource;
    GroupBox72: TGroupBox;
    ClientDBGrid5: TClientDBGrid;
    Label293: TLabel;
    dblcbFormSS_OK_REGPLACE: TDBLookupComboBox;
    dsSS_OK_regplace: TDataSource;
    cdsSS_OK_regplace: TClientDataSetEx;
    dsSS_OK_city: TDataSource;
    cdsSS_OK_city: TClientDataSetEx;
    cdsOK_Kurs2: TClientDataSetEx;
    dsOKKurs2: TDataSource;
    Label294: TLabel;
    DBLookupComboBox50: TDBLookupComboBox;
    DBLookupComboBox51: TDBLookupComboBox;
    Label296: TLabel;
    DBEdit25: TDBEdit;
    TabSheet12: TTabSheet;
    GroupBox73: TGroupBox;
    CDBGok_zp_rate: TClientDBGrid;
    dsss_ok_zp_rate: TDataSource;
    dsss_ok_zp_rate_type: TDataSource;
    cdsss_ok_zp_rate: TClientDataSetEx;
    cdsss_ok_zp_rate_type: TClientDataSetEx;
    dsok_zp_rate: TDataSource;
    CDSok_zp_rate: TClientDataSetEx;
    GroupBox74: TGroupBox;
    Label297: TLabel;
    Label298: TLabel;
    Label299: TLabel;
    Label301: TLabel;
    BitBtn147: TBitBtn;
    BitBtn148: TBitBtn;
    BitBtn149: TBitBtn;
    BitBtn150: TBitBtn;
    DBEd_zp_rate_date: TDBEdit;
    DBEdit101: TDBEdit;
    DBLCB_zp_rate: TDBLookupComboBox;
    DBEdit155: TDBEdit;
    DBLookupComboBox54: TDBLookupComboBox;
    Label302: TLabel;
    Label300: TLabel;
    DBEdit69: TDBEdit;
    DBEdit99: TDBEdit;
    dbedCOD_OBL_LIVE: TDBEdit;
    DBEdit156: TDBEdit;
    DBEdit157: TDBEdit;
    dbedCOD_OBL_birth: TDBEdit;
    DBEdit158: TDBEdit;
    Label303: TLabel;
    cdsRegion2: TClientDataSetEx;
    dsRegion2: TDataSource;
    ClientDataSetEx1: TClientDataSetEx;
    DataSource1: TDataSource;
    cdsSDistr_RO2: TClientDataSetEx;
    dsSDistr_RO2: TDataSource;
    Label304: TLabel;
    DBLookupComboBox52: TDBLookupComboBox;
    Label305: TLabel;
    Label1: TLabel;
    Label36: TLabel;
    medOK_beginDAte: TDBEdit;
    medOK_endDAte: TDBEdit;
    DBEdit142: TDBEdit;
    DBEdit144: TDBEdit;
    DBEdit159: TDBEdit;
    DBEdit160: TDBEdit;
    Label306: TLabel;
    Label307: TLabel;
    Label308: TLabel;
    Label309: TLabel;
    Label310: TLabel;
    DBEdit161: TDBEdit;
    DBEdit162: TDBEdit;
    Label311: TLabel;
    Label312: TLabel;
    DBEdit163: TDBEdit;
    DBEdit164: TDBEdit;
    DBEdit165: TDBEdit;
    DBEdit166: TDBEdit;
    Label313: TLabel;
    Label314: TLabel;
    Label315: TLabel;
    Label316: TLabel;
    DBEdit167: TDBEdit;
    DBEdit168: TDBEdit;
    DBEdit169: TDBEdit;
    DBEdit170: TDBEdit;
    Label317: TLabel;
    Label318: TLabel;
    Label319: TLabel;
    Label320: TLabel;
    DBEdit171: TDBEdit;
    DBEdit172: TDBEdit;
    Label321: TLabel;
    Label322: TLabel;
    cdsSSOKelection_Set2: TClientDataSetEx;
    dsSSOKelection_Set2: TDataSource;
    cdsSSOKelection_Set3: TClientDataSetEx;
    dsSSOKelection_Set3: TDataSource;
    Label323: TLabel;
    DBEdit173: TDBEdit;
    DBLookupComboBox55: TDBLookupComboBox;
    PCMainOK: TPageControl;
    IIASPanel_: TTabSheet;
    OptionsPanel_: TTabSheet;
    OpenPanel_: TTabSheet;
    RefPanel_: TTabSheet;
    TablePanel_: TTabSheet;
    FormPanel_: TTabSheet;
    DetailsPanel_: TTabSheet;
    Label326: TLabel;
    Label329: TLabel;
    dsSRegionRO2: TDataSource;
    cdsSRegionRO2: TClientDataSetEx;
    Label330: TLabel;
    Label331: TLabel;
    DBEd_poststring2: TDBEdit;
    DBEd_depstring2: TDBEdit;
    DBlcb_poststring3: TDBLookupComboBox;
    DBlcb_depstring3: TDBLookupComboBox;
    dsSS_OK_POST: TDataSource;
    cdsSS_OK_POST: TClientDataSetEx;
    cdsSS_OK_DEPARTMENT: TClientDataSetEx;
    dsSS_OK_DEPARTMENT: TDataSource;
    lbShowBank: TLabel;
    PageControl4: TPageControl;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    GroupBox58: TGroupBox;
    Label99: TLabel;
    Label100: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label289: TLabel;
    Label290: TLabel;
    BitBtn65: TBitBtn;
    BitBtn66: TBitBtn;
    DBEDdate_in_leave: TDBEdit;
    BitBtn67: TBitBtn;
    BitBtn68: TBitBtn;
    DBEdit26: TDBEdit;
    DBLookupComboBox13: TDBLookupComboBox;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit152: TDBEdit;
    DBEdit153: TDBEdit;
    edDay: TEdit;
    GroupBox75: TGroupBox;
    Label3: TLabel;
    Label11: TLabel;
    dbed_date_recall_begin: TDBEdit;
    dbed_date_recall_end: TDBEdit;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit86: TDBEdit;
    DBEdit143: TDBEdit;
    BitBtn152: TBitBtn;
    BitBtn153: TBitBtn;
    Label85: TLabel;
    DBEdit150: TDBEdit;
    Label284: TLabel;
    dbed_PASS_DATE_END: TDBEdit;
    Label288: TLabel;
    Label291: TLabel;
    DBEdit32: TDBEdit;
    Label292: TLabel;
    dblcbGOsubmit: TDBLookupComboBox;
    cdsSS_OK_GOSUBMIT: TClientDataSetEx;
    dsSS_OK_GOSUBMIT: TDataSource;
    lbgosubmit: TLabel;
    BitBtn151: TBitBtn;
    ToolButton25: TToolButton;
    actRefreshRef: TAction;
    DSiias_birth_region: TDataSource;
    CDS_iias_birth_region: TClientDataSetEx;
    DS_iias_birth_distr: TDataSource;
    DS_iias_live_region: TDataSource;
    CDS_iias_live_region: TClientDataSetEx;
    DS_iias_live_distr: TDataSource;
    CDS_iias_live_distr: TClientDataSetEx;
    CDS_iias_birth_distr: TClientDataSet;
    dsDistrNew: TDataSource;
    cdsDistrNew: TClientDataSetEx;
    dsRegionNew: TDataSource;
    cdsRegionNew: TClientDataSetEx;
    ds_DBLCBdistr: TDataSource;
    cds_DBLCBdistr: TClientDataSetEx;
    ds_DBLCB_SRegion: TDataSource;
    cds_DBLCB_SRegion: TClientDataSetEx;
    ds_dblcbRegion_RO3: TDataSource;
    cds_dblcbRegion_RO3: TClientDataSetEx;
    ds_dblcbDistrRO_3: TDataSource;
    cds_dblcbDistrRO_3: TClientDataSetEx;
    ds_dblcbDistrRO_2: TDataSource;
    cds_dblcbDistrRO_2: TClientDataSetEx;
    ds_dblcbRegion_RO2: TDataSource;
    cds_dblcbRegion_RO2: TClientDataSetEx;
    actStatPersonal: TAction;
    actStatPersonalDep: TAction;
    actStatStag: TAction;
    actCopyPers: TAction;
    cdsKursDva: TClientDataSetEx;
    dsKursDva: TDataSource;
    TabCopyPers: TTabSheet;
    cdsTemp2: TClientDataSetEx;
    DBEdit78: TDBEdit;
    Label332: TLabel;
    Label333: TLabel;
    DBEdit151: TDBEdit;
    dsOK_Kurs3: TDataSource;
    cdsOK_Kurs3: TClientDataSetEx;
    TabSheet15: TTabSheet;
    GroupBox36: TGroupBox;
    CDBGok_freedays: TClientDBGrid;
    dsOK_Tabel: TDataSource;
    cdsOK_Tabel: TClientDataSetEx;
    GB: TGroupBox;
    GB_PERS: TGroupBox;
    BitBtn164: TBitBtn;
    medBankDate2: TMaskEdit;
    cdsOK_FreeDays: TClientDataSetEx;
    dsOK_FreeDays: TDataSource;
    DBEdit154: TDBEdit;
    DBEdit174: TDBEdit;
    DBEdit175: TDBEdit;
    bbGB_PERS: TBitBtn;
    Label334: TLabel;
    Label335: TLabel;
    Label336: TLabel;
    BitBtn169: TBitBtn;
    BitBtn170: TBitBtn;
    BitBtn171: TBitBtn;
    BitBtn172: TBitBtn;
    actGOSubmitDismiss: TAction;
    Label338: TLabel;
    DBEdit176: TDBEdit;
    gb_Xalk: TGroupBox;
    DBLookupComboBox41: TDBLookupComboBox;
    Label341: TLabel;
    DBEdit179: TDBEdit;
    DBLookupComboBox39: TDBLookupComboBox;
    DBEdit177: TDBEdit;
    Label339: TLabel;
    DBLookupComboBox40: TDBLookupComboBox;
    DBEdit178: TDBEdit;
    Label340: TLabel;
    actGoRefuse: TAction;
    actGoUtverdit: TAction;
    actGOPodtverdit: TAction;
    actGOtoVveden: TAction;
    Label6: TLabel;
    DBEdit89: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox14: TDBLookupComboBox;
    Label191: TLabel;
    dbedIronMaiden: TDBEdit;
    bbGOTO_IIAS: TBitBtn;
    BitBtn168: TBitBtn;
    GroupBox76: TGroupBox;
    Label324: TLabel;
    Label325: TLabel;
    edRegion_RO2_: TDBEdit;
    dblcbRegion_RO2_: TDBLookupComboBox;
    edDistrRO_2_: TDBEdit;
    dblcbDistrRO_2_: TDBLookupComboBox;
    dbedHOME_ADDRESSFACT_: TDBEdit;
    Label25: TLabel;
    Label29: TLabel;
    DBEdit146: TDBEdit;
    dblcbFormSS_OK_REGPLACE_: TDBLookupComboBox;
    dbedFormPASS_REG_: TDBEdit;
    Label286: TLabel;
    lbFormRegPlace_: TLabel;
    Label328: TLabel;
    ed_iias_str_NEW: TDBEdit;
    DBLCB_iias_str_NEW: TDBLookupComboBox;
    Label343: TLabel;
    DBEdit183: TDBEdit;
    Label344: TLabel;
    DBEdit184: TDBEdit;
    Label345: TLabel;
    DBEdit185: TDBEdit;
    DBLookupComboBox53: TDBLookupComboBox;
    DBLookupComboBox56: TDBLookupComboBox;
    DBEdit187: TDBEdit;
    DBEdit188: TDBEdit;
    Label347: TLabel;
    Label348: TLabel;
    Label349: TLabel;
    Label350: TLabel;
    DBEdit189: TDBEdit;
    DBLookupComboBox57: TDBLookupComboBox;
    DBEdit190: TDBEdit;
    Label351: TLabel;
    Label28: TLabel;
    DBLookupComboBox59: TDBLookupComboBox;
    Label20: TLabel;
    dbeOK_tabno: TDBEdit;
    Label18: TLabel;
    dblcbOKStatus: TDBLookupComboBox;
    bbApplication: TBitBtn;
    BitBtn129: TBitBtn;
    BitBtn134: TBitBtn;
    cdsSSOKPost_new: TClientDataSetEx;
    dsSSOKPost_new: TDataSource;
    execprc: TClientDataSetEx;
    chbSvetaOnly: TCheckBox;
    Label169: TLabel;
    DBEdit11: TDBEdit;
    Label295: TLabel;
    DBEdit43: TDBEdit;
    DBLookupComboBox42: TDBLookupComboBox;
    Label342: TLabel;
    DBLookupComboBox45: TDBLookupComboBox;
    Label346: TLabel;
    DBEdit74: TDBEdit;
    cdsss_ok_education_count: TClientDataSetEx;
    dsss_ok_education_count: TDataSource;
    Label352: TLabel;
    DBLookupComboBox46: TDBLookupComboBox;
    DBEdit148: TDBEdit;
    DBEdit180: TDBEdit;
    Label353: TLabel;
    Button8: TButton;
    actObiektivkaAgroUz: TAction;
    TabSheet16: TTabSheet;
    Label354: TLabel;
    DBEdit181: TDBEdit;
    Label355: TLabel;
    DBEdit182: TDBEdit;
    lbl2: TLabel;
    EditFileName: TEdit;
    BtnAddlFile: TButton;
    BitBtn139: TBitBtn;
    OpenDlFile: TOpenDialog;
    cdsOK_diplom: TClientDataSetEx;
    dsOK_diplom: TDataSource;
    ClientDBGrid2: TClientDBGrid;
    BitBtn154: TBitBtn;
    Button9: TButton;
    Label356: TLabel;
    DBLookupComboBox49: TDBLookupComboBox;
    cdsSS_OK_vid_education: TClientDataSetEx;
    dsSS_OK_vid_education: TDataSource;
    DBEdit186: TDBEdit;
    Label357: TLabel;
    DBEdit191: TDBEdit;
    DBLookupComboBox58: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label285: TLabel;
    DBEdit192: TDBEdit;
    cdsSpravka: TClientDataSetEx;
    dsSpravka: TDataSource;
    BitBtn176: TBitBtn;
    Label360: TLabel;
    DBEdit193: TDBEdit;
    gbXALKHaveData: TGroupBox;
    Label361: TLabel;
    DBLookupComboBox60: TDBLookupComboBox;
    Label362: TLabel;
    DBLookupComboBox61: TDBLookupComboBox;
    Label363: TLabel;
    DBLookupComboBox62: TDBLookupComboBox;
    Label364: TLabel;
    DBLookupComboBox63: TDBLookupComboBox;
    DBLookupComboBox64: TDBLookupComboBox;
    Label365: TLabel;
    Label366: TLabel;
    DBLookupComboBox65: TDBLookupComboBox;
    Label367: TLabel;
    Label368: TLabel;
    BitBtn178: TBitBtn;
    Label369: TLabel;
    DBLookupComboBox66: TDBLookupComboBox;
    GroupBox77: TGroupBox;
    Label370: TLabel;
    Label371: TLabel;
    Label373: TLabel;
    Label374: TLabel;
    Label375: TLabel;
    DBLookupComboBox67: TDBLookupComboBox;
    DBLookupComboBox68: TDBLookupComboBox;
    DBLookupComboBox70: TDBLookupComboBox;
    DBLookupComboBox71: TDBLookupComboBox;
    DBLookupComboBox72: TDBLookupComboBox;
    Label327: TLabel;
    Label372: TLabel;
    MemoTest: TMemo;
    PageControl5: TPageControl;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    GroupBox60: TGroupBox;
    Label101: TLabel;
    Label102: TLabel;
    Label358: TLabel;
    Label359: TLabel;
    BitBtn69: TBitBtn;
    bbSudDel: TBitBtn;
    DBEdit27: TDBEdit;
    BitBtn71: TBitBtn;
    BitBtn72: TBitBtn;
    DBEdit28: TDBEdit;
    EditFileNameSpravka: TEdit;
    Button1: TButton;
    BitBtn174: TBitBtn;
    BitBtn175: TBitBtn;
    ClientDBGrid6: TClientDBGrid;
    BitBtn177: TBitBtn;
    GroupBox78: TGroupBox;
    Label376: TLabel;
    Label377: TLabel;
    Label378: TLabel;
    Label379: TLabel;
    Label380: TLabel;
    Label381: TLabel;
    Label382: TLabel;
    DBEdit194: TDBEdit;
    DBEdit195: TDBEdit;
    DBEdit196: TDBEdit;
    DBEdit197: TDBEdit;
    DBEdit198: TDBEdit;
    DBEdit200: TDBEdit;
    DBEdit201: TDBEdit;
    DBEdit199: TDBEdit;
    DBEdit202: TDBEdit;
    DBEdit203: TDBEdit;
    DBEdit204: TDBEdit;
    BitBtn182: TBitBtn;
    BitBtn183: TBitBtn;
    bbSudDel2: TBitBtn;
    DBEdit205: TDBEdit;
    Label383: TLabel;
    DBEdit206: TDBEdit;
    Label384: TLabel;
    EditFileNamemaxallaSpravka: TEdit;
    Button14: TButton;
    BitBtn185: TBitBtn;
    BitBtn186: TBitBtn;
    BitBtn187: TBitBtn;
    ClientDBGrid7: TClientDBGrid;
    Label385: TLabel;
    cdsMaxallaSpravka: TClientDataSetEx;
    dsMaxallaSpravka: TDataSource;
    Label386: TLabel;
    BitBtn188: TBitBtn;
    bbSudDel3: TBitBtn;
    BitBtn180: TBitBtn;
    ClientDBGrid8: TClientDBGrid;
    GroupBox79: TGroupBox;
    Edit1: TEdit;
    Label387: TLabel;
    Edit2: TEdit;
    Label388: TLabel;
    BitBtn163: TBitBtn;
    BitBtn173: TBitBtn;
    dsOkPersonalcopy: TDataSource;
    cdsOkPersonalcopy: TClientDataSetEx;
    DBEdit207: TDBEdit;
    DBEdit208: TDBEdit;
    DBEdit209: TDBEdit;
    DBEdit210: TDBEdit;
    TreeV: TTreeView;
    gbFilialStat: TGroupBox;
    GBcdbgOKStat: TGroupBox;
    Label105: TLabel;
    Label174: TLabel;
    Label98: TLabel;
    Label62: TLabel;
    Label171: TLabel;
    LbOklad: TLabel;
    bbStatNew: TBitBtn;
    bbStatUndo: TBitBtn;
    bbStatSave: TBitBtn;
    bbStatDelete: TBitBtn;
    DBEdit23: TDBEdit;
    BitBtn157: TBitBtn;
    BitBtn156: TBitBtn;
    bbSvedeniya: TBitBtn;
    bbStatSalaryNew: TBitBtn;
    DBEdPost: TDBEdit;
    edSpecial: TDBEdit;
    DBLCBpost: TDBLookupComboBox;
    cbSpecial: TDBLookupComboBox;
    cdsSSOKPost_SET2: TClientDataSetEx;
    dsSSOKPost_SET2: TDataSource;
    cdsOKStatSalary2: TClientDataSetEx;
    dsOKStatSalary2: TDataSource;
    bbDoljnosti: TBitBtn;
    bbDep: TBitBtn;
    CDS_DBBranch: TClientDataSet;
    BitBtn64: TBitBtn;
    BitBtn70: TBitBtn;
    BitBtn94: TBitBtn;
    rgOKStatHist: TRadioGroup;
    BitBtn179: TBitBtn;
    Label390: TLabel;
    Label391: TLabel;
    dtpS: TMaskEdit;
    DTPpo: TMaskEdit;
    BitBtn95: TBitBtn;
    BitBtn181: TBitBtn;
    dsSSOKPostCategory: TDataSource;
    cdsSSOKPostCategory: TClientDataSetEx;
    GroupBox80: TGroupBox;
    cdbgOKStat: TClientDBGrid;
    DBTsalary: TDBText;
    cdbgOKStatSalary: TClientDBGrid;
    ClientDBGrid9: TClientDBGrid;
    Label162: TLabel;
    lbdepartment: TLabel;
    Label163: TLabel;
    lbPost: TLabel;
    Label172: TLabel;
    lbSpecial: TLabel;
    Label158: TLabel;
    lbVacancy: TLabel;
    Label161: TLabel;
    lbHire: TLabel;
    Label389: TLabel;
    lbDekret: TLabel;
    GroupBox81: TGroupBox;
    bbGoToMfo: TBitBtn;
    edMFOStat: TEdit;
    edDep: TEdit;
    Label166: TLabel;
    lb1: TLabel;
    BitBtn190: TBitBtn;
    CBdep: TComboBox;
    BitBtn184: TBitBtn;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    cdbgss_ok_mfo_category: TClientDBGrid;
    BitBtn135: TBitBtn;
    BitBtn136: TBitBtn;
    DSss_ok_post_category: TDataSource;
    CDSss_ok_post_category: TClientDataSetEx;
    DSss_ok_mfo_category: TDataSource;
    CDSss_ok_mfo_category: TClientDataSetEx;
    TabCategory: TTabSheet;
    GroupBox71: TGroupBox;
    GroupBox82: TGroupBox;
    BitBtn140: TBitBtn;
    GroupBox83: TGroupBox;
    ClientDBGrid4: TClientDBGrid;
    cdbgss_ok_post_category: TClientDBGrid;
    BitBtn137: TBitBtn;
    BitBtn141: TBitBtn;
    ToolButton7: TToolButton;
    cdsss_ok_mfo_category_type: TClientDataSetEx;
    DSss_ok_mfo_category_type: TDataSource;
    MemoFilials: TMemo;
    MemoPost: TMemo;
    Label337: TLabel;
    Label392: TLabel;
    DBEdit31: TDBEdit;
    DBEdit211: TDBEdit;
    Label393: TLabel;
    OpenDialogMyFile: TOpenDialog;
    bbCategorySave: TBitBtn;
    bbPostSave: TBitBtn;
    TabRep: TTabSheet;
    ToolButton9: TToolButton;
    GroupBox56: TGroupBox;
    GroupBox69: TGroupBox;
    Label394: TLabel;
    Label395: TLabel;
    Label397: TLabel;
    Label398: TLabel;
    edMfoREP: TEdit;
    chbTEST: TCheckBox;
    cbRGN: TComboBox;
    CBII: TComboBox;
    dtp_From4: TDateTimePicker;
    dtp_To4: TDateTimePicker;
    CDSss_ok_category_SET: TClientDataSetEx;
    DSss_ok_category_SET: TDataSource;
    bbShtatSummaryCheck: TBitBtn;
    MemoProt: TMemo;
    rgShtatSummaryCheck: TRadioGroup;
    BitBtn142: TBitBtn;
    TabDep: TTabSheet;
    GroupBox70: TGroupBox;
    GroupBox84: TGroupBox;
    BitBtn143: TBitBtn;
    BitBtn144: TBitBtn;
    Memo3: TMemo;
    BitBtn145: TBitBtn;
    GroupBox85: TGroupBox;
    ClientDBGrid3: TClientDBGrid;
    cdsSS_OK_DEP_KOEF: TClientDataSetEx;
    dsSS_OK_DEP_KOEF: TDataSource;
    ToolButton11: TToolButton;
    GroupBox86: TGroupBox;
    GroupBox87: TGroupBox;
    BitBtn146: TBitBtn;
    BitBtn155: TBitBtn;
    Memo4: TMemo;
    BitBtn158: TBitBtn;
    GroupBox88: TGroupBox;
    ClientDBGrid10: TClientDBGrid;
    Label396: TLabel;
    bbEdVer3: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SplitterCanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure actToolBarExecute(Sender: TObject);
    procedure actStatusBarExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure cdsSSOKPost_SETReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormShow(Sender: TObject);
    procedure actSSOKPostExecute(Sender: TObject);
    procedure actSSOKEducationExecute(Sender: TObject);
    procedure actSSOKNationalityExecute(Sender: TObject);
    procedure actSSOKPartyExecute(Sender: TObject);
    procedure actSSOKDegreeExecute(Sender: TObject);
    procedure actSSOKAcademicExecute(Sender: TObject);
    procedure actSSOKLanguageExecute(Sender: TObject);
    procedure actSSOKLevelLanguageExecute(Sender: TObject);
    procedure actSSOKTypePeriodExecute(Sender: TObject);
    procedure actSSOKRelationExecute(Sender: TObject);
    procedure actSSOKQualificationExecute(Sender: TObject);
    procedure actSSOKLeaveExecute(Sender: TObject);
    procedure actSSOKMotiveDismissialExecute(Sender: TObject);
    procedure actSSOKYouthExecute(Sender: TObject);
    procedure actSSOKDepartmentTypeExecute(Sender: TObject);
    procedure actSSOKDepartmentExecute(Sender: TObject);
    procedure actSSOKArticleExecute(Sender: TObject);
    procedure actSSOKCommandTypeExecute(Sender: TObject);
    procedure actSSOKTemplateCommandExecute(Sender: TObject);
    procedure ActPrevExecute(Sender: TObject);
    procedure GetRefCDBG(cdbgSSOK: TClientDBGrid);
    procedure GetRef(cdbgSSOK: TClientDBGrid);
    procedure cdsSSOKDepartment_SETAfterPost(DataSet: TDataSet);
    procedure actTableExecute(Sender: TObject);
    procedure actFormExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actSaveNewExecute(Sender: TObject);
    procedure cdsOKPersonal_NEWAfterOpen(DataSet: TDataSet);
    procedure actDetailsExecute(Sender: TObject);
    procedure actOrderExecute(Sender: TObject);
    procedure dbeOK_HOME_ADDRESSFACTChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeDetailsPCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeDetailsPCodeExit(Sender: TObject);
    procedure cdsOK_BeforePost(DataSet: TDataSet);
    procedure cdsOK_AfterPost(DataSet: TDataSet);
    procedure TabOKEducation_0Show(Sender: TObject);
    procedure ActDetailNewExecute(Sender: TObject);
    procedure ActDetailSaveExecute(Sender: TObject);
    procedure ActDetailDeleteExecute(Sender: TObject);
    procedure cdsOKEducationAfterOpen(DataSet: TDataSet);
    procedure ActDetailUndoExecute(Sender: TObject);
    procedure cdsOKAcademicAfterOpen(DataSet: TDataSet);
    procedure TabSheet_1Show(Sender: TObject);
    procedure cdsOKDegreeAfterOpen(DataSet: TDataSet);
    procedure cdsOKAwardAfterOpen(DataSet: TDataSet);
    procedure TabDegree_2Show(Sender: TObject);
    procedure TabSheet_3Show(Sender: TObject);
    procedure cdsOKScientificAfterOpen(DataSet: TDataSet);
    procedure TabOKScientific_4Show(Sender: TObject);
    procedure TabSheet_5Show(Sender: TObject);
    procedure cdsOkLanguageAfterOpen(DataSet: TDataSet);
    procedure TabSheet_6Show(Sender: TObject);
    procedure cdsOkRelationAfterOpen(DataSet: TDataSet);
    procedure TabSheet_7Show(Sender: TObject);
    procedure cdsOKPeriodAfterOpen(DataSet: TDataSet);
    procedure TabSheet_8Show(Sender: TObject);
    procedure cdsOKRiseAfterOpen(DataSet: TDataSet);
    procedure TabOKRise_9Show(Sender: TObject);
    procedure cdsOKElectionAfterOpen(DataSet: TDataSet);
    procedure TabSheet_10Show(Sender: TObject);
    procedure cdsOKPremiumAfterOpen(DataSet: TDataSet);
    procedure TabSheet_11Show(Sender: TObject);
    procedure cdsOKArmyAfterOpen(DataSet: TDataSet);
    procedure TabSheet_12Show(Sender: TObject);
    procedure cdsOKPartyAfterOpen(DataSet: TDataSet);
    procedure TabSheet_13Show(Sender: TObject);
    procedure cdsOKYouthAfterOpen(DataSet: TDataSet);
    procedure TabSheet_14Show(Sender: TObject);
    procedure cdsOKLeaveAfterOpen(DataSet: TDataSet);
    procedure cdsOKConvictionsAfterOpen(DataSet: TDataSet);
    procedure cdsOKAddInformAfterOpen(DataSet: TDataSet);
    procedure cdsOKPenaltyAfterOpen(DataSet: TDataSet);
    procedure cdsOKChangeFIOAfterOpen(DataSet: TDataSet);
    procedure TabSheet_16Show(Sender: TObject);
    procedure TabSheet_17Show(Sender: TObject);
    procedure TabSheet_18Show(Sender: TObject);
    procedure TabSheet_19Show(Sender: TObject);
    procedure TabSheet_20Show(Sender: TObject);
    procedure cdsOKPostAfterOpen(DataSet: TDataSet);
    procedure cdsOKPostAfterPost(DataSet: TDataSet);
    procedure actStatSalaryExecute(Sender: TObject);
    procedure actStatSaveExecute(Sender: TObject);
    procedure actStatDeleteExecute(Sender: TObject);
    procedure actStatUndoExecute(Sender: TObject);
    procedure actStatNewExecute(Sender: TObject);
    procedure cdsOKStatBeforePost(DataSet: TDataSet);
    procedure actSaveExistExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure DBEd_RegionChange(Sender: TObject);
    procedure actDetailsFirstExecute(Sender: TObject);
    procedure actDetailsLastExecute(Sender: TObject);
    procedure actDetailsPrevExecute(Sender: TObject);
    procedure actDetailsNextExecute(Sender: TObject);
    procedure CBDetailsChange(Sender: TObject);
    procedure ViewRef(NumberRef : Integer);
    procedure actSSOKPenaltyExecute(Sender: TObject);
    procedure TabPhotoShow(Sender: TObject);
    procedure cdsOKPhotoAfterOpen(DataSet: TDataSet);
    procedure cdsOKPhotoBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actPhotoInsertExecute(Sender: TObject);
    procedure actPhotoRemoveExecute(Sender: TObject);
    procedure actPhotoAttachExecute(Sender: TObject);
    procedure actPhotoActualSizeExecute(Sender: TObject);
    procedure actPhotoSaveExecute(Sender: TObject);
    procedure dsOKPhotoDataChange(Sender: TObject; Field: TField);
    procedure actAnketaExecute(Sender: TObject);
    function PrepareOle(FileName: String; TypeApp: String): Variant;
    function check_date_yyyymmdd(yyyy: String; mm: String; dd: String;future_:string): string;
    procedure actLichKartaAExecute(Sender: TObject);
    procedure dbeokRegionChange(Sender: TObject);
    procedure cdbgOKEducationEditButtonClick(Sender: TObject);
    procedure actObiektivkaExecute(Sender: TObject);
    procedure actOptionsExecute(Sender: TObject);
    procedure edFilialExit(Sender: TObject);
    procedure edOfficeAddressExit(Sender: TObject);
    procedure ChbArticleClick(Sender: TObject);
    procedure addLookUpField(DataSet_, LDataSet_: TDataSet;
                             FieldName_, KeyFields_, LookUpKeyFields_, LookUpResultField_: String;
                             CreateField: Boolean = False);
    procedure actToExcelExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure cdsSSOKDepartment_SETBeforePost(DataSet: TDataSet);
    procedure cdsOKPersonalBeforeEdit(DataSet: TDataSet);
    procedure cdsOKPersonalAfterOpen(DataSet: TDataSet);
//    procedure BitBtn99Click(Sender: TObject);
//    procedure BitBtn100Click(Sender: TObject);
    procedure dsOKPersonalDataChange(Sender: TObject; Field: TField);
    procedure chbTabVisibleClick(Sender: TObject);
    procedure actLichKartaBExecute(Sender: TObject);
    procedure actObiektivkaRTFExecute(Sender: TObject);
    procedure actLichKartaB_rtfExecute(Sender: TObject);
    procedure actStatExecute(Sender: TObject);
    procedure cdbgOK_PERSONALDblClick(Sender: TObject);
    procedure dbeOK_PASS_NUMKeyPress(Sender: TObject; var Key: Char);
    procedure dbeOK_PASS_SERIYAKeyPress(Sender: TObject; var Key: Char);
    procedure edDepChange(Sender: TObject);
    procedure DBEdPostChange(Sender: TObject);
    procedure CBdepChange(Sender: TObject);
    procedure actShuBankdaExecute(Sender: TObject);
    procedure PCDetailsChange(Sender: TObject);
    procedure dbedHOME_ADDRESSFACTChange(Sender: TObject);
    procedure cdsOKRezervDetailAfterOpen(DataSet: TDataSet);
    procedure cdsOKRezervBeforePost(DataSet: TDataSet);
    procedure bbSaveOptionsClick(Sender: TObject);
    procedure actReAcceptExecute(Sender: TObject);
    procedure actFindDepExecute(Sender: TObject);
    procedure edDepFindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actIIASExecute(Sender: TObject);
    procedure dblcbS_STRCloseUp(Sender: TObject);
    procedure actShowPhotoExecute(Sender: TObject);
    procedure BitBtn116Click(Sender: TObject);
    procedure cdsokhospitalAfterOpen(DataSet: TDataSet);
    procedure TabSheet_21Show(Sender: TObject);
    procedure cdsOkvoyageAfterOpen(DataSet: TDataSet);
    procedure EnterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedHospitalDateOpenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedHospitalDateCloseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsokprivilegeAfterOpen(DataSet: TDataSet);
    procedure TabSheet_22Show(Sender: TObject);
    procedure TabSheet_23Show(Sender: TObject);
    procedure cdsokincreaseAfterOpen(DataSet: TDataSet);
    procedure TabSheet10Show(Sender: TObject);
    procedure cdsok_business_voyageAfterOpen(DataSet: TDataSet);
    procedure DBEdit137KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsOKKursAfterOpen(DataSet: TDataSet);
    procedure ListDetailClick(Sender: TObject);
    procedure cdsOK_kursAfterOpen(DataSet: TDataSet);
    procedure TabSheet11Show(Sender: TObject);
    procedure cdsOK_Kurs2AfterOpen(DataSet: TDataSet);
    procedure DBEdit134KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure addLookUpField_OkPersonal;
    procedure CDSok_zp_rateAfterOpen(DataSet: TDataSet);
    procedure TabSheet12Show(Sender: TObject);
    procedure DBEd_zp_rate_dateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCOD_OBL_LIVEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedCOD_OBL_birthKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox27Click(Sender: TObject);
    procedure DBLookupComboBox9Click(Sender: TObject);
    procedure ed_iias_live_regionChange(Sender: TObject);
    procedure edRegion_RO2Change(Sender: TObject);
    procedure edDistrRO2Change(Sender: TObject);
    procedure cdsOKPeriodAfterScroll(DataSet: TDataSet);
    procedure cdsOKPeriodAfterRefresh(DataSet: TDataSet);
    procedure BitBtn151Click(Sender: TObject);
    procedure actRefreshRefExecute(Sender: TObject);
    procedure dblcb_iias_birth_distrEnter(Sender: TObject);
    procedure dblcb_iias_birth_distrCloseUp(Sender: TObject);
    procedure dblcb_iias_live_distrCloseUp(Sender: TObject);
    procedure dblcb_iias_live_distrEnter(Sender: TObject);
    procedure dblcbDistrNewCloseUp(Sender: TObject);
    procedure dblcbDistrNewEnter(Sender: TObject);
    procedure DBLCBdistrCloseUp(Sender: TObject);
    procedure DBLCBdistrEnter(Sender: TObject);
    procedure dblcbDistrRO_3CloseUp(Sender: TObject);
    procedure dblcbDistrRO_2CloseUp(Sender: TObject);
    procedure dblcbDistrRO_3Enter(Sender: TObject);
    procedure dblcbDistrRO_2Enter(Sender: TObject);
    procedure actStatPersonalExecute(Sender: TObject);
    procedure actStatPersonalDepExecute(Sender: TObject);
    procedure actStatStagExecute(Sender: TObject);
    procedure cdbgToExcel(cdbgREP: TClientDBGrid; rep1,rep2,rep3,rep4 : string);
    procedure cdsOK_Kurs3AfterOpen(DataSet: TDataSet);
    procedure cdsOK_TabelAfterOpen(DataSet: TDataSet);
    procedure bbGB_PERSClick(Sender: TObject);
    procedure TextOut_(gb_: tgroupbox; X, Y: Integer; const Text: string; i : integer);
    procedure cdsOK_FreeDaysAfterOpen(DataSet: TDataSet);
    procedure bbGOTO_IIASClick(Sender: TObject);
    procedure BitBtn168Click(Sender: TObject);
    procedure DBEdit156Exit(Sender: TObject);
    procedure dsOkRelationDataChange(Sender: TObject; Field: TField);
    procedure DBEdit158Exit(Sender: TObject);
    procedure dsOKPeriodDataChange(Sender: TObject; Field: TField);
    procedure DBEdit184Change(Sender: TObject);
    procedure DBEdit185Change(Sender: TObject);
    procedure DBEdit185Click(Sender: TObject);
    procedure DBLCB_iias_str_NEWClick(Sender: TObject);
    procedure ed_iias_str_NEWChange(Sender: TObject);
    procedure dbeOKFamilyStatusExit(Sender: TObject);
    procedure bbApplicationClick(Sender: TObject);
    procedure BitBtn129Click(Sender: TObject);
    procedure BitBtn134Click(Sender: TObject);
    procedure DBLookupComboBox40CloseUp(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure ed_iias_birth_region_primChange(Sender: TObject);
    procedure ed_iias_birth_distr_primChange(Sender: TObject);
    procedure cdsOKPersonalAfterScroll(DataSet: TDataSet);
    procedure cdbgOK_PERSONALDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dsOKEducationDataChange(Sender: TObject; Field: TField);
    procedure actObiektivkaAgroUzExecute(Sender: TObject);
    procedure BitBtn139Click(Sender: TObject);
    procedure BtnAddlFileClick(Sender: TObject);
    procedure cdsOK_diplomAfterOpen(DataSet: TDataSet);
    procedure PageControl3Change(Sender: TObject);
    procedure BitBtn154Click(Sender: TObject);
    procedure Obiektivka23(type_,file_name: string);
    procedure bbSaveIIASClick(Sender: TObject);
    procedure IIAS_TabSheet_Check;
    procedure Form_TabSheet_Check;
    procedure bbSaveFormClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn175Click(Sender: TObject);
    procedure BitBtn174Click(Sender: TObject);
    procedure cdsSpravkaAfterOpen(DataSet: TDataSet);
    procedure cdsSpravkaBeforePost(DataSet: TDataSet);
    procedure cdsOK_diplomBeforePost(DataSet: TDataSet);
    procedure DBLookupComboBox45Exit(Sender: TObject);
    procedure BitBtn178Click(Sender: TObject);
    procedure proverka(num_: integer);
    procedure Button14Click(Sender: TObject);
    procedure BitBtn185Click(Sender: TObject);
    procedure BitBtn187Click(Sender: TObject);
    procedure BitBtn186Click(Sender: TObject);
    procedure cdsMaxallaSpravkaAfterOpen(DataSet: TDataSet);
    procedure BitBtn188Click(Sender: TObject);
    procedure bbSudDel3Click(Sender: TObject);
    procedure BitBtn180Click(Sender: TObject);
    procedure BitBtn163Click(Sender: TObject);
    procedure BitBtn173Click(Sender: TObject);
    procedure bbGoToMfoClick(Sender: TObject);
    procedure tbStatClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure TreeVKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeVClick(Sender: TObject);
    procedure edMFOStatKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdPostKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsOKStatBeforeEdit(DataSet: TDataSet);
    procedure bbDoljnostiClick(Sender: TObject);
    procedure bbDepClick(Sender: TObject);
    procedure BitBtn64Click(Sender: TObject);
    procedure BitBtn70Click(Sender: TObject);
    procedure BitBtn94Click(Sender: TObject);
    procedure BitBtn179Click(Sender: TObject);
    procedure BitBtn190Click(Sender: TObject);
    procedure BitBtn95Click(Sender: TObject);
    procedure BitBtn181Click(Sender: TObject);
    procedure BitBtn184Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure BitBtn140Click(Sender: TObject);
    procedure BitBtn141Click(Sender: TObject);
    procedure BitBtn136Click(Sender: TObject);
    procedure BitBtn135Click(Sender: TObject);
    procedure BitBtn137Click(Sender: TObject);
    procedure bbCategorySaveClick(Sender: TObject);
    procedure bbPostSaveClick(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure mfo_category_type_code_proc;
    procedure bbShtatSummaryCheckClick(Sender: TObject);
    procedure BitBtn142Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure BitBtn155Click(Sender: TObject);
    procedure BitBtn146Click(Sender: TObject);
    procedure BitBtn158Click(Sender: TObject);
    procedure bbEdVer3Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    function GetSQLResultPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = ''; Par7:String = ''; Par8:String = ''; Par9:String = '') : Variant;
    function ExecSQLPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = '') : Integer;

  end;
  TData = class
  private
    FId: string;
    FName: string;
  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
  end;

function Convert(const s: string): string;//����������� �����

resourcestring
  SShowToolBar   = 'ShowToolBar'  ;
  SShowStatusBar = 'ShowStatusBar';

const
{ ����� ������ 70 (���������)}
  go_user_code='9070';
  order_by_tabel = ' order by dep_nn,department_code,category_code,fio';
  ERROR_NO = 'ORA-20000: ';
  SQL_yesno = 'select id,name from ss_syesno';
  SQL_Doljn = 'select dolj_id,dolj_name from s_doljn';
  SQL_Pr_off = 'select prich_id id,name_pr name from s_prich'   ;
  SQL_S_STR = 'select * from s_str order by name';
  SQL_S_STR_source = 'select code_str id,name from s_str order by name';
  SQL_S_DISTR = 'select * from s_distr';
  SQL_OKRezerv = 'select * from ok_rezerv';

  SQL_OKRezervDetail = 'select * from ok_rezerv_detail';
  SQL_ok_freedays = 'select * from ok_freedays';
//  SQL_Derevo = 'select level, d.department_id id, d.DEPARTMENT_CODE ,'+
  SQL_Derevo = 'select level, d.department_code id, d.DEPARTMENT_CODE ,'+
    ' d.DEPARTMENT_CODE||'') ''||d.department_name name_, d.department_code,'+
    ' d.department_name, d.department_type_code,'+
        ' d.high_dep_code, d.level_department_code, d.department_num '+
        ' from ss_ok_department d ';

  SQL_Users_SET = 'select id, user_name from users';

// ������� �����������
  SQL_SS_OK_POST = 'select * from ss_ok_post';
  SQL_SS_OK_DEPARTMENT = 'select * from ss_ok_department';

  SQL_ss_ok_zp_rate = 'select * from ss_ok_zp_rate';
  SQL_ss_ok_zp_rate_type = 'select * from ss_ok_zp_rate_type';

  SQL_SS_OK_city = 'select * from ss_ok_city';
  SQL_ss_ok_passport_type = 'select * from ss_ok_passport_type';
  SQL_ss_ok_org_business_voyage = ' select * from ss_ok_org_business_voyage where state_notes like ''A'' ';
  SQL_ss_ok_theme_business_voyage = ' select * from ss_ok_theme_business_voyage where state_notes like ''A'' ';

  SQL_SSokprivilege_SET = ' select * from ss_ok_privilege where state_notes like ''A'' ';

  SQL_ssokincrease_SET = 'select * from ss_ok_increase ';
  SQL_ssokhospital_set = 'SELECT distinct /*+ INDEX (e ss_OK_hospital_PK)*/   e.hospital_code,e.hospital_name FROM ss_ok_hospital e ';

  SQL_SSOKBaseMove_Set          = 'SELECT * FROM ss_ok_base_move d where d.state_notes like ''A'' ';
  SQL_SSOKBaseMove_Source = 'SELECT to_char(base_move_code) id, base_move_name name '+
    ' FROM ss_ok_base_move where state_notes like ''A'' ';

  SQL_SSOKElection_SET          = 'SELECT /*+ INDEX (d ss_ok_election_pk)*/      * FROM ss_ok_election           d where d.state_notes like ''A'' ';
  SQL_SSOKElection_Source = 'select to_char( election_code) id, election_name name '+
    'FROM ss_ok_election where state_notes like ''A'' ';
  SQL_SSOKElection_Source3 = 'select to_char( election_code) id, election_address name '+
    'FROM ss_ok_election where state_notes like ''A'' ';

  SQL_SSOKEducation_SET         = 'SELECT /*+ INDEX (d ss_ok_education_pk)*/     * FROM ss_ok_education          d where d.state_notes like ''A'' ';
  SQL_SSOKEducation_Source         = 'SELECT to_char( EDUCATION_code ) id, EDUCATION_name  name '+
    ' FROM ss_ok_education where state_notes like ''A'' ';

  SQL_SSOKEducationTitle_SET    = 'SELECT /*+ INDEX (e OK_EDUCATION_TITLE_PK)*/  * FROM ss_ok_education_title    d where d.state_notes like ''A'' ';
//

  SQL_SSOKAcademic_SET          = 'select /*+ INDEX (d SS_OK_ACADEMIC_PK)*/      * from SS_OK_ACADEMIC           d where d.state_notes like ''A'' ';
  SQL_SSOKAcademic_source       = 'select to_char(academic_code) id, academic_name name '+
    ' from SS_OK_ACADEMIC where state_notes like ''A'' ';

  SQL_SSOKInstitution_SET       = 'SELECT /*+ INDEX (d ss_ok_institution_pk)*/   * FROM ss_ok_institution        d where d.state_notes like ''A'' ';
//

  SQL_SSOKQualification_SET     = 'select /*+ INDEX (d SS_OK_QUALIFICATION_PK)*/ * from SS_OK_QUALIFICATION      d where d.state_notes like ''A'' ';
  SQL_SSOKQualification_source  = 'select to_char(qualification_code) id, qualification_name name '+
    ' from SS_OK_QUALIFICATION where state_notes like ''A'' ';

  SQL_SSOKPenalty_SET           = 'SELECT /*+ INDEX (d ss_ok_penalty_pk)*/       * FROM ss_ok_penalty            d where d.state_notes like ''A'' ';
  SQL_SSOKPenalty_source          = 'SELECT to_char( penalty_code ) id, penalty_name name '+
    ' FROM ss_ok_penalty       where state_notes like ''A'' ';

  SQL_SSOKkv_kurs_SET       = 'select * from SS_OK_kv_kurs where state_notes like ''A'' ';
  SQL_ss_ok_org_business_voyage_SET       = 'select * from ss_ok_org_business_voyage where state_notes like ''A'' ';
  SQL_ss_ok_theme_business_voyage_SET       = 'select * from ss_ok_theme_business_voyage where state_notes like ''A'' ';

  SQL_SSOKPost_SET              = 'SELECT * FROM ss_ok_post d where d.state_notes like ''A'' ';

  SQL_SSOKSpecial_SET = 'SELECT * FROM ss_ok_special d where d.state_notes like ''A'' order by d.special_name';
  SQL_cdsSSOKPostCategory = 'select sop.post_code, to_char(soc.salary) salary, soc.category_name '+
    ' from ss_ok_post sop, ss_ok_category soc '+
    ' where sop.category_code=soc.category_code';

  SQL_SSokarmygroup        = 'SELECT * FROM ss_ok_army_group d where d.state_notes like ''A'' ';
  SQL_SSokarmygroup_source = 'SELECT to_char( army_group_code ) id, army_group_name name'+
    ' FROM ss_ok_army_group d where d.state_notes like ''A'' ';

  SQL_SSokCATEGORYARMY = 'SELECT * FROM ss_OK_CATEGORY_ARMY d where d.state_notes like ''A'' ';
  SQL_SSokCATEGORYARMY_source = 'SELECT to_char( CATEGORY_ARMY_code ) id, CATEGORY_ARMY_name name'+
    ' FROM ss_OK_CATEGORY_ARMY d where d.state_notes like ''A'' ';

  SQL_SSokMILITARYRANK = 'SELECT * FROM ss_OK_MILITARY_RANK d where d.state_notes like ''A'' ';
  SQL_SSokMILITARYRANK_source = 'SELECT to_char( MILITARY_RANK_code ) id, MILITARY_RANK_name name'+
    ' FROM ss_OK_MILITARY_RANK d where d.state_notes like ''A'' ';

  SQL_SSokSTAFF = 'SELECT * FROM ss_ok_STAFF  d where d.state_notes like ''A'' ';
  SQL_SSokSTAFF_source = 'SELECT to_char( STAFF_code ) id, STAFF_name name'+
    ' FROM ss_ok_STAFF  d where d.state_notes like ''A'' ';

  SQL_SSokTYPEFORCE = 'SELECT * FROM ss_ok_TYPE_FORCE  d where d.state_notes like ''A'' ';
  SQL_SSokTYPEFORCE_source = 'SELECT to_char( TYPE_FORCE_code ) id, TYPE_FORCE_name name'+
    ' FROM ss_ok_TYPE_FORCE  d where d.state_notes like ''A'' ';

//

  SQL_SSOKNationality_SET       = 'SELECT /*+ INDEX (d ss_ok_nationality_pk)*/       * FROM ss_ok_nationality           d where d.state_notes like ''A'' ';
  SQL_SSOKNationality_source    = 'select to_char(nationality_code) id,'+
                     ' nationality_NAME name '+
                     'from Ss_ok_nationality  where state_notes=''A''';

  SQL_SSOKParty_SET             = 'SELECT /*+ INDEX (d ss_ok_party_pk)*/             * FROM ss_ok_party                 d where d.state_notes like ''A'' ';
  SQL_SSOKParty_Source             = 'SELECT to_char( party_code ) id,  party_name name '+
    ' FROM ss_ok_party                 d where d.state_notes like ''A'' ';

  SQL_SSOKDegree_SET            = 'select /*+ INDEX (d SS_OK_DEGREE_PK)*/            * from SS_OK_DEGREE                d where d.state_notes like ''A'' ';
  SQL_SSOKDegree_source         = 'select to_char(degree_code) id, degree_name name'+
    ' from SS_OK_DEGREE where state_notes like ''A'' ';

  SQL_SSOKLanguage_SET          = 'select /*+ INDEX (d SS_OK_LANGUAGE_PK)*/          * from SS_OK_LANGUAGE              d where d.state_notes like ''A'' ';
  SQL_SSOKLanguage_Source       = 'select to_char( Language_code ) id, Language_name  name '+
    ' from SS_OK_LANGUAGE where state_notes like ''A'' ';

  SQL_SSOKLevelLanguage_SET     = 'select /*+ INDEX (d SS_OK_LEVEL_LANGUAGE_PK)*/    * from SS_OK_LEVEL_LANGUAGE        d where d.state_notes like ''A'' ';
  SQL_SSOKLevelLanguage_Source     = 'select to_char( LEVEL_LANGUAGE_CODE ) id,  LEVEL_LANGUAGE_name name '+
    ' from SS_OK_LEVEL_LANGUAGE  where state_notes like ''A'' ';

  SQL_SSOKTypePeriod_SET        = 'select /*+ INDEX (d SS_OK_TYPE_PERIOD_PK)*/       * from SS_OK_TYPE_PERIOD           d where d.state_notes like ''A'' ';
  SQL_SSOKTypePeriod_Source        = 'select to_char(  TYPE_PERIOD_code) id,  TYPE_PERIOD_name name '+
    ' from SS_OK_TYPE_PERIOD      where state_notes like ''A'' ';

  SQL_SSOKRelation_SET          = 'select /*+ INDEX (d SS_OK_RELATION_PK)*/          * from SS_OK_RELATION              d where d.state_notes like ''A'' ';
  SQL_SSOKRelation_Source= 'select to_char(  RELATION_code) id,  RELATION_name name '+
    ' from SS_OK_RELATION      where state_notes like ''A'' ';

  SQL_SSOKLeave_SET             = 'select /*+ INDEX (d SS_OK_LEAVE_PK)*/             * from SS_OK_LEAVE                 d where d.state_notes like ''A'' ';
  SQL_SSOKLeave_Source= 'select to_char(  LEAVE_code) id,  LEAVE_name name '+
    '  from SS_OK_LEAVE     where state_notes like ''A'' ';

  SQL_SSOKMotiveDismissial_SET  = 'select /*+ INDEX (d SS_OK_MOTIVE_DISMISSIAL_PK)*/ * from SS_OK_MOTIVE_DISMISSIAL     d where d.state_notes like ''A'' ';
  SQL_SSOKMotiveDismissial_Source= 'select to_char( MOTIVE_DISMISSIAL_code) id,  MOTIVE_DISMISSIAL_name name '+
    ' from SS_OK_MOTIVE_DISMISSIAL  where state_notes like ''A'' ';

  SQL_SSOKYouth_SET             = 'select /*+ INDEX (d SS_OK_YOUTH_PK)*/             * from SS_OK_YOUTH                 d where d.state_notes like ''A'' ';
  SQL_SSOKYouth_Source= 'select to_char( youth_code) id,  youth_name name '+
    ' from SS_OK_YOUTH   where state_notes like ''A'' ';

  SQL_SSOKDepartmentType_SET    = 'SELECT /*+ INDEX (d ss_ok_department_type_PK)*/   * FROM ss_ok_department_type       d where d.state_notes like ''A'' ';
  SQL_SSOKDepartmentType_Source= 'select to_char(  department_type_code) id,  department_type_name name '+
    ' FROM ss_ok_department_type   where state_notes like ''A'' ';


  SQL_SSOKArticle_SET           = 'select /*+ INDEX (d SS_OK_ARTICLE_PK)*/           * from SS_OK_ARTICLE               d where d.state_notes like ''A'' ';
  SQL_SSOKArticle_Source= 'select to_char(  article_code) id,  article_name name '+
    ' from SS_OK_ARTICLE   where state_notes like ''A'' ';

  SQL_SSOKCommandType_SET       = 'select /*+ INDEX (d SS_OK_COMMAND_TYPE_PK)*/      * from SS_OK_COMMAND_TYPE          d where d.state_notes like ''A'' ';
//

  SQL_SSOKTemplateCommand_SET   = 'select /*+ INDEX (d SS_OK_TEMPLATE_COMMAND_PK)*/  * from SS_OK_TEMPLATE_COMMAND      d where d.state_notes like ''A'' ';
//

//  SQL_SSOKMotive_SET    = 'select * from SS_OK_MOTIVE_DISMISSIAL      d where d.state_notes like ''A'' ';
//  SQL_SSOKMotive_Source= 'select to_char(  _code) id,  _name name '+
//    ' from SS_OK_MOTIVE_DISMISSIAL      d where d.state_notes like ''A'' ';

  ////////// \\\\\\\\\\\

  
{ 3}
  SQL_Department = 'select '+
    ' to_char(department_code) id, '+
    ' department_name name'+
    ' FROM ss_ok_department  '+
    ' where state_notes like ''A'' ';


  SQL_SSOKDepartment_SET        = 'select /*+ INDEX (d ss_ok_department_PK)*/ '+
    ' d.department_id, d.branch, d.department_code, '+
    ' d.department_name, d.department_num, d.department_type_code,'+
    ' d.high_dep_code, d.state_notes, d.emp_code,'+
    ' d.ins_date, d.LEVEL_DEPARTMENT_CODE, substr(ok_service.GET_high_name(d.department_code),1,250) HIGH_NAME '+
    ' FROM ss_ok_department d '+
    ' where d.state_notes like ''A'' '+
    ' ';
  SQL_SSOKDepartment_SET2        = 'select to_number(null) department_id, to_char(null) branch, '+
        ' to_number(null) department_code, '+
    ' to_char(null) department_name, to_number(null) department_num, to_number(null) department_type_code,'+
    ' -1 high_dep_code, to_char(null) state_notes, to_number(null) emp_code,'+
    ' to_date(null) ins_date, to_number(null) LEVEL_DEPARTMENT_CODE '+
    ' from ss_ok_department where rownum=1 '+
    ' union all select /*+ INDEX (d ss_ok_department_PK)*/ '+
    ' d.department_id, d.branch, d.department_code, '+
    ' d.department_name, d.department_num, d.department_type_code,'+
    ' d.high_dep_code, d.state_notes, d.emp_code,'+
    ' d.ins_date, d.LEVEL_DEPARTMENT_CODE '+
    ' FROM ss_ok_department d '+
    ' where d.state_notes like ''A'' '+
    ' ';

{ 2
  SQL_SSOKDepartment_SET=  'select /*+ INDEX (d ss_ok_department_PK)*/ '+
    ' d.department_id, d.branch, d.department_code, '+
    ' d.department_name, d.department_num, d.department_type_code,'+
    ' d.high_dep_code, d.state_notes, d.emp_code,'+
    ' d.ins_date '+
    ' FROM ss_ok_department d where d.state_notes like ''A'' ';
}

{ 1
  SQL_SSOKDepartment_SET=  'SELECT /*+ INDEX (d ss_ok_department_PK)*/ * '+
        ' FROM ss_ok_department d where d.state_notes like ''A'' ';
}


// ��������� �����������
  SQL_Str             = 'select * from S_str d where d.act=''A''  order by name';
  SQL_SRegion             = 'select * from S_REGION where act=''A''';
  SQL_SRegion_source      = 'select REGION_ID id, REGION_NAM name '+
                     'from S_REGION  where act=''A''';

  SQL_SDistr              = 'select * from S_DISTR where act=''A''';
  SQL_SDistr_source       = 'select DISTR id,DISTR_NAME name '+
                     'from S_DISTR  where act=''A''';

  SQL_SSOKBasis_SET             = 'select /*+ INDEX (d SS_OK_BASIS_PK)*/         * from SS_OK_BASIS d ';
  SQL_SSOKArmy_SET              = 'SELECT /*+ INDEX (d ss_ok_army_pk)*/          * FROM ss_ok_army  d ';
  SQL_SSOKFitnessArmy_SET       = 'SELECT /*+ INDEX (d ss_ok_fitness_army_pk)*/  * FROM ss_ok_fitness_army  d ';

  SQL_ssokgender_SET            = 'select /*+ INDEX (d SS_OK_GENDER_PK)*/        * from SS_OK_GENDER        d ';
  SQL_ssokStatus_SET            = 'select /*+ INDEX (d SS_OK_STATUS_PK)*/        * from SS_OK_Status        d ';
  SQL_SSOKFAMILYSTATUS_SET      = 'select /*+ INDEX (d SS_OK_FAMILY_STATUS_PK)*/ * from SS_OK_FAMILY_STATUS d ';
  SQL_SSOKREGTYPE_SET           = 'select /*+ INDEX (d SS_OK_REG_TYPE_PK)*/      * from SS_OK_REG_TYPE      d ';
  SQL_ssokvacancy_set           = 'select /*+ INDEX (d SS_OK_VACANCY_PK)*/       * from SS_OK_VACANCY       d ';
  SQL_ssokrezerve_set           = 'select /*+ INDEX (d SS_OK_REZERVE_PK)*/       * from SS_OK_REZERVE       d ';
  SQL_ssokleveldepartment = 'select /*+ INDEX (d SS_OK_LEVEL_DEPARTMENT_PK)*/ d.level_department_code ID, d.level_department_name NAME from ss_ok_level_department d ';
  SQL_SSOKProfmember_SET = 'select * from ss_ok_profmember';

// ������� ������� �������
  SQL_OKPersonal_EMPTY = 'SELECT /*+ INDEX (p OK_PERSONAL_PK)*/  p.* FROM ok_personal  p WHERE rownum <1 ';
  SQL_OKPersonal       = 'SELECT /*+ INDEX (p OK_PERSONAL_PK)*/   p.* FROM ok_personal  p ';

// ������� �������
  SQL_ok_zp_rate= 'SELECT /*+ INDEX (e ok_zp_rate_PK)*/   e.* FROM ok_zp_rate e ';

  SQL_ok_business_voyage= 'SELECT /*+ INDEX (e ok_business_voyage_PK)*/   e.* FROM ok_business_voyage e ';

  SQL_okincrease= 'SELECT /*+ INDEX (e OK_increase_PK)*/   e.* FROM ok_increase e ';
  SQL_okprivilege= 'SELECT /*+ INDEX (e OK_privilege_PK)*/   e.* FROM ok_privilege e ';
  SQL_okhospital = 'SELECT /*+ INDEX (e OK_hospital_PK)*/   e.* FROM ok_hospital e ';
  SQL_OKEducation      = 'SELECT /*+ INDEX (e OK_EDUCATION_PK)*/   e.* FROM ok_education e ';
  SQL_OKAcademic       = 'SELECT /*+ INDEX (e OK_ACADEMIC_PK)*/    e.* FROM ok_academic e ';
  SQL_OKDegree         = 'SELECT /*+ INDEX (e OK_DEGREE_PK)*/      e.* FROM ok_degree e ';
  SQL_OKAward          = 'SELECT /*+ INDEX (e OK_AWARD_PK)*/       e.* FROM ok_award e ';
  SQL_OKScientific     = 'SELECT /*+ INDEX (e OK_Scientific_PK)*/  e.* FROM ok_Scientific e ';
//  SQL_OKPost           = 'SELECT * FROM ok_post e ';

  SQL_OKVoyage         = 'SELECT /*+ INDEX (e OK_VOYAGE_PK)*/      e.* FROM ok_voyage e ';
  SQL_OKLanguage       = 'SELECT /*+ INDEX (e OK_LANGUAGE_PK)*/    e.* FROM ok_language e ';
  SQL_OKRelation       = 'SELECT /*+ INDEX (e OK_RELATION_PK)*/    e.* FROM ok_relation e ';
  SQL_OKPeriod         = 'SELECT /*+ INDEX (e OK_PERIOD_PK)*/      e.* FROM ok_period e ';
  SQL_OKRise           = 'SELECT /*+ INDEX (e OK_RISE_PK)*/        e.* FROM ok_rise e ';
  SQL_OKElection       = 'SELECT /*+ INDEX (e OK_ELECTION_PK)*/ e.* '+
        ' FROM ok_election e ';
  SQL_OKPremium        = 'SELECT /*+ INDEX (e OK_PREMIUM_PK)*/     e.* FROM ok_premium e ';
  SQL_OKArmy           = 'SELECT /*+ INDEX (e OK_ARMY_PK)*/        e.* FROM ok_army e ';
  SQL_OKParty          = 'SELECT /*+ INDEX (e OK_PARTY_PK)*/       e.* FROM ok_party e ';
  SQL_OKYouth          = 'SELECT /*+ INDEX (e OK_YOUTH_PK)*/       e.* FROM ok_youth e ';
  SQL_OKLeave          = 'SELECT /*+ INDEX (e OK_LEAVE_PK)*/       e.* FROM ok_leave e ';
  SQL_OKConvictions    = 'SELECT /*+ INDEX (e OK_CONVICTIONS_PK)*/ e.* FROM ok_convictions e ';
  SQL_OKAddInform      = 'SELECT /*+ INDEX (e OK_ADDINFORM_PK)*/   e.* FROM ok_addinform e ';
  SQL_OKPenalty        = 'SELECT /*+ INDEX (e OK_PENALTY_PK)*/     e.* FROM ok_penalty e ';
  SQL_OKChangeFIO      = 'SELECT /*+ INDEX (e OK_CHANGE_FIO_PK)*/  e.* FROM ok_change_fio e ';
  SQL_OKStat           = 'SELECT /*+ INDEX (e OK_STAT_PK)*/  e.* FROM ok_stat e ';
  SQL_OKStatSalary     = 'SELECT /*+ INDEX (e OK_STAT_SALARY_PK)*/  e.* FROM ok_stat_salary e ';
  SQL_OKPhoto          = 'SELECT /*+ INDEX (e OK_PHOTO_PK)*/   e.* FROM ok_photo e ';
  SQL_ok_tabel         = 'SELECT e.* FROM ok_tabel e ';

var
  BOKFormSTAT: TBOKFormSTAT;
  ChParam, LineCounter              : integer ;
  old_post_code, go_personal_code,LastPanel,  OldStatus, OldSpecial   : String  ;
  ToPrint, ToExcel, SchRepFileExist : Boolean ;
  F                                 : TextFile;
  SchRepFileOpened     : Boolean;
  GetCurrentDir_templates, curBranch,FiltrLevelName, FiltrLevel, BossLevel   : String  ;
  IS_READONLY_FILIAL, kapital_bank : Boolean;
  headbranch_  : string;
  months_: array [1..12] of byte;
  year_ : integer;
  sql_, SQL_SS_OK_regplace: string;
  mfo_category_type_code, filial_branch,  filial_schema, old_schema, old_branch, old_bankdate : string;
  mfo_category_type_code_VAR : variant;
  sl, sl1,sl2: TStringList;
  D: TData;

implementation

uses Registry;
//var
//  fmOKFilter:  TfmFilterPersonal;
//  fmSaveOKChangeFIO: TfmOKChangeFIO;
//  fmSaveOKChangePasport: TfmOKChangePasport;
//  fmSaveOKDismiss: TfmOKDismiss;
//  fmSaveOKDekret: TfmOKDekret;
//  fmSaveOKAppoint: TfmOKAppoint;
//  fmSaveOKOrder: TfmOKOrder;
//  fmSaveOKOPrev: TfmOKOPrev;
//  fmSaveOKRezerv: TfmOKRezerv;

{$R *.dfm}
function NumTo(num:integer):string;  //��� ������� ��������� num � �������� ���������� � Exl
var abc:string;
begin
 abc:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';

 if (num/26>1) then
 begin
  if (num-trunc(num/26)*26=0) then
    result := abc[trunc(num/26)-1]+abc[num-(trunc(num/26)-1)*26]
  else
    result := abc[trunc(num/26)]+abc[num-trunc(num/26)*26]
 end
 else
  result := abc[num];

end;

function Lpad(sdd: String; nl: integer; sc: String = ' '): String;
var
  aa: String;
begin
  if (length(sdd)<nl) then
  begin
    aa:=sdd;
    if (length(sc)>0) then
    begin
      while (nl-length(aa)>0) do
      begin
        aa:=sc+aa;
      end;
      if (length(aa)>nl) then
      begin
        aa:=copy(aa,length(aa)-nl+1,nl);
      end;
    end
    else
    begin
      aa := StringOfChar(' ',nl-length(aa))+aa;
    end;
  end
  else
  begin
    aa:=copy(sdd,length(sdd)-nl+1,nl);
  end;
  Result := aa;
end;

function Convert(const s: string): string;
var
  i: integer;
  j: double;
  s1: string;
begin
  j := 0;
  for i := 0 to Length(s) do
    j := Abs(j - Sqrt(Ord(s[i]) * 666) - i);
  s1 := FloatToStr(j);
  if DecimalSeparator = '.' then
    Delete(s1, Pos('.', s1), 1)
  else
    Delete(s1, Pos(',', s1), 1);
  if s1 = '0' then Result := ''
  else
    Result := s1;
end;

function RPad(sdd: String; nl: integer; sc: String = ' '): String;
var aa: String;
begin
  if (Length(sdd)<nl) then
  begin
    aa:=sdd;
    if (Length(sc)>0) then
    begin
      while (nl-Length(aa)>0) do
      begin
        aa:=aa+sc;
      end;
      if (Length(aa)>nl) then
      begin
        aa:=copy(aa,Length(aa)-nl+1,nl);
      end;
    end
    else
    begin
      aa := aa+StringOfChar(' ',nl-Length(aa));
    end;
  end
  else
  begin
    aa:=copy(sdd,1,nl);
  end;
  Result := aa;
end;

function ToMonthName(month_id: String): String;
var
  aa: String;
begin
  aa:='';
  if (month_id='1') or (month_id='01')
  then aa:='�����';
  if (month_id='2') or (month_id='02')
  then aa:='������';
  if (month_id='3') or (month_id='03')
  then aa:='����';
  if (month_id='4') or (month_id='04')
  then aa:='�����';
  if (month_id='5') or (month_id='05')
  then aa:='���';

  if (month_id='6') or (month_id='06')
  then aa:='���';
  if (month_id='7') or (month_id='07')
  then aa:='���';
  if (month_id='8') or (month_id='08')
  then aa:='������';
  if (month_id='9') or (month_id='09')
  then aa:='�������';
  if (month_id='10') or (month_id='10')
  then aa:='������';
  if (month_id='11') or (month_id='11')
  then aa:='�����';
  if (month_id='12') or (month_id='12')
  then aa:='������';

  result:= aa;

end;

function TBOKFormSTAT.GetSQLResultPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = ''; Par7:String = ''; Par8:String = ''; Par9:String = '') : Variant;
var
  SQLParams:TParams;
begin
  SQLParams:=TParams.Create;
  try
    sqlparams.Clear;
    SQLParams.CreateParam(ftString,'p_1',ptInput);
    SQLParams.CreateParam(ftString,'p_2',ptInput);
    SQLParams.CreateParam(ftString,'p_3',ptInput);
    SQLParams.CreateParam(ftString,'p_4',ptInput);
    SQLParams.CreateParam(ftString,'p_5',ptInput);
    SQLParams.CreateParam(ftString,'p_6',ptInput);
    SQLParams.CreateParam(ftString,'p_7',ptInput);
    SQLParams.CreateParam(ftString,'p_8',ptInput);
    SQLParams.CreateParam(ftString,'p_9',ptInput);
    SQLParams.ParamByName('p_1').Value:=Par1;
    SQLParams.ParamByName('p_2').Value:=Par2;
    SQLParams.ParamByName('p_3').Value:=Par3;
    SQLParams.ParamByName('p_4').Value:=Par4;
    SQLParams.ParamByName('p_5').Value:=Par5;
    SQLParams.ParamByName('p_6').Value:=Par6;
    SQLParams.ParamByName('p_7').Value:=Par7;
    SQLParams.ParamByName('p_8').Value:=Par8;
    SQLParams.ParamByName('p_9').Value:=Par9;
    Result := GetSqlResult(SQLText,SQLParams);
  finally
    SQLParams.Free;
  end;
end;

function TBOKFormSTAT.ExecSQLPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = '') : Integer;
var
  SQLParams:TParams;
begin
  SQLParams:=TParams.Create;
  try
    sqlparams.Clear;
    SQLParams.CreateParam(ftString,'p_1',ptInput);
    SQLParams.CreateParam(ftString,'p_2',ptInput);
    SQLParams.CreateParam(ftString,'p_3',ptInput);
    SQLParams.CreateParam(ftString,'p_4',ptInput);
    SQLParams.CreateParam(ftString,'p_5',ptInput);
    SQLParams.CreateParam(ftString,'p_6',ptInput);
    SQLParams.ParamByName('p_1').Value:=Par1;
    SQLParams.ParamByName('p_2').Value:=Par2;
    SQLParams.ParamByName('p_3').Value:=Par3;
    SQLParams.ParamByName('p_4').Value:=Par4;
    SQLParams.ParamByName('p_5').Value:=Par5;
    SQLParams.ParamByName('p_6').Value:=Par6;
    Result := ExecSql(SQLText,SQLParams);
  finally
    SQLParams.Free;
  end;
end;

function TBOKFormSTAT.check_date_yyyymmdd(yyyy: String; mm: String; dd: String;future_:string): string;
var aa :string;
//     d_:tdatetime;
begin
  aa:='1';

  try
    if ( (strtoint(yyyy)>strtoint(copy(bankdate,7,4))) and (future_ = 'N') )
    or (strtoint(yyyy)<1917)
    then begin
      aa:='�������� ��� '+yyyy;
    end;

  except
    aa:='�������� ��� '+yyyy;
  end;

  if (mm='') and (dd='')
  then begin

    if aa='1'
    then begin
// ��� ��� �������� ����
    end;

  end else begin

    if aa='1'
    then begin
        try
          //d_:=
          strtodate(dd+'.'+mm+'.'+yyyy);
        except
          aa:='�������� ����='+dd+' �����='+mm+' ���='+yyyy;
        end;
    end;

  end;
  result:= aa;

end;

procedure TBOKFormSTAT.addLookUpField(DataSet_, LDataSet_: TDataSet;
                                    FieldName_, KeyFields_, LookUpKeyFields_, LookUpResultField_: String;
                                    CreateField: Boolean = False);
var i: Integer;
begin
  with DataSet_ do
  begin
    DisableControls;
    If CreateField Then for i := 0 to FieldDefs.Count - 1 do FieldDefs.Items[i].CreateField(Self);
    with TStringField.Create(Self) do
    begin
      FieldName         := FieldName_;
      DataSet           := DataSet_;
      FieldKind         := fkLookup;
      KeyFields         := KeyFields_;
      LookUpDataset     := LDataSet_;
      LookUpKeyFields   := LookUpKeyFields_;
      LookupResultField := LookUpResultField_;
      Size              := LDataSet_.FieldByName(LookUpResultField_).Size;
//      dropdawnrows:=40;
      with FieldDefs.AddFieldDef do
      begin
        Name     := FieldName;
        DataType := ftString;
        Size     := LDataSet_.FieldByName(LookUpResultField_).Size;
      end;
    end;
    EnableControls;
  end;
end;


procedure TBOKFormSTAT.FormCreate(Sender: TObject);
 var d : TData;
     n,i : Integer;
     sql_ : string;
  head_ : string;
begin

//showmessage(convert('������ � � ��������� �����01087'));
//286888054521812

//showmessage(convert('������ � � �������� �����00974'));
//134204703110456
//showmessage(convert('������ � � �������� �����00974'));
//showmessage(convert('������ � � �������� �����00445'));
// 132536834140705

  inherited;
  BOKFormstat := Self;

  with Registry do
  try
    if OpenKey(INIT_KEY + ClassName, False)
    then begin
        if ValueExists(SShowToolBar) then
          psToolBar.Visible := ReadBool(SShowToolBar);
        if ValueExists(SShowStatusBar) then
          StatusBar.Visible := ReadBool(SShowStatusBar);
{
        If ValueExists('chbTabVisible')
          Then chbTabVisible.checked:=Readbool('chbTabVisible')
          Else chbTabVisible.checked:=true;

        If ValueExists('chbGluk')
          Then chbGluk.checked := Readbool('chbGluk')
          Else chbGluk.checked := false;

        If ValueExists('chbSaveFiltr')
          Then chbSaveFiltr.checked := Readbool('chbSaveFiltr')
          Else chbSaveFiltr.checked := false;
}
    end;
  finally
    CloseKey;
  end;

  i:=GetSqlResultpar('select status from statusoperday where id=:p_1','1');
  if (i<>1) then
  begin
    Application.MessageBox('����. ���� ������ !!!', '��������������', MB_OK);
  end;

//showmessage(INIT_KEY + Self.ClassName);
///////////
  old_schema := CurrentSchema;
  old_branch := branch;
{
  if copy(branch,1,2)='09'
  then begin
    bbGOChangeFilial.visible:=true;
    loaddata(cdstemp2,'select * from ss_dblink_branch');

//    with Tfrm_Choice2.Create(self) do
//    try
//      showModal;
//    finally
//      Free;
//    end;
      filial_schema  :=  cdstemp2.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
      filial_branch  :=  cdstemp2.fieldbyname('branch').asstring; // branch


      ExecSQL('alter session set current_schema = '+filial_schema);
      branch := filial_branch;
  end;
}
///////////
// �� ���������� ��������� ������
  with PC do
    for n:=0 to PageCount-1 do
      Pages[n].TabVisible:=false;

  with PCDetails do
    for n:=0 to PageCount-2 do begin
//      Pages[n].TabVisible:=false;
      if chbTabVisible.checked
      then Pages[n].TabVisible:= true
      else Pages[n].TabVisible:= false;

      D := TData.Create;
      D.Id := IntToStr(n);
      D.Name := Pages[n].Caption;
      CBDetails.Items.AddObject( Pages[n].Caption, D);
      ListDetail.Items.AddObject( Pages[n].Caption, D);
    end;

  PCDetails.Pages[PCDetails.PageCount-1].TabVisible := False ;
  LoadData(cdsUsers,'select id emp_code, full_name emp_name from users');

  HeadBranch_:=getsqlresult('select header_id from s_mfo where bank_id=info.getbranch');
  if HeadBranch_='09006'
  then begin
    DBLookupComboBox43.ReadOnly:=true;
    SQL_SS_OK_regplace := 'select distr regplace_code, distr_name regplace_name from s_distr';
  end else begin
    SQL_SS_OK_regplace := 'select * from ss_ok_regplace';
  end;

  Head_ := VarToStr(getSqlResultpar('select CONST.GETCONST(:p_1) from dual','23001'));
  if Head_ <> convert('������ � � �������� �����' +Branch) then
  begin

     sql_:='select * from s_mfo '+
        ' where bank_id=union_id '+
        ' and bank_id=:p_1'+ //'''+Branch+''' '+
        ' and header_id<>union_id '+
        ' and rownum<:p_2';

      cdsTempSource.Close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := branch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '2';
      end;
     loadData(cdsTempSource,sql_);
  //showmessage(sql_);

  // �����
  //showmessage('2)�� �������� ��������� ');
      FiltrLevel:='3';
      FiltrLevelName:='�����';
      BossLevel := '3';
  // ���
     while not cdsTempSource.eof
     do begin
      BossLevel := '2';
      FiltrLevel:= '2';
      FiltrLevelName:='�������';
  //showmessage('bosslevel)�� �������� ��������� ');
      cdsTempSource.next;
     end;
     if Head_ = convert('������ � � �������� �����' +Branch)
     then begin
       FiltrLevel:='3';
       FiltrLevelName:='�����';
       BossLevel := '3';
     end;
     if Head_ = convert('������ � � ��������� �����' +Branch)
     then begin
      BossLevel := '2';
      FiltrLevel:= '2';
      FiltrLevelName:='�������';
     end;
//showmessage('3)�� �������� ��������� ');

  end else begin
//showmessage('�������� ���������');
    FiltrLevel:='1';
    FiltrLevelName:='����������';
    BossLevel := '1';
  end;

//showmessage(branch);
//branch:='09004';
//showmessage(branch);

  if (branch='09004') or (branch='09049') or (branch='09006')
  then begin
    cdbgOK_Personal.columns[1].Visible := true;
    FiltrLevel:='0';
    if (branch='09004')
    then FiltrLevelName:=branch+' ������ ���� - ���� ����';
    if (branch='09006')
    then FiltrLevelName:=branch+' ������ ���� - ���� ����';
    if (branch='09049')
    then FiltrLevelName:=branch+' ������ ���� - ������� ����';
    BossLevel := '0';

// begin  .Enabled      := False;
   actNew.Enabled        := False;
   actReAccept.Enabled       := False;
   actUndoChanges.Enabled  := False;
   actEdit.Enabled        := False;
   actUnactive.Enabled   := False;
   actSaveNew.Enabled   := False;
   actSaveExist.Enabled  := False;
   ActDetailNew.Enabled   := False;
   ActDetailSave.Enabled   := False;
   ActDetailDelete.Enabled  := False;
   ActDetailUndo.Enabled   := False;
   actAppoint.Enabled     := False;
   actDismiss.Enabled     := False;
//   actStatNew.Enabled      := False;
//   actStatSave.Enabled      := False;
//   actStatDelete.Enabled     := False;
//   actStatUndo.Enabled        := False;
//   actStatSalarySave.Enabled   := False;
//   actStatSalaryDelete.Enabled  := False;
//   actStatSalaryUndo.Enabled   := False;
   actChangeFIO.Enabled       := False;
   actPhotoInsert.Enabled    := False;
   actPhotoRemove.Enabled    := False;
   actPhotoAttach.Enabled     := False;
   actPhotoActualSize.Enabled  := False;
   actPhotoSave.Enabled       := False;
   actDelete.Enabled         := False;
   actChangePassport.Enabled  := False;
   actAppointNew.Enabled     := False;
   actAppoint.Enabled     := False;
   actDekret.Enabled        := False;
   actDekretOut.Enabled    := False;
   actShuBankda.Enabled   := False;
// end  .Enabled         := False;

  For i := 0 to ComponentCount-1 do
  Begin
    If (Components[i].ClassType = TClientDatasetEx)
    Then TclientDatasetEx(Components[i]).ReadOnly:=true;
  End;
  cdsOkPersonal_NEW.ReadOnly := false;
  source.ReadOnly := false;

//
  end;

  edBossNew.Text:=bosslevel;
  LastPanel := 'TablePanel';
  pcmainok.ActivePage := TablePanel_;

    actTableExecute(nil);
    pcmainok.ActivePage := TablePanel_;

//  Label40.Font.Handle :=  GetStockObject(SYSTEM_FONT);
//showmessage('���������');
  if BossLevel = '1'
  then begin
  // ����������
  end else begin
  // ������� ������
  end;

  medBankDate2.text:=bankdate;
  year_ := strtoint( copy(medBankDate2.text,7,4));

  months_[1] := 31;
  months_[2] := 28 + ord(IsLeapYear(year_));
  months_[3] := 31;
  months_[4] := 30;
  months_[5] := 31;
  months_[6] := 30;
  months_[7] := 31;
  months_[8] := 31;
  months_[9] := 30;
  months_[10] := 31;
  months_[11] := 30;
  months_[12] := 31;

  height:=700;

end;

procedure TBOKFormSTAT.FormDestroy(Sender: TObject);
var sql_  : string;
begin
  inherited;

{  if branch <> old_branch
  then begin
        cSql:='alter session set current_schema='+old_schema;
        ExecSQL(cSql);
        ExecSQL('begin info.init; end;');
        branch := old_branch;
  end;
}
  if branch <> old_branch
  then begin
    sql_:='alter session set current_schema = '+old_schema;
    ExecSQL(sql_);
    ExecSQL('begin info.init; end;');
    execsql('COMMIT');
    branch := old_branch;
    bankdate := old_bankdate ;
  end;

  With Registry do
    Try
      OpenKey(INIT_KEY + Self.ClassName, True);
      WriteString('edOfficeAddress', edOfficeAddress.Text);
      WriteString('edFilial', edFilial.Text);
      Writebool('chbTabVisible', chbTabVisible.checked);
      WriteBool(SShowToolBar, psToolBar.Visible);
      WriteBool(SShowStatusBar, StatusBar.Visible);
      Writebool('chbGluk', chbGluk.checked);
      Writebool('chbSaveFiltr', chbSaveFiltr.checked);
//      WriteInteger('clbNoLead',        clbNoLead.Selected);
      WriteString('edDepartmentcodeNew', edDepartmentcodeNew.Text);
      WriteString('edDEPARTMENTNUMnew', edDEPARTMENTNUMnew.Text);
      WriteString('edDepartmentNameNew', edDepartmentNameNew.Text);
//showmessage(INIT_KEY + Self.ClassName);
    Finally
      CloseKey;
    End;

end;

procedure TBOKFormSTAT.SplitterCanResize(Sender: TObject;
  var NewSize: Integer; var Accept: Boolean);
var
  i: Integer;
begin
  with CoolBar do
    if NewSize < Height then
    begin
      for i := Bands.Count - 1 downto 0 do
        if Bands[i].Break = True then
          if NewSize <= Height - Bands[i].Height then
          begin
            Bands[i].Break := False;
            Accept := True;
          end;
    end
    else
    begin
      for i := Bands.Count - 1 downto 0 do
        if Bands[i].Break = False then
          if NewSize >= Height + Bands[i].Height then
          begin
            Bands[i].Break := True;
            Accept := True;
          end;
    end;
end;

procedure TBOKFormSTAT.actToolBarExecute(Sender: TObject);
begin
  psToolBar.Visible := not psToolBar.Visible;
end;

procedure TBOKFormSTAT.actStatusBarExecute(Sender: TObject);
begin
  StatusBar.Visible := not StatusBar.Visible;
end;

procedure TBOKFormSTAT.actAboutExecute(Sender: TObject);
begin
  with TAboutDialog.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TBOKFormSTAT.cdsSSOKPost_SETReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
//  if pos('Cannot modify read-only dataset', E.Message) > 0
//  then ShowMessage('������ ��� ������!')
//  else
  If pos('ORA-01400', E.Message) > 0 Then ShowMessage('������ ��� ����������(2996). ����������, ��������� ������ ����!'+#13+E.Message)
//  Else if pos('is not a valid date and time', E.Message) > 0 Then ShowMessage('���������� ������� ���� � ������� "��.��.����" ��� �������� ���� (������� [ESC] )!')
  else ShowMessage(e.Message);
end;

procedure TBOKFormSTAT.FormShow(Sender: TObject);
var //LevelName_ : TData;
   sql_ :string; // ,  w
   n : integer;
   show_bank_ :string;
begin
//showmessage( datetimetostr(now) +#13+ datetimetostr(now+10) );
  PCMainOK.ActivePage:=RefPanel_;

  BOKFormSTAT.width:=1400;
  BOKFormSTAT.Height:=860;
  cdbgOKStat.Top:=72;

  old_post_code:='';

    if curBranch=''
    then curBranch:=Branch;

  with PCmainok do
    for n:=0 to PageCount-1 do
      Pages[n].TabVisible:=false;

  GetCurrentDir_templates := GetCurrentDir+'/Templates' ;

//  medBankDate.Text:=bankdate;
  dtpS.Text:=bankdate;
  dtpPO.Text:=bankdate;
// ���������
//  cbBoss.Items.Clear;
// LEVEL_DEPARTMENT_CODE	NUMBER (1) not null, --	���
// LEVEL_DEPARTMENT_NAME	VARCHAR2(50) not null --	������������ 	 ����������� ��������������
  With Registry do
    Try
      If OpenKey(INIT_KEY + Self.ClassName, False) Then
        Begin
          If ValueExists('edFilial')
          Then begin
            edFilial.Text := ReadString('edFilial');
          end;
//showmessage(edFilial.Text);
          If ValueExists('edOfficeAddress') Then edOfficeAddress.Text := ReadString('edOfficeAddress');

        If ValueExists('chbTabVisible')
          Then chbTabVisible.checked:=Readbool('chbTabVisible');
//          Else chbTabVisible.checked:=true;

        If ValueExists('chbGluk')
          Then chbGluk.checked := Readbool('chbGluk');
//          Else chbGluk.checked := false;

        If ValueExists('chbSaveFiltr')
          Then chbSaveFiltr.checked := Readbool('chbSaveFiltr');
//          Else chbSaveFiltr.checked := false;

        End;
    Finally
      CloseKey;
    End;


{  With ActionList do
    Begin
      cdsTransSd.First;
      For i := 0 to ActionCount - 1 do
        If (Actions[i] as TAction).Tag <> 0 Then (Actions[i] as TAction).Enabled := False;
      While not cdsTransSd.Eof do
        Begin
          For i := 0 to ActionCount - 1 do
            If (Actions[i] as TAction).Tag = cdsTransSd.FieldByName('ACTION_ID').AsInteger then
               (Actions[i] as TAction).Enabled := True;
          cdsTransSd.Next;
        End;
    End;

}


// ����������� ���� ���
  PC.ActivePage := TabMessage;
  PCDetails.ActivePage := TabDetailsMessage;

  if (not cdsS_STR.Active) then
  Begin
    LoadData(cdsS_STR, SQL_S_STR);
  End;

//  cdsSSOKDepartment_SET.DisableControls;
//  LoadData(cdsSSOKDepartment_SET,             SQL_SSOKDepartment_SET);

  If not CDSss_ok_mfo_category.Active Then begin
    LoadData(CDSss_ok_mfo_category,  'select branch,REGION_ID,mfo_category_type_code,region_koef,TERMINAL,SESSION_USER,ID_ADDRESS,to_char(TIMESTAMP,''dd.mm.yyyy hh24:mi:ss'') TIMESTAMP from ss_ok_mfo_category order by region_id,branch');
  End;

  If not CDSss_ok_category_SET.Active Then begin
    loaddata(CDSss_ok_category_SET,'select * from ss_ok_category');
  end;

  If not cdsSS_OK_DEP_KOEF.Active Then begin
    loaddata(cdsSS_OK_DEP_KOEF,'select BRANCH,DEPARTMENT_CODE,substr(ok_service.GET_DEPARTMENTNAME(DEPARTMENT_CODE),1,250) DEPARTMENT_CODE_SHOW,'+
      'REGION_KOEF,SESSION_USER,ID_ADDRESS,TIMESTAMP from ss_ok_dep_koef');
  end;

  If not CDSss_ok_post_category.Active Then begin


    LoadData(CDSss_ok_post_category,
              'select sp.level_department_code ,sc.post_code ,sp.post_name ,sc.mfo_category_type_code,'+
              ' soc.category_name, soc.category_rate, soc.salary, '+
              ' sc.CATEGORY_CODE,sc.TERMINAL,sc.SESSION_USER,sc.ID_ADDRESS,'+
              ' to_char(sc.TIMESTAMP,''dd.mm.yyyy hh24:mi:ss'') TIMESTAMP '+
              ' from ss_ok_post_category sc, SS_OK_POST sp, ss_ok_category soc'+
              ' where sc.post_code=sp.post_code and sc.category_code=soc.category_code'+
              ' order by sp.level_department_code,sc.post_code,sc.mfo_category_type_code,soc.category_code'
                      );

{    CDSss_ok_post_category.Close;
    addLookUpField(CDSss_ok_post_category, CDSss_ok_category_SET,
                  'CATEGORY_CODE_SHOW', 'CATEGORY_CODE',
                  'CATEGORY_CODE', 'CATEGORY_NAME', true);
    addLookUpField(CDSss_ok_post_category, CDSss_ok_category_SET,
                  'CATEGORY_RATE_SHOW', 'CATEGORY_CODE',
                  'CATEGORY_CODE', 'CATEGORY_RATE', false);
    addLookUpField(CDSss_ok_post_category, CDSss_ok_category_SET,
                  'SALARY_SHOW', 'CATEGORY_CODE',
                  'CATEGORY_CODE', 'SALARY', false);
    CDSss_ok_post_category.Open;
    CDSss_ok_post_category.EnableControls;
}
  End;

  If not CDSss_ok_mfo_category_type.Active Then begin
    LoadData(CDSss_ok_mfo_category_type,  'select mfo_category_type_code,'+
       ' mfo_category_type_group,mfo_category_type_name,mfo_category_type_purp,TERMINAL,SESSION_USER,ID_ADDRESS,to_char(TIMESTAMP,''dd.mm.yyyy hh24:mi:ss'') TIMESTAMP from ss_ok_mfo_category_type  order by mfo_category_type_code');
  End;


  If not cdsss_ok_education_count.Active Then begin
    LoadData(cdsss_ok_education_count,  'select * from ss_ok_education_count');
  End;

  If not cdsSS_OK_vid_education.Active Then begin
    LoadData(cdsSS_OK_vid_education,  'select * from SS_OK_vid_education');
  End;


  If not cdsSS_OK_city.Active Then begin
    cdsSS_OK_city.DisableControls;
    LoadData(cdsSS_OK_city,      SQL_SS_OK_city);
    cdsSS_OK_city.EnableControls;
  End;

  If not cdsSS_OK_regplace.Active Then begin
    cdsSS_OK_regplace.DisableControls;
    LoadData(cdsSS_OK_regplace,      SQL_SS_OK_regplace);
    cdsSS_OK_regplace.EnableControls;
  End;


  If not CDSss_ok_passport_type.Active Then begin
    CDSss_ok_passport_type.DisableControls;
    LoadData(CDSss_ok_passport_type,      SQL_ss_ok_passport_type);
    CDSss_ok_passport_type.EnableControls;
  End;

  If not cdsSSOKDepartmentType_SET.Active Then begin
    cdsSSOKDepartmentType_SET.DisableControls;
    LoadData(cdsSSOKDepartmentType_SET,      SQL_SSOKDepartmentType_SET);
    cdsSSOKDepartmentType_SET.EnableControls;
  End;

  If not cdsSSOKSpecial_SET.Active Then begin
    cdsSSOKSpecial_SET.DisableControls;
    LoadData(cdsSSOKSpecial_SET,      SQL_SSOKSpecial_SET);
    cdsSSOKSpecial_SET.EnableControls;
  End;



  If not cdsSSOKDepartment_RO.Active Then begin
    cdsSSOKDepartment_RO.DisableControls;
    LoadData(cdsSSOKDepartment_RO,      SQL_SSOKDepartment_SET2);
    cdsSSOKDepartment_RO.EnableControls;
  End;

  If not(cdsSSOKDepartment_SET.Active)
  Then begin
    cdsSSOKDepartment_SET.DisableControls;
    LoadData(cdsSSOKDepartment_SET,             SQL_SSOKDepartment_SET);

    cdsSSOKDepartment_SET.Close;
    addLookUpField(cdsSSOKDepartment_SET, cdsSSOKDepartmentType_SET,
                  'department_type_code_show', 'department_type_code',
                  'department_type_code', 'department_type_name', True);
    addLookUpField(cdsSSOKDepartment_SET, cdsSSOKDepartment_RO,
                  'high_dep_code_show', 'high_dep_code',
                  'department_code', 'department_name', False);
    cdsSSOKDepartment_SET.Open;
    cdsSSOKDepartment_SET.EnableControls;
  end;

// department end


  actRefreshRefExecute(nil);

  if not cdsNostraSET.Active then LoadData(cdsNostraSET, 'select ''1'' nostra, ''����'' nostra_name from dual '+
    ' union all select ''2'' nostra, ''���'' nostra_name from dual');

  if not cdsSRegion.Active then LoadData(cdsSRegion, SQL_SRegion);
  if not cdsSDistr_RO.Active then LoadData(cdsSDistr_RO, SQL_SDistr);
  if not cdsSDistr_RO2.Active then LoadData(cdsSDistr_RO2, SQL_SDistr);
  if not cdsSDistrRO2.Active then LoadData(cdsSDistrRO2, SQL_SDistr);
  if not cdsSregionRO2.Active then LoadData(cdsSregionRO2, SQL_Sregion);
  if not cdsSSokStatus_SET.Active then LoadData(cdsSSokStatus_SET,     SQL_ssokStatus_SET);
  if not cdsSSokgender_SET.Active then LoadData(cdsSSokgender_SET,     SQL_ssokgender_SET);

  if not cdsSSOKProfmember_SET.Active then LoadData(cdsSSOKProfmember_SET, SQL_SSOKProfmember_SET);

  if not cdsSSokEducationTitle_SET.Active then   LoadData(cdsSSOKEducationTitle_SET,     SQL_SSOKEducationTitle_SET);
  if not cdsSSokNATIONALITY_SET.Active then   LoadData(cdsSSOKNATIONALITY_SET,     SQL_SSOKNATIONALITY_SET);
  if not cdsSSokFAMILYSTATUS_SET.Active then  LoadData(cdsSSOKFAMILYSTATUS_SET,    SQL_SSOKFAMILYSTATUS_SET);
  if not cdsSSokREGTYPE_SET.Active then   LoadData(cdsSSOKREGTYPE_SET,     SQL_SSOKREGTYPE_SET);

  if not cdsSSokMotive_SET.Active then   LoadData(cdsSSOKMotive_SET,     SQL_SSOKMotiveDismissial_SET);

// ��������  �������� OK_PERSONAL
  cdsOKPersonal.DisableControls;

  cdsOKPersonal.Close;

  if (not varisnull(go_personal_code))
  and (go_personal_code<>'')
  then begin
        with cdsOKPersonal.Params
        do begin
            clear;
            CreateParam(ftstring,'p_1' ,ptInput);
            ParamByName('p_1').Value := go_personal_code;
        end;
  //    w := ' where status_code=2';
      LoadData(cdsOKPersonal,      SQL_OKPersonal + ' where personal_code=:p_1');
  end else begin
        with cdsOKPersonal.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
            CreateParam(ftInteger,'p_2' ,ptInput);
            ParamByName('p_2').Value := 2;
        end;
  //    w := ' where p.branch = '+''''+curBranch +''' and status_code=2';
      LoadData(cdsOKPersonal,      SQL_OKPersonal + ' where p.branch=:p_1 and status_code=:p_2');
  end;
  cdsOKPersonal.Close;

  loaddata(cdsSS_OK_GOSUBMIT,'select * from SS_OK_GOSUBMIT');
// ���������� ���������-����-�����
  addLookUpField_OkPersonal;
// END ���������� ���������-����-�����

  cdsOKPersonal.Open;
  cdsOKPersonal.EnableControls;

  mfo_category_type_code_proc;

  if (HeadBranch_ <>'09006') and (HeadBranch_ <>'09004')  // 08.11.2012 ������ � � ���� ������������� ��
  then begin
    dblcbGOsubmit.visible := false;

    gb_xalk.visible := false;
    lbgosubmit.visible := false;
    cdbgok_personal.columns[46].visible := false;
//    bbGOsubmit.visible := false;
//    bbGOChangeStatus.visible:=false;
  end else begin
    if not cdsSSOKPost_new.Active
    then begin
      cdsSSOKPost_new.Close;
      with cdsSSOKPost_new.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := 'A';
      end;
      sql_ := 'SELECT post_code id,post_name name FROM ss_ok_post d where d.state_notes like :p_1 ';
      LoadData(cdsSSOKPost_new, sql_);
    end;

    dblcbGOsubmit.visible := true;

    gb_xalk.visible := true;
    lbgosubmit.visible := true;
    cdbgok_personal.columns[46].visible := true;

  end;

  // � �����
  if  ( (HeadBranch_ ='09006') or (HeadBranch_ ='00883') )
  then begin
    lbGdePropisan2.Caption  := '* ����������';
    lbGdePropisan2_.Caption := '����� ���-��';
    lbDistrRO2.Caption  := '* ���������';
    lbDistrRO2_.Caption := '����� ���-��';
    dbedSpec.ReadOnly:=true;
    dblcbSpec.ReadOnly:=true;
  end else begin
    lbGdePropisan2.Caption  := '* ��� ��������';
    lbGdePropisan2_.Caption := '';
    lbDistrRO2.Caption  := '* ����� ���-��';
    lbDistrRO2_.Caption := '';
    dbedSpec.ReadOnly:=false;
    dblcbSpec.ReadOnly:=false;
    bbEdVer3.Visible := false;
    bbSvedeniya.Width:= 260;
  end;

  if ( (HeadBranch_ ='09004') or (HeadBranch_ ='00394') )
  then begin
    // � ���������� �� ���������� ��������� ����
    // ������ �����
    lbFormRegPlace.visible := false;
    lbFormRegPlace_.visible := false;
    dblcbFormSS_OK_REGPLACE.visible := false;
    dblcbFormSS_OK_REGPLACE_.visible := false;
    dbedFormPASS_REG.visible := false;
    dbedFormPASS_REG_.visible := false;

    lbDistrRO2.visible := false;
    lbDistrRO2_.visible := false;
    edRegion_RO2.visible := false;
    edRegion_RO2_.visible := false;
    dblcbRegion_RO2.visible := false;
    dblcbRegion_RO2_.visible := false;
    edDistrRO_2.visible := false;
    edDistrRO_2_.visible := false;
    dblcbDistrRO_2.visible := false;
    dblcbDistrRO_2_.visible := false;
    dbedHOME_ADDRESSFACT.visible := false;
    dbedHOME_ADDRESSFACT_.visible := false;

//    lbRegionForm.visible := false;
//    DBEd_Region.visible := false;
//    DBLCB_SRegion.visible := false;
//    lbFormBirthPlace.visible := false;
//    DBEdBirthPlace.visible := false;
//    lbFormDistr.visible := false;
//    DBEd_Distr.visible := false;
//    DBLCBdistr.visible := false;

  end else begin
       bbSudDel.visible:=true;
       bbSudDel.enabled:=true;
       bbSudDel2.visible:=true;
       bbSudDel2.enabled:=true;
       bbSudDel3.visible:=true;
       bbSudDel3.enabled:=true;

    lbFormRegPlace.visible:=true;
    dblcbFormSS_OK_REGPLACE.visible:=true;
    dbedFormPASS_REG.visible:=true;

    lbDistrRO2.visible:=true;
    lbDistrRO2_.visible:=true;
    edRegion_RO2.visible:=true;
    edRegion_RO2_.visible:=true;
    dblcbRegion_RO2.visible:=true;
    dblcbRegion_RO2_.visible:=true;
    edDistrRO_2.visible:=true;
    edDistrRO_2_.visible:=true;
    dblcbDistrRO_2.visible:=true;
    dblcbDistrRO_2_.visible:=true;
    dbedHOME_ADDRESSFACT.visible:=true;
    dbedHOME_ADDRESSFACT_.visible:=true;

//    lbRegionForm.visible:=true;
//    DBEd_Region.visible:=true;
//    DBLCB_SRegion.visible:=true;
//    lbFormBirthPlace.visible:=true;
//    DBEdBirthPlace.visible:=true;
//    lbFormDistr.visible:=true;
//    DBEd_Distr.visible:=true;
//    DBLCBdistr.visible:=true;
  end;

  if (not varisnull(go_personal_code))
  and (go_personal_code<>'')
  then begin
    actFormExecute(nil);
    pcmainok.ActivePage := FormPanel_;
//showmessage('1');
  end else begin
    actTableExecute(nil);
    pcmainok.ActivePage := TablePanel_;
  end;
// ��� ������� ���� ��� ���
  show_bank_ := getsqlresult('select header_id from s_mfo where bank_id=info.getbranch');
  if (show_bank_='09049') or (show_bank_='00974')
  then begin
    kapital_bank := TRUE;
    lbShowBank.Caption := ' ���� "�����������" '+branch+ '  ('+FiltrLevelName+')';
  end else begin
    kapital_bank := FALSE;
    lbShowBank.Caption := ' "'+branch+'" '+ '  ('+FiltrLevelName+')';
  end;


// ������� �� �������
  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actCopyPers.Checked     := False ;
  actRef2.Checked     := False ;
  actRef.Checked    := True ;
  actTabel.Checked     := False ;
  actKurs.Checked     := False ;

  actNew.Checked     := False;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  actiias.Checked := false;

  if bosslevel<>'0' then actNew.Enabled         := True ;
  actUndoChanges.Enabled := False;

  OptionsPanel.Visible := False;

  if (HeadBranch_ <>'09006')  // ������ ����� � ���� �� ����
  then begin

//    ilova1.visible:=false;
//    ilova2.visible:=false;
//    ilova3.visible:=false;
//    ilova4.visible:=false;


  end;

  tbStatclick(nil);

end;

procedure TBOKFormSTAT.actSSOKPostExecute(Sender: TObject);
begin
  ViewRef(0);

end;

procedure TBOKFormSTAT.actSSOKEducationExecute(Sender: TObject);
begin
  ViewRef(1);
{
  RefExec;
  PC.ActivePage:=TabSSOKEducation;

  If cdsSSOKEducation_SET.Active Then Exit;
  cdsSSOKEducation_SET.DisableControls;
  cdsSSOKInstitution_SET.DisableControls;

  LoadData(cdsSSOKEducation_SET,      SQL_SSOKEducation_SET);
  cdsSSOKEducation_SET.IndexFieldNames := 'education_code';
  LoadData(cdsSSOKInstitution_SET,    SQL_SSOKInstitution_SET);
  cdsSSOKInstitution_SET.IndexFieldNames := 'institution_code';

  cdsSSOKInstitution_Set.MasterSource    := dsSSOKEducation_Set;
  cdsSSOKInstitution_Set.IndexFieldNames := 'EDUCATION_CODE';   // ���� � ������ ������� =
  cdsSSOKInstitution_Set.MasterFields    := 'EDUCATION_CODE';    // ���� � ������ �������

  cdsSSOKEducation_SET.EnableControls;
  cdsSSOKInstitution_SET.EnableControls;
}
end;

procedure TBOKFormSTAT.actSSOKNationalityExecute(Sender: TObject);
begin
  ViewRef(2);
{
  RefExec;
  PC.ActivePage:=TabSSOKNationality;

  If cdsSSOKNationality_SET.Active Then Exit;
  cdsSSOKNationality_SET.DisableControls;

  LoadData(cdsSSOKNationality_SET,    SQL_SSOKNationality_SET);
//  cdsSSOKNationality_SET.IndexFieldNames := 'nationality_code';

  cdsSSOKNationality_SET.EnableControls;
}
end;

procedure TBOKFormSTAT.actSSOKPartyExecute(Sender: TObject);
begin
  ViewRef(3);
{
  RefExec;
  PC.ActivePage := TabSSOKParty;

  If cdsSSOKParty_SET.Active Then Exit;
  cdsSSOKParty_SET.DisableControls;

  LoadData(cdsSSOKParty_SET,    SQL_SSOKParty_SET);
//  cdsSSOKParty_SET.IndexFieldNames := 'party_code';

  cdsSSOKParty_SET.EnableControls;
}
end;

procedure TBOKFormSTAT.actSSOKDegreeExecute(Sender: TObject);
begin
  ViewRef(4);
{
  RefExec;
  PC.ActivePage := TabSSOKDegree;

  If cdsSSOKDegree_SET.Active Then Exit;
  cdsSSOKDegree_SET.DisableControls;
  LoadData(cdsSSOKDegree_SET,            SQL_SSOKDegree_SET);
//  cdsSSOKDegree_SET.IndexFieldNames := 'degree_id';
  cdsSSOKDegree_SET.EnableControls;
}
end;

procedure TBOKFormSTAT.actSSOKAcademicExecute(Sender: TObject);
begin
  ViewRef(5);
{
  RefExec;
  PC.ActivePage := TabSSOKAcademic;

  If cdsSSOKAcademic_SET.Active Then Exit;
  cdsSSOKAcademic_SET.DisableControls;
  LOADDATA(CDSSSOKAcademic_SET,      SQL_SSOKAcademic_SET);
//  cdsSSOKAcademic_SET.IndexFieldNames := 'academic_id';
  cdsSSOKAcademic_SET.EnableControls;
}  
end;

procedure TBOKFormSTAT.actSSOKLanguageExecute(Sender: TObject);
begin
  ViewRef(6);
{
  RefExec;
  PC.ActivePage := TabSSOKLanguage;
  If cdsSSOKLanguage_SET.Active Then Exit;
  cdsSSOKLanguage_SET.DisableControls;
  LOADDATA(CDSSSOKLanguage_SET,      SQL_SSOKLanguage_SET);
//  cdsSSOKLanguage_SET.IndexFieldNames := 'language_id';
  cdsSSOKLanguage_SET.EnableControls;
}
end;

procedure TBOKFormSTAT.actSSOKLevelLanguageExecute(Sender: TObject);
begin
  ViewRef(7);
{
  RefExec;
  PC.ActivePage := TabSSOKLevelLanguage;
  If cdsSSOKLevelLanguage_SET.Active Then Exit;
  cdsSSOKLevelLanguage_SET.DisableControls;
  LOADDATA(CDSSSOKLevelLanguage_SET,      SQL_SSOKLevelLanguage_SET);
//  cdsSSOKLevelLanguage_SET.IndexFieldNames := 'level_language_id';
  cdsSSOKLevelLanguage_SET.EnableControls;
}
end;

procedure TBOKFormSTAT.actSSOKTypePeriodExecute(Sender: TObject);
begin
  ViewRef(8);
{
  RefExec;
  PC.ActivePage := TabSSOKTypePeriod;
  If cdsSSOKTypePeriod_SET.Active Then Exit;
  cdsSSOKTypePeriod_SET.DisableControls;
  LOADDATA(CDSSSOKTypePeriod_SET,      SQL_SSOKTypePeriod_SET);
//  cdsSSOKTypePeriod_SET.IndexFieldNames := 'type_period_id';
  cdsSSOKTypePeriod_SET.EnableControls;
}  
end;

procedure TBOKFormSTAT.actSSOKRelationExecute(Sender: TObject);
begin
  ViewRef(9);
{
  RefExec;
  PC.ActivePage := TabSSOKRelation;
  If cdsSSOKRelation_SET.Active Then Exit;
  cdsSSOKRelation_SET.DisableControls;
  LOADDATA(CDSSSOKRelation_SET,      SQL_SSOKRelation_SET);
//  cdsSSOKRelation_SET.IndexFieldNames := 'relation_id';
  cdsSSOKRelation_SET.EnableControls;
}  
end;

procedure TBOKFormSTAT.actSSOKQualificationExecute(Sender: TObject);
begin
  ViewRef(10);
{
  RefExec;
  PC.ActivePage := TabSSOKQualification;

  If cdsSSOKQualification_SET.Active Then Exit;
  cdsSSOKQualification_SET.DisableControls;
  LOADDATA(CDSSSOKQualification_SET,      SQL_SSOKQualification_SET);
//  cdsSSOKQualification_SET.IndexFieldNames := 'qualification_id';
  cdsSSOKQualification_SET.EnableControls;
}  
end;

procedure TBOKFormSTAT.actSSOKLeaveExecute(Sender: TObject);
begin
  ViewRef(11);
  {
  RefExec;
  PC.ActivePage := TabSSOKLeave;

  If cdsSSOKLeave_SET.Active Then Exit;
  cdsSSOKLeave_SET.DisableControls;
  LOADDATA(CDSSSOKLeave_SET,      SQL_SSOKLeave_SET);
//  cdsSSOKLeave_SET.IndexFieldNames := 'leave_id';
  cdsSSOKLeave_SET.EnableControls;
  }
end;

procedure TBOKFormSTAT.actSSOKMotiveDismissialExecute(Sender: TObject);
begin
  ViewRef(12);
  {
  RefExec;
  PC.ActivePage := TabSSOKMotiveDismissial;

  If cdsSSOKMotiveDismissial_SET.Active Then Exit;
  cdsSSOKMotiveDismissial_SET.DisableControls;
  LOADDATA(CDSSSOKMotiveDismissial_SET,      SQL_SSOKMotiveDismissial_SET);
//  cdsSSOKMotiveDismissial_SET.IndexFieldNames := 'motive_dismissial_id';
  cdsSSOKMotiveDismissial_SET.EnableControls;
  }
end;

procedure TBOKFormSTAT.actSSOKYouthExecute(Sender: TObject);
begin
  ViewRef(13);
  {
  RefExec;
  PC.ActivePage := TabSSOKYouth;
  If cdsSSOKYouth_SET.Active Then Exit;
  cdsSSOKYouth_SET.DisableControls;
  LOADDATA(CDSSSOKYouth_SET,      SQL_SSOKYouth_SET);
//  cdsSSOKYouth_SET.IndexFieldNames := 'youth_id';
  cdsSSOKYouth_SET.EnableControls;
  }
end;

procedure TBOKFormSTAT.actSSOKDepartmentTypeExecute(Sender: TObject);
begin
  ViewRef(14);
  {
  RefExec;
  PC.ActivePage := TabSSOKDepartmentType;
  If cdsSSOKDepartmentType_SET.Active Then Exit;
  cdsSSOKDepartmentType_SET.DisableControls;
  LoadData(cdsSSOKDepartmentType_SET,      SQL_SSOKDepartmentType_SET);
//  cdsSSOKDepartmentType_SET.IndexFieldNames := 'department_type_id';
  cdsSSOKDepartmentType_SET.EnableControls;
  }
end;

procedure TBOKFormSTAT.actSSOKDepartmentExecute(Sender: TObject);
begin
  ViewRef(15);
  {
  RefExec;
  PC.ActivePage := TabSSOKDepartment;

  If not cdsSSOKDepartmentType_SET.Active Then begin
    cdsSSOKDepartmentType_SET.DisableControls;
    LoadData(cdsSSOKDepartmentType_SET,      SQL_SSOKDepartmentType_SET);
    cdsSSOKDepartmentType_SET.EnableControls;
  End;

  If cdsSSOKDepartment_SET.Active Then Exit;
  cdsSSOKDepartment_SET.DisableControls;
  LoadData(cdsSSOKDepartment_SET,             SQL_SSOKDepartment_SET);

  cdsSSOKDepartment_SET.Close;
  addLookUpField(cdsSSOKDepartment_SET, cdsSSOKDepartmentType_SET,
                'department_type_code_show', 'department_type_code',
                'department_type_code', 'department_type_name', True);
  cdsSSOKDepartment_SET.Open;
  cdsSSOKDepartment_SET.EnableControls;
  }
end;

procedure TBOKFormSTAT.actSSOKArticleExecute(Sender: TObject);
begin
  ViewRef(16);
  {
  RefExec;
  PC.ActivePage := TabSSOKArticle;

  If cdsSSOKArticle_SET.Active Then Exit;
  cdsSSOKArticle_SET.DisableControls;
  LOADDATA(cdsSSOKArticle_SET,      SQL_SSOKArticle_SET);
//  cdsSSOKArticle_SET.IndexFieldNames := 'article_id';

  cdsSSOKArticle_SET.EnableControls;
  }
end;

procedure TBOKFormSTAT.actSSOKCommandTypeExecute(Sender: TObject);
begin
  ViewRef(17);
  {
  RefExec;
  PC.ActivePage := TabSSOKCommandType;
  If cdsSSOKCommandType_SET.Active Then Exit;
  cdsSSOKCommandType_SET.DisableControls;
  LOADDATA(cdsSSOKCommandType_SET,      SQL_SSOKCommandType_SET);
//  cdsSSOKCommandType_SET.IndexFieldNames := 'command_type_id';
  cdsSSOKCommandType_SET.EnableControls;
  }
end;

procedure TBOKFormSTAT.actSSOKTemplateCommandExecute(Sender: TObject);
begin
  ViewRef(18);
  {
  RefExec;
  PC.ActivePage := TabSSOKTemplateCommand;

  If not cdsSSOKCommandType_SET.Active Then begin
    cdsSSOKCommandType_SET.DisableControls;
    LoadData(cdsSSOKCommandType_SET,      SQL_SSOKCommandType_SET);
    cdsSSOKCommandType_SET.EnableControls;
  End;

  If cdsSSOKTemplateCommand_SET.Active Then Exit;
  cdsSSOKTemplateCommand_SET.DisableControls;
  LoadData(cdsSSOKTemplateCommand_SET,    SQL_SSOKTemplateCommand_SET);

  cdsSSOKTemplateCommand_SET.Close;
  addLookUpField(cdsSSOKTemplateCommand_SET, cdsSSOKCommandType_SET,
                'command_type_code_show', 'command_type_code',
                'command_type_code', 'command_type_name', True);
  cdsSSOKTemplateCommand_SET.Open;
  cdsSSOKTemplateCommand_SET.EnableControls;
  }
end;

procedure TBOKFormSTAT.ActPrevExecute(Sender: TObject);
begin

 IF DetailsPanel.Visible THEN BEGIN
   if      PCDetails.ActivePage =  TabOKEducation_0  then begin GetRef(cdbgOKEducation);             end
   else if PCDetails.ActivePage =  TabSheet_1        then begin GetRef(cdbgOKAcademic);      end
   else if PCDetails.ActivePage =  TabDegree_2       then begin GetRef(cdbgOKDegree);      end
   else if PCDetails.ActivePage =  TabSheet_3        then begin GetRef(cdbgOKAward);            end
   else if PCDetails.ActivePage =  TabOKScientific_4 then begin GetRef(cdbgOKScientific);           end
   else if PCDetails.ActivePage =  TabSheet_5        then begin GetRef(cdbgOKVoyage);         end
   else if PCDetails.ActivePage =  TabSheet_6        then begin GetRef(cdbgOKLanguage);         end
   else if PCDetails.ActivePage =  TabSheet_7        then begin GetRef(cdbgOKRelation);    end
   else if PCDetails.ActivePage =  TabSheet_8        then begin GetRef(cdbgOKPeriod);       end
   else if PCDetails.ActivePage =  TabOKRise_9       then begin GetRef(cdbgOKRise);         end
   else if PCDetails.ActivePage =  TabSheet_10       then begin GetRef(cdbgOKElection);    end
   else if PCDetails.ActivePage =  TabSheet_11       then begin GetRef(cdbgOKPremium);            end
   else if PCDetails.ActivePage =  TabSheet_12       then begin GetRef(cdbgOKArmy); end
   else if PCDetails.ActivePage =  TabSheet_13       then begin GetRef(cdbgOKParty);            end
   else if PCDetails.ActivePage =  TabSheet_14       then begin GetRef(cdbgOKYouth);   end
//   else if PCDetails.ActivePage =  TabOKPost_15      then begin GetRef(cdbgOKPost);          end
   else if PCDetails.ActivePage =  TabSheet_16       then begin GetRef(cdbgOKLeave);       end
   else if PCDetails.ActivePage =  TabSheet_17       then begin GetRef(cdbgOKConvictions);      end
   else if PCDetails.ActivePage =  TabSheet_18       then begin GetRef(cdbgOKAddInform);  end
   else if PCDetails.ActivePage =  TabSheet_19       then begin GetRef(cdbgOKPenalty);          end
   else if PCDetails.ActivePage =  TabSheet_20       then begin GetRef(cdbgOKChangeFIO);   end
   else if PCDetails.ActivePage =  TabSheet_21       then begin GetRef(cdbgokhospital);   end
   else if PCDetails.ActivePage =  TabSheet_22       then begin GetRef(cdbgokprivilege);   end
   else if PCDetails.ActivePage =  TabSheet_23       then begin GetRef(cdbgokincrease);   end
   else if PC.ActivePage =  TabdetailsMessage        then begin ShowMessage('����������, �������� ������!');
   end; // ��� ���������� ���


 END
 ELSE IF  OpenPanel.Visible THEN BEGIN
   GetRef(cdbgOK_Personal);
 END
 ELSE IF  TablePanel.Visible THEN BEGIN
   GetRef(cdbgOK_Personal);
 END
 ELSE IF  FormPanel.Visible THEN BEGIN
   GetRef(cdbgOK_Personal);
 END
 ELSE IF  RefPanel.Visible THEN BEGIN
   if      PC.ActivePage =  TabOKPersonal  then begin GetRef(cdbgOK_Personal); end
   else if PC.ActivePage =  TabOKStat      then begin GetRef(cdbgOKStat);
   end;
 END;
 // ��� ������ ���������� ���

end;

procedure TBOKFormSTAT.GetRefCDBG(cdbgSSOK: TClientDBGrid);
var i,k :  Integer;
    s :  String ;
begin

  s := '| �� |';
  // ������������ ����� ��� ���������� �����
  For i := 0 to cdbgSSOK.Columns.Count-1 do
  Begin
      if (cdbgSSOK.Columns.Items[i].Visible)
        and (i<>1)
      then begin
          s := s + rpad(cdbgSSOK.Columns.Items[i].title.Caption, cdbgSSOK.Columns.Items[i].Width div 6)  + '|';
      end;
  End;

  System.Writeln(f,Lpad('-',Length(s),'-'));
  System.Writeln(f,s);
  System.Writeln(f,Lpad('-',Length(s),'-'));
  k:=0;
  // ������������ ������ ��� ���������� �����
  cdbgSSOK.DataSource.Dataset.DisableControls;
  cdbgSSOK.DataSource.Dataset.First;
  While not cdbgSSOK.DataSource.Dataset.Eof do
  Begin
      k:=k+1;
      s := '|'+Lpad( IntToStr(k) ,3,' ')+' |';
      for i := 0 to cdbgSSOK.Columns.Count-1 do
      begin
          if (cdbgSSOK.Columns.Items[i].Visible)
          and (i<>1)
          then begin
              s := s + rpad( cdbgSSOK.DataSource.Dataset.Fields.FieldByName(cdbgSSOK.Columns.Items[i].FieldName).AsString, cdbgSSOK.Columns.Items[i].Width div 6) + '|';
          end;
      end;
      System.Writeln(f,s);
      cdbgSSOK.DataSource.Dataset.Next;
  End;
  cdbgSSOK.DataSource.Dataset.EnableControls;
  System.Writeln(f,Lpad('-',Length(s),'-'));

end;

procedure TBOKFormSTAT.GetRef(cdbgSSOK: TClientDBGrid);
begin

  If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');

  try
    System.AssignFile(f,'C:\NCI Bank\OK\Temp\report_ok.txt');
    System.Rewrite(f);

    Try
      System.Writeln(f,cdbgSSOK.Columns.Items[0].title.Caption);
      GetRefCDBG(cdbgSSOK);
    Finally
      System.CloseFile(f);
    End;
  except
    showmessage('�� ������� ��������� ������ � ���� "C:\NCI Bank\OK\Temp\report_ok.txt"');
    raise;
  end;

  try
    WinExec('notepad C:\NCI Bank\OK\Temp\report_ok.txt', SW_MAXIMIZE);
  except
    showmessage('�� ������� ������� � �������� "notepad C:\NCI Bank\OK\Temp\report_ok.txt"');
  end;

end;

procedure TBOKFormSTAT.cdsSSOKDepartment_SETAfterPost(DataSet: TDataSet);
var ErMessage : string;
begin

  ErMessage := '';

  if DataSet.Fields.FieldByName('department_name').Asstring='����'
    then ErMessage := '������ !!!'+#13+'������ ������� ����� ����� ������ ����.'
  else if DataSet.Fields.FieldByName('department_type_code').IsNull
    then ErMessage := '������ ��� ����������.'+#13+'������� ��� ������.'
  else if DataSet.Fields[1].IsNull
    then ErMessage := '������ ��� ����������.'+#13+'������� ���������� ��� ������.';

  if ErMessage <> ''
    then begin
      ExecSQL('ROLLBACK');
      TCLientDataSet(DataSet).UndoLastChange(True);
      ShowMessage(ErMessage);
      Abort;
    end else begin
      Try
        SaveData(DataSet);
        ExecSQL('COMMIT');
        DataSet.Refresh;
        cdsSSOKDepartment_RO.Refresh;
      Except
        on E: Exception do
          Begin
            ExecSQL('ROLLBACK');
            TCLientDataSet(DataSet).UndoLastChange(True);
            ShowMessage('������ ��� ����������.'+#13+E.Message);
            Abort;
      End;
    End;
  end;
end;

procedure TBOKFormSTAT.actTableExecute(Sender: TObject);
begin
{  if LastPanel = 'OpenPanel' then
    If Application.MessageBox(PChar(s), PChar('������'), MB_YESNO or MB_ICONQUESTION) = mrYes

      ;
}
  LastPanel := 'TablePanel';
  pcmainok.ActivePage := TablePanel_;

  actCopyPers.Checked     := False ;
  actTable.Checked := True;
  actTabel.Checked     := False ;
  actKurs.Checked     := False ;

  actNew.Checked     := False;
  actForm.Checked    := False;
  actRef.Checked     := False;
  actRef2.Checked     := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  cdsOKPersonal.ReadOnly:=True;
  OptionsPanel.Visible := False;
  ActDetailUndoExecute(nil);
  actiias.Checked := false;
  
end;

procedure TBOKFormSTAT.actFormExecute(Sender: TObject);
begin

  LastPanel := 'FormPanel';
  pcmainok.ActivePage := FormPanel_;
  actForm.Checked := True;

  actCopyPers.Checked     := False ;
  actTable.Checked   := False;
  actTabel.Checked     := False ;
  actKurs.Checked     := False ;
  actNew.Checked     := False;
  actRef.Checked     := False;
  actRef2.Checked     := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  cdsOKPersonal.ReadOnly:=False;
  OptionsPanel.Visible := False;
  ActDetailUndoExecute(nil);
  actiias.Checked := false;

end;

procedure TBOKFormSTAT.actNewExecute(Sender: TObject);
//var v: variant;
begin


  if not(cdsdistr.Active)
  then begin
    loaddata(cdsdistr,SQL_S_DISTR);
  end;

 if  LastPanel = 'DetailsPanel'
 then begin
   ActDetailNewExecute(nil);
 end;

 if   (LastPanel = 'TablePanel')
//   or (LastPanel = 'DetailsPanel')
   or (LastPanel = 'RefPanel')
   or (LastPanel = 'Ref2Panel')
   or (LastPanel = 'RezervSetPanel')
 then begin
  ActDetailUndoExecute(nil);

  LastPanel := 'OpenPanel';
  pcmainok.ActivePage := OpenPanel_;

  actCopyPers.Checked     := False ;
  actNew.Checked     := True ;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actRef.Checked     := False;
  actDetails.Checked := False;
  actReAccept.Checked   := False;
  actOptions.Checked   := False;
  actiias.Checked := false;

  actUndoChanges.Enabled := True;
  actNew.Enabled     := False;
  actTable.Enabled   := False;
  actForm.Enabled    := False;
  actRef.Enabled     := False;
  actDetails.Enabled := False;
  actReAccept.Enabled   := False;
  actFilter.Enabled  := False;
  actiias.enabled := false;


  cdsOKPersonal_NEW.Close;
  LoadData(cdsOKPersonal_NEW,      SQL_OKPersonal_EMPTY);
  cdsOKPersonal_NEW.Open;
  cdsOKPersonal_NEW.Insert;
  btnOnOpenPanel.Action := actSaveNEW;
  cdsOKPersonal_NEW.FieldByName('reg_type_code').AsInteger := 1;
  cdsOKPersonal_NEW.FieldByName('status_code').AsInteger := 1;

// ���� ���� �� ������ �������
  if HeadBranch_='09006'
  then begin
    cdsOKPersonal_NEW.FieldByName('passport_type_code').AsInteger := 1;
    DBLookupComboBox48.ReadOnly:=true;
  end;

    try
      cdsOKPersonal_NEW.FieldByName('tabno').asstring :=
        getSQLresultPAR('select decode(max(tabno),null,0,max(tabno))+1 from ok_personal '+
          ' where branch=:p_1',branch);


    except
//      showmessage(sql_);
//      exit;
    end;

 end;

  OpenPanel.Visible    := (actNew.Checked or actReAccept.Checked);
  dbeOK_FAMILY.SetFocus;

end;

procedure TBOKFormSTAT.actSaveNewExecute(Sender: TObject);
var z,i    : integer;
    id_  : integer;
    v    : variant;
    sql_, ErMessage : string;
    text_f : textfile;
    raznica:double;
const
  ERROR_NO = 'ORA-20000: ';
begin

  ErMessage := '';
/////////////////



        if cdsOKPersonal_new.fieldbyname('cod_distr_uvd').asstring=''
        then ErMessage := ErMessage+' "������� * ��� ������, �������������� ��� �������� ����� �������" ';

        if cdsOKPersonal_new.FieldByName('Reg_Type_code').AsString=''
        then ErMessage := ErMessage+' "��� ��������" ';

        if cdsOKPersonal_new.FieldByName('PASS_DATE').AsString=''
        then ErMessage := ErMessage+' "���� ������ ��������" ';

        if cdsOKPersonal_new.FieldByName('PASS_NUM').AsString=''
        then ErMessage := ErMessage+' "����� ��������" ';

        if cdsOKPersonal_new.FieldByName('PASS_SERIYA').AsString=''
        then ErMessage := ErMessage+' "����� ��������" ';

        if cdsOKPersonal_new.FieldByName('profmember').AsString=''
        then ErMessage := ErMessage+' "��������" ';

  if  ( cdsOKPersonal_new.FieldByName('gender_code').AsString='')
  then begin
    ErMessage := ErMessage+' " * ���" ';
  end;

  if  ( cdsOKPersonal_new.FieldByName('nationality_code').AsString='')
  then begin
    ErMessage := ErMessage+' " * ��������������" ';
  end;

  if  ( cdsOKPersonal_new.FieldByName('family_status_code').AsString='')
  then begin
    ErMessage := ErMessage+' " * �������� ���������" ';
  end;

  if  ( cdsOKPersonal_new.FieldByName('FAMILY').AsString='')
  then begin
    ErMessage := ErMessage+' " * �������" ';
  end;

  if  ( cdsOKPersonal_new.FieldByName('FIRST_NAME').AsString='')
  then begin
    ErMessage := ErMessage+' " * ���" ';
  end;



    if cdsOKPersonal_new.FieldByName('nps_id').AsString = ''
    then begin
          ErMessage:=ErMessage+#13+#13+'(���� 05328)���������� �� ������ ���� ������.';
    end else begin
      sql_ := 'select count(id) from ok_personal'+
        ' where nps_id=:p_1'+ //cdsOKPersonal_new.FieldByName('nps_id').AsString+
        ' and personal_code<>:p_2'; //+cdsOKPersonal_new.FieldByName('personal_code').AsString;
      try
        z:=getSQLresultpar(sql_,cdsOKPersonal_new.FieldByName('nps_id').AsString,
                cdsOKPersonal_new.FieldByName('personal_code').AsString
        );
        if (z<>0)
        then begin
          ErMessage:=ErMessage+#13+#13+'���������� �� '+cdsOKPersonal_new.FieldByName('nps_id').AsString+' ��� ������������!'+#13+' �������� ���������� �� � ��������� ������.';
//          Showmessage(ErMessage);
//          exit;
        end;
      except
        showmessage(sql_);
        exit;
      end;


      z := length(cdsOKPersonal_new.FieldByName('inn').AsString);
      if (z<>9)
      then begin
        ErMessage:=ErMessage+#13+#13+'���� ��� ������ ��������� 9 ����'+#13+
          '�� ����� ���='+cdsOKPersonal_new.FieldByName('inn').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
//        Showmessage(ErMessage);
//        exit;
      end;

      z := length(cdsOKPersonal_new.FieldByName('nps_id').AsString);
      if (z<>14)
      then begin
        ErMessage:=ErMessage+#13+#13+'���� ���������� �� ������ ��������� 14 ����'+#13+
          '�� ����� ��='+cdsOKPersonal_new.FieldByName('nps_id').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
//        Showmessage(ErMessage);
//        exit;
      end;
    end;

  if (HeadBranch_='09006') and
      (cdsOKPersonal_new.FieldByName('passport_type_code').AsString <> '1')
  then begin
    cdsOKPersonal_new.FieldByName('passport_type_code').AsInteger := 1;
  end;

  cdsOKPersonal_new.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString :=cdsOKPersonal_new.FieldByName('cod_obl_live').AsString ;
  cdsOKPersonal_new.FieldByName('HOME_ADDRESSFACT_DISTR').AsString :=    cdsOKPersonal_new.FieldByName('cod_distr_live').AsString ;  if  ( cdsOKPersonal_new.FieldByName('reg_type_code').AsString='2')
  and (   cdsOKPersonal_new.FieldByName('REG_DATE_END').AsString='')
  then begin
    ErMessage := ErMessage+' "������� * ���� ��������� ��������" ';
  end;



          if  ( cdsOKPersonal_new.FieldByName('HOME_ADDRESS_REGION_ID').AsString='')
          and  ( cdsOKPersonal_new.FieldByName('HOME_ADDRESS_DISTR').AsString='')
          and  ( cdsOKPersonal_new.FieldByName('Home_Address').AsString='')
          then begin
//            ErMessage := ErMessage+' "��� ��������- �����,���,�����" ';
            ErMessage := ErMessage+' "'+lbGdePropisan2.caption+' '+lbGdePropisan2_.caption+'- �����,���,�����" ';
          end;

    if  ( cdsOKPersonal_new.FieldByName('Education_Title_CODE').AsString='')
    then begin
      ErMessage := ErMessage+' "����������� ���������� (������������)" ';
    end;

    if  ( cdsOKPersonal_new.FieldByName('inn').AsString='')
    then begin
      ErMessage := ErMessage+' "���" ';
    end;

    if  ( cdsOKPersonal_new.FieldByName('nps_id').AsString='')
    then begin
      ErMessage := ErMessage+' "���������� �� *" ';
    end;

  if  ( cdsOKPersonal_new.FieldByName('PASS_DATE').AsString='')
  then begin
    ErMessage := ErMessage+' "���� ��������� ��������" ';
  end;

  if  ( cdsOKPersonal_new.FieldByName('PASS_DATE').AsString<>'')
  and (cdsOKPersonal_new.FieldByName('BIRTHDAY').AsString<>'')
  then begin
    raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
      cdsOKPersonal_new.FieldByName('PASS_DATE').AsString,cdsOKPersonal_new.FieldByName('BIRTHDAY').AsString,'12');
    if (raznica<16)
    then ErMessage := ErMessage+'"������� ���� ��������� �������� � ���� �������� �� ������ ���� ������ 16" ';

  end;

  if (cdsOKPersonal_new.FieldByName('BIRTHDAY').AsString='')
  then ErMessage := ErMessage+' "���� ��������" '
  else begin
    if ( strtoint(copy(datetostr(now),7,4))-
          strtoint(copy(cdsOKPersonal_new.FieldByName('BIRTHDAY').AsString,7,4))
          <45)    // � ���� ���� ���������� ������ 45 ����� ���������� ��������� ���� ���������
    or (( strtoint(copy(datetostr(now),7,4))-
          strtoint(copy(cdsOKPersonal_new.FieldByName('BIRTHDAY').AsString,7,4))
          =45) and (now< strtodate(copy(cdsOKPersonal_new.FieldByName('BIRTHDAY').AsString,1,6)+copy(datetostr(now),7,4))  )
    )
    then begin
      if (cdsOKPersonal_new.FieldByName('PASS_DATE_END').AsString='') // ������� ������������ ��..
      then begin
        ErMessage := ErMessage+' "������� ������������ ��..'+cdsOKPersonal_new.FieldByName('PASS_DATE_END').AsString+'" ';
      end else begin
        if (cdsOKPersonal_new.FieldByName('PASS_DATE_END').AsDateTime < now)
        then ErMessage := ErMessage+' "������� ������������ ��..'+cdsOKPersonal_new.FieldByName('PASS_DATE_END').AsString+'" ';
      end;
    end;

    raznica:=getsqlresultpar('select trunc(months_between(sysdate,:p_1)/:p_2) from dual',cdsOKPersonal_new.FieldByName('BIRTHDAY').AsString,'12');
    if (raznica<16) or (raznica>90)
    then ErMessage := ErMessage+'"������� ���� ������� � ���� �������� �� ������ ���� ������ 16 � ������ 90" ';
  end;

/////////////////
  if ErMessage <>''
  then ErMessage := ErMessage+#13+'------------------------'+#13;
/////////////////
  for i := 0 to cdbgOKPersonal_NEW.Columns.Count-1 do
  begin
    if cdbgOKPersonal_NEW.Columns.Items[i].Visible  then
    begin
      if (cdsOKPersonal_NEW.Fields.FieldByName(cdbgOKPersonal_NEW.Columns.Items[i].FieldName).AsString='')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'��������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'N')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'�� �������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'N �������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'���� �������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'������� ����������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '�� �������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '����� ��������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '����� ������ ��������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '����� �����������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '����� ����������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '��� ��������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '���������� ��')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '�����')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '���������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '(���)����� ��������')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '(�����)����� ��������')

      then
      begin
        ErMessage := ErMessage+' "'+cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption+'" ';
      end;
    end;
  end;

      if (headbranch_='09006')
      then begin
        if cdsOKPersonal_new.FieldByName('TRUD_SOGL').AsString=''
        then ErMessage := ErMessage+' "�� ��������� ����������" ';
        if cdsOKPersonal_new.FieldByName('profmember').AsString=''
        then ErMessage := ErMessage+' "��������" ';
        if cdsOKPersonal_new.FieldByName('telefon').AsString=''
        then ErMessage := ErMessage+' "�������(���������� ���������� ���� ���)" ';
        try
          strtoint64(cdsOKPersonal_new.FieldByName('telefon').AsString);
        except
          ErMessage := ErMessage+' "������� '+cdsOKPersonal_new.FieldByName('telefon').AsString+' ������ ���� ������ �� ���� ��� ����" ';
        end;
        if length(cdsOKPersonal_new.FieldByName('telefon').AsString)<>11
        then ErMessage := ErMessage+' "� �������� ������ ���� ������ 11 ���� � ���� �����" ';
        if (cdsOKPersonal_new.fieldbyname('regplace_code').asstring='')
        and (cdsOKPersonal_new.fieldbyname('PASS_REG').asstring='')
        then ErMessage := ErMessage+' "������� * *����� ����������� (�������) �� ����������� ��� ����������" ';
      end;


  if (cdsOKPersonal_new.FieldByName('Home_Address').AsString='')
  then begin
    if ( cdsOKPersonal_new.FieldByName('HOME_ADDRESS_REGION_ID').AsString='')
    Then ErMessage := ErMessage+' "��� �������� (�������)" ';
    If ( cdsOKPersonal_new.FieldByName('HOME_ADDRESS_DISTR').AsString=''    )
    Then ErMessage := ErMessage+' "��� �������� (�����/�����)" ';
  end;

  if  ( cdsOKPersonal_new.FieldByName('cod_str_birth').AsString='')
  then begin
    ErMessage := ErMessage+' "������ ��������" ';
  end else begin
    if getsqlresultpar('select count(*) from s_str where code_str=:p_1 and act=:p_2',cdsOKPersonal_new.FieldByName('cod_str_birth').AsString,'A')=0
    then begin
      ErMessage := ErMessage+' " * ������ �������� '+cdsOKPersonal_new.FieldByName('cod_str_birth').AsString+' ��� � �����������" ';
    end;
  end;

  if (cdsOKPersonal_new.FieldByName('cod_str_birth').AsString='860')
  then begin
    if ( cdsOKPersonal_new.FieldByName('region_id').AsString='')
    Then ErMessage := ErMessage+' "����� �������� ���������� (�������)" ';
    If ( cdsOKPersonal_new.FieldByName('distr').AsString=''    )
    Then ErMessage := ErMessage+' "����� �������� ���������� (�����/�����)" ';
  end else begin
    if ( cdsOKPersonal_new.FieldByName('cod_obl_prim').AsString='')
    Then ErMessage := ErMessage+' "����� �������� ���������� (�������-����������)" ';
    If ( cdsOKPersonal_new.FieldByName('cod_place_birth_prim').AsString=''    )
    Then ErMessage := ErMessage+' "����� �������� ���������� (�����/�����-����������)" ';
  end;

  if  ( cdsOKPersonal_new.FieldByName('cod_str_live').AsString='')
  then begin
    ErMessage := ErMessage+' "������ ����������" ';
  end else begin
    if getsqlresultpar('select count(*) from s_str where code_str=:p_1 and act=:p_2',cdsOKPersonal_new.FieldByName('cod_str_live').AsString,'A')=0
    then begin
      ErMessage := ErMessage+' " * ������ ���������� '+cdsOKPersonal_new.FieldByName('cod_str_live').AsString+' ��� � �����������" ';
    end;
  end;

  if (cdsOKPersonal_new.FieldByName('cod_str_live').AsString='860')
  then begin
    if ( cdsOKPersonal_new.FieldByName('cod_obl_live').AsString='')
    Then ErMessage := ErMessage+' "����� ���������� ���������� (�������)" ';
    If ( cdsOKPersonal_new.FieldByName('cod_distr_live').AsString=''    )
    Then ErMessage := ErMessage+' "����� ���������� ���������� (�����/�����)" ';
  end else begin
    if ( cdsOKPersonal_new.FieldByName('cod_obl_live_prim').AsString='')
    Then ErMessage := ErMessage+' "����� ���������� ���������� (�������-����������)" ';
    If ( cdsOKPersonal_new.FieldByName('cod_distr_live_prim').AsString=''    )
    Then ErMessage := ErMessage+' "����� ���������� ���������� (�����/�����-����������)" ';
  end;

  If ( cdsOKPERSONAL_NEW.FieldByName('Education_Title_CODE').AsString='')
  Then ErMessage := ErMessage+' "����������� ����������" ';

  If ( cdsOKPERSONAL_NEW.FieldByName('tabno').AsString='')
  Then ErMessage := ErMessage+' "��������� �����" ';

      if length(cdsOKPERSONAL_NEW.FieldByName('pass_seriya').AsString)<>2
      then begin
        ErMessage := ErMessage+'����� ��������� (��������) ������ ���� 2 �������, � �� '+IntToStr(length( cdsOKPERSONAL_NEW.FieldByName('pass_seriya').AsString )) ;
      end;

      if length(cdsOKPERSONAL_NEW.FieldByName('pass_num').AsString)<>7
      then begin
        ErMessage := ErMessage+'����� ��������� (��������) ������ ���� 7 ����, � �� '+IntToStr(length( cdsOKPERSONAL_NEW.FieldByName('pass_num').AsString )) ;
      end;


    sql_ := 'select count(id) from ok_personal '+
      ' where branch=:p_1'+
        ' and tabno=:p_2';

    try
      z:=getSQLresultPAR(sql_,branch,cdsOKPERSONAL_new.FieldByName('tabno').AsString);
      if (z<>0)
      then begin
        ErMessage := ErMessage+'��������� ����� '+cdsOKPERSONAL_new.FieldByName('tabno').AsString+' ��� ������������!'+#13+
          ' �������� ��������� ����� � ��������� ������.';
      end;
    except
//      showmessage(sql_);
//      exit;
    end;


    ///////

    if cdsOKPERSONAL_new.FieldByName('nps_id').AsString <> ''
    then begin
      sql_ := 'select count(id) from ok_personal'+
        ' where nps_id=:p_1';
      try
        z:=getSQLresultPAR(sql_,cdsOKPERSONAL_new.FieldByName('nps_id').AsString);
        if (z<>0)
        then begin
          ErMessage := ErMessage+'���������� �� '+cdsOKPERSONAL_new.FieldByName('nps_id').AsString+
            ' ��� ������������!'+#13+' �������� ���������� �� � ��������� ������.';
        end;
      except
        showmessage(sql_);
        exit;
      end;


      z := length(cdsOKPERSONAL_new.FieldByName('nps_id').AsString);
      if (z<>14) and (z<>0)
      then begin
        ErMessage := ErMessage+'���� ���������� �� ������ ��������� 14 ����'+#13+
          '�� ����� ��='+cdsOKPERSONAL_new.FieldByName('nps_id').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
      end;
    end;



  if ErMessage <> '' then
  begin
    ErMessage:= '(3983)����������, ������� ������ ����������:'+ ErMessage;
    ShowMessage(ErMessage);
////
    if HeadBranch_=HeadBranch_ //'09006'
    then begin
      If not DirectoryExists('C:\NCI Bank\') Then ForceDirectories('C:\NCI Bank\');
      If not DirectoryExists('C:\NCI Bank\Ok\') Then ForceDirectories('C:\NCI Bank\Ok\');
      If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');

      try
        System.AssignFile(text_f,'C:\NCI Bank\OK\Temp\err_ok.txt');
        System.Rewrite(text_f);

        Try
          System.Writeln(text_f,ErMessage);
        Finally
          System.CloseFile(text_f);
        End;
      except
        showmessage('�� ������� ��������� ������ � ���� "C:\NCI Bank\OK\Temp\err_ok.txt"');
        raise;
      end;

      try
        WinExec('notepad C:\NCI Bank\OK\Temp\err_ok.txt', SW_MAXIMIZE);
      except
        showmessage('�� ������� ������� � �������� "notepad C:\NCI Bank\OK\Temp\err_ok.txt"');
      end;
    end;
////
    exit;
  end;

  try

    If cdsOKPERSONAL_NEW.FieldByName('PERSONAL_CODE').IsNull
    Then   execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;','PERSONAL_CODE','0')
    Else   execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PERSONAL_CODE', cdsOKPERSONAL_NEW.FieldByName('PERSONAL_CODE').AsString );

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','BRANCH',branch);

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','FAMILY',             cdsOKPERSONAL_NEW.FieldByName('FAMILY').AsString             );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','FIRST_NAME',         cdsOKPERSONAL_NEW.FieldByName('FIRST_NAME').AsString         );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PATRONYMIC',         cdsOKPERSONAL_NEW.FieldByName('PATRONYMIC').AsString         );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','GENDER_CODE',        cdsOKPERSONAL_NEW.FieldByName('GENDER_CODE').AsString        );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','BIRTHDAY',           cdsOKPERSONAL_NEW.FieldByName('BIRTHDAY').AsString           );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','NATIONALITY_CODE',   cdsOKPERSONAL_NEW.FieldByName('NATIONALITY_CODE').AsString   );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','FAMILY_STATUS_CODE', cdsOKPERSONAL_NEW.FieldByName('FAMILY_STATUS_CODE').AsString );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','REG_TYPE_CODE',      cdsOKPERSONAL_NEW.FieldByName('REG_TYPE_CODE').AsString      );

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','HOME_ADDRESS',       cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESS').AsString       );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','HOME_ADDRESS_REGION_ID',       cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESS_REGION_ID').AsString       );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','HOME_ADDRESS_DISTR',       cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESS_DISTR').AsString       );

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','HOME_ADDRESSFACT',   cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESSFACT').AsString   );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','HOME_ADDRESSFACT_REGION_ID',   cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString   );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','HOME_ADDRESSFACT_DISTR',   cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESSFACT_DISTR').AsString   );

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','REGPLACE_CODE',   cdsOKPERSONAL_NEW.FieldByName('REGPLACE_CODE').AsString   );

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PASS_SERIYA',        cdsOKPERSONAL_NEW.FieldByName('PASS_SERIYA').AsString        );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PASS_NUM',           cdsOKPERSONAL_NEW.FieldByName('PASS_NUM').AsString           );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PASS_DATE',          cdsOKPERSONAL_NEW.FieldByName('PASS_DATE').AsString          );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PASS_REG',           cdsOKPERSONAL_NEW.FieldByName('PASS_REG').AsString           );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','RECORD_BOOK_NUMBER', cdsOKPERSONAL_NEW.FieldByName('RECORD_BOOK_NUMBER').AsString );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','RECORD_BOOK_SERIES', cdsOKPERSONAL_NEW.FieldByName('RECORD_BOOK_SERIES').AsString );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','TELEFON',            cdsOKPERSONAL_NEW.FieldByName('TELEFON').AsString            );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','STATUS_CODE',        cdsOKPERSONAL_NEW.FieldByName('STATUS_CODE').AsString        );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','TABNO',            cdsOKPERSONAL_NEW.FieldByName('TABNO').AsString            );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','EDUCATION_TITLE_CODE',            cdsOKPERSONAL_NEW.FieldByName('EDUCATION_TITLE_CODE').AsString            );

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','NPS_ID',            cdsOKPERSONAL_NEW.FieldByName('NPS_ID').AsString            );

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','BIRTHPLACE',     cdsOKPERSONAL_NEW.FieldByName('birthplace').AsString            );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','REGION_ID',      cdsOKPERSONAL_NEW.FieldByName('REGION_ID').AsString          );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','DISTR',          cdsOKPERSONAL_NEW.FieldByName('DISTR').AsString              );

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','EMP_CODE',UserId);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','NN',            cdsOKPERSONAL_NEW.FieldByName('NN').AsString            );
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','OK_INN',            cdsOKPERSONAL_NEW.FieldByName('INN').AsString            );

    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','COD_STR_BIRTH',cdsOKPERSONAL_NEW.FieldByName('COD_STR_BIRTH').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','COD_OBL_PRIM',cdsOKPERSONAL_NEW.FieldByName('COD_OBL_PRIM').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','COD_PLACE_BIRTH_PRIM',cdsOKPERSONAL_NEW.FieldByName('COD_PLACE_BIRTH_PRIM').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PASS_DATE_END',cdsOKPERSONAL_NEW.FieldByName('PASS_DATE_END').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','COD_STR_LIVE',cdsOKPERSONAL_NEW.FieldByName('COD_STR_LIVE').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','COD_OBL_LIVE',cdsOKPERSONAL_NEW.FieldByName('COD_OBL_LIVE').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','COD_OBL_LIVE_PRIM',cdsOKPERSONAL_NEW.FieldByName('COD_OBL_LIVE_PRIM').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','COD_DISTR_LIVE',cdsOKPERSONAL_NEW.FieldByName('COD_DISTR_LIVE').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','COD_DISTR_LIVE_PRIM',cdsOKPERSONAL_NEW.FieldByName('COD_DISTR_LIVE_PRIM').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','COD_DISTR_UVD',cdsOKPERSONAL_NEW.FieldByName('cod_distr_uvd').AsString);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PASSPORT_TYPE_CODE',            cdsOKPERSONAL_NEW.FieldByName('PASSPORT_TYPE_CODE').AsString            );


    execSQL('begin OK_SERVICE.NEW_COLLEAGUE; end;');
    v := GetSqlResultPAR('select Param.GetParam(:p_1) from dual','ID');
    id_ := v;

    ExecSQL('COMMIT');
    cdsOKPERSONAL_NEW.cancel;

//    showmessage('id_='+intTostr(id_) );
    cdsOKPersonal.BeforePost := nil;
    cdsOKPersonal.DisableControls;

//showmessage('cdsOKPersonal '  +SQL_OKPersonal + w);
    cdsOKPersonal.Close;
    with cdsOKPersonal.params
    do begin
          clear;
          CreateParam(ftString,'P_BRANCH' ,ptInput);
          ParamByName('P_BRANCH').Value := curBranch;

          CreateParam(ftInteger,'P_ID' ,ptInput);
          ParamByName('P_ID').Value := id_;
    end;
    LoadData(cdsOKPersonal,  SQL_OKPersonal + ' where p.branch=:P_BRANCH and id=:P_ID');
    cdsOKPersonal.Close;

    loaddata(cdsSS_OK_GOSUBMIT,'select * from SS_OK_GOSUBMIT');
// ���������� ���������-����-�����
    addLookUpField_OkPersonal;


    cdsOKPersonal.Open;
    cdsOKPersonal.EnableControls;

    cdsOKPersonal.BeforePost := cdsOK_BeforePost;

    bbGOTO_IIASClick(nil);
  except
    on E: Exception do
      Begin
        ExecSQL('ROLLBACK');
        If Pos(ERROR_NO, E.Message) <> 0 Then
          Begin
            erMessage := Copy(E.Message, Pos(ERROR_NO, E.Message) + Length(ERROR_NO), Length(E.Message));
            erMessage := Copy(erMessage, 1, Pos(#10, erMessage) - 1);
            E.Message := StringReplace(E.Message, #13, '', [rfReplaceAll]);
            E.Message := StringReplace(E.Message, #10, #13#10, [rfReplaceAll]);
            ShowErrorBox(erMessage,E.Message,Self.Caption);
          End
          Else ShowMessage(E.Message);
        exit;
      End;
  end;

  actNew.Checked     := False ;
  actTable.Checked   := True;
  actForm.Checked    := False;
  actRef.Checked     := False;
  actDetails.Checked := False;
  actReAccept.Checked   := False;

  actUndoChanges.Enabled := False;
  actNew.Enabled     := True;
  actTable.Enabled   := True;
  actForm.Enabled    := True;
  actRef.Enabled     := True;
  actDetails.Enabled := True;
  actReAccept.Enabled   := True;
  actFilter.Enabled  := True;

end;

procedure TBOKFormSTAT.cdsOKPersonal_NEWAfterOpen(DataSet: TDataSet);
begin

  cdsOKPersonal_NEW.FieldByName('birthday').EditMask  := '!09/09/0099;1;_';
  cdsOKPersonal_NEW.FieldByName('pass_date').EditMask := '!09/09/0099;1;_';
  cdsOKPersonal_NEW.FieldByName('pass_date_end').EditMask := '!09/09/0099;1;_';
  cdsOKPersonal_NEW.FieldByName('REG_DATE_END').EditMask := '!09/09/0099;1;_';
  cdsOKPersonal_NEW.FieldByName('srok_date').EditMask := '!09/09/0099;1;_';

end;

procedure TBOKFormSTAT.actDetailsExecute(Sender: TObject);
begin
  LastPanel := 'DetailsPanel';
  pcmainok.ActivePage := DetailsPanel_;

  actDetails.Checked := True ;

  actCopyPers.Checked     := False ;
  actNew.Checked     := False;
  actTable.Checked   := False;
  actTabel.Checked     := False ;
  actKurs.Checked     := False ;
  actForm.Checked    := False;
  actRef.Checked     := False;
  actRef2.Checked     := False;
  actReAccept.Checked   := False;

    if bosslevel<>'0' then actNew.Enabled         := True ;
  actUndoChanges.Enabled := False;
  OptionsPanel.Visible := False;
  ActDetailUndoExecute(nil);
  actiias.Checked := false;

  if not(cds_yesno.Active)
  then begin
    loaddata(cds_yesno,SQL_yesno);
  end;

end;

procedure TBOKFormSTAT.actOrderExecute(Sender: TObject);
begin
{
  If fmSaveOKOrder = nil Then fmSaveOKOrder := TfmOKOrder.Create(Self);

  With fmSaveOKOrder do
  Begin
      If ShowModal = mrOk Then
      Begin
        showmessage('OK');
      End;
  End;

  fmSaveOKOrder.Close;
  fmSaveOKOrder := nil;
}
end;

procedure TBOKFormSTAT.dbeOK_HOME_ADDRESSFACTChange(Sender: TObject);
begin


  if (BOKFormSTAT.cdsOKPersonal_NEW.State in [dsEdit, dsInsert])
  and (chbGluk.checked)
  then begin
     cdsOKPersonal_NEW.FieldByName('home_address').AsString := dbedHOME_ADDRESSFACT_.Text ;
     cdsOKPersonal_NEW.FieldByName('HOME_ADDRESS_REGION_ID').AsString :=
       cdsOKPersonal_NEW.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString ;
     cdsOKPersonal_NEW.FieldByName('HOME_ADDRESS_DISTR').AsString :=
       cdsOKPersonal_NEW.FieldByName('HOME_ADDRESSFACT_DISTR').AsString ;
  end;

end;

procedure TBOKFormSTAT.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   j, count_days ,number_day_:integer;
   sql_, s_:string;
//   d: tdata;
   day_date_ : tdatetime;
begin
//        showmessage(Sender.ClassName);
  Case Key of
    VK_F8:
      begin
        if (Sender.ClassType =TEdit) then
        begin
          tedit(sender).text:='';
        end;
        if (Sender.ClassType =TDBEdit) then
        begin
          if (not(tdbedit(sender).DataSource.DataSet.State in [dsEdit, dsInsert]))
          then tdbedit(sender).DataSource.DataSet.Edit;
          tdbedit(sender).DataSource.DataSet.FieldByName(tdbedit(sender).datafield).asstring:='';
          SelectNext(ActiveControl, True, True);
//          if tdbedit(sender).name = 'dbed_PASS_DATE_END'
//          then begin
//            cdsOKPersonal.FieldByName('pass_date_end').asstring := '';
//          end;
        end;
      end;
    VK_RETURN:
      begin
        SelectNext(ActiveControl, True, True);
        if (Sender.ClassType =TDBEdit) then
        begin
          if tdbedit(sender).name = 'dbed_date_recall_end'
          then begin
            if  (dbed_date_recall_end.text='  .  .    ') or
            (dbed_date_recall_end.text='')
            then begin
              showmessage('������� "���� ���������� ������"');
              dbed_date_recall_end.setfocus;
              exit;
            end;
            if  (dbed_date_recall_begin.text='  .  .    ') or
            (dbed_date_recall_begin.text='')
            then begin
              showmessage('������� "���� ������ ������"');
              dbed_date_recall_begin.SetFocus;
              exit;
            end;

            if not (cdsOKLeave.State in [dsEdit, dsInsert])
            then begin
              cdsOKLeave.edit;
            end;

            if (cdsOKLeave.FieldByName('date_recall_end').asString<>'')
            and     (cdsOKLeave.FieldByName('date_recall_begin').asString<>'')
            then begin
             cdsOKLeave.FieldByName('period_leave_recall').asInteger:=
//               1 + getsqlresult('select to_date('''+cdsOKLeave.FieldByName('date_recall_end').asString+''',''dd.mm.yyyy'')-'+
//               'to_date('''+cdsOKLeave.FieldByName('date_recall_begin').asString+''',''dd.mm.yyyy'')'+
//               ' from dual');
               1 + getsqlresultPAR('select to_date(:p_1,''dd.mm.yyyy'')-to_date(:p_2,''dd.mm.yyyy'') from dual',
                 cdsOKLeave.FieldByName('date_recall_end').asString,
                 cdsOKLeave.FieldByName('date_recall_begin').asString
               );
             end;

             edDay.text := s_ ;



          end else
          if tdbedit(sender).name = 'DBEDdate_in_leave'
          then begin
            if  (DBEDdate_in_leave.text='  .  .    ') or
            (DBEDdate_in_leave.text='')
            then begin
              showmessage('������� "���� ������ � ������"');
              DBEDdate_in_leave.setfocus;
              exit;
            end;
            if  (cdsOKLeave.FieldByName('period_leave').asString='')
            then begin
              showmessage('������� "���-�� ���� �������"');
              DBEdit63.SetFocus;
              exit;
            end;

            if not (cdsOKLeave.State in [dsEdit, dsInsert])
            then begin
              cdsOKLeave.edit;
            end;

            if cdsOKLeave.FieldByName('leave_CODE').asString='1'
            then begin
/////////////////////
              day_date_ := strtodate (DBEDdate_in_leave.text);
              s_:='';
              count_days:=0;
              while (cdsOKLeave.FieldByName('period_leave').asinteger<>
                 count_days)
              do begin
//                memo4.lines.add( datetostr(day_date_) +')'+inttostr(dayofweek(day_date_)) );
                if (dayofweek(day_date_) <> 1) // dayofweek(day_date_) <> 7) and ������� ������ � ����������
                then begin
                  number_day_:=0;
                  try
                    sql_:='select count(*) from Z_DN where pr=0 '+
                      ' and dn= to_date('''+datetostr(day_date_) +''',''dd.mm.yyyy'')';
//                      ' and to_char(dn,''D'') not in (7,1)';
                    number_day_:=(getsqlresult( sql_ ));
//                    memo4.lines.add(inttostr(number_day_));
                  except on e:exception
                    do begin
                      showmessage(e.Message+#13+sql_);
                    end
                  end;

                  if  number_day_=0
                  then begin
                     count_days:=count_days+1;
                     s_:=s_+'   '+ copy( datetostr(day_date_) ,1,2);
                  end else begin
                     s_:=s_+'   **' ;
                  end;

                end else begin
                     s_:=s_+'   **' ;
                end;
                day_date_:=day_date_+1;
              end;

              edDay.text:=s_;
              cdsOKLeave.FieldByName('date_out_leave').asDateTime:=
                day_date_-1;
/////////////////////
           end else begin
              s_:='����������� ���';
              count_days:=0;
              day_date_ := strtodate (DBEDdate_in_leave.text);
              while (cdsOKLeave.FieldByName('period_leave').asinteger<>
                 count_days)
              do begin
                     count_days:=count_days+1;
                     s_:=s_+'   '+ copy( datetostr(day_date_) ,1,2);
                     day_date_:=day_date_+1;
              end;
             // ��� ��������� ������� ����������� ���
             cdsOKLeave.FieldByName('date_out_leave').asDateTime:=
               cdsOKLeave.FieldByName('date_in_leave').asDateTime+
               cdsOKLeave.FieldByName('period_leave').asInteger-1;
             edDay.text := s_ ;

           end;
          end;
        end else begin
//          SelectNext(ActiveControl, True, True);
        end;
      end;
    VK_F1:
      begin
          If (Sender.ClassType = TCombobox) then
          begin
            if (TCombobox(Sender).Tag <> 0) and (TCombobox(Sender).Tag <> 21)
            then BOKFormSTAT.ViewRef( TCombobox(Sender).Tag );
            if (TCombobox(Sender).Tag = 21)
            then BOKFormSTAT.ViewRef( 0 );
          end;

          If (Sender.ClassType = TDBCombobox) Then
          begin
            if (TDBCombobox(Sender).Tag <> 0) and (TDBCombobox(Sender).Tag <> 21)
            then BOKFormSTAT.ViewRef( TDBCombobox(Sender).Tag );
            if (TDBCombobox(Sender).Tag = 21)
            then BOKFormSTAT.ViewRef( 0 );
          end;

          If (Sender.ClassType = TDBLookUpCombobox) Then
          begin
            if (TDBLookUpCombobox(Sender).Tag <> 0) and (TDBLookUpCombobox(Sender).Tag <> 21)
            then BOKFormSTAT.ViewRef( TDBLookUpCombobox(Sender).Tag );
            if (TDBLookUpCombobox(Sender).Tag = 21)
            then BOKFormSTAT.ViewRef( 0 );
          end;
       end;
    VK_F9:
      begin
///////////
      if (bokmainSTAT.BossLevel='0')
      and (sender<>cbdep)
      then begin
        showmessage('������ ��������: ������ �������� ������ ��� ������!!!');
        exit;
      end;
///////////
        if   (Sender = DBLCBinstitution)
        then begin
          lbInstitution.click;
          exit;
        end;

        if   (Sender = dblcbOKFamilyStatus) or (Sender = dblcbOKGender)
          or (Sender = DBLookupComboBox24) or (Sender = dblcbOKRegType)
          or (Sender = dblcbOKEducationTitle ) or (Sender = DBLookupComboBox19 )
          or (Sender = DBLookupComboBox18 ) or (Sender = DBLookupComboBox23 )
          or (Sender = DBLookupComboBox12 ) or (Sender = DBLookupComboBox21 )
          or (Sender = dblcbSSOKEducation) or (Sender = dblcbSSOKBasis)
          or (Sender = DBLookupComboBox6 ) or (Sender = DBLookupComboBox7 )
          or (Sender = DBLookupComboBox13 )
        then begin
          TDBLookUpCombobox(Sender).dropdown;
          exit;
        end;

//////////
///// �������� ������ � ������� source ///////
//////////

        if (Sender = dblcbS_STR)
          or (Sender = ed_iias_str) or (Sender = DBLCB_iias_str)
          or (Sender = ed_iias_live_str) or (Sender = DBLCB_iias_live_str)
        then
          LoadData(Source, SQL_S_STR_source ,True)
        else
        if (Sender = dblcbStaff)
        then
          LoadData(Source, SQL_SSOKstaff_source ,True)
        else
        if (Sender = dblcbTypeForce)
        then
          LoadData(Source, SQL_SSOKtypeForce_source ,True)
        else
        if (Sender = dblcbArmyGroup)
        then
          LoadData(Source, SQL_SSOKArmyGroup_source ,True)
        else
        if (Sender = dblcbCategoryArmy)
        then
          LoadData(Source, SQL_SSOKCategoryArmy_source ,True)
        else
        if (Sender = dblcbMilitaryrank)
        then
          LoadData(Source, SQL_SSOKMilitaryrank_source ,True)
        else
        if (Sender = dblcbelection)
        then
          LoadData(Source, SQL_SSOKelection_source ,True)
        else
        if (Sender = dblcbParty)
        then
          LoadData(Source, SQL_SSOKparty_source ,True)
        else
        if (Sender = dblcbYouth)
        then
          LoadData(Source, SQL_SSOKyouth_source ,True)
        else
        if (Sender = dblcbPenalty)
        then
          LoadData(Source, SQL_SSOKpenalty_source ,True)
        else
        if (Sender = dblcbBaseMove)
        then
          LoadData(Source, SQL_SSOKbasemove_source ,True)
        else
        if (Sender = dblcbTypeperiod)
        then
          LoadData(Source, SQL_SSOKtypeperiod_source ,True)
        else
        if (Sender = dblcbArticle)
        then
          LoadData(Source, SQL_SSOKarticle_source ,True)
        else
        if (Sender = DBLCBrelation)
        then
          LoadData(Source, SQL_SSOKrelation_source ,True)
        else
        if (Sender =  DBLCBlangLevel)
        then
          LoadData(Source, SQL_SSOKlevellanguage_source ,True)
        else
        if (Sender = DBLCBlang)
        then
          LoadData(Source, SQL_SSOKlanguage_source ,True)
        else
        if (Sender = dblcbSSOKdegree)
        then
          LoadData(Source, SQL_SSOKdegree_source ,True)
        else
        if (Sender = dblcbSSOKAcademic)
        then
          LoadData(Source, SQL_SSOKAcademic_source ,True)
        else
        if (Sender = dblcbSSOKQualification)
        then
          LoadData(Source, SQL_SSOKQualification_source ,True)
        else
//        if   (Sender = DBEd_Distr) or (Sender = DBLCBdistr)
//          or (Sender = dbeOKdistr) or (Sender = DBLCBokdistr)
          if (Sender= ed_iias_birth_distr) or (Sender= dblcb_iias_birth_distr)
          or (sender= ed_iias_live_distr)  or (sender= dblcb_iias_live_distr)
          or (sender= ed_iias_live_distr)  or (sender= dblcb_iias_live_distr)
          or (sender= ed_iias_uvd_distr)  or (sender= dblcb_iias_uvd_distr)
        then
                   BOKFormSTAT.LoadData(Source,SQL_Sdistr_source,True)
        else
                 if (Sender = DBEDnationality) or (Sender = DBLCBnationality)
                 or (Sender = dbeOKNationality) or (Sender =  dblcbOKNationality)
                 then
                   BOKFormSTAT.LoadData(Source,SQL_SSOKNationality_source,True)
                 else
               //  if (Sender = DBEd_Region) or (Sender = DBLCB_SRegion)
               //  or (Sender = dbeokRegion) or (Sender = DBLCBokregion)
                 if (Sender = ed_iias_birth_region) or (Sender = dblcb_iias_birth_region)
                 or (sender=ed_iias_live_region) or (sender=dblcb_iias_live_region)
                 then
                   BOKFormSTAT.LoadData(Source,SQL_SRegion_source,True)
                 else
                 If (Sender = CBDep) or (Sender = edDep)
                 or (Sender = DBEd_depstring)
                 or (Sender = DBEd_depstring2)
                 or (Sender = DBlcb_depstring3)
                 Then
                   if bosslevel='0'
                   then begin
                      Source.close;
                      with Source.Params
                      do begin
                          clear;
                          CreateParam(ftString,'p_1' ,ptInput);
                          ParamByName('p_1').Value := 'A';
                          CreateParam(ftInteger,'p_2' ,ptInput);
                          ParamByName('p_2').Value := strtoint(BossLevel);
                      end;
                     BOKFormSTAT.LoadData(Source,'SELECT to_char(department_code) id, department_name name'+
                     ' FROM ss_ok_department'+
                     ' WHERE state_notes=:p_1 and level_department_code in(:p_2)'+
                     ' order by department_code',True)
                   end else begin
                      Source.close;
                      with Source.Params
                      do begin
                          clear;
                          CreateParam(ftString,'p_1' ,ptInput);
                          ParamByName('p_1').Value := 'A';
                          CreateParam(ftInteger,'p_2' ,ptInput);
                          ParamByName('p_2').Value := strtoint(BossLevel);
                      end;
                     BOKFormSTAT.LoadData(Source,'SELECT to_char(department_code) id, department_name name'+
                     ' FROM ss_ok_department'+
                     ' WHERE state_notes=:p_1 and level_department_code in(:p_2)'+
                     ' order by department_code',True)
                   end
                 else
                 If (Sender = CBSpecial) or (Sender = edSpecial)
                 Then begin
                      Source.close;
                      with Source.Params
                      do begin
                          clear;
                          CreateParam(ftString,'p_1' ,ptInput);
                          ParamByName('p_1').Value := 'A';
                      end;
                   BOKFormSTAT.LoadData(Source,'SELECT to_char(special_code) id, special_name name'+
                     ' FROM ss_ok_special'+
                     ' WHERE state_notes=:p_1'+
                     ' order by special_code',True);
                 end else
        If (Sender = DBLCBpost) or (Sender = DBEdPost)
        or (Sender = DBEd_poststring) or (Sender = DBEd_poststring2)
        or (sender=DBlcb_poststring3)
        Then begin
          mfo_category_type_code_proc;
        end;
//// ����� �� ����� ���� �� ���������� F9 � ���������� ����������� Source /////
/////////
        IF
           (Sender = DBLCBpost) or (Sender = DBEdPost)
        or (Sender = DBEd_poststring) or (Sender = DBEd_poststring2)
        or (sender=DBlcb_poststring3)
        or
        (sender = dblcbS_STR)
          or (Sender = ed_iias_str) or (Sender = DBLCB_iias_str)
          or (Sender = ed_iias_live_str) or (Sender = DBLCB_iias_live_str)
        or (Sender = CBDep) OR (Sender = edDep)
                OR (Sender = cbSpecial) OR (Sender = edSpecial)
        or (Sender = dblcbStaff)
        or (Sender = dblcbTypeForce)
        or (Sender = dblcbArmyGroup)
        or (Sender = dblcbCategoryArmy)
        or (Sender = dblcbMilitaryrank)
                OR (Sender = DBLCBpost) OR (Sender = DBEdPost)
//                 or (Sender = DBEd_Distr) or (Sender = DBLCBdistr)
                 or (Sender = DBEDnationality) or (Sender = DBLCBnationality)
                 or (Sender = dbeOKNationality) or (Sender =  dblcbOKNationality)
                 or (Sender = dbeokRegion) or (Sender = DBLCBokregion)
//        or (Sender = DBEd_Region) or (Sender = DBLCB_SRegion)
        or (sender=ed_iias_live_region)  or (sender=dblcb_iias_live_region)
        or (sender=ed_iias_birth_region) or (sender=dblcb_iias_birth_region)
                 or (Sender = dbeOKdistr) or (Sender = DBLCBokdistr)
        or (Sender=ed_iias_birth_distr) or (Sender = dblcb_iias_birth_distr)
        or (Sender=ed_iias_live_distr) or (Sender = dblcb_iias_live_distr)
        or (Sender=ed_iias_uvd_distr) or (Sender = dblcb_iias_uvd_distr)
                 or (Sender = dblcbSSOKQualification)
                 or (Sender = dblcbSSOKAcademic)
                 or (Sender = dblcbSSOKdegree)
          or (Sender = DBLCBlang)  or (Sender =  DBLCBlangLevel)
          or (Sender = DBLCBrelation)
          or (Sender = dblcbBaseMove)  or (Sender = dblcbTypeperiod )
          or (Sender = dblcbArticle)
          or (Sender = dblcbelection)
          or (Sender = dblcbParty)
          or (Sender = dblcbYouth)
          or (Sender = dblcbPenalty)
                 or (Sender = DBEd_poststring)
                 or (Sender = DBEd_depstring)
                 or (Sender = DBEd_poststring2)
                 or (Sender = DBEd_depstring2)
                 or (Sender = DBlcb_poststring3)
                 or (Sender = DBlcb_depstring3)
        THEN BEGIN
          Source.Edit;
          With TSelectDialog.CreateEx(Self, Source, Source, Source.FindField('id').Index) do
          Try
            If ShowModal = mrOk
            Then begin
//                      TEdit(Sender).Text := Source.FieldByName('ID').AsString;
//////////// \\\\\\\\\\\\\
              if (sender=ed_iias_live_region) or (sender=dblcb_iias_live_region)
              then begin
                if not (cdsOKpersonal.State in [dsEdit, dsInsert])
                then cdsOKpersonal.Edit;
                cdsOKpersonal.FieldByName('cod_obl_live').AsString :=
                  Source.FieldByName('id').AsString;
                cdsOKpersonal.FieldByName('cod_obl_live_prim').AsString :=
                  Source.FieldByName('name').AsString;
              end;
//////////// \\\\\\\\\\\\\
              if (Sender = ed_iias_live_str) or (Sender = DBLCB_iias_live_str)
              then begin
                if not (cdsOKpersonal.State in [dsEdit, dsInsert])
                then cdsOKpersonal.Edit;
                cdsOKpersonal.FieldByName('COD_STR_LIVE').AsString :=
                  Source.FieldByName('id').AsString;
//                cdsOKpersonal.FieldByName('voyage_land').AsString :=
//                  Source.FieldByName('name').AsString;
              end;
//////////// \\\\\\\\\\\\\
              if (Sender = ed_iias_str) or (Sender = DBLCB_iias_str)
              then begin
                if not (cdsOKpersonal.State in [dsEdit, dsInsert])
                then cdsOKpersonal.Edit;
                cdsOKpersonal.FieldByName('COD_STR_BIRTH').AsString :=
                  Source.FieldByName('id').AsString;
//                cdsOKpersonal.FieldByName('voyage_land').AsString :=
//                  Source.FieldByName('name').AsString;
              end;
//////////// \\\\\\\\\\\\\
              if (Sender = dblcbS_Str)
              then begin
                if not (cdsOKvoyage.State in [dsEdit, dsInsert])
                then cdsOKvoyage.Edit;
                cdsOKvoyage.FieldByName('voyage_str').AsString :=
                  Source.FieldByName('id').AsString;
                cdsOKvoyage.FieldByName('voyage_land').AsString :=
                  Source.FieldByName('name').AsString;
              end;
//////////// \\\\\\\\\\\\\
              if (Sender = dblcbStaff)
              then begin
                if not (cdsOKarmy.State in [dsEdit, dsInsert])
                then cdsOKarmy.Edit;
                cdsOKarmy.FieldByName('staff_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;
//////////// \\\\\\\\\\\\\
              if (Sender = dblcbTypeForce)
              then begin
                if not (cdsOKarmy.State in [dsEdit, dsInsert])
                then cdsOKarmy.Edit;
                cdsOKarmy.FieldByName('type_force_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;
//////////// \\\\\\\\\\\\\
              if (Sender = dblcbArmyGroup)
              then begin
                if not (cdsOKarmy.State in [dsEdit, dsInsert])
                then cdsOKarmy.Edit;
                cdsOKarmy.FieldByName('army_group_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;
//////////// \\\\\\\\\\\\\
              if (Sender = dblcbCategoryArmy)
              then begin
                if not (cdsOKarmy.State in [dsEdit, dsInsert])
                then cdsOKarmy.Edit;
                cdsOKarmy.FieldByName('category_army_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;
//////////// \\\\\\\\\\\\\
              if (Sender = dblcbMilitaryrank)
              then begin
                if not (cdsOKarmy.State in [dsEdit, dsInsert])
                then cdsOKarmy.Edit;
                cdsOKarmy.FieldByName('military_rank_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;
//////////// \\\\\\\\\\\\\
//////////// \\\\\\\\\\\\\
//////////// \\\\\\\\\\\\\
              if (Sender = dblcbelection)
              then begin
                if not (cdsOKelection.State in [dsEdit, dsInsert])
                then cdsOKelection.Edit;
                cdsOKelection.FieldByName('election_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = dblcbParty)
              then begin
                if not (cdsOKparty.State in [dsEdit, dsInsert])
                then cdsOKparty.Edit;
                cdsOKparty.FieldByName('party_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = dblcbYouth)
              then begin
                if not (cdsOKyouth.State in [dsEdit, dsInsert])
                then cdsOKyouth.Edit;
                cdsOKyouth.FieldByName('youth_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = dblcbPenalty)
              then begin
                if not (cdsOKpenalty.State in [dsEdit, dsInsert])
                then cdsOKpenalty.Edit;
                cdsOKpenalty.FieldByName('penalty_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = dblcbBaseMove)
              then begin
                if not (cdsOKPeriod.State in [dsEdit, dsInsert])
                then cdsOKPeriod.Edit;
                cdsOKPeriod.FieldByName('base_move_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = dblcbTypeperiod )
              then begin
                if not (cdsOKPeriod.State in [dsEdit, dsInsert])
                then cdsOKPeriod.Edit;
                cdsOKPeriod.FieldByName('type_period_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = dblcbArticle)
              then begin
                if not (cdsOKPeriod.State in [dsEdit, dsInsert])
                then cdsOKPeriod.Edit;
                cdsOKPeriod.FieldByName('article_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = DBLCBrelation)
              then begin
                if not (cdsOKrelation.State in [dsEdit, dsInsert])
                then cdsOKrelation.Edit;
                cdsOKrelation.FieldByName('relation_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = DBLCBlang)
              then begin
                if not (cdsOKlanguage.State in [dsEdit, dsInsert])
                then cdsOKlanguage.Edit;
                cdsOKlanguage.FieldByName('language_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender =  DBLCBlangLevel)
              then begin
                if not (cdsOKlanguage.State in [dsEdit, dsInsert])
                then cdsOKlanguage.Edit;
                cdsOKlanguage.FieldByName('level_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = dblcbSSOKQualification)
              then begin
                if not (cdsOKEducation.State in [dsEdit, dsInsert])
                then cdsOKEducation.Edit;
                cdsOKEducation.FieldByName('qualification_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = dblcbSSOKAcademic)
              then begin
                if not (cdsOKacademic.State in [dsEdit, dsInsert])
                then cdsOKacademic.Edit;
                cdsOKacademic.FieldByName('academic_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;

              if (Sender = dblcbSSOKdegree)
              then begin
                if not (cdsOKdegree.State in [dsEdit, dsInsert])
                then cdsOKdegree.Edit;
                cdsOKdegree.FieldByName('degree_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;
/////////// \\\\\\\\\\\

                 If (Sender = CBDep) or (Sender = edDep)
              Then begin
                        edDep.text:= Source.FieldByName('id').AsString;
                        edDepChange(Sender);
              end;

//////////// \\\\\\\\\\\\\
                If (Sender = DBEd_depstring)
                 or (Sender = DBEd_depstring2)
                 or (Sender = DBlcb_depstring3)
              Then begin
                if not (cdsOKperiod.State in dsEditModes)
                then cdsOKperiod.edit;

                cdsOKperiod.FieldByName('established_department').AsString :=
                  Source.FieldByName('name').AsString;
//                        DBEd_depstring2.text:= Source.FieldByName('id').AsString;
                        cdsOKperiod.FieldByName('department_code').AsString:=Source.FieldByName('id').AsString;;

              end;
///////////
///////////


              If (Sender = DBEd_poststring) or (Sender = DBEd_poststring2)
              or (sender=DBlcb_poststring3)
              Then begin
                if not (cdsOKperiod.State in dsEditModes)
                then cdsOKperiod.edit;

                cdsOKperiod.FieldByName('established_post').AsString :=
                  Source.FieldByName('name').AsString;
//                        DBEd_poststring2.text:= Source.FieldByName('id').AsString;
                        cdsOKperiod.FieldByName('post_code').AsString:=Source.FieldByName('id').AsString;;
              End;
///////////
              if (sender=ed_iias_uvd_distr) or (sender=dblcb_iias_uvd_distr)
              Then begin
                if not (cdsOKPersonal.State in [dsEdit, dsInsert])
                then cdsOKPersonal.Edit;
                cdsOKPersonal.fieldbyname('cod_distr_uvd').asstring := Source.FieldByName('id').AsString;
              end;
///////////
              if (sender=ed_iias_live_distr) or (sender=dblcb_iias_live_distr)
              Then begin
                if not (cdsOKPersonal.State in [dsEdit, dsInsert])
                then cdsOKPersonal.Edit;
                cdsOKPersonal.fieldbyname('cod_distr_live').asstring := Source.FieldByName('id').AsString;
                cdsOKPersonal.fieldbyname('cod_distr_live_prim').asstring := Source.FieldByName('name').AsString;
              end;
///////////
//              if (Sender = DBEd_Distr) or (Sender = DBLCBdistr)
              if    (sender=ed_iias_birth_distr) or (sender=dblcb_iias_birth_distr)
              Then begin
                if not (cdsOKPersonal.State in [dsEdit, dsInsert])
                then cdsOKPersonal.Edit;
                cdsOKPersonal.fieldbyname('distr').asstring := Source.FieldByName('id').AsString;
                cdsOKPersonal.fieldbyname('cod_place_birth_prim').asstring := Source.FieldByName('name').AsString;
              end;

              if (Sender = dbeOKdistr) or (Sender = DBLCBokdistr)
              Then begin
                cdsOKPersonal_New.fieldbyname('distr').asstring := Source.FieldByName('id').AsString;
              end;

              if (Sender = DBEDnationality) or (Sender = DBLCBnationality)
              Then begin
                if not (cdsOKPersonal.State in [dsEdit, dsInsert])
                then cdsOKPersonal.Edit;
                cdsOKPersonal.fieldbyname('nationality_code').asstring := Source.FieldByName('id').AsString;
              end;

              if (Sender = dbeOKNationality) or (Sender =  dblcbOKNationality)
              Then begin
                cdsOKPersonal_New.fieldbyname('nationality_code').asstring := Source.FieldByName('id').AsString;
              end;

//              if (Sender = DBEd_Region) or (Sender = DBLCB_SRegion)
              if (Sender = ed_iias_birth_region) or (Sender = dblcb_iias_birth_region)
              Then begin
                if not (cdsOKPersonal.State in [dsEdit, dsInsert])
                then cdsOKPersonal.Edit;
                        cdsOKPersonal.fieldbyname('region_id').asstring := Source.FieldByName('id').AsString;
                  cdsOKPersonal.fieldbyname('cod_obl_prim').asstring := Source.FieldByName('name').AsString;
              end;

              if (Sender = dbeokRegion) or (Sender = DBLCBokregion)
              Then begin
                cdsOKPersonal_New.fieldbyname('region_id').asstring := Source.FieldByName('id').AsString;
              end;

///////////

            End;
          Finally
            Destination.Filtered:=false;
            Free;
          End;

        END;
//
      end;
  End;


end;

procedure TBOKFormSTAT.dbeDetailsPCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var code_ : string; // w,
//    v:       Variant;
begin
  Case Key of
    VK_RETURN:
      begin
        code_ := dbeDetailsPCode.Text;

        cdsOKPersonal.Cancel;
        try
          StrToInt(code_);
        except
          ShowMessage('��������� � ��������� ������� ''' + code_ + ''' �� ��������� '''+Branch+'''  �� ����� ���� ������!');
          exit;
        end;

        if not cdsSSokStatus_SET.Active then LoadData(cdsSSokStatus_SET,     SQL_ssokStatus_SET);
        if not cdsSSokgender_SET.Active then LoadData(cdsSSokgender_SET,     SQL_ssokgender_SET);
        if not cdsSSokNATIONALITY_SET.Active then   LoadData(cdsSSOKNATIONALITY_SET,     SQL_SSOKNATIONALITY_SET);
        if not cdsSSokFAMILYSTATUS_SET.Active then  LoadData(cdsSSOKFAMILYSTATUS_SET,    SQL_SSOKFAMILYSTATUS_SET);
        if not cdsSSokREGTYPE_SET.Active then   LoadData(cdsSSOKREGTYPE_SET,     SQL_SSOKREGTYPE_SET);

        cdsOKPersonal.DisableControls;
        cdsOKPersonal.close;
        with cdsOKPersonal.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
            CreateParam(ftInteger,'p_2' ,ptInput);
            ParamByName('p_2').Value := strtoint(code_);
        end;

//        w := ' where p.branch='+''''+curBranch+''' and tabno=' + code_;
        LoadData(cdsOKPersonal,      SQL_OKPersonal + ' where p.branch=:p_1 and tabno=:p_2' );
        cdsOKPersonal.Close;

  loaddata(cdsSS_OK_GOSUBMIT,'select * from SS_OK_GOSUBMIT');
// ���������� ���������-����-�����
  addLookUpField_OkPersonal;
// END ���������� ���������-����-�����

        cdsOKPersonal.Open;
        cdsOKPersonal.EnableControls;
        If cdsOKPersonal.IsEmpty Then
        Begin
//          v := GetSqlResult('SELECT OK_SERVICE.FIND('''+Branch+''','''+code_+''') FROM dual');
//          If VarToStr(v) <> '' Then ShowMessage('��������� � ����� ' + code_ + ' �� ��������� '''+Branch+''' ��������� � ��������� '+v);
//          Else
          ShowMessage('��������� � ��������� ������� ' + code_ + ' �� ��������� '''+Branch+'''  �� ������!');
        End;

      end;

  End;
end;

procedure TBOKFormSTAT.dbeDetailsPCodeExit(Sender: TObject);
begin
  cdsOKPersonal.Cancel;
end;

procedure TBOKFormSTAT.cdsOK_BeforePost(DataSet: TDataSet);
begin


// ��������������: ������������ ��� ������ ��������� ������������!!!
//  DataSet.Fields.FieldByName('personal_code').AsInteger := cdsOKPersonal.Fields.FieldByName('personal_code').AsInteger;
  if bosslevel='0'
  then begin
    ShowMessage('������.'+#13+'� ������ ���� ������ ������ ��� ������!');
    abort;
  end;

  if DataSet.Fields.FieldByName('personal_code').IsNull
  then begin
    ShowMessage('������.'+#13+'�� ������ ���������!');
    abort;
  end;

   DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
   DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
   DataSet.Fields.FieldByName('branch').AsString := Branch;

  if (DataSet=cdsOKPhotoBMP) or (DataSet=cdsOKPhoto)
  then DataSet.Fields.FieldByName('priznak').AsString := '1';

end;

procedure TBOKFormSTAT.cdsOK_AfterPost(DataSet: TDataSet);
//var ErMessage : string;
begin
// ��������������: ������������ ��� ������ ��������� !!!

      Try
        SaveData(DataSet);
        ExecSQL('COMMIT');
        DataSet.Refresh;
      Except
        on E: Exception do
          Begin
            ExecSQL('ROLLBACK');
            TCLientDataSet(DataSet).UndoLastChange(True);
            ShowMessage('������ ��� ����������.'+#13+E.Message);
            Abort;
          End;
      End;

end;

procedure TBOKFormSTAT.TabOKEducation_0Show(Sender: TObject);
begin

  if cdsOKEducation.Active then
  Begin
//    ShowMessage('1:'+IntToStr(cdsOKEducation.RecordCount));
    Exit;
  End;

        cdsOKEducation.close;
        with cdsOKEducation.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKEducation, SQL_OKEducation+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKEducation, SQL_OKEducation+' where branch=:p_1');

  cdsOKEducation.Close;
  cdsOKEducation.DisableControls;
  if not cdsSSOKEducation_Set.Active then LoadData(cdsSSOKEducation_Set, SQL_SSOKEducation_Set);
  if not cdsSSOKInstitution_Set.Active then LoadData(cdsSSOKInstitution_Set, SQL_SSOKInstitution_Set);
  if not cdsSSOKBasis_Set.Active then LoadData(cdsSSOKBasis_Set, SQL_SSOKBasis_Set);
  if not cdsSSOKQualification_Set.Active then LoadData(cdsSSOKQualification_Set, SQL_SSOKQualification_Set);

  addLookUpField(cdsOKEducation, cdsSSokEducation_Set, 'education_code_show', 'education_code', 'education_code', 'education_name', True);
  addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
  addLookUpField(cdsOKEducation, cdsSSOkBasis_Set, 'basis_code_show', 'basis_code', 'basis_code', 'basis_name', False);
  addLookUpField(cdsOKEducation, cdsSSOkQualification_Set, 'qualification_code_show', 'qualification_code', 'qualification_code', 'qualification_name', False);
  addLookUpField(cdsOKeducation, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);
  addLookUpField(cdsOKeducation, cdsSS_OK_vid_education, 'vid_education_code_show', 'vid_education_code', 'vid_education_code', 'vid_education_NAME', False);

  cdsOKEducation.Open;
  cdsOKEducation.EnableControls;
//  ShowMessage('2:'+IntToStr(cdsOKEducation.RecordCount));
end;

procedure TBOKFormSTAT.ActDetailNewExecute(Sender: TObject);
begin

  Case PCDetails.ActivePageIndex of
    0: If cdbgOKEducation.CanFocus Then
         Begin
           cdsOKEducation.cancel;
           cdbgOKEducation.Focused;
           cdsOKEducation.Insert;
         end;
    1: If cdbgOKacademic.CanFocus Then
         Begin
           cdsOKacademic.cancel;
           cdbgOKacademic.Focused;
           cdsOKacademic.Insert;
         end;
    2: If cdbgOKDegree.CanFocus Then
         Begin
           cdsOKDegree.cancel;
           cdbgOKDegree.Focused;
           cdsOKDegree.Insert;
         end;
    3: If cdbgOKaward.CanFocus Then
         Begin
           cdsOKaward.cancel;
           cdbgOKaward.Focused;
           cdsOKaward.Insert;
         end;
    4: If cdbgOKScientific.CanFocus Then
         Begin
           cdsOKScientific.cancel;
           cdbgOKScientific.Focused;
           cdsOKScientific.Insert;
         end;
    5: If cdbgOKVoyage.CanFocus Then
         Begin
           cdsOKVoyage.cancel;
           cdbgOKVoyage.Focused;
           cdsOKVoyage.Insert;
         end;
    6: If cdbgOKLanguage.CanFocus Then
         Begin
           cdsOKLanguage.cancel;
           cdbgOKLanguage.Focused;
           cdsOKLanguage.Insert;
         end;
    7: If cdbgOKRelation.CanFocus Then
         Begin
           cdsOKRelation.cancel;
           cdbgOKRelation.Focused;
           cdsOKRelation.Insert;
         end;
    8: If cdbgOKPeriod.CanFocus
       Then Begin
         cdsOKPeriod.cancel;
         cdbgOKPeriod.Focused;
         cdsOKPeriod.Insert;
       End;
    9: If cdbgOKRise.CanFocus Then
         Begin
           cdsOKRise.cancel;
           cdbgOKRise.Focused;
           cdsOKRise.Insert;
         end;
    10: If cdbgOKElection.CanFocus Then
         Begin
           cdsOKElection.cancel;
           cdbgOKElection.Focused;
           cdsOKElection.Insert;
         end;
    11: If cdbgOKPremium.CanFocus Then
         Begin
           cdsOKPremium.cancel;
           cdbgOKPremium.Focused;
           cdsOKPremium.Insert;
         end;
    12: If cdbgOKArmy.CanFocus Then
         Begin
           cdsOKArmy.cancel;
           cdbgOKArmy.Focused;
           cdsOKArmy.Insert;
         end;
    13: If cdbgOKParty.CanFocus Then
         Begin
           cdsOKParty.cancel;
           cdbgOKParty.Focused;
           cdsOKParty.Insert;
         end;
    14: If cdbgOKYouth.CanFocus Then
         Begin
           cdsOKYouth.cancel;
           cdbgOKYouth.Focused;
           cdsOKYouth.Insert;
         end;
//    15: If cdbgOKPost.CanFocus Then
//         Begin
//           cdbgOKPost.Focused;
//           cdsOKPost.Insert;
//         end;
    15: If cdbgOKLeave.CanFocus Then
         Begin
           cdsOKLeave.cancel;
           cdbgOKLeave.Focused;
           cdsOKLeave.Insert;
         end;
    16: If cdbgOKConvictions.CanFocus Then
         Begin
           cdsOKConvictions.cancel;
           cdbgOKConvictions.Focused;
           cdsOKConvictions.Insert;
         end;
    17: If cdbgOKAddInform.CanFocus Then
         Begin
           cdsOKAddInform.cancel;
           cdbgOKAddInform.Focused;
           cdsOKAddInform.Insert;
         end;
    18: If cdbgOKPenalty.CanFocus Then
         Begin
           cdsOKPenalty.cancel;
           cdbgOKPenalty.Focused;
           cdsOKPenalty.Insert;
         end;
    19: If cdbgOKChangeFIO.CanFocus Then
         Begin
           cdsOKChangeFIO.cancel;
           cdbgOKChangeFIO.Focused;
           cdsOKChangeFIO.Insert;
         end;
    20: begin
    // ���� ��-�������
        end;
    21: If cdbgOKhospital.CanFocus Then
         Begin
            cdsOKhospital.cancel;
           cdbgOKhospital.Focused;
            cdsOKhospital.Insert;
         end;
    22: If cdbgOKprivilege.CanFocus Then
         Begin
            cdsOKprivilege.cancel;
           cdbgOKprivilege.Focused;
            cdsOKprivilege.Insert;
         end;
    23: If cdbgOKincrease.CanFocus Then
         Begin
            cdsOKincrease.cancel;
           cdbgOKincrease.Focused;
            cdsOKincrease.Insert;
         end;
    24: If cdbgok_business_voyage.CanFocus Then
         Begin
            cdsok_business_voyage.cancel;
           cdbgok_business_voyage.Focused;
            cdsok_business_voyage.Insert;
         end;
    26: If CDBGok_zp_rate.CanFocus Then
         Begin
            cdsok_zp_rate.cancel;
           cdbgok_zp_rate.Focused;
            cdsok_zp_rate.Insert;
         end;
    27: If CDBGok_freedays.CanFocus Then
         Begin
            CDsok_freedays.cancel;
           CDBGok_freedays.Focused;
            CDsok_freedays.Insert;
         end;
  End;

end;

procedure TBOKFormSTAT.ActDetailSaveExecute(Sender: TObject);
var S_ID,sql_,check_date_message_, birthplace_, er_mes: string;
 z,raznica:integer;
  v:variant;
begin
//showmessage(inttostr(PCDetails.ActivePageIndex));

 Case PCDetails.ActivePageIndex of
  0: If (cdsOKEducation.State in dsEditModes) and (cdbgOKEducation.CanFocus)
     Then begin
// �����������
//
        er_mes:='';
        if not (cdsOKEducation.FieldByName('nostra_date').IsNull)
        then begin
          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
          cdsOKEducation.FieldByName('nostra_date').AsString,cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
          if (cdsOKEducation.FieldByName('nostra_date').asdatetime < cdsokpersonal.fieldbyname('birthday').asdatetime)
          or (raznica<20)
          then begin
            er_mes:=er_mes+'������� ���� ������������� '+cdsOKEducation.FieldByName('nostra_date').AsString+
              ' � ���� �������� '+cdsOKPersonal.FieldByName('BIRTHDAY').AsString+' ���������� �� ������ ���� ������ 20  � ������ �������� ����������'+#13;
          end;

        end;

        if (cdsOKEducation.FieldByName('nostra').AsString='1') // ����
        and ((cdsOKEducation.FieldByName('nostra_number').IsNull) or (cdsOKEducation.FieldByName('nostra_date').IsNull))
        then begin
          er_mes:=er_mes+'���� ������ �������� �������� ������������� ��� �1� (����), �� ��������� ������ � ���� ������������� ������ ���� ��������� �����������'+#13;
//          showmessage('���� ������ �������� �������� ������������� ��� �1� (����), �� ��������� ������ � ���� ������������� ������ ���� ��������� �����������');
        end;

        try
          if not (cdsOKEducation.FieldByName('diplom_date').IsNull)
          then
          if (cdsOKEducation.FieldByName('diplom_date').asdatetime>now)
          or (cdsOKEducation.FieldByName('diplom_date').asdatetime<
            strtodate( cdsOKEducation.FieldByName('end_date_dd').asstring+'.'+cdsOKEducation.FieldByName('end_date_mm').asstring+'.'+
                        cdsOKEducation.FieldByName('end_date').asstring ))
          then begin
            er_mes:=er_mes+'���� ������ ������� �� ������ ���� ������ ������� ���� � ������ ���� ��������� �������� ���������'+#13;
          end;
        except
            er_mes:=er_mes+'(6455) ��������� ���� ��������� �������� ���������'+#13;
        end;

        if (cdsOKEducation.FieldByName('end_date').IsNull)
        and (cdsOKEducation.FieldByName('curs').IsNull)
        then begin
          er_mes:=er_mes+'���� �������� ����� ��������� �������� ���������� �� ������, �� ����������� ������ ���� �������� �������� �����'+#13;
        end;

        if (cdsOKEducation.FieldByName('profession_personal').IsNull)
        then begin
          v:=getsqlresultpar('select s_id from ss_ok_nci where nci_id=:p_1 and ok_id=:p_2','74',cdsokpersonal.fieldbyname('education_title_code').asstring);
          if not varisnull(v)
          then begin
            if ((vartostr(v)='3') or (vartostr(v)='4') or (vartostr(v)='5'))
            and (cdsOKEducation.FieldByName('profession_personal').IsNull)
            then er_mes:=er_mes+'(05962)���� �������� ���� ������������ � ���������� 09-001 ������ ��� (3,4,5), �� �������� ��������������� ������ ���� ������ �����������'+#13;
          end;
        end;


        if (cdsOKEducation.FieldByName('begin_date').IsNull)
        and ( (not cdsOKEducation.FieldByName('begin_date_mm').IsNull) or (not cdsOKEducation.FieldByName('begin_date_dd').IsNull) )
        then begin
          er_mes:=er_mes+'���� ��� ���� ����������� �� ������, �� ����� � ����� ���� ����������� �� ������ �����������'+#13;
        end;

        if (cdsOKEducation.FieldByName('end_date').IsNull)
        and ( (not cdsOKEducation.FieldByName('end_date_mm').IsNull) or (not cdsOKEducation.FieldByName('end_date_dd').IsNull) )
        then begin
          er_mes:=er_mes+'���� ��� ���� ��������� �� ������, �� ����� � ����� ���� ��������� �� ������ �����������'+#13;
        end;

        try
          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
          cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString,
          cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
          if (strtodate(cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString) > now)
          or (raznica < 15)
          then begin
            er_mes:=er_mes+'(05958)������� ���� ����������� � ���� �������� ������ ���� ������ 15 ��� � ������ �������� ����������'+#13;
          end;
        except
            er_mes:=er_mes+'��������� ���� ����������� '+cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString+#13;
        end;

        try
          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
          cdsOKEducation.FieldByName('end_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('end_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('end_date').AsString,
          cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString,
          '12');
          if (raznica > 20) or (raznica < 1)
          then begin
            er_mes:=er_mes+'(05960)������� ���� ��������� � ���� ����������� � ������� ��������� �� ������ ���� ������ 20 ��� � ������ 1 ����'+#13;
          end;
        except
            er_mes:=er_mes+'��������� ���� ����������� '+cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString+' � ���� ��������� '+
          cdsOKEducation.FieldByName('end_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('end_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('end_date').AsString+ ' �������� ���������'+
          #13;
        end;

{
        if
        then begin
          er_mes:=er_mes+''+#13;
        end;
}
        if cdsOKEducation.FieldByName('education_end').AsString='1' // ��
        then begin
          cdsOKEducation.FieldByName('curs').AsString:='';
          DBEdit85.Enabled:=false;
          DBEdit74.Enabled:=true;
        end else begin
          DBEdit74.Enabled:=false;
          DBEdit85.Enabled:=true;
        end;

       if cdsOKEducation.FieldByName('EDUCATION_CODE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'�����������'+#13;
//         showmessage('�� ��������� ���� '+'�����������');
//         dblcbSSOKEducation.SetFocus;
//         exit;
       end;
//
       if cdsOKEducation.FieldByName('BASIS_CODE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'������� �����������'+#13;
//         showmessage('�� ��������� ���� '+'������� �����������');
//         dblcbSSOKBasis.SetFocus;
//         exit;
       end;
//
       if cdsOKEducation.FieldByName('INSTITUTION_CODE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'������� ���������'+#13;
       end;

       if cdsOKEducation.FieldByName('cod_vuz_prim').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'���������� (����������� ������ ���� ������� ������� ���������)'+#13;
       end;
// -
//
       if cdsOKEducation.FieldByName('BEGIN_DATE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'����������� (���)'+#13;
//         showmessage('�� ��������� ���� '+'����������� (���)');
//         medOK_beginDAte.SetFocus;
//         exit;
       end;
//
       if not cdsOKEducation.FieldByName('END_DATE').IsNull
       then begin
         if cdsOKEducation.FieldByName('BEGIN_DATE').AsInteger>
            cdsOKEducation.FieldByName('END_DATE').AsInteger
         then begin
           er_mes:=er_mes+'������: ��� ����������� '+
             cdsOKEducation.FieldByName('BEGIN_DATE').asstring+#13+
             ' �� ������ ���� ������ ���� ��������� �������� ��������� '+
             cdsOKEducation.FieldByName('END_DATE').asstring+#13;
//           showmessage('������: ��� ����������� '+
//             cdsOKEducation.FieldByName('BEGIN_DATE').asstring+#13+
//             ' �� ������ ���� ������ ���� ��������� �������� ��������� '+
//             cdsOKEducation.FieldByName('END_DATE').asstring);

             cdsOKEducation.FieldByName('END_DATE').asstring:='';
             cdsOKEducation.FieldByName('BEGIN_DATE').asstring :='';
//           exit;
         end;
       end;
//
       if cdsOKEducation.FieldByName('PROFESSION_PERSONAL').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'�������������'+#13;
//         showmessage('�� ��������� ���� '+'�������������');
//         dbedProfession.setFocus;
//         exit;
       end;
//
       if cdsOKEducation.FieldByName('QUALIFICATION_CODE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'������������'+#13;
//         showmessage('�� ��������� ���� '+'������������');
//         dblcbSSOKQualification.SetFocus;
//         exit;
       end;
//
       if (not(cdsOKEducation.FieldByName('Diplom_Date').IsNull)) and (cdsOKEducation.FieldByName('DIPLOM_NUM').IsNull)
       then begin
         er_mes:=er_mes+'���� ������ �������� ����� ������ �������, �� �������� ������ ������� ������ ���� ������ �����������'+#13;
//         showmessage('���� ������ �������� ����� ������ �������, �� �������� ������ ������� ������ ���� ������ �����������');
//         exit;
       end;
{
EDUCATION_CODE
BASIS_CODE
INSTITUTION_CODE
BEGIN_DATE
END_DATE
PROFESSION_PERSONAL
QUALIFICATION_CODE
DIPLOM_NUM
}

       check_date_message_:= check_date_yyyymmdd(cdsOKEducation.FieldByName('BEGIN_DATE').AsString,
         cdsOKEducation.FieldByName('BEGIN_DATE_mm').AsString,
         cdsOKEducation.FieldByName('BEGIN_DATE_dd').AsString,'N');

       if check_date_message_<>'1'
       then begin
         er_mes:=er_mes+check_date_message_+#13;
//         showmessage(check_date_message_);
//         medOK_beginDAte.SetFocus;
//         exit;
       end;

       if not cdsOKEducation.FieldByName('END_DATE').IsNull
       then begin
         check_date_message_:= check_date_yyyymmdd(cdsOKEducation.FieldByName('END_DATE').AsString,
           cdsOKEducation.FieldByName('END_DATE_mm').AsString,
           cdsOKEducation.FieldByName('END_DATE_dd').AsString,'Y');

         if check_date_message_<>'1'
         then begin
           er_mes:=er_mes+check_date_message_+#13;
//           showmessage(check_date_message_);
//           medOK_endDAte.SetFocus;
//           exit;
         end;
       end;

       if er_mes=''
       then begin
         cdsOKEducation.Post;
       end else begin
         showmessage(er_mes);
         exit;
       end;

     End;
  1: If (cdsOKacademic.State in dsEditModes) and (cdbgOKacademic.CanFocus)
     Then begin
// ������ ������
//

       if (cdsOKacademic.FieldByName('ACADEMIC_CODE').AsString='')
       then begin
         showmessage('�� ��������� ���� '+'������ ������');
         dblcbSSOKAcademic.SetFocus;
         exit;
       end else begin
         z:=getsqlresultpar('select count(*) from s_obraz so ,ss_ok_nci son where son.nci_id=:p_1 and so.OBR_ID=son.s_id and son.ok_id=:p_2',
                 '76',cdsOKacademic.FieldByName('ACADEMIC_CODE').AsString
          );
         if z=0
         then begin
           showmessage('�������� ������ ������ ������ ��������������� ����������� ������������.');
            dblcbSSOKAcademic.SetFocus;
            exit;
         end;
       end;

//
       if cdsOKacademic.FieldByName('ACADEMIC_DATE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���� ���������� (������� ������)');
         dbedAcademicDate.SetFocus;
         exit;
       end;

       try
         if (cdsOKacademic.FieldByName('ACADEMIC_DATE').AsInteger<1917)
         then begin
           showmessage('�� ��������� ���� '+'���� ���������� (������� ������)='+
             cdsOKacademic.FieldByName('ACADEMIC_DATE').AsString);
           dbedAcademicDate.SetFocus;
           exit;
         end;
       except on e:exception
         do begin
           showmessage('�� ��������� ���� '+'���� ���������� (������� ������)'+
             cdsOKacademic.FieldByName('ACADEMIC_DATE').AsString);
           dbedAcademicDate.SetFocus;
           exit;
         end;
       end;

//
       cdsOKacademic.Post;

       if (cdsOKpersonal.FieldByName('is_ACADEMIC').AsString<>'1')
       and (cdsOKacademic.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "������� ������ ���"');
//         exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_ACADEMIC').AsString:='1';
         cdsOKpersonal.post;
       end;

     End;
  2: If (cdsOKDegree.State in dsEditModes) and (cdbgOKDegree.CanFocus)
     Then begin
// ������ �������
//

       if cdsOKDegree.FieldByName('DEGREE_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������ �������');
         dblcbSSOKdegree.SetFocus;
         exit;
       end else begin
         z:=getsqlresultpar('select count(*) from s_obraz so ,ss_ok_nci son where son.nci_id=:p_1 and so.OBR_ID=son.s_id and son.ok_id=:p_2',
                 '75',cdsOKDegree.FieldByName('DEGREE_CODE').AsString
          );
         if z=0
         then begin
           showmessage('�������� ������ ������� ������ ��������������� ����������� ������������.');
            dblcbSSOKdegree.SetFocus;
            exit;
         end;
       end;
//
       if (cdsOKDegree.FieldByName('DEGREE_DATE').AsString='')
       then begin
         showmessage('�� ��������� ���� '+'���� ���������� (������ �������)');
         dbedDegreeDate.SetFocus;
         exit;
       end;

       try
         if (cdsOKDegree.FieldByName('DEGREE_DATE').AsInteger<1917)
         then begin
           showmessage('�� ��������� ���� '+'���� ���������� (������ �������)='+cdsOKDegree.FieldByName('DEGREE_DATE').AsString);
           dbedDegreeDate.SetFocus;
           exit;
         end;
       except on e:exception
         do begin
           showmessage('�� ��������� ���� '+'���� ���������� (������ �������)'+cdsOKDegree.FieldByName('DEGREE_DATE').AsString);
           dbedDegreeDate.SetFocus;
           exit;
         end;
       end;

//
       cdsOKDegree.Post;
       if (cdsOKpersonal.FieldByName('is_DEGREE').AsString<>'1')
       and (cdsOKDegree.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "������ ������� ���"');
//         exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_DEGREE').AsString:='1';
         cdsOKpersonal.post;
       end;

     End;
  3: If (cdsOKaward.State in dsEditModes) and (cdbgOKaward.CanFocus)
     Then begin
// �������
//
       er_mes:='';


       if cdsOKaward.FieldByName('AWARD_INFO').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������� � �������');
         dbedAwardInfo.SetFocus;
         exit;
       end;
//
       if cdsOKaward.FieldByName('AWARD_DATE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� ��������� (�������)');
         dbedAwardDate.SetFocus;
         exit;
       end;
//
       check_date_message_:= check_date_yyyymmdd(cdsOKaward.FieldByName('AWARD_DATE').AsString,
         cdsOKaward.FieldByName('AWARD_DATE_mm').AsString,cdsOKaward.FieldByName('AWARD_DATE_dd').AsString,
         'N');

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         dbedAwardDate.SetFocus;
         exit;
       end else begin
          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
                cdsOKaward.FieldByName('AWARD_DATE_dd').AsString+'.'+
                cdsOKaward.FieldByName('AWARD_DATE_mm').AsString+'.'+
                cdsOKaward.FieldByName('AWARD_DATE').AsString,
          cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
         if ( strtodate(cdsOKaward.FieldByName('AWARD_DATE_dd').AsString+'.'+
                        cdsOKaward.FieldByName('AWARD_DATE_mm').AsString+'.'+
                        cdsOKaward.FieldByName('AWARD_DATE').AsString) >now )
         or (raznica<18)
         then begin
           er_mes:= er_mes+ '(05971)������� ���� ����������� � ���� �������� ����������  ������ ���� ������ 18  � ������ ���� ����� �������� ����������'+#13;
         end;
       end;

       if er_mes=''
       then begin
         cdsOKaward.Post;
         if (cdsOKpersonal.FieldByName('is_award').AsString<>'1')
         and (cdsOKaward.recordcount>0)
         then begin
//           showmessage('� ��������� ��� ���� ������� "������ ���"');
  //         exit;
           cdsOKpersonal.edit;
           cdsOKpersonal.FieldByName('is_award').AsString:='1';
           cdsOKpersonal.post;
         end;

       end else begin
         showmessage(er_mes);
         exit;
       end;

     End;

  4: If (cdsOKScientific.State in dsEditModes) and (cdbgOKScientific.CanFocus)
     Then begin
// ������� ������
//

       if cdsOKScientific.FieldByName('SCIENTIFIC_INFO').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������� � ������� ������');
         dbedScientificInfo.SetFocus;
         exit;
       end;
//
       if cdsOKScientific.FieldByName('SCIENTIFIC_DATE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� ��������� (������� ������)');
         dbedScientificDate.SetFocus;
         exit;
       end;
//
       cdsOKScientific.Post;

       if (cdsOKpersonal.FieldByName('is_scientific').AsString<>'1')
       and (cdsOKScientific.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "������� ����� ���"');
  //       exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_scientific').AsString:='1';
         cdsOKpersonal.post;
       end;

     End;
  5: If (cdsOKVoyage.State in dsEditModes) and (cdbgOKVoyage.CanFocus)
     Then begin
// ���������� ������� 09_007
//

       if cdsOKVoyage.FieldByName('voyage_str').AsString<>''
       then begin
         cdsOKVoyage.FieldByName('VOYAGE_LAND').AsString:=
           cdsOKVoyage.FieldByName('voyage_str_show').AsString;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_STR').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������ �� ����������� ��:');
         DBEdit3.SetFocus;
         exit;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_STR').AsString='860'
       then begin
         showmessage('(05975)�������� ����������� �� �������� ������ �� ������ ���� ����� �������� ������������');
         exit;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_INFO').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������� � ���������� �������');
         DBEdit3.SetFocus;
         exit;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_DATE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� ���������� �������');
         DBEdit1.SetFocus;
         exit;
       end;
//
       if (cdsOKVoyage.FieldByName('VOYAGE_DATE').Asinteger-strtoint(copy(    cdsokpersonal.fieldbyname('birthday').asstring      ,7,4))
          <18)
       or (cdsOKVoyage.FieldByName('VOYAGE_DATE').Asinteger> strtoint(copy(bankdate,7,4)) )
       then begin
         showmessage('������� ���� ������ �� ������� � ���� �������� ���������� �� ������ ���� ������ 18  � ������ �������� ����������');
         DBEdit1.SetFocus;
         exit;
       end;


//
       check_date_message_:= check_date_yyyymmdd(cdsOKVoyage.FieldByName('VOYAGE_DATE').AsString,
         cdsOKVoyage.FieldByName('VOYAGE_DATE_mm').AsString,
         cdsOKVoyage.FieldByName('VOYAGE_DATE_dd').AsString,'N');

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         DBEdit1.SetFocus;
         exit;
       end;

       if (not cdsOKVoyage.FieldByName('DATA_IN').IsNull)
       then begin
         if (cdsOKVoyage.FieldByName('DATA_IN').AsInteger<cdsOKVoyage.FieldByName('VOYAGE_DATE').Asinteger)
         or (cdsOKVoyage.FieldByName('DATA_IN').Asinteger> strtoint(copy(bankdate,7,4)) )
         then begin
           showmessage('���� ����������� ��-�� ������� �� ������ ���� ������ ���� ������  � �� ������ ���� ������ ������� ����');
           exit;
         end;
       end;

       if (not cdsOKVoyage.FieldByName('DATA_IN').IsNull)
       or (not cdsOKVoyage.FieldByName('DATA_IN_mm').IsNull)
       or (not cdsOKVoyage.FieldByName('DATA_IN_dd').IsNull)
       then begin
         check_date_message_:= check_date_yyyymmdd(cdsOKVoyage.FieldByName('DATA_IN').AsString,
           cdsOKVoyage.FieldByName('DATA_IN_mm').AsString,
           cdsOKVoyage.FieldByName('DATA_IN_dd').AsString,'Y');

         if check_date_message_<>'1'
         then begin
           showmessage(check_date_message_);
           DBEdit57.SetFocus;
           exit;
         end;
       end;

       cdsOKVoyage.Post;
       if (cdsOKpersonal.FieldByName('is_voyage').AsString<>'1')
       and (cdsOKVoyage.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "���������� ������� ���"');
  //       exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_voyage').AsString:='1';
         cdsOKpersonal.post;
       end;

     End;
  6: If (cdsOKLanguage.State in dsEditModes) and (cdbgOKLanguage.CanFocus)
     Then begin
// �����
//

       if cdsOKLanguage.FieldByName('language_code').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����������� ����');
         exit;
       end else begin
                z:=getsqlresultpar('select count(*) from s_langs so ,ss_ok_nci son where son.nci_id=:p_1 and so.LANG_ID=son.s_id and son.ok_id=:p_2',
                 '77',cdsOKLanguage.FieldByName('language_code').AsString
          );
         if z=0
         then begin
           showmessage('�������� ����������� ���� ������ ��������������� ����������� ������������.');
            exit;
         end;

       end;

       if cdsOKLanguage.FieldByName('cod_lang_prim').AsString=''
       then begin
         cdsOKLanguage.FieldByName('cod_lang_prim').AsString:=
           cdsOKLanguage.FieldByName('language_code_show').AsString;
       end;
//
       if cdsOKLanguage.FieldByName('level_code').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������� �������� (����������� ������)');
         DBLCBlanglevel.SetFocus;
         exit;
       end else begin
                z:=getsqlresultpar('select count(*) from s_lang so ,ss_ok_nci son where son.nci_id=:p_1 and so.UROV_ID=son.s_id and son.ok_id=:p_2',
                 '78',cdsOKLanguage.FieldByName('level_code').AsString
          );
         if z=0
         then begin
           showmessage('�������� ������� �������� (����������� ������) ������ ��������������� ����������� ������������.');
            exit;
         end;

       end;
//
       cdsOKLanguage.Post;
       if (cdsOKpersonal.FieldByName('is_language').AsString<>'1')
       and (cdsOKLanguage.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "��.��. ���"');
  //       exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_language').AsString:='1';
         cdsOKpersonal.post;
       end;

     End;
  7: If (cdsOKRelation.State in dsEditModes) and (cdbgOKRelation.CanFocus)
     Then begin
       er_mes:='';
// ����������� ��������� 09_002
//
       if cdsOKRelation.FieldByName('relation_birthplace').AsString=''
       then begin
         birthplace_ :='';
         if cdsOKRelation.FieldByName('COD_STR_birth').AsString=''
         then birthplace_:=
              cdsOKRelation.FieldByName('COD_STR_birth_prim').AsString
         else birthplace_:=
              cds_str.FieldByName('name').AsString;

         if cdsOKRelation.FieldByName('COD_OBL_birth').AsString=''
         then birthplace_:=
              birthplace_+' '+
              cdsOKRelation.FieldByName('COD_OBL_birth_PRIM').AsString
         else birthplace_:=
              birthplace_+' '+
              cds_region.FieldByName('region_nam').AsString;

         if cdsOKRelation.FieldByName('COD_CITY_birth').AsString=''
         then birthplace_:=
              birthplace_+' '+
              cdsOKRelation.FieldByName('COD_CITY_birth_prim').AsString
         else birthplace_:=
              birthplace_+' '+
              cds_distr.FieldByName('distr_name').AsString;

         cdsOKRelation.FieldByName('relation_birthplace').AsString:= copy(birthplace_,1,200);
//showmessage(cds_str.FieldByName('name').AsString+cds_region.FieldByName('region_nam').AsString+cds_distr.FieldByName('distr_name').AsString+#13+
//cdsOKRelation.FieldByName('relation_birthplace').AsString+#13+
//birthplace_);

       end;

       if cdsOKRelation.FieldByName('RELATION_FAMILY').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������� (�����������)');
         DBEdit701.SetFocus;
         exit;
       end;
//
       if cdsOKRelation.FieldByName('RELATION_NAME').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� (�����������)');
         DBEdit702.SetFocus;
         exit;
       end;
//
//
//       if cdsOKRelation.FieldByName('RELATION_HOME_ADDRESS').IsNull
//       then begin
//         showmessage('�� ��������� ���� '+'����� ���������� (�����������)');
//         DBEdit704.SetFocus;
//         exit;
//       end;
//
//
//       if cdsOKRelation.FieldByName('RELATION_OFFICE').IsNull
//       then begin
//         showmessage('�� ��������� ���� '+'����� ������ (�����������)');
//         DBEdit705.SetFocus;
//         exit;
//       end;
//
//
//       if cdsOKRelation.FieldByName('RELATION_POST').IsNull
//       then begin
//         showmessage('�� ��������� ���� '+'��������� (�����������)');
//         DBEdit706.SetFocus;
//         exit;
//       end;
//
//
       if cdsOKRelation.FieldByName('RELATION_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����������� ��������� (�����������)');
         exit;
       end else begin
         // ����� ��� ���� ������������ �� ����������� ������������
         S_ID:= getsqlresultpar('select s_id from ss_ok_nci where nci_id=:p_1 and ok_id=:p_2','81',cdsOKRelation.FieldByName('RELATION_CODE').AsString);
         if cdsokpersonal.fieldbyname('gender_code').asstring='1' // ��� ������� ����������� ��� ������
         then begin
           if S_ID='02'   // ����������� ��� ������
           then begin
             showmessage('���� ��� ���������� ������ � ��������, �� ��� ������� ������� �� ����� ��������� �������� ����');
             exit;
           end;
         end
          // ��� ������� ����������� ���� ������
         else begin
           if S_ID='01'   //����������� ���� ������
           then begin
             showmessage('���� ��� ���������� ������ � ��������, �� ��� ������� ������� �� ����� ��������� �������� �����');
             exit;
           end;
         end;
       end;

       if cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� �������� (�����������)');
         exit;
       end else begin
         if (cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger <
               strtoint(copy( cdsOKpersonal.FieldByName('BIRTHDAY').asstring ,7,4)))
         and ((S_ID='6') or (S_ID='8') or (S_ID='9') or (S_ID='10')  )
         then begin
           showmessage('���� ����������� ��������� ������ ��� ������� ���������, �� ��� �������� ������������ ������ ���� ������ ���� �������� ����������');
           exit;
         end;
         if (  cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger >
                 strtoint( copy( cdsOKpersonal.FieldByName('BIRTHDAY').asstring ,7,4))   )
         and ( (S_ID='3') or (S_ID='4') or (S_ID='5') or (S_ID='7') or (S_ID='11') or (S_ID='12')  )
         then begin
           showmessage('���� ����������� ������ ��� ������� ���������, �� ��� �������� ������������ ������ ���� ������ ���� �������� ����������');
           exit;
         end;
         if cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger<1900
         then begin
           showmessage('��������� ��� �������� '+
             cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsString);
           exit;
         end;

       end;

       if cdsOKRelation.FieldByName('COD_STR_birth').AsString=''
       then begin
         er_mes:=er_mes+'(7123) ������� ���� ������ ��������� ����������� �� ����������� <������>'+#13;
       end else begin
         z:= getsqlresultpar('select count(*) from s_str where code_str=:p_1',cdsOKRelation.FieldByName('COD_STR_birth').AsString);
         if z<1  then er_mes:=er_mes+'(05345)�������� ���� ������ ��������� ������������ ������ ��������������� ����������� <������ � ����������>'+#13;
       end;

       if cdsOKRelation.FieldByName('COD_STR_birth').AsString='860' // ���������� �� ���� ������� � �����
       then begin
         if (cdsOKRelation.FieldByName('COD_OBL_birth').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ��������� -  ������������, �� ���� ������� ��������� ������ ���� ������ ����������� �� ����������� <������� �����������>'+#13;
         end;
         if (cdsOKRelation.FieldByName('COD_CITY_birth').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ��������� -  ������������, �� ���� ������ ��������� ������ ���� ������ ����������� �� ����������� <������ �����������>'+#13;
         end;
       end else begin
         if (cdsOKRelation.FieldByName('COD_OBL_birth_prim').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ��������� -  �� ������������, �� ���������� � ���� ������� ��������� ������ ���� ������'+#13;
         end;
         if (cdsOKRelation.FieldByName('COD_CITY_birth_prim').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ��������� -  �� ������������, �� ���������� � ���� ������ ��������� ������ ���� ������'+#13;
         end;
       end;

// ����������
       if cdsOKRelation.FieldByName('COD_STR_LIVE').AsString=''
       then begin
         er_mes:=er_mes+'(7123) ������� ���� ������ ����������� ����������� �� ����������� <������>'+#13;
       end else begin
         z:= getsqlresultpar('select count(*) from s_str where code_str=:p_1',cdsOKRelation.FieldByName('COD_STR_LIVE').AsString);
         if z<1  then er_mes:=er_mes+'(05345)�������� ���� ������ ����������� ������������ ������ ��������������� ����������� <������ � ����������>'+#13;
       end;

       if cdsOKRelation.FieldByName('COD_STR_LIVE').AsString='860' // ���������� �� ���� ������� � �����
       then begin
         if (cdsOKRelation.FieldByName('COD_OBL_LIVE').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ����������� -  ������������, �� ���� ������� ����������� ������ ���� ������ ����������� �� ����������� <������� �����������>'+#13;
         end;
         if (cdsOKRelation.FieldByName('COD_CITY').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ����������� -  ������������, �� ���� ������ ����������� ������ ���� ������ ����������� �� ����������� <������ �����������>'+#13;
         end;
       end else begin
         if (cdsOKRelation.FieldByName('COD_OBL_LIVE_prim').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ����������� -  �� ������������, �� ���������� � ���� ������� ����������� ������ ���� ������'+#13;
         end;
         if (cdsOKRelation.FieldByName('COD_CITY_prim').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ����������� -  �� ������������, �� ���������� � ���� ������ ����������� ������ ���� ������'+#13;
         end;
       end;

       if (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString<>'')
       then begin
         if (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsInteger <
               cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger)
         or (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsInteger> strtoint(copy(bankdate,7,4)))
         then begin
           showmessage('��������� ���� �������� '+cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsString+
           ' � ���� ������ '+
            cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString);
           exit;
         end;

         if (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString='')
         and ((cdsOKRelation.FieldByName('DD_DEATH').AsString<>'')
         and (cdsOKRelation.FieldByName('MM_DEATH').AsString<>''))
         then begin
           if (strtodate( cdsOKRelation.FieldByName('DD_DEATH').AsString+'.'+cdsOKRelation.FieldByName('MM_DEATH').AsString+'.'+cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString  ) > now)
           then begin
             er_mes:=er_mes+'���� ������ ������������� �� ������ ���� ������, ��� ���� �������� � ������ ������� ����;'+#13;
           end;
         end;


       end else begin
         if (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString='')
         and ((cdsOKRelation.FieldByName('DD_DEATH').AsString<>'')
         or (cdsOKRelation.FieldByName('MM_DEATH').AsString<>''))
         then begin
           er_mes:=er_mes+'���� ��� ������ �� ������, �� ����� � ����� ������ �� ������ �����������'+#13;
         end;
       end;

       if er_mes=''
       then begin
         cdsOKRelation.Post;
       end else begin
         showmessage(er_mes);
         exit;
       end;

     End;
  8: If (cdsOKPeriod.State in dsEditModes) and (cdbgOKPeriod.CanFocus)
     Then begin
// �������� � ������
//
       if (cdsOKPeriod.FieldByName('TYPE_PERIOD_CODE').AsString='3')
       and (cdsOKPeriod.FieldByName('COD_BANK').AsString='')
       then begin
       // ���� �� ������ � ��� ����� ����� �� ��������� ���� ������� ���
          cdsOKPeriod.FieldByName('COD_BANK').AsString:=branch;
       end;
//
       if cdsOKPeriod.FieldByName('OFFICE_NAME').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������������ �����������');
         DBEdit801.SetFocus;
         exit;
       end;
//
//
       if cdsOKPeriod.FieldByName('OFFICE_ADDRESS').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����� �����������');
         DBEdit802.SetFocus;
         exit;
       end;
//
//
       if cdsOKPeriod.FieldByName('ESTABLISHED_POST').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���������� ���������');
         DBEd_poststring.SetFocus;
         exit;
       end;
//
//
//       if cdsOKPeriod.FieldByName('ESTABLISHED_DEPARTMENT').AsString=''
//       then begin
//         showmessage('�� ��������� ���� '+'�����');
//         DBEd_depstring.SetFocus;
//         exit;
//       end;
//
//
//       if cdsOKPeriod.FieldByName('BASE_MOVE_CODE').AsString=''
//       then begin
//         showmessage('�� ��������� ���� '+'��������� �����������');
//         DBLcbBaseMove.SetFocus;
//         exit;
//       end;
//
//
       if cdsOKPeriod.FieldByName('IN_OFFICE_DATE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���� �����������');
         exit;
       end else begin
         if (cdsOKPeriod.FieldByName('IN_OFFICE_DATE').AsDateTime<cdsOKPersonal.FieldByName('birthday').AsDateTime)
         then begin
           er_mes:=er_mes+'�������� ����� ������ ������ � ��������� ������ ���� ����������� ��������,  ��������������� ������� � ���� ������ ���� ��������'+#13;
         end;

          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
          cdsOKPeriod.FieldByName('IN_OFFICE_DATE').AsString,cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
         if (cdsOKPeriod.FieldByName('in_office_date').AsDatetime>now)
         or (raznica<13)
         then begin
           er_mes:=er_mes+'������� ���� ������ ������ � ��������� � ���� �������� ���������� �� ������ ���� ������ 13 ��� � �� ������ ���� ������ �������� ����������'+#13;
         end;



       end;
//
       if cdsOKPeriod.FieldByName('BASIS_DATE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���� �������/���������');
         exit;
       end else begin
         if cdsOKPeriod.FieldByName('IN_OFFICE_DATE').AsString<>''
         then begin
           if (cdsOKPeriod.FieldByName('BASIS_DATE').asDateTime > cdsOKPeriod.FieldByName('IN_OFFICE_DATE').asDateTime)
           then begin
             er_mes:=er_mes+'���� �������-��������� ��� ������ ������ � ��������� ������ ���� ������ ��� ����� ���� ������ ������ � ���� ���������'+#13;
           end;
         end;
       end;

       if (cdsOKPeriod.FieldByName('date_pr_off').asstring<>'' ) and ( cdsOKPeriod.FieldByName('OUT_OFFICE_DATE').asstring<>'')
       then begin
           if (cdsOKPeriod.FieldByName('date_pr_off').asDatetime > cdsOKPeriod.FieldByName('OUT_OFFICE_DATE').AsDatetime)
           then begin
             er_mes:=er_mes+'���� �������-��������� ��� ����������� ������ � ���������  ������ ���� ������ ��� ����� ���� ����������� ������ � ���� ���������'+#13;
           end;
       end;
//
       if cdsOKPeriod.FieldByName('TYPE_PERIOD_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� ���� �����');
         DBLcbTypePeriod.SetFocus;
         exit;
       end else begin
         if (cdsOKPeriod.FieldByName('TYPE_PERIOD_CODE').AsString='1')
         and (cdsOKPeriod.FieldByName('established_post').AsString='')
         then begin
           er_mes:=er_mes+'�������� ����������� ������ ���� ����������� ��������, ���� �������� �������� �������� ������ ��� ������� (����� ��������)'+#13;
         end;
       end;

       if (cdsOKPeriod.FieldByName('post_CODE').AsString='')
       and (cdsOKPeriod.FieldByName('established_post').AsString='')
       then begin
         er_mes:=er_mes+'�� ����� ���� ����������� ��� ��� ��������� ��� ��������� ���� �� 2-� ����������� ������ ���� ���������'+#13;
       end;

//
//
//       if cdsOKPeriod.FieldByName('ARTICLE_CODE').AsString=''
//       then begin
//         showmessage('�� ��������� ���� '+'�������� ������');
//         DBLcbArticle.SetFocus;
//         exit;
//       end;
//
//
       if cdsOKPeriod.FieldByName('BASIS_NUM').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����� �������/���������');
         DBEdit811.SetFocus;
         exit;
       end;
//
       if not ChbArticle.Checked then cdsOKPeriod.FieldByName('article_code').AsString:='';

       if (cdsOKPeriod.FieldByName('date_attest').AsString<>'')
       and (cdsOKPeriod.FieldByName('resh_attest').AsString='')
       then begin
         er_mes:=er_mes+'���� ������ �������� ����� ����������, �� �������� �������� �������������� �������� ������ ���� ��������'+#13;
       end;

       if (cdsOKPeriod.FieldByName('date_pr_kvl').AsString<>'')
       and (cdsOKPeriod.FieldByName('numb_pr_kvl').AsString='')
       then begin
         er_mes:=er_mes+'���� ������ �������� �����  ����������� ���������������� �������� ������������ �����, �� �������� ������ ��������� ���������������� �������� ������������ ����� � ������������ ���������, �� ������� ������������ ������ ���� ��������'+#13;
       end;

       if (cdsOKPeriod.FieldByName('date_utv_km').AsString<>'')
       and (cdsOKPeriod.FieldByName('numb_utv_km').AsString='')
       then begin
         er_mes:=er_mes+'���� ������ �������� ����� ����������� ��������� ���������, �� �������� ������ ������������� �������� ��������� �� ����������� � ���������� ��������� ������ ���� ��������'+#13;
       end;

       if (cdsOKPeriod.FieldByName('out_office_date').AsString<>'')
       and (cdsOKPeriod.FieldByName('in_office_date').AsString<>'')
       then begin
         if (cdsOKPeriod.FieldByName('cod_pr_off').AsString='')
         and (cdsOKPeriod.FieldByName('pr_off').AsString='')
         then begin
           er_mes:=er_mes+'���� �������� ���� ������� ����������� ������ � ��������� �� ������, �� ����������� ������ ���� �������� �������� �������� ����������� ������ � ���������'+#13;
         end;
         if (cdsOKPeriod.FieldByName('out_office_date').AsDatetime>now)
         or (cdsOKPeriod.FieldByName('out_office_date').AsDatetime<cdsOKPeriod.FieldByName('in_office_date').AsDatetime)
         then begin
           er_mes:=er_mes+'���� ����������� ������ � ��������� �� ������ ���� ������ ������� ���� � ������ ���� ������ ������ � ���� ���������'+#13;
         end;
       end;


       if er_mes=''
       then begin
         cdsOKPeriod.Post;
       end else begin
         showmessage(er_mes);
         exit;
       end;

     End;
  9: If (cdsOKRise.State in dsEditModes) and (cdbgOKRise.CanFocus)
     Then begin
// ������������
//

       if cdsOKRise.FieldByName('rise_info').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������� � ��������� (������������)');
         DBEdit12.SetFocus;
         exit;
       end;
//
//
       check_date_message_:= check_date_yyyymmdd(cdsOKRise.FieldByName('rise_date_year').AsString,
         cdsOKRise.FieldByName('rise_date_mm').AsString,cdsOKRise.FieldByName('rise_date_dd').AsString,
         'N');

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         DBEdit46.SetFocus;
         exit;
       end;

       if cdsOKRise.FieldByName('rise_date_year').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� ����������� (������������)');
         DBEdit46.SetFocus;
         exit;
       end else begin
         if (cdsOKRise.FieldByName('rise_date_year').AsInteger> strtoint(copy(bankdate,7,4))  )
         or ((cdsOKRise.FieldByName('rise_date_year').AsInteger- strtoint(copy( cdsokpersonal.fieldbyname('birthday').asstring,7,4))<18 ))
         then begin
           showmessage('������� ���� ��������� ������������ � ���� �������� ���������� �� ������ ���� ������ 18  � ������ �������� ����������');
           exit;
         end;
         if  (cdsOKRise.FieldByName('rise_date_year').AsString<>'')
         and (cdsOKRise.FieldByName('rise_date_mm').AsString<>'')
         and (cdsOKRise.FieldByName('rise_date_dd').AsString<>'')
         then begin
           raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
                cdsOKRise.FieldByName('rise_date_dd').AsString+'.'+
                cdsOKRise.FieldByName('rise_date_mm').AsString+'.'+
                cdsOKRise.FieldByName('rise_date_year').AsString,
           cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
           if ( strtodate(cdsOKRise.FieldByName('rise_date_dd').AsString+'.'+
                          cdsOKRise.FieldByName('rise_date_mm').AsString+'.'+
                          cdsOKRise.FieldByName('rise_date_year').AsString) >now )
           or (raznica<18)
           then begin
             er_mes:= er_mes+ '(05982)������� ���� ��������� ������������ � ���� �������� ����������  ������ ���� ������ 18  � ������ ���� ����� �������� ����������'+#13;
           end;

         end;
       end;
//
       cdsOKRise.Post;

       if (cdsOKpersonal.FieldByName('is_rise').AsString<>'1')
       and (cdsOKRise.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "������������ ���"');
  //       exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_rise').AsString:='1';
         cdsOKpersonal.post;
       end;

     End;
 10: If (cdsOKElection.State in dsEditModes) and (cdbgOKElection.CanFocus)
     Then begin
// ��������
//

       if cdsOKElection.FieldByName('election_post').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���������');
         DBEdit48.SetFocus;
         exit;
       end;
//
//
       if cdsOKElection.FieldByName('election_date_begin').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������(���)');
         DBEdit47.SetFocus;
         exit;
       end else begin
         if (cdsOKElection.FieldByName('election_date_begin').AsInteger> strtoint(copy(bankdate,7,4))  )
         or ((cdsOKElection.FieldByName('election_date_begin').AsInteger- strtoint(copy( cdsokpersonal.fieldbyname('birthday').asstring,7,4))<18 ))
         then begin
           showmessage('������� ���� �������� � ���� �������� ���������� �� ������ ���� ������ 18  � ������ �������� ����������');
           exit;
         end;
         if  (cdsOKElection.FieldByName('election_date_begin').AsString<>'')
         and (cdsOKElection.FieldByName('election_date_begin_mm').AsString<>'')
         and (cdsOKElection.FieldByName('election_date_begin_dd').AsString<>'')
         then begin
           raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
                cdsOKElection.FieldByName('election_date_begin_dd').AsString+'.'+
                cdsOKElection.FieldByName('election_date_begin_mm').AsString+'.'+
                cdsOKElection.FieldByName('election_date_begin').AsString,
           cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
           if ( strtodate(cdsOKElection.FieldByName('election_date_begin_dd').AsString+'.'+
                          cdsOKElection.FieldByName('election_date_begin_mm').AsString+'.'+
                          cdsOKElection.FieldByName('election_date_begin').AsString) >now )
           or (raznica<18)
           then begin
             er_mes:= er_mes+ '(05974)������� ���� �������� � ���� �������� ����������  ������ ���� ������ 18  � ������ ���� ����� �������� ����������'+#13;
           end;

         end;

       end;
//
//
       if cdsOKElection.FieldByName('election_date_end').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����������(���)');
         DBEdit14.SetFocus;
         exit;
       end;
//
//
       if cdsOKElection.FieldByName('election_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������������� �����');
         DBLCBelection.SetFocus;
         exit;
       end;
//
       check_date_message_:= check_date_yyyymmdd(cdsOKElection.FieldByName('election_date_begin').AsString,
         cdsOKElection.FieldByName('election_date_begin_mm').AsString,cdsOKElection.FieldByName('election_date_begin_dd').AsString,
         'N');

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         DBEdit47.SetFocus;
         exit;
       end;


       if not cdsOKElection.FieldByName('election_date_end').isnull
       then begin
         check_date_message_:= check_date_yyyymmdd(cdsOKElection.FieldByName('election_date_end').AsString,
           cdsOKElection.FieldByName('election_date_end_mm').AsString,
           cdsOKElection.FieldByName('election_date_end_dd').AsString,'Y');

         if check_date_message_<>'1'
         then begin
           showmessage(check_date_message_);
           DBEdit14.SetFocus;
           exit;
         end;
       end;

       cdsOKElection.Post;
       if (cdsOKpersonal.FieldByName('is_Election').AsString<>'1')
       and (cdsOKElection.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "�������� ���"');
  //       exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_Election').AsString:='1';
         cdsOKpersonal.post;
       end;

     End;
 11: If (cdsOKPremium.State in dsEditModes) and (cdbgOKPremium.CanFocus)
     Then begin
// ��� ������
//

       if cdsOKPremium.FieldByName('premium_name').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������������');
         dbedit15.SetFocus;
         exit;
       end;
//
//
       if cdsOKPremium.FieldByName('premium_date').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� ���������');
         dbedit16.SetFocus;
         exit;
       end;
//
       cdsOKPremium.Post;
       if (cdsOKpersonal.FieldByName('is_Premium').AsString<>'1')
       and (cdsOKPremium.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "��� ������ ���"');
  //       exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_Premium').AsString:='1';
         cdsOKpersonal.post;
       end;
       
     End;
 12: If (cdsOKArmy.State in dsEditModes) and (cdbgOKArmy.CanFocus)
     Then begin
// �������� ������
//

       if cdsOKArmy.FieldByName('army_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���������');
         DBLookupComboBox7.SetFocus;
         exit;
       end;
//
     if cdsOKArmy.Fields.FieldByName('army_code').AsString='1'
     then begin
//
       if cdsOKArmy.FieldByName('fitness_army_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��������');
         DBLookupComboBox6.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('staff_code').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� �������');
         DBLcbStaff.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('type_force_code').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� �����');
         DBLCBtypeforce.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('army_group_code').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������ �����');
         DBLCBtypeforce.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('category_army_code').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��������� �����');
         DBLCBcategoryarmy.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('special_army').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�/�������������');
         dbedit52.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('number_vus').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����� ���');
         dbedit50.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('military_rank_code').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�/������');
         DBLCBmilitaryrank.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('code_army_post').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� ��������� � ������ �������� �/������');
         dbedit18.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('name_army_office').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���������');
         dbedit55.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('specreg_number').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����.���� N');
         dbedit53.SetFocus;
         exit;
       end;
//

      end;

       cdsOKArmy.Post;
       if (cdsOKpersonal.FieldByName('is_Army').AsString<>'1')
       and (cdsOKArmy.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "����� ���"');
  //       exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_Army').AsString:='1';
         cdsOKpersonal.post;
       end;

     End;
 13: If (cdsOKParty.State in dsEditModes) and (cdbgOKParty.CanFocus)
     Then begin
// ������
//

       if cdsOKParty.FieldByName('party_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������');
         DBLCBparty.SetFocus;
         exit;
       end;
//
       if cdsOKParty.FieldByName('code_partii_prim').AsString=''
       then begin
         cdsOKParty.FieldByName('code_partii_prim').AsString :=
           cdsOKParty.FieldByName('party_code_show').AsString;
       end;
//
       if (uppercase(cdsOKParty.FieldByName('party_code_show').AsString)='���������')
       or (uppercase(cdsOKParty.FieldByName('party_code_show').AsString)='������������')
       or ((cdsOKParty.FieldByName('party_code_show').AsString)='���������')
       or ((cdsOKParty.FieldByName('party_code_show').AsString)='������������')
       or ((cdsOKParty.FieldByName('party_code_show').AsString)='���������')
       or ((cdsOKParty.FieldByName('party_code_show').AsString)='������������')
       then begin
       // ������������
       end else begin
           if cdsOKParty.FieldByName('party_date').AsString=''
           then begin
             showmessage('�� ��������� ���� '+'��� ���������� � ������');
             dbedit73.SetFocus;
             exit;
           end;
    //
           if (cdsOKParty.FieldByName('party_date').AsInteger<1917)
           or (cdsOKParty.FieldByName('party_date').AsInteger>strtoint(copy(bankdate,7,4) ) )
           then begin
             showmessage('������������='+cdsOKParty.FieldByName('party_date').AsString+' ��� ���������� � ������');
             dbedit73.SetFocus;
             exit;
           end;
    //
    //
           if cdsOKParty.FieldByName('punishment_motive').AsString<>''
           then begin
             if cdsOKParty.FieldByName('punishment_date').AsString=''
             then begin
               showmessage('�� ����� ������� ���������� ���������,'+#13+
                 cdsOKParty.FieldByName('punishment_motive').AsString+#13+
                 '�� �� ��������� ���� '+#13+
                 '��� ����.���������');
               dbed_gpn.SetFocus;
               exit;
             end;
           end;

           if  cdsOKParty.FieldByName('punishment_date').AsString<>''
           then begin
             if cdsOKParty.FieldByName('punishment_motive').AsString=''
             then begin
               showmessage('�� ����� ��� ����.���������,'+#13+
                 cdsOKParty.FieldByName('punishment_date').AsString+#13+
                 '�� �� ��������� ���� '+#13+
                 '������� ����.���������');
               DBEd_ppn.SetFocus;
               exit;
             end;
           end;
    //
    //
           if  cdsOKParty.FieldByName('out_party').AsString<>''
           then begin
             if cdsOKParty.FieldByName('party_outdate').AsString=''
             then begin
               showmessage('�� ����� ������� ������ �� ������,'+#13+
                 cdsOKParty.FieldByName('out_party').AsString+#13+
                 '�� �� ��������� ���� '+#13+
                 '��� ������ �� ������');
               dbed_gvp.SetFocus;
               exit;
             end;
           end;
    //
           if cdsOKParty.FieldByName('party_outdate').AsString<>''
           then begin
             if cdsOKParty.FieldByName('out_party').AsString=''
             then begin
               showmessage('�� ����� ��� ������ �� ������,'+#13+
                 cdsOKParty.FieldByName('party_outdate').ASstring +#13+
                 '�� �� ��������� ���� '+#13+
                 '������� ������ �� ������');
               dbed_pvp.SetFocus;
               exit;
             end;
           end;
    //
       end;

       cdsOKParty.Post;
       if (cdsOKpersonal.FieldByName('is_Party').AsString<>'1')
       and (cdsOKParty.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "������ ���"');
//         exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_Party').AsString:='1';
         cdsOKpersonal.post;
       end;


     End;
 14: If (cdsOKYouth.State in dsEditModes) and (cdbgOKYouth.CanFocus)
     Then begin
// ���������� �����������
//
       if cdsOKYouth.FieldByName('youth_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������������:');
         DBLCByouth.SetFocus;
         exit;
       end;
//
//
       if cdsOKYouth.FieldByName('in_date').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���� ����������:');
         dbedit21.SetFocus;
         exit;
       end;
//
//
//       if cdsOKYouth.FieldByName('out_date').IsNull
//       then begin
//         showmessage('�� ��������� ���� '+'���� ������:');
//         dbedit22.SetFocus;
//         exit;
//       end;
//



       cdsOKYouth.Post;
     End;

 15: If (cdsOKLeave.State in dsEditModes) and (cdbgOKLeave.CanFocus)
     Then begin
// �������
//
       if cdsOKLeave.FieldByName('leave_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� �������');
         DBLookupComboBox13.SetFocus;
         exit;
       end;
//
//
       if cdsOKLeave.FieldByName('period_leave').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���-�� ���� �������');
         dbedit63.SetFocus;
         exit;
       end;
//
//
       if cdsOKLeave.FieldByName('num_basis').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����� �������');
         dbedit62.SetFocus;
         exit;
       end;
//
//
//       if cdsOKLeave.FieldByName('motive_leave').AsString=''
//       then begin
//         showmessage('�� ��������� ���� '+'������� (�� �����������)');
//         dbedit64.SetFocus;
//         exit;
//       end;
//
//
       if cdsOKLeave.FieldByName('begin_year').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������� ���- ������');
         dbedit60.SetFocus;
         exit;
       end;
//
//
       if cdsOKLeave.FieldByName('end_year').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�/ ���- ���������');
         dbedit61.SetFocus;
         exit;
       end;
//
//
       if    (cdsOKLeave.FieldByName('leave_CODE').AsString<>'4')
         and (cdsOKLeave.FieldByName('leave_CODE').AsString<>'7')
       then begin
           if cdsOKLeave.FieldByName('date_in_leave').AsString=''
           then begin
             showmessage('�� ��������� ���� '+'���� ������ � ������');
             DBEDdate_in_leave.SetFocus;
             exit;
           end;
           if cdsOKLeave.FieldByName('date_out_leave').AsString=''
           then begin
             showmessage('�� ��������� ���� '+'���� ������ �� �������');
             dbedit26.SetFocus;
             exit;
           end;
       end;
//


       cdsOKLeave.Post;
     End;
 16: If (cdsOKConvictions.State in dsEditModes) and (cdbgOKConvictions.CanFocus)
     Then begin
// ���������
//

       if cdsOKConvictions.FieldByName('convictions_motive').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������');
         dbedit27.SetFocus;
         exit;
       end;
//
//
       if cdsOKConvictions.FieldByName('convictions_date').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���');
         dbedit28.SetFocus;
         exit;
       end;
//
//
       cdsOKConvictions.Post;
       if (cdsOKpersonal.FieldByName('is_Convictions').AsString<>'1')
       and (cdsOKConvictions.recordcount>0)
       then begin
//         showmessage('� ��������� ��� ���� ������� "��������� ���"');
  //       exit;
         cdsOKpersonal.edit;
         cdsOKpersonal.FieldByName('is_Convictions').AsString:='1';
         cdsOKpersonal.post;
       end;

     end;
 17: If (cdsOKAddInform.State in dsEditModes) and (cdbgOKAddInform.CanFocus)
     Then begin
// �������������� ��������
//
       if cdsOKAddInform.FieldByName('character_addinform').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��������');
         dbedit29.SetFocus;
         exit;
       end;
//
//
       if cdsOKAddInform.FieldByName('addinform_date').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����');
         dbedit30.SetFocus;
         exit;
       end;
//

       cdsOKAddInform.Post;
     end;
 18: If (cdsOKPenalty.State in dsEditModes) and (cdbgOKPenalty.CanFocus)
     Then begin
// �������� � ���������
//
       if cdsOKPenalty.FieldByName('penalty_CODE').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'��� ���������');
         DBLCBpenalty.SetFocus;
         exit;
       end;
//
//
       if cdsOKPenalty.FieldByName('penalty_motive').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������');
         dbedit65.SetFocus;
         exit;
       end;
//
//
       if cdsOKPenalty.FieldByName('penalty_date').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���� ���������/�������');
         dbedit34.SetFocus;
         exit;
       end;
//
//
       if cdsOKPenalty.FieldByName('penalty_num').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'����� ���������/�������');
         dbedit33.SetFocus;
         exit;
       end;
//

       cdsOKPenalty.Post;
     End;
 19: If (cdsOKChangeFIO.State in dsEditModes) and (cdbgOKChangeFIO.CanFocus)
     Then begin
// �������� �� ��������� ���
//
       if cdsOKChangeFIO.FieldByName('family').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������');
         dbedit66.SetFocus;
         exit;
       end;
//
//
       if cdsOKChangeFIO.FieldByName('first_name').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���');
         dbedit67.SetFocus;
         exit;
       end;
//
//       if cdsOKChangeFIO.FieldByName('patronymic').AsString=''
//       then begin
//         showmessage('�� ��������� ���� '+'��������');
//         dbedit35.SetFocus;
//         exit;
//       end;
//
       if cdsOKChangeFIO.FieldByName('change_date').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'���� ���������');
         dbedit36.SetFocus;
         exit;
       end;
//
//
       if cdsOKChangeFIO.FieldByName('change_motive').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'������� ���������');
         dbedit68.SetFocus;
         exit;
       end;
//

       cdsOKChangeFIO.Post;
     End;
 20: begin
 // ���� ��-�������
     end;
 21: If (cdsOKhospital.State in dsEditModes) and (cdbgOKhospital.CanFocus)
     Then begin
//
{       if cdsOK.FieldByName('').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������');
         dbedit27.SetFocus;
         exit;
       end;
}//
//
       cdsOKhospital.Post;
     end;
 22: If (cdsOKprivilege.State in dsEditModes) and (cdbgOKprivilege.CanFocus)
     Then begin
//
{       if cdsOK.FieldByName('').AsString=''
       then begin
         showmessage('�� ��������� ���� '+'�������');
         dbedit27.SetFocus;
         exit;
       end;
}//
//
       cdsOKprivilege.Post;
     end;
 23: If (cdsOKincrease.State in dsEditModes) and (cdbgOKincrease.CanFocus)
     Then begin
       cdsOKincrease.Post;
     end;
 24: If (cdsok_business_voyage.State in dsEditModes) and (cdbgok_business_voyage.CanFocus)
     Then begin
       cdsok_business_voyage.Post;
     end;
 26: If (cdsok_zp_rate.State in dsEditModes) and (cdbgok_zp_rate.CanFocus)
     Then begin
       cdsok_zp_rate.Post;
//-- ���������� ������ ������, ���� zp_rate_date_end is null
{       sql_:='update ok_zp_rate '+
        ' set zp_rate_date_end=to_date('''+cdsok_zp_rate.fieldbyname('zp_rate_date').asstring+''',''dd.mm.yyyy'') '+
        ' where branch='''+ cdsok_zp_rate.fieldbyname('branch').asstring+''''+
        ' and personal_code='+ cdsok_zp_rate.fieldbyname('personal_code').asstring +
        ' and zp_rate_date_end is null '+
        ' and zp_rate_date < to_date('''+cdsok_zp_rate.fieldbyname('zp_rate_date').asstring+''',''dd.mm.yyyy'') ';
}
       try
         execsqlPAR('update ok_zp_rate '+
        ' set zp_rate_date_end=to_date(:p_1,:p_2) '+
        ' where branch=:p_3' +
        ' and personal_code=:p_4'  +
        ' and zp_rate_date_end is null '+
        ' and zp_rate_date < to_date(:p_5,:p_6) ',
          cdsok_zp_rate.fieldbyname('zp_rate_date').asstring ,'dd.mm.yyyy',
          cdsok_zp_rate.fieldbyname('branch').asstring,cdsok_zp_rate.fieldbyname('personal_code').asstring,
          cdsok_zp_rate.fieldbyname('zp_rate_date').asstring ,'dd.mm.yyyy'
        );
         execsql('commit');
       except
         on e:exception
         do begin
           showmessage('�� ������ ���� � ������ �������� �������'+#13+sql_+#13+e.message);
         end;
       end;
       cdsok_zp_rate.refresh;
     end;
 27: If (cdsok_freedays.State in dsEditModes) and (cdbgok_freedays.CanFocus)
     Then begin
       cdsok_freedays.Post;
     end;
/////////////////////--------\\\\\\\\\\\\\\\\\\\\\\
 End;

end;

procedure TBOKFormSTAT.ActDetailDeleteExecute(Sender: TObject);
begin

 If Application.MessageBox(PChar( '('+inttostr(PCDetails.ActivePageIndex)+') ������� ������?'), PChar('������'), MB_YESNO or MB_ICONQUESTION) = mrYes
 Then Begin
   Case PCDetails.ActivePageIndex of
     0: If (cdbgOKEducation.CanFocus) and (not cdsOKEducation.IsEmpty) Then
         Begin
           EXEcSQLpar('delete from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3  and priznak=:p_4',
                cdsOkeducation.FieldByName('branch').AsString,
                cdsOkeducation.FieldByName('id').AsString,
                cdsOkeducation.FieldByName('personal_code').AsString,
                '2' // 2-������
              );
           cdbgOKEducation.Focused;
           cdsOKEducation.Delete;
           cdsOK_AfterPost(dsOKEducation.DataSet);
         end;
    1: If (cdbgOKacademic.CanFocus) and (not cdsOKacademic.IsEmpty) Then
         Begin
           cdbgOKacademic.Focused;
           cdsOKacademic.Delete;
           cdsOK_AfterPost(dsOKacademic.DataSet);
           if (cdsOKpersonal.FieldByName('is_ACADEMIC').AsString<>'2')
           and (cdsOKacademic.recordcount=0)
           then begin
//         showmessage('� ��������� ��� ���� ������� "������� ������ ���"');
//         exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_ACADEMIC').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    2: If (cdbgOKDegree.CanFocus) and (not cdsOKDegree.IsEmpty) Then
         Begin
           cdbgOKdegree.Focused;
           cdsOKdegree.Delete;
           cdsOK_AfterPost(dsOKdegree.DataSet);
           if (cdsOKpersonal.FieldByName('is_DEGREE').AsString<>'2')
           and (cdsOKdegree.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "������ ������� ���"');
    //         exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_DEGREE').AsString:='2';
             cdsOKpersonal.post;
           end;

         end;
    3: If (cdbgOKaward.CanFocus) and (not cdsOKaward.IsEmpty) Then
         Begin
           cdbgOKaward.Focused;
           cdsOKaward.Delete;
           cdsOK_AfterPost(dsOKaward.DataSet);
           if (cdsOKpersonal.FieldByName('is_award').AsString<>'2')
           and (cdsOKaward.recordcount=0)
           then begin
  //           showmessage('� ��������� ��� ���� ������� "������ ���"');
    //         exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_award').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    4: If (cdbgOKScientific.CanFocus) and (not cdsOKScientific.IsEmpty) Then
         Begin
           cdbgOKscientific.Focused;
           cdsOKscientific.Delete;
           cdsOK_AfterPost(dsOKscientific.DataSet);
           if (cdsOKpersonal.FieldByName('is_scientific').AsString<>'2')
           and (cdsOKscientific.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "������� ����� ���"');
      //       exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_scientific').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    5: If (cdbgOKVoyage.CanFocus) and (not cdsOKvoyage.IsEmpty) Then
         Begin
           cdbgOKvoyage.Focused;
           cdsOKvoyage.Delete;
           cdsOK_AfterPost(dsOKvoyage.DataSet);
           if (cdsOKpersonal.FieldByName('is_voyage').AsString<>'2')
           and (cdsOKVoyage.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "���������� ������� ���"');
      //       exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_voyage').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    6: If (cdbgOKLanguage.CanFocus) and (not cdsOKlanguage.IsEmpty) Then
         Begin
           cdbgOKlanguage.Focused;
           cdsOKlanguage.Delete;
           cdsOK_AfterPost(dsOKlanguage.DataSet);
           if (cdsOKpersonal.FieldByName('is_language').AsString<>'2')
           and (cdsOKLanguage.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "��.��. ���"');
      //       exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_language').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    7: If (cdbgOKRelation.CanFocus) and (not cdsOKrelation.IsEmpty) Then
         Begin
           cdbgOKrelation.Focused;
           cdsOKrelation.Delete;
           cdsOK_AfterPost(dsOKrelation.DataSet);
         end;
    8: If (cdbgOKPeriod.CanFocus) and (not cdsOKperiod.IsEmpty) Then
         Begin
           cdbgOKperiod.Focused;
           cdsOKperiod.Delete;
           cdsOK_AfterPost(dsOKperiod.DataSet);
         end;
    9: If (cdbgOKRise.CanFocus) and (not cdsOKrise.IsEmpty) Then
         Begin
           cdbgOKrise.Focused;
           cdsOKrise.Delete;
           cdsOK_AfterPost(dsOKrise.DataSet);
           if (cdsOKpersonal.FieldByName('is_rise').AsString<>'2')
           and (cdsOKRise.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "������������ ���"');
      //       exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_rise').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    10: If (cdbgOKElection.CanFocus) and (not cdsOKelection.IsEmpty) Then
         Begin
           cdbgOKelection.Focused;
           cdsOKelection.Delete;
           cdsOK_AfterPost(dsOKelection.DataSet);
           if (cdsOKpersonal.FieldByName('is_Election').AsString<>'2')
           and (cdsOKelection.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "�������� ���"');
      //       exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_Election').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    11: If (cdbgOKPremium.CanFocus) and (not cdsOKpremium.IsEmpty) Then
         Begin
           cdbgOKpremium.Focused;
           cdsOKpremium.Delete;
           cdsOK_AfterPost(dsOKpremium.DataSet);
           if (cdsOKpersonal.FieldByName('is_Premium').AsString<>'2')
           and (cdsOKPremium.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "��� ������ ���"');
      //       exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_Premium').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    12: If (cdbgOKArmy.CanFocus) and (not cdsOKarmy.IsEmpty) Then
         Begin
           cdbgOKarmy.Focused;
           cdsOKarmy.Delete;
           cdsOK_AfterPost(dsOKarmy.DataSet);
           if (cdsOKpersonal.FieldByName('is_Army').AsString<>'2')
           and (cdsOKArmy.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "����� ���"');
      //       exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_Army').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    13: If (cdbgOKParty.CanFocus) and (not cdsOKparty.IsEmpty) Then
         Begin
           cdbgOKparty.Focused;
           cdsOKparty.Delete;
           cdsOK_AfterPost(dsOKparty.DataSet);
           if (cdsOKpersonal.FieldByName('is_Party').AsString<>'2')
           and (cdsOKparty.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "������ ���"');
    //         exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_Party').AsString:='2';
             cdsOKpersonal.post;
           end;

         end;
    14: If (cdbgOKYouth.CanFocus) and (not cdsOKyouth.IsEmpty) Then
         Begin
           cdbgOKyouth.Focused;
           cdsOKyouth.Delete;
           cdsOK_AfterPost(dsOKyouth.DataSet);
         end;
//    15: If (cdbgOKPost.CanFocus) and (not cdsOKpost.IsEmpty) Then
//         Begin
//           cdbgOKpost.Focused;
//           cdsOKpost.Delete;
//           cdsOK_AfterPost(dsOKpost.DataSet);
//         end;
    15: If (cdbgOKLeave.CanFocus) and (not cdsOKleave.IsEmpty) Then
         Begin
           cdbgOKleave.Focused;
           cdsOKleave.Delete;
           cdsOK_AfterPost(dsOKleave.DataSet);
         end;
    16: If (cdbgOKConvictions.CanFocus) and (not cdsOKconvictions.IsEmpty) Then
         Begin

           exeCsqlpar('select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3  and priznak=:p_4',
                cdsOKConvictions.FieldByName('branch').AsString,
                cdsOKConvictions.FieldByName('id').AsString,
                cdsOKConvictions.FieldByName('personal_code').AsString,
                '3' // 3������� ���
            );

           cdbgOKconvictions.Focused;
           cdsOKconvictions.Delete;
           cdsOK_AfterPost(dsOKconvictions.DataSet);
           if (cdsOKpersonal.FieldByName('is_Convictions').AsString<>'2')
           and (cdsOKConvictions.recordcount=0)
           then begin
    //         showmessage('� ��������� ��� ���� ������� "��������� ���"');
      //       exit;
             cdsOKpersonal.edit;
             cdsOKpersonal.FieldByName('is_Convictions').AsString:='2';
             cdsOKpersonal.post;
           end;
         end;
    17: If (cdbgOKAddInform.CanFocus) and (not cdsOKAddInform.IsEmpty) Then
         Begin

           execsqlpar('select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3  and priznak=:p_4',
                 cdsOKAddInform.FieldByName('branch').AsString,
                 cdsOKAddInform.FieldByName('id').AsString,
                 cdsOKAddInform.FieldByName('personal_code').AsString,
                 '4' // 4 ������� �������
            );

           cdbgOKaddinform.Focused;
           cdsOKaddinform.Delete;
           cdsOK_AfterPost(dsOKaddinform.DataSet);
         end;
    18: If (cdbgOKPenalty.CanFocus) and (not cdsOKPenalty.IsEmpty) Then
         Begin
           cdbgOKpenalty.Focused;
           cdsOKpenalty.Delete;
           cdsOK_AfterPost(dsOKpenalty.DataSet);
         end;
    19: If (cdbgOKChangeFIO.CanFocus) and (not cdsOKChangeFIO.IsEmpty) Then
         Begin
           cdbgOKchangeFIO.Focused;
           cdsOKchangeFIO.Delete;
           cdsOK_AfterPost(dsOKchangeFIO.DataSet);
         end;
    20: begin
    // ���� ��������� ��-�������
        end;
    21: If (cdbgOKhospital.CanFocus) and (not cdsOKhospital.IsEmpty) Then
         Begin
           cdbgOKhospital.Focused;
            cdsOKhospital.Delete;
           cdsOK_AfterPost(dsOKhospital.DataSet);
         end;
    22: If (cdbgOKprivilege.CanFocus) and (not cdsOKprivilege.IsEmpty) Then
         Begin
           cdbgOKprivilege.Focused;
            cdsOKprivilege.Delete;
           cdsOK_AfterPost(dsOKprivilege.DataSet);
         end;
    23: If (cdbgOKincrease.CanFocus) and (not cdsOKincrease.IsEmpty) Then
         Begin
           cdbgOKincrease.Focused;
            cdsOKincrease.Delete;
           cdsOK_AfterPost(dsOKincrease.DataSet);
         end;
    24: If (cdbgok_business_voyage.CanFocus) and (not cdsok_business_voyage.IsEmpty) Then
         Begin
           cdbgok_business_voyage.Focused;
            cdsok_business_voyage.Delete;
           cdsOK_AfterPost(dsok_business_voyage.DataSet);
         end;
    26: If (cdbgok_zp_rate.CanFocus) and (not cdsok_zp_rate.IsEmpty) Then
         Begin
           cdbgok_zp_rate.Focused;
            cdsok_zp_rate.Delete;
           cdsOK_AfterPost(dsok_zp_rate.DataSet);
         end;
    27: If (cdbgok_freedays.CanFocus) and (not cdsok_freedays.IsEmpty) Then
         Begin
           cdbgok_freedays.Focused;
            cdsok_freedays.Delete;
           cdsOK_AfterPost(dsok_freedays.DataSet);
         end;
   End;

 End;

end;

procedure TBOKFormSTAT.cdsOKEducationAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsOKEducation.FieldByName('NOSTRA_DATE').EditMask  := '!09/09/0099;1;_';
    cdsOKEducation.FieldByName('diplom_date').EditMask    := '!09/09/0099;1;_';
    cdsOKEducation.MasterSource    := dsOKPersonal;
    cdsOKEducation.IndexFieldNames := 'branch;personal_code';
    cdsOKEducation.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.ActDetailUndoExecute(Sender: TObject);
begin
//if  cds.State in [dsEditModes] then cds.Cancel;

     If cdsOKPERsonal.State in dsEditModes    Then cdsOKPERsonal.Cancel;

     If cdsOKEducation.State in dsEditModes    Then cdsOKEducation.Cancel;
     If cdsOKacademic.State in dsEditModes     Then cdsOKacademic.Cancel;
     If cdsOKDegree.State in dsEditModes       Then cdsOKDegree.Cancel;
     If cdsOKaward.State in dsEditModes        Then cdsOKaward.Cancel;
     If cdsOKScientific.State in dsEditModes   Then cdsOKScientific.Cancel;
     If cdsOKVoyage.State in dsEditModes       Then cdsOKVoyage.Cancel;
     If cdsOKLanguage.State in dsEditModes     Then cdsOKLanguage.Cancel;
     If cdsOKRelation.State in dsEditModes     Then cdsOKRelation.Cancel;
     If cdsOKPeriod.State in dsEditModes       Then cdsOKPeriod.Cancel;
     If cdsOKRise.State in dsEditModes         Then cdsOKRise.Cancel;
     If cdsOKElection.State in dsEditModes     Then cdsOKElection.Cancel;
     If cdsOKPremium.State in dsEditModes      Then cdsOKPremium.Cancel;
     If cdsOKArmy.State in dsEditModes         Then cdsOKArmy.Cancel;
     If cdsOKParty.State in dsEditModes        Then cdsOKParty.Cancel;
     If cdsOKYouth.State in dsEditModes        Then cdsOKYouth.Cancel;
     If cdsOKLeave.State in dsEditModes        Then cdsOKLeave.Cancel;
     If cdsOKConvictions.State in dsEditModes  Then cdsOKConvictions.Cancel;
     If cdsOKAddInform.State in dsEditModes    Then cdsOKAddInform.Cancel;
     If cdsOKPenalty.State in dsEditModes      Then cdsOKPenalty.Cancel;
     If cdsOKChangeFIO.State in dsEditModes    Then cdsOKChangeFIO.Cancel;

     If cdsOKhospital.State in dsEditModes        Then cdsOKhospital.Cancel;
     If cdsOKprivilege.State in dsEditModes       Then cdsOKprivilege.Cancel;
     If cdsOKincrease.State in dsEditModes        Then cdsOKincrease.Cancel;
     If cdsok_business_voyage.State in dsEditModes        Then cdsok_business_voyage.Cancel;
     If cdsok_zp_rate.State in dsEditModes        Then cdsok_zp_rate.Cancel;
     If cdsok_freedays.State in dsEditModes        Then cdsok_freedays.Cancel;

{
  Case PCDetails.ActivePageIndex of
     0: If (cdbgOKEducation.CanFocus)   Then cdsOKEducation.Cancel;
     1: If (cdbgOKacademic.CanFocus)    Then cdsOKacademic.Cancel;
     2: If (cdbgOKDegree.CanFocus)      Then cdsOKDegree.Cancel;
     3: If (cdbgOKaward.CanFocus)       Then cdsOKaward.Cancel;
     4: If (cdbgOKScientific.CanFocus)  Then cdsOKScientific.Cancel;
     5: If (cdbgOKVoyage.CanFocus)      Then cdsOKVoyage.Cancel;
     6: If (cdbgOKLanguage.CanFocus)    Then cdsOKLanguage.Cancel;
     7: If (cdbgOKRelation.CanFocus)    Then cdsOKRelation.Cancel;
     8: If (cdbgOKPeriod.CanFocus)      Then cdsOKPeriod.Cancel;
     9: If (cdbgOKRise.CanFocus)        Then cdsOKRise.Cancel;
    10: If (cdbgOKElection.CanFocus)    Then cdsOKElection.Cancel;
    11: If (cdbgOKPremium.CanFocus)     Then cdsOKPremium.Cancel;
    12: If (cdbgOKArmy.CanFocus)        Then cdsOKArmy.Cancel;
    13: If (cdbgOKParty.CanFocus)       Then cdsOKParty.Cancel;
    14: If (cdbgOKYouth.CanFocus)       Then cdsOKYouth.Cancel;
//    15: If (cdbgOKPost.CanFocus)        Then cdsOKPost.Cancel;
    15: If (cdbgOKLeave.CanFocus)       Then cdsOKLeave.Cancel;
    16: If (cdbgOKConvictions.CanFocus) Then cdsOKConvictions.Cancel;
    17: If (cdbgOKAddInform.CanFocus)   Then cdsOKAddInform.Cancel;
    18: If (cdbgOKPenalty.CanFocus)     Then cdsOKPenalty.Cancel;
    19: If (cdbgOKChangeFIO.CanFocus)   Then cdsOKChangeFIO.Cancel;
  End;
}

end;

procedure TBOKFormSTAT.cdsOKAcademicAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKAcademic.FieldByName('academic_date').EditMask  := '!09/09/0099;1;_';
    cdsOKAcademic.MasterSource    := dsOKPersonal;
    cdsOKAcademic.IndexFieldNames := 'branch;personal_code';
    cdsOKAcademic.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_1Show(Sender: TObject);
begin
  if cdsOKAcademic.Active then
  Begin
    Exit;
  End;

        cdsOKAcademic.close;
        with cdsOKAcademic.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKAcademic, SQL_OKAcademic+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKAcademic, SQL_OKAcademic+' where branch=:p_1');
  cdsOKAcademic.Close;
  cdsOKAcademic.DisableControls;
  if not cdsSSOKAcademic_Set.Active then LoadData(cdsSSOKAcademic_Set, SQL_SSOKAcademic_Set);

  addLookUpField(cdsOKAcademic, cdsSSokAcademic_Set, 'academic_code_show', 'academic_code', 'academic_code', 'academic_name', True);
  addLookUpField(cdsOKacademic, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsOKAcademic.Open;
  cdsOKAcademic.EnableControls;

end;

procedure TBOKFormSTAT.cdsOKDegreeAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKDegree.FieldByName('degree_date').EditMask  := '!09/09/0099;1;_';
    cdsOKDegree.MasterSource    := dsOKPersonal;
    cdsOKDegree.IndexFieldNames := 'branch;personal_code';
    cdsOKDegree.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.cdsOKAwardAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKAward.FieldByName('award_date').EditMask  := '!09/09/0099;1;_';
    cdsOKAward.MasterSource    := dsOKPersonal;
    cdsOKAward.IndexFieldNames := 'branch;personal_code';
    cdsOKAward.MasterFields    := 'branch;personal_code';
  End;
end;

procedure TBOKFormSTAT.TabDegree_2Show(Sender: TObject);
begin
  if cdsOKDegree.Active then
  Begin
    Exit;
  End;

        cdsOKDegree.close;
        with cdsOKDegree.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKDegree, SQL_OKDegree+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKDegree, SQL_OKDegree+' where branch=:p_1');
  cdsOKDegree.Close;
  cdsOKDegree.DisableControls;
  if not cdsSSOKDegree_Set.Active then LoadData(cdsSSOKDegree_Set, SQL_SSOKDegree_Set);

  addLookUpField(cdsOKDegree, cdsSSokDegree_Set, 'degree_code_show', 'degree_code', 'degree_code', 'degree_name', True);
  addLookUpField(cdsOKdegree, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsOKDegree.Open;
  cdsOKDegree.EnableControls;

end;

procedure TBOKFormSTAT.TabSheet_3Show(Sender: TObject);
begin

  if cdsOKAward.Active then
  Begin
    Exit;
  End;

        cdsOKAward.close;
        with cdsOKAward.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKAward, SQL_OKAward+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKAward, SQL_OKAward+' where branch=:p_1');
  cdsOKAward.Close;
  cdsOKAward.DisableControls;

  addLookUpField(cdsOKAward, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', True);

  cdsOKAward.Open;
  cdsOKAward.EnableControls;

end;

procedure TBOKFormSTAT.cdsOKScientificAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKScientific.FieldByName('scientific_date').EditMask  := '!09/09/0099;1;_';
    cdsOKScientific.MasterSource    := dsOKPersonal;
    cdsOKScientific.IndexFieldNames := 'branch;personal_code';
    cdsOKScientific.MasterFields    := 'branch;personal_code';
  End;
end;

procedure TBOKFormSTAT.TabOKScientific_4Show(Sender: TObject);
begin
  if cdsOKScientific.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKScientific, SQL_OKScientific);
  cdsOKScientific.Close;
  cdsOKScientific.DisableControls;

  addLookUpField(cdsOKScientific, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', True);

  cdsOKScientific.Open;
  cdsOKScientific.EnableControls;

end;

procedure TBOKFormSTAT.TabSheet_5Show(Sender: TObject);
begin
  if cdsOKVoyage.Active then
  Begin
    Exit;
  End;


        cdsOKVoyage.close;
        with cdsOKVoyage.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKVoyage, SQL_OKVoyage+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKVoyage, SQL_OKVoyage+' where branch=:p_1');
  cdsOKVoyage.Close;
  cdsOKVoyage.DisableControls;

  addLookUpField(cdsOKVoyage, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);
  addLookUpField(cdsOKVoyage, cdsS_STR, 'voyage_str_show','voyage_str', 'code_str','name',   false);

  cdsOKVoyage.Open;
  cdsOKVoyage.EnableControls;
end;

procedure TBOKFormSTAT.cdsOkLanguageAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKLanguage.FieldByName('Language_date').EditMask  := '!09/09/0099;1;_';
    cdsOKLanguage.MasterSource    := dsOKPersonal;
    cdsOKLanguage.IndexFieldNames := 'branch;personal_code';
    cdsOKLanguage.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_6Show(Sender: TObject);
begin
  if cdsOKLanguage.Active then
  Begin
    Exit;
  End;

        cdsOKLanguage.close;
        with cdsOKLanguage.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKLanguage, SQL_OKLanguage+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKLanguage, SQL_OKLanguage+' where branch=:p_1');
  cdsOKLanguage.Close;
  cdsOKLanguage.DisableControls;

  if not cdsSSOKLanguage_Set.Active then LoadData(cdsSSOKLanguage_Set, SQL_SSOKLanguage_Set);
  if not cdsSSOKLevelLanguage_Set.Active then LoadData(cdsSSOKLevelLanguage_Set, SQL_SSOKLevelLanguage_Set);

  addLookUpField(cdsOKLanguage, cdsSSokLanguage_Set, 'language_code_show', 'language_code', 'language_code', 'language_name', True);
  addLookUpField(cdsOKLanguage, cdsSSokLevelLanguage_Set, 'level_code_show', 'level_code', 'level_language_code', 'level_language_name', False);
  addLookUpField(cdsOKLanguage, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsOKLanguage.Open;
  cdsOKLanguage.EnableControls;
{
Voyage
}

end;

procedure TBOKFormSTAT.cdsOkRelationAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
//    cdsOKRelation.FieldByName('relation_birthday').EditMask  := '!09/09/0099;1;_';
    cdsOKRelation.MasterSource    := dsOKPersonal;
    cdsOKRelation.IndexFieldNames := 'branch;personal_code';
    cdsOKRelation.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_7Show(Sender: TObject);
begin
  if cdsOKRelation.Active then
  Begin
    Exit;
  End;

        cdsOKRelation.close;
        with cdsOKRelation.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKRelation, SQL_OKRelation+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKRelation, SQL_OKRelation+' where branch=:p_1');
  cdsOKRelation.Close;
  cdsOKRelation.DisableControls;

  if not cds_Str.Active then LoadData(cds_Str, SQL_str);
  if not cds_Region.Active then LoadData(cds_Region, SQL_Sregion);
  if not cds_distr.Active then LoadData(cds_distr, SQL_Sdistr);

  if not cdsSSOKRelation_Set.Active then LoadData(cdsSSOKRelation_Set, SQL_SSOKRelation_Set);
 //     (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
 // ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',' ��� ���� � ������������� ������� � cds-����������� ')
  addLookUpField(cdsOKRelation, cdsSSokRelation_Set, 'relation_code_show', 'relation_code', 'relation_code', 'relation_name', True);
  addLookUpField(cdsOKRelation, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsOKRelation.Open;
  cdsOKRelation.EnableControls;

end;

procedure TBOKFormSTAT.cdsOKPeriodAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsOKPeriod.FieldByName('in_office_date').EditMask  := '!09/09/0099;1;_';
    cdsOKPeriod.FieldByName('out_office_date').EditMask := '!09/09/0099;1;_';
    cdsOKPeriod.FieldByName('basis_date').EditMask      := '!09/09/0099;1;_';
    cdsOKPeriod.MasterSource    := dsOKPersonal;
    cdsOKPeriod.IndexFieldNames := 'branch;personal_code';
    cdsOKPeriod.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_8Show(Sender: TObject);
var sql_ :string;
  k:integer;
begin
  if cdsOKPeriod.Active then
  Begin
    Exit;
  End;
  k:=0;
  TRY
    k:=k+1;
        cdsOKPeriod.close;
        with cdsOKPeriod.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//    sql_ := SQL_OKPeriod+' where branch = '+''''+curBranch +'''';
    sql_ := SQL_OKPeriod+' where branch=:p_1';
    LoadData(cdsOKPeriod, SQL_);

  // lookup ���� - ���� ���� :)
    cdsOKPeriod.Close;
    cdsOKPeriod.DisableControls;

    sql_ := SQL_Doljn;
    k:=k+1;
    if not cdsDoljn.Active then LoadData(cdsDoljn, SQL_);
    sql_ :=    SQL_Pr_off;
    k:=k+1;
    if not cdsPr_off.Active then LoadData(cdsPr_off, SQL_);


    sql_ :=   SQL_SSOKTypePeriod_Set ;
    k:=k+1;
    if not cdsSSOKTypePeriod_Set.Active
    then LoadData(cdsSSOKTypePeriod_Set, SQL_);
    sql_ :=   SQL_SSOKArticle_Set  ;
    k:=k+1;
    if not cdsSSOKArticle_Set.Active
    then LoadData(cdsSSOKArticle_Set, SQL_);
    sql_ := SQL_SSOKBaseMove_Set;
    k:=k+1;
    if not cdsSSOKBaseMove_Set.Active
    then LoadData(cdsSSOKBaseMove_Set, SQL_);

    k:=k+1;
    sql_ := SQL_SS_OK_POST;
    if not cdsSS_OK_POST.Active
    then LoadData(cdsSS_OK_POST, SQL_);

    k:=k+1;
    sql_ := SQL_SS_OK_DEPARTMENT;
    if not cdsSS_OK_DEPARTMENT.Active
    then LoadData(cdsSS_OK_DEPARTMENT, SQL_);

    k:=k+1;
    addLookUpField(cdsOKPeriod, cdsSSokTypePeriod_Set, 'type_period_code_show', 'type_period_code', 'type_period_code', 'type_period_name', True);
    k:=k+1;
    addLookUpField(cdsOKPeriod, cdsSSokArticle_Set, 'article_code_show', 'article_code', 'article_code', 'article_character', False);
    k:=k+1;
    addLookUpField(cdsOKPeriod, cdsSSokBaseMove_Set, 'base_move_show', 'base_move_code', 'base_move_code', 'base_move_name', False);
    k:=k+1;
    addLookUpField(cdsOKPeriod, cdsSS_OK_POST, 'post_show', 'post_code', 'post_code', 'post_name', False);
    k:=k+1;
    addLookUpField(cdsOKPeriod, cdsSS_OK_DEPARTMENT, 'department_show', 'department_code', 'department_code', 'department_name', False);
    k:=k+1;
    addLookUpField(cdsOKperiod, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

    k:=k+1;
//MemoTest.lines.add('*1');
    cdsOKPeriod.Open;
//MemoTest.lines.add('*2');
    k:=k+1;
    cdsOKPeriod.EnableControls;

  Except on e:exception
    do begin
      showmessage(inttostr(k)+') '+sql_+#13+e.Message);
    end;
  End;

//if cdsOKPeriod.Active
//then MemoTest.lines.add('*22*');

end;

procedure TBOKFormSTAT.cdsOKRiseAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
    cdsOKRise.MasterSource    := dsOKPersonal;
    cdsOKRise.IndexFieldNames := 'branch;personal_code';
    cdsOKRise.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabOKRise_9Show(Sender: TObject);
begin
  if cdsOKRise.Active then
  Begin
    Exit;
  End;

        cdsOKRise.close;
        with cdsOKRise.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKRise, SQL_OKRise+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKRise, SQL_OKRise+' where branch=:p_1');

  cdsOKrise.Close;
  cdsOKrise.DisableControls;

  addLookUpField(cdsOKrise, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  cdsOKrise.Open;
  cdsOKrise.EnableControls;

{
// lookup ���� - ���� ���� :)
  cdsOKPeriod.Close;
  cdsOKPeriod.DisableControls;

  if not cdsSSOKTypePeriod_Set.Active then LoadData(cdsSSOKTypePeriod_Set, SQL_SSOKTypePeriod_Set);
  if not cdsSSOKArticle_Set.Active then LoadData(cdsSSOKArticle_Set, SQL_SSOKArticle_Set);

  addLookUpField(cdsOKTypePeriod_Set, cdsSSokTypePeriod_Set_Set, 'type_period_code_show', 'type_period_code', 'type_period_code', 'type_period_name', True);
  addLookUpField(cdsOKArticle, cdsSSokArticle_Set, 'article_code_show', 'article_code', 'article_code', 'article_num', False);

  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKPeriod.Open;
  cdsOKPeriod.EnableControls;
}
end;

procedure TBOKFormSTAT.cdsOKElectionAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
//    cdsOKElection.FieldByName('election_date_begin').EditMask  := '!09/09/0099;1;_';
//    cdsOKElection.FieldByName('election_date_end').EditMask  := '!09/09/0099;1;_';
    cdsOKElection.MasterSource    := dsOKPersonal;
    cdsOKElection.IndexFieldNames := 'branch;personal_code';
    cdsOKElection.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_10Show(Sender: TObject);
begin
  if cdsOKElection.Active then
  Begin
    Exit;
  End;

        cdsOKElection.close;
        with cdsOKElection.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKElection, SQL_OKElection+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKElection, SQL_OKElection+' where branch=:p_1');

  cdsOKElection.Close;
  cdsOKElection.DisableControls;

  if not cdsSSOKelection_Set.Active then LoadData(cdsSSOKelection_Set, SQL_SSOKelection_Set);
  if not cdsSSOKelection_Set2.Active then LoadData(cdsSSOKelection_Set2, SQL_SSOKElection_Source);
  if not cdsSSOKelection_Set3.Active then LoadData(cdsSSOKelection_Set3, SQL_SSOKElection_Source3);

  addLookUpField(cdsOKElection, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);
//  addLookUpField(cdsOKelection, cdsSSokElection_Set2, 'name', 'id', 'election_code', 'election_name_show', False);
  addLookUpField(cdsOKelection, cdsSSokElection_Set2, 'election_name_show','election_code', 'id', 'name',  False);
  addLookUpField(cdsOKelection, cdsSSokElection_Set3, 'election_address_show', 'election_code', 'id', 'name', False);

  cdsOKElection.Open;
  cdsOKElection.EnableControls;

{
// lookup ���� - ���� ���� :)
  cdsOKPeriod.Close;
  cdsOKPeriod.DisableControls;

  if not cdsSSOKTypePeriod_Set.Active then LoadData(cdsSSOKTypePeriod_Set, SQL_SSOKTypePeriod_Set);
  if not cdsSSOKArticle_Set.Active then LoadData(cdsSSOKArticle_Set, SQL_SSOKArticle_Set);

  addLookUpField(cdsOKTypePeriod_Set, cdsSSokTypePeriod_Set_Set, 'type_period_code_show', 'type_period_code', 'type_period_code', 'type_period_name', True);
  addLookUpField(cdsOKArticle, cdsSSokArticle_Set, 'article_code_show', 'article_code', 'article_code', 'article_num', False);

  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKPeriod.Open;
  cdsOKPeriod.EnableControls;
}

end;

procedure TBOKFormSTAT.cdsOKPremiumAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
//    cdsOKPremium.FieldByName('premium_date').EditMask  := '!09/09/0099;1;_';
    cdsOKPremium.MasterSource    := dsOKPersonal;
    cdsOKPremium.IndexFieldNames := 'branch;personal_code';
    cdsOKPremium.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_11Show(Sender: TObject);
begin
  if cdsOKPremium.Active then
  Begin
    Exit;
  End;

        cdsOKPremium.close;
        with cdsOKPremium.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKPremium, SQL_OKPremium+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKPremium, SQL_OKPremium+' where branch=:p_1');
  cdsOKPremium.Close;
  cdsOKPremium.DisableControls;

  addLookUpField(cdsOKPremium, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  cdsOKPremium.Open;
  cdsOKPremium.EnableControls;

end;

procedure TBOKFormSTAT.cdsOKArmyAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
//    cdsOKArmy.FieldByName('relation_birthday').EditMask  := '!09/09/0099;1;_';
    cdsOKArmy.MasterSource    := dsOKPersonal;
    cdsOKArmy.IndexFieldNames := 'branch;personal_code';
    cdsOKArmy.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_12Show(Sender: TObject);
begin
  if cdsOKArmy.Active then
  Begin
    Exit;
  End;

        cdsOKArmy.close;
        with cdsOKArmy.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
//  LoadData(cdsOKArmy, SQL_OKArmy+' where branch = '+''''+curBranch +'''');
  LoadData(cdsOKArmy, SQL_OKArmy+' where branch=:p_1');

// lookup ���� - ���� ���� :)
  cdsOKArmy.Close;
  cdsOKArmy.DisableControls;

  if not cdsSSOKArmy_Set.Active then LoadData(cdsSSOKArmy_Set, SQL_SSOKArmy_Set);
  if not cdsSSOKFitnessArmy_Set.Active then LoadData(cdsSSOKFitnessArmy_Set, SQL_SSOKFitnessArmy_Set);
  if not cdsSSokarmygroup.Active then LoadData( cdsSSokarmygroup , SQL_SSokarmygroup);
  if not cdsSSokCATEGORYARMY.Active then LoadData( cdsSSokCATEGORYARMY , SQL_SSokCATEGORYARMY);
  if not cdsSSokMILITARYRANK.Active then LoadData( cdsSSokMILITARYRANK , SQL_SSokMILITARYRANK);
  if not cdsSSokSTAFF.Active then LoadData( cdsSSokSTAFF , SQL_SSokSTAFF);
  if not cdsSSokTYPEFORCE.Active then LoadData( cdsSSokTYPEFORCE , SQL_SSokTYPEFORCE);

  addLookUpField(cdsOKArmy, cdsSSokArmy_Set, 'army_code_show', 'army_code', 'army_code', 'army_type', True);
  addLookUpField(cdsOKArmy, cdsSSokFitnessArmy_Set, 'fitness_army_code_show', 'fitness_army_code', 'fitness_army_code', 'fitness_army_type', False);
  addLookUpField(cdsOKarmy, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);
  addLookUpField(cdsOKarmy, cdsSSokarmygroup, 'army_group_show', 'army_group_code', 'army_group_code', 'army_group_name', False);
  addLookUpField(cdsOKarmy, cdsSSokCATEGORYARMY, 'CATEGORY_ARMY_show', 'CATEGORY_ARMY_code', 'CATEGORY_ARMY_code', 'CATEGORY_ARMY_name', False);
  addLookUpField(cdsOKarmy, cdsSSokMILITARYRANK, 'MILITARY_RANK_show', 'MILITARY_RANK_code', 'MILITARY_RANK_code', 'MILITARY_RANK_name', False);
  addLookUpField(cdsOKarmy, cdsSSokSTAFF, 'STAFF_show', 'STAFF_code', 'STAFF_code', 'STAFF_name', False);
  addLookUpField(cdsOKarmy, cdsSSokTYPEFORCE, 'TYPE_FORCE_show', 'TYPE_FORCE_code', 'TYPE_FORCE_code', 'TYPE_FORCE_name', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKArmy.Open;
  cdsOKArmy.EnableControls;

end;

procedure TBOKFormSTAT.cdsOKPartyAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
//    cdsOKParty.FieldByName('party_outdate').EditMask  := '!09/09/0099;1;_';
//    cdsOKParty.FieldByName('punishment_date').EditMask  := '!09/09/0099;1;_';
    cdsOKParty.MasterSource    := dsOKPersonal;
    cdsOKParty.IndexFieldNames := 'branch;personal_code';
    cdsOKParty.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_13Show(Sender: TObject);
begin
  if cdsOKParty.Active then
  Begin
    Exit;
  End;

        cdsOKParty.close;
        with cdsOKParty.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
  LoadData(cdsOKParty, SQL_OKParty+' where branch=:p_1');

// 1. lookup ���� - ���� ���� :)
  cdsOKParty.Close;
  cdsOKParty.DisableControls;

// 2. �������� ���������-�������
  if not cdsSSOKParty_Set.Active then LoadData(cdsSSOKParty_Set, SQL_SSOKParty_Set);

// 3. ���������� lookup �����
  addLookUpField(cdsOKParty, cdsSSokParty_Set, 'party_code_show', 'party_code', 'party_code', 'party_name', True);
  addLookUpField(cdsOKparty, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKparty.Open;
  cdsOKparty.EnableControls;

end;

procedure TBOKFormSTAT.cdsOKYouthAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
    cdsOKYouth.FieldByName('in_date').EditMask  := '!09/09/0099;1;_';
    cdsOKYouth.FieldByName('out_date').EditMask  := '!09/09/0099;1;_';
    cdsOKYouth.MasterSource    := dsOKPersonal;
    cdsOKYouth.IndexFieldNames := 'branch;personal_code';
    cdsOKYouth.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_14Show(Sender: TObject);
begin
  if cdsOKYouth.Active then
  Begin
    Exit;
  End;

        cdsOKYouth.close;
        with cdsOKYouth.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
  LoadData(cdsOKYouth, SQL_OKYouth+' where branch=:p_1');

// 1. lookup ���� - ���� ���� :)
  cdsOKYouth.Close;
  cdsOKYouth.DisableControls;

// 2. �������� ���������-�������
  if not cdsSSOKYouth_Set.Active then LoadData(cdsSSOKYouth_Set, SQL_SSOKYouth_Set);

// 3. ���������� lookup �����
  addLookUpField(cdsOKYouth, cdsSSokYouth_Set, 'youth_code_show', 'youth_code', 'youth_code', 'youth_name', True);
  addLookUpField(cdsOKyouth, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKyouth.Open;
  cdsOKyouth.EnableControls;

end;

procedure TBOKFormSTAT.cdsOKLeaveAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
    cdsOKLeave.FieldByName('begin_year').EditMask  := '!09/09/0099;1;_';
    cdsOKLeave.FieldByName('end_year').EditMask  := '!09/09/0099;1;_';
    cdsOKLeave.FieldByName('date_in_leave').EditMask  := '!09/09/0099;1;_';
    cdsOKLeave.FieldByName('date_out_leave').EditMask  := '!09/09/0099;1;_';
    cdsOKLeave.FieldByName('date_basis').EditMask  := '!09/09/0099;1;_';
    cdsOKLeave.FieldByName('date_recall_begin').EditMask  := '!09/09/0099;1;_';
    cdsOKLeave.FieldByName('date_recall_end').EditMask  := '!09/09/0099;1;_';
    cdsOKLeave.FieldByName('date_order_recall').EditMask  := '!09/09/0099;1;_';
    cdsOKLeave.MasterSource    := dsOKPersonal;
    cdsOKLeave.IndexFieldNames := 'branch;personal_code';
    cdsOKLeave.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.cdsOKConvictionsAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
//    cdsOKConvictions.FieldByName('convictions_date').EditMask  := '!09/09/0099;1;_';
    cdsOKConvictions.MasterSource    := dsOKPersonal;
    cdsOKConvictions.IndexFieldNames := 'branch;personal_code';
    cdsOKConvictions.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.cdsOKAddInformAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
    cdsOKAddInform.FieldByName('addInform_date').EditMask  := '!09/09/0099;1;_';
    cdsOKAddInform.MasterSource    := dsOKPersonal;
    cdsOKAddInform.IndexFieldNames := 'branch;personal_code';
    cdsOKAddInform.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.cdsOKPenaltyAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����

    cdsOKPenalty.FieldByName('penalty_date').EditMask  := '!09/09/0099;1;_';
    cdsOKPenalty.MasterSource    := dsOKPersonal;
    cdsOKPenalty.IndexFieldNames := 'branch;personal_code';
    cdsOKPenalty.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.cdsOKChangeFIOAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
    cdsOKChangeFIO.FieldByName('change_date').EditMask  := '!09/09/0099;1;_';
    cdsOKChangeFIO.MasterSource    := dsOKPersonal;
    cdsOKChangeFIO.IndexFieldNames := 'branch;personal_code';
    cdsOKChangeFIO.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.TabSheet_16Show(Sender: TObject);
begin

  if cdsOKLeave.Active then
  Begin
    Exit;
  End;

        cdsOKLeave.close;
        with cdsOKLeave.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
  LoadData(cdsOKLeave, SQL_OKLeave+' where branch=:p_1');

// 1. lookup ���� - ���� ���� :)
  cdsOKLeave.Close;
  cdsOKLeave.DisableControls;

// 2. �������� ���������-�������
  if not cdsSSOKLeave_Set.Active then LoadData(cdsSSOKLeave_Set, SQL_SSOKLeave_Set);

// 3. ���������� lookup �����
  addLookUpField(cdsOKLeave, cdsSSokLeave_Set, 'leave_code_show', 'leave_code', 'leave_code', 'leave_name', True);
  addLookUpField(cdsOKLeave, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKLeave.Open;
  cdsOKLeave.EnableControls;

end;

procedure TBOKFormSTAT.TabSheet_17Show(Sender: TObject);
begin
  if cdsOKConvictions.Active then
  Begin
    Exit;
  End;

        cdsOKConvictions.close;
        with cdsOKConvictions.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
  LoadData(cdsOKConvictions, SQL_OKConvictions+' where branch=:p_1');

  cdsOKConvictions.Close;
  cdsOKConvictions.DisableControls;

  addLookUpField(cdsOKConvictions, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  cdsOKConvictions.Open;
  cdsOKConvictions.EnableControls;

end;

procedure TBOKFormSTAT.TabSheet_18Show(Sender: TObject);
begin
  if cdsOKAddInform.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKAddInform, SQL_OKAddInform);

  cdsOKAddInform.Close;
  cdsOKAddInform.DisableControls;

  addLookUpField(cdsOKAddInform, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  cdsOKAddInform.Open;
  cdsOKAddInform.EnableControls;

end;

procedure TBOKFormSTAT.TabSheet_19Show(Sender: TObject);
begin

//showmessage('TBOKFormSTAT.TabSheet_19Show');

  if cdsOKPenalty.Active then
  Begin
    Exit;
  End;

        cdsOKPenalty.close;
        with cdsOKPenalty.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
  LoadData(cdsOKPenalty, SQL_OKPenalty+' where branch=:p_1');

// 1. lookup ���� - ���� ���� :)
  cdsOKPenalty.Close;
  cdsOKPenalty.DisableControls;

// 2. �������� ���������-�������
  if not cdsSSOKPenalty_Set.Active then LoadData(cdsSSOKPenalty_Set, SQL_SSOKPenalty_Set);

// 3. ���������� lookup �����
  addLookUpField(cdsOKPenalty, cdsSSokPenalty_Set, 'penalty_code_show', 'penalty_code', 'penalty_code', 'penalty_name', True);
  addLookUpField(cdsOKpenalty, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsOKPenalty.Open;
  cdsOKPenalty.EnableControls;

end;

procedure TBOKFormSTAT.TabSheet_20Show(Sender: TObject);
begin
  if cdsOKChangeFIO.Active then
  Begin
    Exit;
  End;

        cdsOKChangeFIO.close;
        with cdsOKChangeFIO.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
  LoadData(cdsOKChangeFIO, SQL_OKChangeFIO+' where branch=:p_1');

  cdsOKChangeFIO.Close;
  cdsOKChangeFIO.DisableControls;

  addLookUpField(cdsOKChangeFIO, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  cdsOKChangeFIO.Open;
  cdsOKChangeFIO.EnableControls;

end;

procedure TBOKFormSTAT.cdsOKPostAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
    cdsOKPost.FieldByName('basis_date').EditMask  := '!09/09/0099;1;_';
    cdsOKPost.FieldByName('appointment_date').EditMask  := '!09/09/0099;1;_';
    cdsOKPost.MasterSource    := dsOKPersonal;
    cdsOKPost.IndexFieldNames := 'branch;personal_code;appointment_date';
    cdsOKPost.MasterFields    := 'branch;personal_code';
  End;
end;

procedure TBOKFormSTAT.cdsOKPostAfterPost(DataSet: TDataSet);
//var
//    ErMessage : string;
//const
//  ERROR_NO = 'ORA-20000: ';
begin

  cdsOK_AfterPost(DataSet);

end;

procedure TBOKFormSTAT.actStatSalaryExecute(Sender: TObject);
var V_Mquantity, Hire_v_quantity: variant;
  Dekret_quantity,  I_Mquantity, Hire_quantity: integer;
//    from_okp : string;
begin
    I_Mquantity:=0;
    Hire_quantity:=0;

  try
    if curBranch=''
    then curBranch:=Branch;
  except
  end;

  try
//    from_okp :=  ' from ok_personal '+
//      ' where branch like '''+curBranch+''' '+
//      ' and department_code=' +cdsOKStat.FieldByName('department_code').AsString+
//      ' and post_code=' +cdsOKStat.FieldByName('post_code').AsString+
//      ' and special_code=' +cdsOKStat.FieldByName('special_code').AsString+
//      ' and status_code=2';

    V_Mquantity := GetSqlResultPAR('select quantity_post from ok_stat '+
      ' where branch like :p_1 '+
      ' and department_code=:p_2' +
      ' and post_code=:p_3' +
      ' and special_code=:p_4' ,
         curBranch, cdsOKStat.FieldByName('department_code').AsString,
         cdsOKStat.FieldByName('post_code').AsString, cdsOKStat.FieldByName('special_code').AsString
      );

    Hire_v_quantity := GetSqlResultPar('select count(personal_code) '+
       ' from ok_personal '+
      ' where branch like :p_1 '+
      ' and department_code=:p_2' +
      ' and post_code=:p_3' +
      ' and special_code=:p_4' +
      ' and status_code in(:p_5)',
         curBranch, cdsOKStat.FieldByName('department_code').AsString,
         cdsOKStat.FieldByName('post_code').AsString, cdsOKStat.FieldByName('special_code').AsString,
         '2'
      );

    Dekret_quantity := GetSqlResultPar('select count(personal_code) '+
       ' from ok_personal '+
      ' where branch like :p_1 '+
      ' and department_code=:p_2' +
      ' and post_code=:p_3' +
      ' and special_code=:p_4' +
      ' and status_code in(:p_5)',
         curBranch, cdsOKStat.FieldByName('department_code').AsString,
         cdsOKStat.FieldByName('post_code').AsString, cdsOKStat.FieldByName('special_code').AsString,
         '5'
      );

    cdsOKStatSalary.Close;
      with cdsOKStatSalary.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftFloat,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKStat.FieldByName('department_code').AsFloat;
          CreateParam(ftFloat,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOKStat.FieldByName('post_code').AsFloat;
          CreateParam(ftFloat,'p_4' ,ptInput);
          ParamByName('p_4').Value := cdsOKStat.FieldByName('special_code').AsFloat;
          CreateParam(ftInteger,'p_5' ,ptInput);
          ParamByName('p_5').Value := 2;
//          CreateParam(ftInteger,'p_6' ,ptInput);
//          ParamByName('p_6').Value := 5;
      end;

    LoadData(cdsOKStatSalary,'select tabno||'')''||FAMILY||'' ''||FIRST_NAME||'' ''||PATRONYMIC fio '+
       ' from ok_personal '+
      ' where branch like :p_1 '+
      ' and department_code=:p_2' +
      ' and post_code=:p_3' +
      ' and special_code=:p_4' +
      ' and status_code in (:p_5)'
      );

    cdsOKStatSalary2.Close;
      with cdsOKStatSalary2.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftFloat,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKStat.FieldByName('department_code').AsFloat;
          CreateParam(ftFloat,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOKStat.FieldByName('post_code').AsFloat;
          CreateParam(ftFloat,'p_4' ,ptInput);
          ParamByName('p_4').Value := cdsOKStat.FieldByName('special_code').AsFloat;
//          CreateParam(ftInteger,'p_5' ,ptInput);
//          ParamByName('p_5').Value := 2;
          CreateParam(ftInteger,'p_6' ,ptInput);
          ParamByName('p_6').Value := 5;
      end;

    LoadData(cdsOKStatSalary2,'select tabno||'')''||FAMILY||'' ''||FIRST_NAME||'' ''||PATRONYMIC fio '+
       ' from ok_personal '+
      ' where branch like :p_1 '+
      ' and department_code=:p_2' +
      ' and post_code=:p_3' +
      ' and special_code=:p_4' +
      ' and status_code in (:p_6)'
      );

  except
   showmessage('������� ���������� ������ ������!');
   exit;
  end;

  if VarIsNull(V_Mquantity)
  then begin
    ShowMessage('������: ��� ������ � ������� ���������� ��� �� �� ��������� ������!');
    Abort;
  end else begin
    if not VarIsNull(Hire_v_quantity)
    then begin
      I_Mquantity := V_Mquantity;
      Hire_quantity := Hire_v_quantity;
    end;

  end;

  LbDepartment.Caption := cdsOkStat.fieldbyname('department_code_show').asstring;
  LbPost.caption := cdsOkStat.fieldbyname('post_code_show').asstring;
  LbSpecial.caption := cdsOkStat.fieldbyname('special_show').asstring;

  LbVacancy.Caption :=IntToStr(I_Mquantity-Hire_quantity);
  LbHire.caption := IntToStr(Hire_quantity);
  LbDekret.caption := IntToStr(Dekret_quantity);

end;

procedure TBOKFormSTAT.actStatSaveExecute(Sender: TObject);
var sql_,errMes:string;
  k_:integer;
begin
//showmessage('department_code='+cdsOKStat.FieldByName('department_code').AsString);
  errMes:='';
  if (cdsOKStat.State in dsEditModes)
  then begin

    if cdsOKStat.fieldbyname('quantity_post').IsNull
    then begin
      errMes:=errMes+'����� ���������� ����������� � ������ ���������'+#13;
    end;

    if cdsOKStat.fieldbyname('department_code').IsNull
    then begin
      errMes:=errMes+'�����'+#13;
    end;

    if cdsOKStat.fieldbyname('post_code').IsNull
    then begin
      errMes:=errMes+'���������'+#13;
    end;

    if cdsOKStat.fieldbyname('special_code').IsNull
    then begin
      errMes:=errMes+'�������������'+#13;
    end;

////////////////////////

    if (headbranch_='09006')
    then begin
      mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
        ' where branch=:p_1',branch);
      if varisnull(mfo_category_type_code_VAR)
      then begin
        mfo_category_type_code :='0';
        showmessage('(9074)������� ��������� ������� '+branch+' � ���� �����.(��������� ���������� ��������� ��������)');
      end else begin
        mfo_category_type_code :=vartostr(mfo_category_type_code_VAR) ;
      end;
      k_ := GetSQLResultPar('SELECT count(*) FROM ss_ok_post d where d.state_notes like :p_1 '+
        ' and post_code=:p_2'+
        ' and post_code in (select post_code from ss_ok_post_category where mfo_category_type_code=:p_3)',
          'A', cdsOKStat.fieldbyname('post_code').asstring,mfo_category_type_code
        ) ;
    end else begin
      mfo_category_type_code :='-1';
      k_ := GetSQLResultPar('SELECT count(*) FROM ss_ok_post d where d.state_notes like :p_1 '+
        ' and d.level_department_code in(:p_2,:p_3) and post_code=:p_4'+
        ' ',
          'A', BossLevel,'4',cdsOKStat.fieldbyname('post_code').asstring
        ) ;

    end;

////////////////////////

      if k_=0
      then begin
        if errMes<>''
        then begin
          showmessage('(9016)��������� (��� '+cdsOKStat.fieldbyname('post_code').asstring+') �� ������� ���� �� ������ ������������ � �������(������� '+BossLevel+')'+
               #13#13+'����� ������� '+#13#13+ErrMes);
          exit;
        end else begin
          showmessage('(9020)��������� (��� '+cdsOKStat.fieldbyname('post_code').asstring+') �� ������� ���� �� ������ ������������ � �������(������� '+BossLevel+')');
          exit;
        end;
      end;

    if errMes<>''
    then begin
      showmessage('����� ���������, ������� ������� '+#13#13+ErrMes);
      exit;
    end;

    if cdsOKStat.fieldbyname('salary_fact').IsNull
    then begin
      cdsOKStat.fieldbyname('salary_fact').AsString:='0';
    end;

    cdsOKStat.Post;
{    sql_ := 'update ok_personal set special_code='+cdsOKStat.fieldbyname('special_code').AsString+
      ' where department_code='+cdsOKStat.fieldbyname('department_code').asstring +
      ' and post_code='+cdsOKStat.fieldbyname('post_code').asstring+
      ' and special_code<>'+cdsOKStat.fieldbyname('special_code').AsString;
}
    try
      sql_ := 'update ok_personal set special_code=:p_1' +
      ' where department_code=:p_2' +
      ' and post_code=:p_3' +
      ' and special_code<>:p_4';
      ExecSQLPAR(sql_,
        cdsOKStat.fieldbyname('special_code').AsString,cdsOKStat.fieldbyname('department_code').asstring,
        cdsOKStat.fieldbyname('post_code').asstring,cdsOKStat.fieldbyname('special_code').AsString
      );
      execsql('commit');
    except on e:exception
      do begin
        execsql('rollback');
        showmessage('������ ��������� ������������� �����������'+#13+e.Message+#13+sql_);
      end;
    end;
  end;

  cdsOKPersonal.Refresh;
  if treev.CanFocus then treev.Focused;
end;

procedure TBOKFormSTAT.actStatDeleteExecute(Sender: TObject);
//var
  //sql_ :string;
  //count_ :integer;
begin

  if (cdsOKStat.isEmpty)
  then begin
    showmessage('��� ������ ��� ��������!');
    exit;
  end;
{
  sql_:='select count(1) from ok_personal '+
    ' where branch=:p_1 and status_code in (:p_2,:p_3)'+
    ' and post_code=:p_4 '+
    ' and special_code=:p_5'+
    ' and department_code=:p_6';
  count_:= getsqlresultpar(sql_,branch,'2','5',cdsOKStat.fieldbyname('post_code').AsString,
     cdsOKStat.fieldbyname('special_code').AsString,
          cdsOKStat.fieldbyname('department_code').AsString);
}
//  if count_>0
//  then begin
//    showmessage('������ ������� ��������� �� �������� ����������, ���� ��� ��������� ������.');
//  end else begin
    If Application.MessageBox(PChar('������� ������ �� �������� ����������?'), PChar('������'), MB_YESNO or MB_ICONQUESTION) = mrYes
    Then Begin
      cdbgOKStat.Focused;
//      cdsOKStat.Delete;
  //    cdsOK_AfterPost(dsOKStat.DataSet);
      try
        execsqlpar('delete from ok_stat where stat_code=:p_1 and department_code=:p_2 and post_code=:p_3 and special_code=:p_4',
          cdsOKStat.fieldbyname('stat_code').AsString,cdsOKStat.fieldbyname('department_code').AsString,
          cdsOKStat.fieldbyname('post_code').AsString,cdsOKStat.fieldbyname('special_code').AsString
          );
        execsql('commit');
        cdsOKStat.refresh;
      except on e:exception
        do begin
          execsql('rollback');
          showmessage('�� ������� �������'+#13+e.Message);
          cdsOKStat.refresh;
        end;
      end;
    End;
//  end;

end;

procedure TBOKFormSTAT.actStatUndoExecute(Sender: TObject);
begin
  cdsOKStat.Cancel;
end;


procedure TBOKFormSTAT.actStatNewExecute(Sender: TObject);
//var i:integer;
begin

  if CBDep.ItemIndex=-1
  then begin
    showmessage('�������� �����!');
    exit;
  end;

  cdbgOKStat.Focused;
  cdsOKStat.readonly := false;
  cdsOKStat.Insert;

  cdsOKStat.FieldByName('department_code').AsString := edDep.text;
//          TData(CBDep.Items.Objects[CBDep.ItemIndex]).Id;
          
  cdsOKStat.FieldByName('salary_fact').AsString :='0';

end;

procedure TBOKFormSTAT.cdsOKStatBeforePost(DataSet: TDataSet);
var V : variant;
    I : integer;
//    Sal,Num : Double;
begin

  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  DataSet.Fields.FieldByName('branch').AsString := Branch;

  if cdsOKStat.State in [dsInsert]
  then begin
    V := GetSqlResultPar('select max(stat_code) from ok_stat where branch=:p_1',curbranch); // '''+Branch+'''' );

    if VarIsNull(V)
    then I:= 0
    else I:= V;

    cdsOKStat.FieldByName('stat_code').AsString := IntToStr(I+1);
  end else begin


  end;


end;

procedure TBOKFormSTAT.actSaveExistExecute(Sender: TObject);
var z,i: integer;
 sql_,ErMessage: string;
 QuantityPost_ , QuantityPostReal_ : integer;
 text_f : TextFile;
begin

  if not (cdsOKPersonal.State in dseditmodes)
  then begin
    cdsOKPersonal.edit;
  end;

  if (HeadBranch_='09006') and (cdsOKPersonal.FieldByName('passport_type_code').AsInteger <> 1)
  then begin
    cdsOKPersonal.FieldByName('passport_type_code').AsInteger := 1;
  end;

  cdsOKPERSONAL.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString := cdsOKPERSONAL.FieldByName('cod_obl_live').AsString ;
  cdsOKPERSONAL.FieldByName('HOME_ADDRESSFACT_DISTR').AsString := cdsOKPERSONAL.FieldByName('cod_distr_live').AsString ;
//  cdsOKPERSONAL.FieldByName('').AsString := cdsOKPERSONAL.FieldByName('').AsString ;
//  HOME_ADDRESSFACT_REGION_ID := cod_obl_live;
//  HOME_ADDRESSFACT_DISTR     := cod_distr_live;
//  HOME_ADDRESSFACT

  ErMessage:='';
  for i := 0 to cdbgOK_Personal.Columns.Count-1 do
  begin
    if cdbgOK_Personal.Columns.Items[i].Visible  then
    begin
      if (cdsOKPersonal.Fields.FieldByName(cdbgOK_Personal.Columns.Items[i].FieldName).AsString='')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'��������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'N')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'�� �������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'N �������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'���� �������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'������� ����������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '�� �������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '����� ��������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '����� ����������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '����� ������ ��������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '���������� ��')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '�����')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '���������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '�������������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '�������� ��')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '���� �����')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '(���)����� ��������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '(�����)����� ��������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '����� �������� �������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '����� �������� �����')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '����� ��������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '����� ���������� �������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '����� ���������� �����')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '����� ����������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '�� �������')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '��������� � ��')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'profmember')
      then
      begin
        ErMessage := ErMessage+' "'+cdbgOK_Personal.Columns.Items[i].Title.Caption+'" ';
      end;

    end;
  end;

      if (headbranch_='09006')
      then begin
        if cdsOKPersonal.FieldByName('profmember').AsString=''
        then ErMessage := ErMessage+' "��������" ';
        if cdsOKPersonal.FieldByName('telefon').AsString=''
        then ErMessage := ErMessage+' "�������(���������� ���������� ���� ���)" ';
        try
          strtoint64(cdsOKPersonal.FieldByName('telefon').AsString);
        except
          ErMessage := ErMessage+' "������� '+cdsOKPersonal.FieldByName('telefon').AsString+' ������ ���� ������ �� ���� ��� ����" ';
        end;
      end;

  if  ( cdsOKPersonal.FieldByName('reg_type_code').AsString='2')
  and (   cdsOKPersonal.FieldByName('REG_DATE_END').AsString='')
  then begin
    ErMessage := ErMessage+' "������� * ���� ��������� ��������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('HOME_ADDRESS_REGION_ID').AsString='')
  and  ( cdsOKPersonal.FieldByName('HOME_ADDRESS_DISTR').AsString='')
  and  ( cdsOKPersonal.FieldByName('Home_Address').AsString='')
  then begin
    ErMessage := ErMessage+' "��� ��������- �����,���,�����" ';
  end;

// ����� 28.11.2011
//  if  ( cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString='')
//  or  ( cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_DISTR').AsString='')
//  or  ( cdsOKPersonal.FieldByName('HOME_ADDRESSFACT').AsString='')
//  then begin
//    ErMessage := ErMessage+' "����� ����������- �����,���,�����" ';
//  end;

  if  ( cdsOKPersonal.FieldByName('Education_Title_CODE').AsString='')
  then begin
    ErMessage := ErMessage+' "�����������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('inn').AsString='')
  then begin
    ErMessage := ErMessage+' "���" ';
  end;

  if  ( cdsOKPersonal.FieldByName('nps_id').AsString='')
  then begin
    ErMessage := ErMessage+' "���������� �� *" ';
  end;

  if  ( cdsOKPersonal.FieldByName('bank_spec').AsString='')
  then begin
    ErMessage := ErMessage+' "������� ���������� ������������� *" ';
  end;

  if  ( cdsOKPersonal.FieldByName('Education_Title_CODE').AsString='')
  then begin
    ErMessage := ErMessage+' "�����������  ���������� *" ';
  end;

  if  ( cdsOKPersonal.FieldByName('is_boss').AsString='')
  then begin
    ErMessage := ErMessage+' "������ � ����������� ������ *" ';
  end;

  if  ( cdsOKPersonal.FieldByName('COD_STR_SITIZENT').AsString='')
  then begin
    ErMessage := ErMessage+' "�����������" ';
  end;

// ����� 28.11.2011
//  if  ( cdsOKPersonal.FieldByName('PASS_REG').AsString='')
//  then begin
//    ErMessage := ErMessage+' "����� �����������" ';
//  end;

  if  ( cdsOKPersonal.FieldByName('PASS_DATE').AsString='')
  then begin
    ErMessage := ErMessage+' "���� ��������� ��������" ';
  end;


  if ( strtoint(copy(datetostr(now),7,4))-
        strtoint(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,7,4))
        <45)    // � ���� ���� ���������� ������ 45 ����� ���������� ��������� ���� ���������
  or (( strtoint(copy(datetostr(now),7,4))-
        strtoint(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,7,4))
        =45) and (now< strtodate(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,1,6)+copy(datetostr(now),7,4))  )
  )
  then begin
    if (cdsokpersonal.FieldByName('PASS_DATE_END').AsString='') // ������� ������������ ��..
    then begin
      ErMessage := ErMessage+' "������� ������������ ��..'+cdsokpersonal.FieldByName('PASS_DATE_END').AsString+'" ';
    end else begin
      if (cdsokpersonal.FieldByName('PASS_DATE_END').AsDateTime < now)
      then ErMessage := ErMessage+' "������� ������������ ��..'+cdsokpersonal.FieldByName('PASS_DATE_END').AsString+'" ';
    end;
  end;

  if  ( cdsOKPersonal.FieldByName('cod_str_birth').AsString='')
  then begin
    ErMessage := ErMessage+' "������ ��������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('check_kfs').AsString='')
  then begin
    ErMessage := ErMessage+' "������ ������������ ������� *" ';
  end;

  if (cdsokpersonal.fieldbyname('gender_code').asstring='1')
  and (not cdsokpersonal.fieldbyname('maiden_family').IsNull)
  then begin
    ErMessage := ErMessage+' "������ ������ ������� ������� - �� ����� ��� �������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('region_id').AsString='')
  and ( cdsOKPersonal.FieldByName('cod_obl_prim').AsString='')
  then begin
    ErMessage := ErMessage+' "������� �������� ��� ����������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('distr').AsString='')
  and ( cdsOKPersonal.FieldByName('cod_place_birth_prim').AsString='')
  then begin
    ErMessage := ErMessage+' "�����/����� �������� ��� ����������" ';
  end;

  If ( cdsOKPersonal.FieldByName('Education_Title_CODE').AsString='')
  Then ErMessage := ErMessage+' "����������� ����������" ';

// �������� cdsOKPERSONAL.FieldByName('status_code').AsString
// ������ ������� ������ 4-������
    if (OldStatus<>'4') and (cdsOKPERSONAL.FieldByName('status_code').AsString='4')
    then begin
        ErMessage := ErMessage+#13+#13+'����� ��������� ������ ���������� � ��������� "������" ����������� ������ "����������".';
        Showmessage(ErMessage);
      exit;
    end;
// END �������� cdsOKPERSONAL.FieldByName('status_code').AsString
///////

// �������� cdsOKPERSONAL.FieldByName('TABNO').AsString
{    sql_ := 'select count(id) from ok_personal where branch='+cdsOKPERSONAL.FieldByName('branch').AsString+
        ' and tabno='+cdsOKPERSONAL.FieldByName('tabno').AsString+
        ' and personal_code<>'+cdsOKPERSONAL.FieldByName('personal_code').AsString;
}    sql_ := 'select count(id) from ok_personal where branch=:p_1'+ //cdsOKPERSONAL.FieldByName('branch').AsString+
        ' and tabno=:p_2'+ //cdsOKPERSONAL.FieldByName('tabno').AsString+
        ' and personal_code<>:p_3'; //+cdsOKPERSONAL.FieldByName('personal_code').AsString;
    try
      z := getSQLresultpar(sql_,cdsOKPERSONAL.FieldByName('branch').AsString,
          cdsOKPERSONAL.FieldByName('tabno').AsString,
          cdsOKPERSONAL.FieldByName('personal_code').AsString
      );
      if (z<>0)
      then begin
        ErMessage := ErMessage+#13+#13+'��������� ����� '+cdsOKPERSONAL.FieldByName('tabno').AsString+' ��� ������������!'+#13+' �������� ��������� ����� � ��������� ������.';
        Showmessage(ErMessage);
        exit;
      end;
    except
      showmessage('��� ����� ������ ���������� ��������� � ����� "�������" � ������� ������ "�����". ');
      cdsOKPERSONAL.cancel;
      exit;
    end;


    ///////


    if cdsOKPERSONAL.FieldByName('nps_id').AsString <> ''
    then begin
{      sql_ := 'select count(id) from ok_personal'+
        ' where nps_id='+cdsOKPERSONAL.FieldByName('nps_id').AsString+
        ' and personal_code<>'+cdsOKPERSONAL.FieldByName('personal_code').AsString;
}      sql_ := 'select count(id) from ok_personal'+
        ' where nps_id=:p_1'+ //cdsOKPERSONAL.FieldByName('nps_id').AsString+
        ' and personal_code<>:p_2'; //+cdsOKPERSONAL.FieldByName('personal_code').AsString;
      try
        z:=getSQLresultpar(sql_,cdsOKPERSONAL.FieldByName('nps_id').AsString,
                cdsOKPERSONAL.FieldByName('personal_code').AsString
        );
        if (z<>0)
        then begin
          ErMessage:=ErMessage+#13+#13+'���������� �� '+cdsOKPERSONAL.FieldByName('nps_id').AsString+' ��� ������������!'+#13+' �������� ���������� �� � ��������� ������.';
          Showmessage(ErMessage);
          exit;
        end;
      except
        showmessage(sql_);
        exit;
      end;


      z := length(cdsOKPERSONAL.FieldByName('inn').AsString);
      if (z<>9) and (z<>0)
      then begin
        ErMessage:=ErMessage+#13+#13+'���� ��� ������ ��������� 9 ����'+#13+
          '�� ����� ���='+cdsOKPERSONAL.FieldByName('inn').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
        Showmessage(ErMessage);
        exit;
      end;

      z := length(cdsOKPERSONAL.FieldByName('nps_id').AsString);
      if (z<>14) and (z<>0)
      then begin
        ErMessage:=ErMessage+#13+#13+'���� ���������� �� ������ ��������� 14 ����'+#13+
          '�� ����� ��='+cdsOKPERSONAL.FieldByName('nps_id').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
        Showmessage(ErMessage);
        exit;
      end;
    end;

  if ErMessage <> '' then
  begin
    ErMessage :='(8523)����������, ������� ������ ����������:'+ ErMessage;
    ShowMessage( ErMessage);
////
    if HeadBranch_=HeadBranch_ //'09006'
    then begin
      If not DirectoryExists('C:\NCI Bank\') Then ForceDirectories('C:\NCI Bank\');
      If not DirectoryExists('C:\NCI Bank\Ok\') Then ForceDirectories('C:\NCI Bank\Ok\');
      If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');

      try
        System.AssignFile(text_f,'C:\NCI Bank\OK\Temp\err_ok.txt');
        System.Rewrite(text_f);

        Try
          System.Writeln(text_f,ErMessage);
        Finally
          System.CloseFile(text_f);
        End;
      except
        showmessage('�� ������� ��������� ������ � ���� "C:\NCI Bank\OK\Temp\err_ok.txt"');
        raise;
      end;

      try
        WinExec('notepad C:\NCI Bank\OK\Temp\err_ok.txt', SW_MAXIMIZE);
      except
        showmessage('�� ������� ������� � �������� "notepad C:\NCI Bank\OK\Temp\err_ok.txt"');
      end;
    end;
////
    exit;
  end;

  ErMessage:='';

  if (cdsOKPERSONAL.FieldByName('status_code').AsString<>'2')
  then begin
//    cdsOKPERSONAL.FieldByName('special_code').AsString:='';
  end else begin
    QuantityPost_     :=-1;
    QuantityPostReal_ :=-1;

    try
{    sql_ :=  'select ok_service.get_QuantityPost('+
      ''''+cdsOKPERSONAL.FieldByName('branch').AsString +''','+
      cdsOKPERSONAL.FieldByName('department_code').AsString +','+
      cdsOKPERSONAL.FieldByName('post_code').AsString +','+
      cdsOKPERSONAL.FieldByName('special_code').AsString +
      ') from dual'   ;
}    sql_ :=  'select ok_service.get_QuantityPost(:p_1,:p_2,:p_3,:p_4) from dual'   ;
    QuantityPost_ := GetSQLResultpar(sql_,
      cdsOKPERSONAL.FieldByName('branch').AsString ,
      cdsOKPERSONAL.FieldByName('department_code').AsString ,
      cdsOKPERSONAL.FieldByName('post_code').AsString ,
      cdsOKPERSONAL.FieldByName('special_code').AsString
    );

{    sql_ := 'select ok_service.get_QuantityPostReal('+
      ''''+cdsOKPERSONAL.FieldByName('branch').AsString +''','+
      cdsOKPERSONAL.FieldByName('department_code').AsString +','+
      cdsOKPERSONAL.FieldByName('post_code').AsString +','+
      cdsOKPERSONAL.FieldByName('special_code').AsString +
      ') from dual'     ;
}    sql_ := 'select ok_service.get_QuantityPostReal(:p_1,:p_2,:p_3,:p_4) from dual'   ;

    QuantityPostReal_ := GetSQLResultpar(sql_,
      cdsOKPERSONAL.FieldByName('branch').AsString ,
      cdsOKPERSONAL.FieldByName('department_code').AsString ,
      cdsOKPERSONAL.FieldByName('post_code').AsString ,
      cdsOKPERSONAL.FieldByName('special_code').AsString
    );

    except on e:exception
      do begin
        ErMessage:= '��������� ������������� �� �������. �������� ��������!'+#13+
        sql_+#13+e.message;
      end;
    end;

    if QuantityPost_ =-1 then
      ErMessage:= '��������� ������������� �� �������. �������� ��������!';

    if (QuantityPostReal_ >=QuantityPost_)
    and (OldSpecial<>cdsOKPERSONAL.FieldByName('special_code').AsString)
    then
      ErMessage := '� ������� ���������� ������� '+inttostr(QuantityPost_)+
        ' ������� ���� �� ��������� �������������. ���������� ��������� '+
          inttostr(QuantityPostReal_)+' �����������. �������� ��������!';

  end;

  if ErMessage <> '' then
  begin
    ShowMessage( ErMessage);
////
    if HeadBranch_='09006'
    then begin
      If not DirectoryExists('C:\NCI Bank\') Then ForceDirectories('C:\NCI Bank\');
      If not DirectoryExists('C:\NCI Bank\Ok\') Then ForceDirectories('C:\NCI Bank\Ok\');
      If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');

      try
        System.AssignFile(text_f,'C:\NCI Bank\OK\Temp\err_ok.txt');
        System.Rewrite(text_f);

        Try
          System.Writeln(text_f,ErMessage);
        Finally
          System.CloseFile(text_f);
        End;
      except
        showmessage('�� ������� ��������� ������ � ���� "C:\NCI Bank\OK\Temp\err_ok.txt"');
        raise;
      end;

      try
        WinExec('notepad C:\NCI Bank\OK\Temp\err_ok.txt', SW_MAXIMIZE);
      except
        showmessage('�� ������� ������� � �������� "notepad C:\NCI Bank\OK\Temp\err_ok.txt"');
      end;
    end;
////
    exit;
  end;

   cdsOKPersonal.Post;



end;

procedure TBOKFormSTAT.actEditExecute(Sender: TObject);
begin

  if LastPanel = 'FormPanel' then
  begin
    actSaveExistExecute(Sender);
  end;

  if OptionsPanel.Visible
  then begin
    bbSaveOptionsClick(nil);
  end;

  if LastPanel = 'DetailsPanel' then
  begin
    ActDetailSaveExecute(nil);
  end;

end;

procedure TBOKFormSTAT.DBEd_RegionChange(Sender: TObject);
begin

  if (cdsOKPersonal.Active) and (cdsOKPersonal.fieldbyname('cod_str_live').asstring<>'860')
  and (cdsOKpersonal.State in [dsEdit, dsInsert])
  then cdsOKPersonal.fieldbyname('cod_str_live').asstring:='860';

  if (cdsOKPersonal.Active) and (cdsOKPersonal.fieldbyname('cod_str_birth').asstring<>'860')
  and (cdsOKpersonal.State in [dsEdit, dsInsert])
  then cdsOKPersonal.fieldbyname('cod_str_birth').asstring:='860';

  if sender.ClassType= TDBEdit
  then begin
    if tdbedit(sender).Text = ''
    then begin
      cdsSDistr_RO.Filtered := False;
    end
    else begin
      cdsSDistr_RO.Filtered := False;
      cdsSDistr_RO.Filter := 'region_id='+ cdsSRegion.FieldByName('region_id').AsString;
      cdsSDistr_RO.Filtered := True;
    end;
  end;

end;

procedure TBOKFormSTAT.actDetailsFirstExecute(Sender: TObject);
begin
//showmessage(Branch);
  PCDetails.ActivePageIndex := 0;
  CBDetails.ItemIndex := 0;
end;

procedure TBOKFormSTAT.actDetailsLastExecute(Sender: TObject);
begin
  PCDetails.ActivePageIndex := PCDetails.PageCount-2;
  CBDetails.ItemIndex := PCDetails.PageCount-2;
end;

procedure TBOKFormSTAT.actDetailsPrevExecute(Sender: TObject);
var k : integer;
begin
  if PCDetails.ActivePageIndex = 0
  then k := PCDetails.PageCount-2
  else k := PCDetails.ActivePageIndex-1;

  PCDetails.ActivePageIndex := k;
  CBDetails.ItemIndex := k;

end;

procedure TBOKFormSTAT.actDetailsNextExecute(Sender: TObject);
var k : integer;
begin

  k := PCDetails.ActivePageIndex+1;     
  if k >= PCDetails.PageCount-2 then k := 0;
  PCDetails.ActivePageIndex := k;
  CBDetails.ItemIndex := k;
//  showmessage(intToStr(k));

end;

procedure TBOKFormSTAT.CBDetailsChange(Sender: TObject);
begin
//   
    PCDetails.ActivePageIndex := StrToInt( TData(CBDetails.Items.Objects[CBDetails.ItemIndex]).Id );

end;

procedure TBOKFormSTAT.ViewRef(NumberRef : Integer);
begin

 Params.Clear;
 Params.Add('NUMBERREF='+intToStr(NumberRef));

 (Owner as TBaseForm).RunModule('TBOKRefForm',Params);

end;


procedure TBOKFormSTAT.actSSOKPenaltyExecute(Sender: TObject);
begin
  ViewRef(19);

end;

procedure TBOKFormSTAT.TabPhotoShow(Sender: TObject);
begin

  actShowPhotoExecute(sender);

end;

procedure TBOKFormSTAT.cdsOKPhotoAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsOKPhoto.MasterSource    := dsOKPersonal;
    cdsOKPhoto.IndexFieldNames := 'branch;personal_code';
    cdsOKPhoto.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.cdsOKPhotoBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := 'WithoutBlobs';

end;

procedure TBOKFormSTAT.actPhotoInsertExecute(Sender: TObject);
begin
  cdsOKPhoto.Insert;

end;

procedure TBOKFormSTAT.actPhotoRemoveExecute(Sender: TObject);
begin

  If Application.MessageBox(PChar('������� ����?'), PChar('������'), MB_YESNO or MB_ICONQUESTION) = mrYes
  Then Begin
    cdsOKPhoto.Delete;
  End;

end;

procedure TBOKFormSTAT.actPhotoAttachExecute(Sender: TObject);
begin
  with TOpenDialog.Create(Self) do
  try
    Title := actPhotoAttach.Hint;
    Filter := GraphicFilter(TJPEGImage);
    if Execute then
    begin
      if not (cdsOKPhoto.State in dsEditModes) then
        cdsOKPhoto.Edit;
      (cdsOKPhoto.FieldByName('photo') as TBlobField).LoadFromFile(FileName);
       imgPreview.Picture.LoadFromFile(FileName);
    end;
  finally
    Free;
  end;


end;

procedure TBOKFormSTAT.actPhotoActualSizeExecute(Sender: TObject);
begin
  actPhotoActualSize.Checked := not actPhotoActualSize.Checked;

end;

procedure TBOKFormSTAT.actPhotoSaveExecute(Sender: TObject);
begin
  cdsOKPhoto.Post;
  imgPreview.picture.Graphic := nil;

end;

procedure TBOKFormSTAT.dsOKPhotoDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(Field) then
    if Field.FieldName <> 'photo' then
      Exit;
  with imgSignature.Picture, cdsOKPhoto do
  begin
    Graphic := nil;
    if FieldByName('photo').Value <> '' then
    begin
      Graphic := TJPEGImage.Create;
      Graphic.Assign(FieldByName('photo'));
      if actPhotoActualSize.Checked then
      begin
        ScrollBox.HorzScrollBar.Position := 0;
        ScrollBox.VertScrollBar.Position := 0;
      end;
    end
    else if actPhotoActualSize.Checked then
    begin
      imgSignature.Width := 0;
      imgSignature.Height := 0;
    end;
  end;

end;

procedure TBOKFormSTAT.actAnketaExecute(Sender: TObject);
var App:      Variant;
    i,k:      integer;
  Text_, Text2, Text3,Text4,Text5,Text6,Text7,Text8,Text9,Text10: string;
  Text11, Text12, Text13,Text14,Text15,Text16, Text16a, Text16b: string;
  Text16i, Text16j, Text16h,   text16c,  text16d,  text16e,  text16f,  text16g  : string;
  Text17,Text18,Text19,Text20,Text21: string;
  file_name_, sql_, where_pers, where_pers_a : string;
  Save_Cursor:TCursor;
begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
                                   // ��� ������ - �������� ����
 TRY
    { Do some lengthy operation }

  if (HeadBranch_ ='00974') or (HeadBranch_ ='09049')
  then begin
    App := PrepareOle( 'pril01_kb.doc' ,'Word.Application');
    file_name_:= 'pril01_kb.doc';
  end else begin
    App := PrepareOle( 'pril01_new.doc' ,'Word.Application');
    file_name_:= 'pril01_new.doc';
  end;

  If VarIsNull(App) Then
  begin
    showmessage('���������� ''Word'' �� ����� ������� ���� C:\NCI Bank\Ok\Templates\'+file_name_+
      #10#13+ ' � �� ������ ���� '+GetCurrentDir_templates+'\'+file_name_+
      #10#13+'���������� ��������� ������� ����� �����.' );
    Exit;
  end;

  try
// ��� �������� !!!!

    App.Selection.Find.Execute('<INN>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('inn').AsString, 2);
    App.Selection.Find.Execute('<PASS_SERIYA>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('PASS_SERIYA').AsString, 2);
    App.Selection.Find.Execute('<PASS_NUM>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('PASS_NUM').AsString, 2);
    App.Selection.Find.Execute('<PASS_DATE>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('PASS_DATE').AsString, 2);
    App.Selection.Find.Execute('<PASS_REG>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('PASS_REG').AsString, 2);

    text21 :=  cdsOKPersonal.FieldByName('HOME_ADDRESS_REGION_ID_SHOW').AsString+' '+
              cdsOKPersonal.FieldByName('HOME_ADDRESS_DISTR_SHOW').AsString;
    App.Selection.Find.Execute('<KB_HOME_ADDRESS>', false, false, false, false, false,
           true, 1, false, text21, 2);

    text21 :=  cdsOKPersonal.FieldByName('HOME_ADDRESS').AsString; // ok_personal.home_address
    App.Selection.Find.Execute('<HOME_ADDRESS>', false, false, false, false, false,
           true, 1, false, text21, 2);

    text21 :=  cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_REGION_ID_SHOW').AsString+ ' ' +
              cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_DISTR_SHOW').AsString;
    App.Selection.Find.Execute('<KB_HOME_ADDRESSFACT>', false, false, false, false, false,
           true, 1, false, text21, 2);

    text21 :=  cdsOKPersonal.FieldByName('HOME_ADDRESSFACT').AsString; // ok_personal.home_address
    App.Selection.Find.Execute('<HOME_ADDRESSFACT>', false, false, false, false, false,
           true, 1, false, text21, 2);



    App.Selection.Find.Execute('<FAMILY1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('family').AsString, 2);

    App.Selection.Find.Execute('<NAME1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('First_Name').AsString, 2);

    App.Selection.Find.Execute('<PATRONYMIC1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('Patronymic').AsString, 2);

    text21 := cdsOKPersonal.FieldByName('home_address').AsString; // ok_personal.home_address
    App.Selection.Find.Execute('<TEXT21>', false, false, false, false, false,
           true, 1, false, text21, 2);

//    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
//                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
//    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
//                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers := ' WHERE branch=:p_1'+
                  ' AND personal_code=:p_2' ;
    where_pers_a := ' WHERE a.branch=:p_1'+
                    ' AND a.personal_code=:p_2' ;
    TRY
    sql_ := SQL_OKPhoto+where_pers+     ' and (priznak is null or priznak=:p_3)';

    try

      cdsOKPhoto.close;
      with cdsOKPhoto.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '1';
      end;
      LoadData(cdsOKPhoto, sql_);

      if fileexists('C:\NCI Bank\Ok\Temp\photo.jpg')
      then deletefile('C:\NCI Bank\Ok\Temp\photo.jpg');

      if not cdsOKPhoto.FieldByName('photo').IsNull
      then begin
//        (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
  //      App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', false,true ,400,0);
        (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
        App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', false,true  ,1,1);
        cdsOKPhoto.Close;
      end else begin
        cdsOKPhoto.Close;
      end;
    except
    end;

//text2
  text2 := '';
  sql_:= 'SELECT change_date,change_motive '+
                         ' FROM ok_change_fio'+
                           where_pers+' order by change_date' ;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text2 = ''
    then Text2:= cdsTempSource.fieldbyname('change_date').asstring+' ��� '+cdsTempSource.fieldbyname('change_motive').asstring
    else Text2:= text2+#13+cdsTempSource.fieldbyname('change_date').asstring+' ��� '+cdsTempSource.fieldbyname('change_motive').asstring;

    cdsTempSource.next;

  End;
  if text2 = '' then text2 := '����������';
  App.Selection.Find.Execute('<TEXT2>', false, false, false, false, false,
           true, 1, false, text2, 2);

//text3
//  text3 := cdsOKPersonal.FieldByName('birthday').AsString;
  text3 := cdsOKPersonal.FieldByName('birthday').AsString+' ��� ';

  if cdsOKPersonal.FieldByName('region_id').IsNull
  then begin
    text3 := text3 +' '+cdsOKPersonal.FieldByName('birthplace').AsString;
  end else begin
//    sql_:='SELECT region_nam '+
//                         ' FROM s_region'+
//                         ' where region_id='''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('region_id').AsString;
      end;
    LoadData(cdsTempSource,'SELECT region_nam '+
                         ' FROM s_region'+
                         ' where region_id=:p_1', True);
    text3 := text3 + ' '+cdsTempSource.FieldByName('region_nam').AsString;

//    sql_:='SELECT distr_name '+
//                         ' FROM s_distr'+
//                         ' where distr='''+cdsOKPersonal.FieldByName('distr').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('distr').AsString;
      end;
    LoadData(cdsTempSource,'SELECT distr_name '+
                         ' FROM s_distr'+
                         ' where distr=:p_1', True);
    text3 := text3 + ' '+cdsTempSource.FieldByName('distr_name').AsString;
  end;

    App.Selection.Find.Execute('<TEXT3>', false, false, false, false, false,
           true, 1, false, text3, 2);


//text4
  text4 := '';
//  sql_:='SELECT nationality_name '+
//                         ' FROM ss_ok_nationality'+
//                         ' where nationality_code='+cdsOKPersonal.FieldByName('nationality_code').AsString;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('nationality_code').AsString;
      end;
  LoadData(cdsTempSource,'SELECT nationality_name '+
                         ' FROM ss_ok_nationality'+
                         ' where nationality_code=:p_1' , True);

  text4 := cdsTempSource.FieldByName('nationality_name').AsString;

  App.Selection.Find.Execute('<TEXT4>', false, false, false, false, false,
           true, 1, false, text4, 2);


//text5 text17, text18
  text5  := '';
  text17 := '';
  text18 := '';
  sql_:= 'select b.party_name, party_outdate,out_party, '+
                ' punishment_date||'' ''||punishment_motive text18'+
                ' from ok_party a, ss_ok_party b'+
                  where_pers_a +
//                ' and a.party_outdate is null'+
                ' and a.party_code = b.party_code'+
                ' order by a.party_date'  ;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);
// ||'' ��� ''||
  While not cdsTempSource.Eof do
  Begin
    if text5 = ''
    then Text5:= cdsTempSource.fieldbyname('party_name').asstring
    else Text5:= text5+' '+cdsTempSource.fieldbyname('party_name').asstring;

    text_:='';
    if cdsTempSource.fieldbyname('party_outdate').asstring<>''
    then
      text_:= cdsTempSource.fieldbyname('party_outdate').asstring+' ��� '+
                  cdsTempSource.fieldbyname('out_party').asstring;
    if text17 = ''
    then Text17:= text_
    else Text17:= text17+#13+text_;

    if text18 = ''
    then Text18:= cdsTempSource.fieldbyname('text18').asstring
    else Text18:= text18+#13+cdsTempSource.fieldbyname('text18').asstring;

    cdsTempSource.next;

  End;

  if text5 = ''
  then Text5:= '������ ������ ����';

  App.Selection.Find.Execute('<TEXT5>', false, false, false, false, false,
           true, 1, false, text5, 2);

  App.Selection.Find.Execute('<TEXT17>', false, false, false, false, false,
           true, 1, false, text17, 2);

  App.Selection.Find.Execute('<TEXT18>', false, false, false, false, false,
           true, 1, false, text18, 2);


//text6
  text6 := '';
  sql_:='select substr(a.end_date||'' ��� ''|| b.institution_name||'',  � ''|| a.diplom_num||'', ''||'+
                ' c.qualification_name||'', ''|| a.profession_personal,1,250) all_data'+
                ' from ok_education a, ss_ok_institution b, ss_ok_qualification c'+
                  where_pers_a +
                ' and a.institution_code = b.institution_code'+
                ' and a.qualification_code = c.qualification_code'+
                ' order by a.end_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  k:=1;
  While not cdsTempSource.Eof do
  Begin
    Text6:= cdsTempSource.fieldbyname('all_data').asstring;
    App.Selection.Find.Execute('<TEXT6'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text6, 2);
    inc(k);
    cdsTempSource.next;
  End;

  for i:= k to 6
  do begin
      App.Selection.Find.Execute('<TEXT6'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;

//text7
  text7 := '';
// �������
  sql_:='select award_date||'' ��� ''||award_info all_data'+
                ' from ok_award '+
                  where_pers +
                ' order by award_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text7 = ''
    then Text7:= cdsTempSource.fieldbyname('all_data').asstring
    else Text7:= text7+' ; '+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

// ������ �������
   sql_:='select a.degree_date||'' ��� ''||b.degree_name all_data'+
                ' from ok_degree a, ss_ok_degree b'+
                  where_pers_a +
                ' and a.degree_code= b.degree_code'+
                ' order by a.degree_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text7 = ''
    then Text7:= cdsTempSource.fieldbyname('all_data').asstring
    else Text7:= text7+' ; '+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

//
    if text7 = ''
    then Text7:= '����� �������� ���';
  App.Selection.Find.Execute('<TEXT7>', false, false, false, false, false,
           true, 1, false, text7, 2);

//text8
  text8 := '';
//OK_SCIENTIFIC
  sql_:='select scientific_date||'' ��� ''||scientific_info all_data'+
                ' from ok_scientific'+
                  where_pers +
                ' order by scientific_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);


  While not cdsTempSource.Eof do
  Begin
    if text8 = ''
    then Text8:= cdsTempSource.fieldbyname('all_data').asstring
    else Text8:= text8+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

    if text8 = ''
    then Text8:= '����� ������ ���';
  App.Selection.Find.Execute('<TEXT8>', false, false, false, false, false,
           true, 1, false, text8, 2);

//text9
  text9 := '';
  sql_:='select voyage_date, voyage_land, voyage_info'+
                ' from ok_voyage'+
                  where_pers +
                ' order by voyage_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    text_:='';
    if cdsTempSource.fieldbyname('voyage_date').asstring<>''
    then text_:= cdsTempSource.fieldbyname('voyage_date').asstring+' ��� '+
                 cdsTempSource.fieldbyname('voyage_land').asstring+' '+
                 cdsTempSource.fieldbyname('voyage_info').asstring;

    if text9 = ''
    then Text9:= text_
    else Text9:= text9+'; '+text_;

    cdsTempSource.next;
  End;

  App.Selection.Find.Execute('<TEXT9>', false, false, false, false, false,
           true, 1, false, copy(text9,1,250) , 2);

//text10
  text10 := '';
  sql_:='select b.language_name||'' - ''||c.level_language_name all_data'+
                ' from ok_language a, ss_ok_language b, ss_ok_level_language c'+
                  where_pers_a +
                ' and a.language_code= b.language_code'+
                ' and a.level_code= c.level_language_code'+
                ' order by a.language_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text10 = ''
    then Text10:= cdsTempSource.fieldbyname('all_data').asstring
    else Text10:= text10+'                                 '+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

//showmessage('text10 '+text10);
  App.Selection.Find.Execute('<TEXT10>', false, false, false, false, false,
           true, 1, false, text10, 2);


//text11
  text11 := '';
  k:=11;
  sql_:='select b.relation_name,a.RELATION_FAMILY	||'' ''||a.RELATION_NAME ||'' ''||'+
                ' a.RELATION_PATRONYMIC,a.RELATION_BIRTHDAY||'' ��� ''||a.RELATION_BIRTHPLACE ,'+
                ' a.RELATION_OFFICE||'' ''||a.RELATION_POST ,'+
                ' a.RELATION_HOME_ADDRESS'+
                ' from ok_relation a, ss_ok_relation b'+
                  where_pers_a +
                ' and a.relation_code=b.relation_code'+
                ' order by a.relation_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 4
    do begin
      Text11:= cdsTempSource.fields[i].asstring;
//            '|'+cdsTempSource.fieldbyname('rabota').asstring+
//            '|'+cdsTempSource.fieldbyname('RELATION_HOME_ADDRESS').asstring;
      App.Selection.Find.Execute('<TEXT11'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text11, 2);
      inc(k);
    end;
    cdsTempSource.next;

  End;

  for i:= k to 114
  do begin
      App.Selection.Find.Execute('<TEXT11'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;
//text11:=copy(text11,1,255);
//showmessage('text11 '+text11);



//text12
  text12 := '';
  k:=11;
  sql_:='select IN_OFFICE_DATE ||'' �.'' IN_OFFICE_DATE_,'+
        ' OUT_OFFICE_DATE ||'' �.'' OUT_OFFICE_DATE_,'+
        ' substr(OFFICE_NAME,1,250) OFFICE_NAME_,'+
        ' substr(ESTABLISHED_DEPARTMENT,1,250) ESTABLISHED_DEPARTMENT_,'+
        ' substr(ESTABLISHED_POST,1,250) ESTABLISHED_POST_, OFFICE_ADDRESS'+
        ' from ok_period '+
        where_pers+' order by in_office_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 5
    do begin
      Text12 := cdsTempSource.fields[i].asstring;
      App.Selection.Find.Execute('<TEXT12'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text12, 2);
      inc(k);
    end;
    cdsTempSource.next;

  End;

  for i:= k to 136
  do begin
      App.Selection.Find.Execute('<TEXT12'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;




//text13
  text13 := '';
  sql_:='select RISE_DATE_YEAR,'+
        'RISE_INFO '+
        ' from ok_rise '+
        where_pers+' order by rise_date_year';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    text_:='';

    if cdsTempSource.fieldbyname('RISE_DATE_YEAR').asstring<>''
    then text_:= cdsTempSource.fieldbyname('RISE_DATE_YEAR').asstring+' ��� '+
                 cdsTempSource.fieldbyname('RISE_INFO').asstring;

    cdsTempSource.next;

  End;
  // ������ ��������� ��������� ������������
  Text13:= text_;

//showmessage('text13 '+text13);
  App.Selection.Find.Execute('<TEXT13>', false, false, false, false, false,
           true, 1, false, text13, 2);



//text14
  text14 := '';
  k:=11;
  sql_:='select b.ELECTION_ADDRESS,b.ELECTION_NAME,'+
        'a.ELECTION_POST ,a.ELECTION_DATE_BEGIN,a.ELECTION_DATE_END '+
        ' from ok_election a, ss_ok_election b'+
        where_pers+
        ' and a.election_code=b.election_code'+
        ' and b.state_notes='+#39+'A'+#39+
        ' order by election_date_begin';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 4
    do begin
      Text14 := cdsTempSource.fields[i].asstring;
      App.Selection.Find.Execute('<TEXT14'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text14, 2);
      inc(k);
    end;
    cdsTempSource.next;

  End;

  for i:= k to 30
  do begin
      App.Selection.Find.Execute('<TEXT14'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;

  if text14=''
  then begin
      App.Selection.Find.Execute('<TEXT14>', false, false, false, false, false,
            true, 1, false, '�����������', 2);
  end else begin
      App.Selection.Find.Execute('<TEXT14>', false, false, false, false, false,
            true, 1, false, ' ', 2);
  end;


//text15
  text15 := ''; // ��� ������ ok_premium
//PREMIUM_DATE 	DATE not null, --���� ��������� ������	�������� � ����������, ��������� ����, ������������ ��� ����������
//PREMIUM_NAME	VARCHAR2(200) not null, --������������ ������	�������� � ����������, ��������� ����, ������������ ��� ����������
  sql_:='select premium_date, premium_name '+
                ' from ok_premium'+
                  where_pers +
                ' order by premium_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);


  While not cdsTempSource.Eof do
  Begin
    text_:='';
    if cdsTempSource.fieldbyname('premium_date').asstring<>''
    then text_ := cdsTempSource.fieldbyname('premium_date').asstring+' ��� '+
                  cdsTempSource.fieldbyname('premium_name').asstring;

    if text15 = ''
    then Text15:= text_
    else Text15:= text15+' ; '+text_;

    cdsTempSource.next;
  End;

  if text15 = ''
  then Text15:= '���������������';

  App.Selection.Find.Execute('<TEXT15>', false, false, false, false, false,
           true, 1, false, text15, 2);


  text16 := '';
  text16a := '';
  text16b := '';
  text16c := '';
  text16d := '';
  text16e := '';
  text16f := '';
  text16g := '';
  sql_:= 'select ok_service.get_staffname(a.staff_code) staff_show,'+
         ' ok_service.get_typeforcename(a.type_force_code) type_force_show, '+
         ' ok_service.get_categoryarmyname(a.CATEGORY_ARMY_CODE) CATEGORY_ARMY,'+
         ' a.SPECREG_NUMBER, a.NUMBER_VUS, b.fitness_army_type, a.NAME_ARMY_OFFICE,'+
         ' ok_service.get_armytype(a.army_code) army_type, '+
         ' ok_service.get_militaryrankname(a.military_rank_code) MILITARY_RANK, '+
         ' ok_service.get_armygroupname(a.army_group_code) ARMY_GROUP'+
                ' from ok_army a, ss_ok_fitness_army b'+
                 where_pers_a +
                ' and a.fitness_army_code= b.fitness_army_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource, sql_, True);

  Text16a := cdsTempSource.fieldbyname('staff_show').asstring ;
  text16b := cdsTempSource.fieldbyname('type_force_show').asstring ;

  Text16c := cdsTempSource.fieldbyname('CATEGORY_ARMY').asstring ;
  Text16d := cdsTempSource.fieldbyname('SPECREG_NUMBER').asstring ;
  Text16e := cdsTempSource.fieldbyname('NUMBER_VUS').asstring  ;
  Text16f := cdsTempSource.fieldbyname('fitness_army_type').asstring ;
  Text16g := cdsTempSource.fieldbyname('NAME_ARMY_OFFICE').asstring ;

  text16i := cdsTempSource.fieldbyname('army_type').asstring ;
  Text16j := cdsTempSource.fieldbyname('MILITARY_RANK').asstring  ;
  Text16h := cdsTempSource.fieldbyname('ARMY_GROUP').asstring ;

  Text16 :=  Text16j+' '+text16i; //  MILITARY_RANK   army_type


//text16
  // ������ �����, ��������� �����,
//ARMY_GROUP_CODE
//CATEGORY_ARMY_CODE
//MILITARY_RANK_CODE
//STAFF_CODE
//TYPE_FORCE_CODE

  if text16=''
  then begin
    text16 :='���������� ���';
  end;

  App.Selection.Find.Execute('<TEXT16>', false, false, false, false, false,
           true, 1, false, text16, 2);
  App.Selection.Find.Execute('<TEXT16A>', false, false, false, false, false,
           true, 1, false, text16a, 2);
  App.Selection.Find.Execute('<TEXT16B>', false, false, false, false, false,
           true, 1, false, text16b, 2);

  App.Selection.Find.Execute('<TEXT16C>', false, false, false, false, false,
           true, 1, false, text16c, 2);
  App.Selection.Find.Execute('<TEXT16D>', false, false, false, false, false,
           true, 1, false, text16d, 2);
  App.Selection.Find.Execute('<TEXT16E>', false, false, false, false, false,
           true, 1, false, text16e, 2);
  App.Selection.Find.Execute('<TEXT16F>', false, false, false, false, false,
           true, 1, false, text16f, 2);
  App.Selection.Find.Execute('<TEXT16G>', false, false, false, false, false,
           true, 1, false, text16g, 2);

  App.Selection.Find.Execute('<TEXT16H>', false, false, false, false, false,
           true, 1, false, text16h, 2);
  App.Selection.Find.Execute('<TEXT16I>', false, false, false, false, false,
           true, 1, false, text16i, 2);
  App.Selection.Find.Execute('<TEXT16J>', false, false, false, false, false,
           true, 1, false, text16j, 2);

//text17 �� ����� 5 �����������
//text18 �� ����� 5 �����������

//text19
  text19 := '';
//CONVICTIONS_DATE 	DATE not null, --���� �����������	�������� � ����������, ������� ����, ������������ ��� ����������
//CONVICTIONS_MOTIVE	VARCHAR2(200) not null, --������� �����������	�������� � ����������, ������� ����, ������������ ��� ����������
  sql_:='select CONVICTIONS_date||'' ''||CONVICTIONS_MOTIVE all_data'+
                ' from ok_convictions'+
                  where_pers +
                ' order by CONVICTIONS_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text19 = ''
    then Text19:= cdsTempSource.fieldbyname('all_data').asstring
    else Text19:= text19+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text19 = ''
  then Text19:= '�����������';

  App.Selection.Find.Execute('<TEXT19>', false, false, false, false, false,
           true, 1, false, text19, 2);


//text20
  text20 := ''; // ss_ok_FAMILY_STATUS.FAMILY_STATUS_CODE
//  sql_:='select family_status_name all_data'+
//                ' from ss_ok_FAMILY_STATUS'+
//                ' where FAMILY_STATUS_CODE='+ cdsOKPersonal.FieldByName('FAMILY_STATUS_CODE').AsString;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('FAMILY_STATUS_CODE').AsString;
      end;
  LoadData(cdsTempSource,'select family_status_name all_data'+
                ' from ss_ok_FAMILY_STATUS'+
                ' where FAMILY_STATUS_CODE=:p_1', True);
  EXCEPT
    raise;
  END;
  Text20:= cdsTempSource.fieldbyname('all_data').asstring;

//showmessage('text20 '+text20);
  App.Selection.Find.Execute('<TEXT20>', false, false, false, false, false,
           true, 1, false, text20, 2);


//text21 �� text1 (��� ���)

// �� ���� ������� ���������� word �������� � ������� ������
  App.Visible:=true;

//  App.Application.Quit; -- ����� �� ����� ������
 except
  App.Application.Quit(false); // ����� �� ����� ������ ��� ����������
/////
  raise;
//  App.Application.Quit(true); // ����� �� ����� � �����������
 end;

  App:=unassigned;
 FINALLY
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

function TBOKFormSTAT.PrepareOle(FileName: String; TypeApp: String): Variant;
var fname, curdir,errmsg_:   String;
    SaveCursor:              TCursor;
    fh1, fh2:                Integer;
    iFileLength, iBytesRead: Integer;
    Buffer:                  PChar;
    App:                     Variant;
begin
  Result := null;
  SaveCursor := 0;

  fname      := 'C:\NCI Bank\Ok\Temp\'+FileName;

  curdir     := 'C:\NCI Bank\Ok\TEMPLATES';
  If not DirectoryExists('C:\NCI Bank\Ok\TEMPLATES\') Then ForceDirectories('C:\NCI Bank\Ok\TEMPLATES\');
  If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');

  Buffer     := nil;
  iBytesRead := 0;

  If not FileExists(curdir+'\'+FileName) Then
    Begin
      errmsg_ := '�� ������ ���� '+curdir+'\'+FileName;
      curdir:=GetCurrentDir_templates;
      If not FileExists(curdir+'\'+FileName) Then
        Begin
          curdir:=GetCurrentDir_templates;
          ShowMessage(errmsg_+#13+'�� ������ ���� '+curdir+'\'+FileName);
          errmsg_ := '�� ������ ���� '+curdir+'\'+FileName;
          Exit;
        End;
    End;


  fh1 := FileOpen(curdir+'\'+FileName, fmOpenRead);

  If fh1 <> -1 Then
    Begin
      iFileLength := FileSeek(fh1,0,2);
      FileSeek(fh1,0,0);
      Buffer     := PChar(AllocMem(iFileLength + 1));
      iBytesRead := FileRead(fh1, Buffer^, iFileLength);
      FileClose(fh1);
    End;

  If Buffer <> nil Then
    Begin
      fh2 := FileCreate(fname);
      If fh2 = -1 Then
        Begin
          FreeMem(Buffer);
          Screen.Cursor := SaveCursor;
          Showmessage('������ ��� �������� ����� '+fname);
          Exit;
        End
      Else
        Begin
          FileWrite(fh2,Buffer^,iBytesRead);
          FileClose(fh2);
          FreeMem(Buffer);
          Try
            App := CreateOleObject(TypeApp);
          Except
            Showmessage('������ ��� �������� OLE-�������('+TypeApp+')!');
            Exit;
          End;
          Try
            If TypeApp = 'Word.Application' Then
              Begin
                App.Documents.Open(fname,
                                   EmptyParam, EmptyParam, EmptyParam,
                                   EmptyParam, EmptyParam, EmptyParam,
                                   EmptyParam, EmptyParam, EmptyParam);
                App.Selection.HomeKey(6);
                App.Selection.Find.ClearFormatting;
              End
            Else
              Begin
                App.Workbooks.Open(fname);
              End;
          Except
            on E: Exception do
              begin
                Showmessage('������ ��� �������� '+TypeApp+'!'+#13#10+E.Message);
                If not VarIsNull(App) Then Begin App.Save;App.Workbooks.Close; End;
                App := null;
              end;
          End;
        End;
    End;
  Result := App;
end;


procedure TBOKFormSTAT.actLichKartaAExecute(Sender: TObject);
var App:      Variant;
  text_,Text2, Text3, Text4, Text5, Text6, Text6a, Text6b, Text6c : string;
  Text7, Text17,Text7a, Text7b, Text8, Text8a, Text9, Text9a : string;
  Text10,  Text11, Text11a, Text11b, Text11c  : string;
// Text10a,
  Text12, Text12a, Text12b, Text12c, Text12d, Text12e, Text12f,  Text12g : string;
//  text16a,text16b,  text16c,  text16d,  text16e,  text16f,  text16g,
  Text13 : string;
//   Text14, Text15 : string;
  file_name_, sql_,where_pers, where_pers_a,BIRTHPLACE_,stag_ : string;
  Save_Cursor:TCursor;
  k,i : integer;
  enter_,s_ ,s2_:string;
begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
//                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
//    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
//                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers := ' WHERE branch=:p_1'+
                  ' AND personal_code=:p_2' ;
    where_pers_a := ' WHERE a.branch=:p_1'+
                    ' AND a.personal_code=:p_2' ;

 TRY
    { Do some lengthy operation }

  if (HeadBranch_ ='00974') or (HeadBranch_ ='09049')
  then begin
    App := PrepareOle( 'pril02a_kb.doc' ,'Word.Application');
    file_name_:= 'pril02a_kb.doc';
  end else begin
    App := PrepareOle( 'pril02a.doc' ,'Word.Application');
    file_name_:= 'pril02a.doc';
  end;

  If VarIsNull(App) Then
  begin
    showmessage('���������� ''Word'' �� ����� ������� ���� C:\NCI Bank\Ok\Templates\'+file_name_ +#10#13+
           ' � �� ������ ���� '+GetCurrentDir_templates+'\'+file_name_+#10#13+
    '���������� ��������� ������� ����� �����.' );
    Exit;
  end;

  try
// ��� �������� !!!!
    enter_:=#13;
//////////
// ������������
    sql_:= 'select ok_service.get_relationname(a.relation_code)||'': ''||RELATION_FAMILY||'' ''||RELATION_NAME||'' ''||RELATION_PATRONYMIC||'' ''||RELATION_BIRTHDAY rel '+
                ' from ok_relation a'+
                  where_pers_a +
                ' order by a.relation_code'  ;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    s_:='';
    s2_:='';
    While not cdsTempSource.Eof do
    Begin
      if (length(s_+enter_+cdsTempSource.fieldbyname('rel').asstring )<255)
      and (s2_='')
      then begin
        if s_=''
        then s_:= cdsTempSource.fieldbyname('rel').asstring
        else s_:=s_+enter_+cdsTempSource.fieldbyname('rel').asstring;
      end else begin
        if s2_=''
        then s2_:= cdsTempSource.fieldbyname('rel').asstring
        else s2_:=s2_+enter_+cdsTempSource.fieldbyname('rel').asstring;

      end;
      cdsTempSource.Next;
    end;
    App.Selection.Find.Execute('<R>', false, false, false, false, false,
           true, 1, false, copy(s_,1,255), 2);
    App.Selection.Find.Execute('<R2>', false, false, false, false, false,
           true, 1, false, copy(s2_,1,255), 2);
////////////
// �����������
//    sql_:= 'select ok_service.get_EDUCATIONTITLEname('+cdsOKPersonal.FieldByName('EDUCATION_TITLE_code').asstring +') rel from dual ' ;
    sql_:= 'select ok_service.get_EDUCATIONTITLEname(:p_1) rel from dual ' ;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('EDUCATION_TITLE_code').asstring;
      end;
    LoadData(cdsTempSource,sql_, True);
//    SS_OK_EDUCATION_TITLE
    App.Selection.Find.Execute('<R3>', false, false, false, false, false,
           true, 1, false, cdsTempSource.FieldByName('rel').AsString, 2);
/////////////
    App.Selection.Find.Execute('<FAMILY1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('family').AsString, 2);

    App.Selection.Find.Execute('<NAME1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('First_Name').AsString, 2);

    App.Selection.Find.Execute('<PATRONYMIC1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('Patronymic').AsString, 2);

    App.Selection.Find.Execute('<YEAR>', false, false, false, false, false,
           true, 1, false, copy(cdsOKPersonal.FieldByName('BIRTHDAY').AsString, 7, 4), 2);
    App.Selection.Find.Execute('<MONTH>', false, false, false, false, false,
           true, 1, false,ToMonthName( copy(cdsOKPersonal.FieldByName('BIRTHDAY').AsString, 4, 2)), 2);
    App.Selection.Find.Execute('<DAY>', false, false, false, false, false,
           true, 1, false, copy(cdsOKPersonal.FieldByName('BIRTHDAY').AsString, 1, 2), 2);


// ���� ������ �� - ������� ���� bankdate
//        sql_:='select ok_service.get_work_period('''+branch+''','+
//            cdsokpersonal.fieldbyname('personal_code').asstring+','+
//            'to_date('''+bankdate+''',''dd.mm.yyyy'') ) from dual';
        sql_:='select ok_service.get_work_period(:p_1,:p_2,'+
            'to_date(:p_3,:p_4) ) from dual';
        try
          stag_:= getsqlresultPAR(sql_, curbranch, cdsokpersonal.fieldbyname('personal_code').asstring,
            bankdate , 'dd.mm.yyyy'
          );
        except on e:exception
          do begin
            showmessage(sql_+#13+e.message);
            SelectNext(ActiveControl, FALSe, True);
          end;
        end;

    App.Selection.Find.Execute('<STAG>', false, false, false, false, false,
           true, 1, false, stag_ , 2);

    if cdsOKPersonal.FieldByName('profmember').AsString='1'
    then begin
      cdsSSOKProfmember_SET.Last;
    end else begin
      cdsSSOKProfmember_SET.first;
    end;
    App.Selection.Find.Execute('<PROFSO>', false, false, false, false, false,
           true, 1, false, cdsSSOKProfmember_SET.fieldbyname('PROFMEMBER_NAME').asstring, 2);

    BIRTHPLACE_:=' ';
  if cdsOKPersonal.FieldByName('region_id').IsNull
  then begin
    BIRTHPLACE_:= BIRTHPLACE_+' '+cdsOKPersonal.FieldByName('birthplace').AsString;
  end else begin
//    sql_:='SELECT region_nam  FROM s_region'+
//                         ' where region_id='''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
    sql_:='SELECT region_nam  FROM s_region'+
                         ' where region_id=:p_1';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('region_id').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);

    BIRTHPLACE_:= BIRTHPLACE_+ ' '+cdsTempSource.FieldByName('region_nam').AsString;

//    sql_:='SELECT distr_name  FROM s_distr'+
//                         ' where distr='''+cdsOKPersonal.FieldByName('distr').AsString+'''';
    sql_:='SELECT distr_name FROM s_distr'+
                         ' where distr=:p_1';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('distr').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    BIRTHPLACE_:= BIRTHPLACE_+ ' '+cdsTempSource.FieldByName('distr_name').AsString;
  end;

    App.Selection.Find.Execute('<BIRTHPLACE>', false, false, false, false, false,
           true, 1, false, BIRTHPLACE_, 2);


//text5 text17, text18
  text5  := '';
  text17 := '';
  sql_:= 'select b.party_name, a.party_date '+
                ' from ok_party a, ss_ok_party b'+
                  where_pers_a +
                ' and a.party_code = b.party_code'+
                ' order by a.party_date'  ;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);
// ||'' ��� ''||
  While not cdsTempSource.Eof do
  Begin
    if text5 = ''
    then Text5:= cdsTempSource.fieldbyname('party_name').asstring
    else Text5:= text5+' '+cdsTempSource.fieldbyname('party_name').asstring;

    text_:='';
    if cdsTempSource.fieldbyname('party_date').asstring<>''
    then
      text_:= cdsTempSource.fieldbyname('party_date').asstring;
    if text17 = ''
    then Text17:= text_
    else Text17:= text17+#13+text_;


    cdsTempSource.next;

  End;

  if text5 = ''
  then Text5:= '������ ������ ����';

  App.Selection.Find.Execute('<R5>', false, false, false, false, false,
           true, 1, false, text5, 2);

  App.Selection.Find.Execute('<R17>', false, false, false, false, false,
           true, 1, false, text17, 2);




    try
      cdsokphoto.close;
      with cdsokphoto.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '1';
      end;
      LoadData(cdsOKPhoto, SQL_OKPhoto+where_pers+    ' and (priznak is null or priznak=:p_3)');
// ����
//    App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', 2,0 ,15,30, 90,120);
// ����� ���� ��������� ������ ���� !!!
      if not cdsOKPhoto.FieldByName('photo').IsNull
      then begin
        (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
        App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', 2,0 ,15,30);
        cdsOKPhoto.Close;
      end else begin
        cdsOKPhoto.Close;
      end;
    except
    end;


{
//text
  text := '';
  App.Selection.Find.Execute('<TEXT>', false, false, false, false, false,
           true, 1, false, text, 2);
}

//text2 ���
  sql_:= 'SELECT gender_name '+
                         ' FROM ss_ok_gender'+
                         ' where gender_code=:p_1'; // cdsOKPersonal.FieldByName('gender_code').AsString;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('gender_code').AsString;
      end;
  LoadData(cdsTempSource, sql_, True);

  Text2:= cdsTempSource.fieldbyname('gender_name').asstring;

  App.Selection.Find.Execute('<TEXT2>', false, false, false, false, false,
           true, 1, false, text2, 2);

//text3 ���� ��������
  text3 := cdsOKPersonal.FieldByName('birthday').AsString;
  App.Selection.Find.Execute('<TEXT3>', false, false, false, false, false,
           true, 1, false, text3, 2);

//text4 ����� ��������

  if cdsOKPersonal.FieldByName('region_id').IsNull
  then begin
    text4 := cdsOKPersonal.FieldByName('birthplace').AsString;
  end else begin
    sql_:='SELECT region_nam '+
                         ' FROM s_region'+
                         ' where region_id=:p_1'; //'''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('region_id').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    text4 := cdsTempSource.FieldByName('region_nam').AsString;

    sql_:='SELECT distr_name '+
                         ' FROM s_distr'+
                         ' where distr=:p_1'; //'''+cdsOKPersonal.FieldByName('distr').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('distr').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    text4 := text4 + ' '+cdsTempSource.FieldByName('distr_name').AsString;
  end;

  App.Selection.Find.Execute('<TEXT4>', false, false, false, false, false,
           true, 1, false, text4, 2);

//text5 ��������������
  sql_:='SELECT nationality_name '+
                         ' FROM ss_ok_nationality'+
                         ' where nationality_code=:p_1'; //+cdsOKPersonal.FieldByName('nationality_code').AsString;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('nationality_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  text5 := cdsTempSource.FieldByName('nationality_name').AsString;

  App.Selection.Find.Execute('<TEXT5>', false, false, false, false, false,
           true, 1, false, text5, 2);

//text6
//�������:� <TEXT6>..��<TEXT6A>� ���� ������<TEXT6B>   �����<TEXT6C>
//PASS_SERIYA 	VARCHAR2(9) not null,	-- '����� ��������	�������� � ����������, ������� ����, ������������ ��� ����������'
//PASS_NUM	VARCHAR2(9) not null,	-- '����� ��������	�������� � ����������, ������� ����, ������������ ��� ����������'
//PASS_DATE	DATE not null,	-- '���� ������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������'
//PASS_REG	VARCHAR2(200) not null,	-- '����� ������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������'

  text6 := cdsOKPersonal.FieldByName('pass_seriya').AsString;
  App.Selection.Find.Execute('<TEXT6>', false, false, false, false, false,
           true, 1, false, text6, 2);

  text6a := cdsOKPersonal.FieldByName('pass_num').AsString;
  App.Selection.Find.Execute('<TEXT6A>', false, false, false, false, false,
           true, 1, false, text6a, 2);

  text6b := cdsOKPersonal.FieldByName('pass_date').AsString;
  App.Selection.Find.Execute('<TEXT6B>', false, false, false, false, false,
           true, 1, false, text6b, 2);

  text6c := cdsOKPersonal.FieldByName('pass_reg').AsString;
  App.Selection.Find.Execute('<TEXT6C>', false, false, false, false, false,
           true, 1, false, text6c, 2);

//text7
// �������� �����<TEXT7>  �������<TEXT7A>�     ��������� ������<TEXT7B>
  text7 :=  cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_REGION_ID_SHOW').AsString+
        ' '+cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_DISTR_SHOW').AsString+
        ' '+cdsOKPersonal.FieldByName('home_address').AsString;
  App.Selection.Find.Execute('<TEXT7>', false, false, false, false, false,
           true, 1, false, text7, 2);

  text7a := cdsOKPersonal.FieldByName('telefon').AsString; // ok_personal.
  App.Selection.Find.Execute('<TEXT7A>', false, false, false, false, false,
           true, 1, false, text7a, 2);

  text7b := cdsOKPersonal.FieldByName('tabno').AsString; // ok_personal.
  App.Selection.Find.Execute('<TEXT7B>', false, false, false, false, false,
           true, 1, false, text7b, 2);

//text8
// ���� ������ �:� <TEXT8> ������ ���� ������ �� ������ min(IN_OFFICE_DATE) ok_period
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,'select min(in_office_date) all_data'+
                ' from ok_period'+
                  where_pers , True);
  text8 := '';
  Text8:= cdsTempSource.fieldbyname('all_data').asstring;

//����� � ����������� � �<TEXT8A>  text8 := ''; ������� ���� ������ max(IN_OFFICE_DATE) ok_period
// select min(appointment_date) from ok_post
// where appointment_date >= max(out_office_date) from ok_period
// ������ ����� ����� ���������� ����������)
  if text8 = ''
  then begin
    App.Selection.Find.Execute('<TEXT8>', false, false, false, false, false,
           true, 1, false, ' ', 2);
  end else begin
    App.Selection.Find.Execute('<TEXT8>', false, false, false, false, false,
           true, 1, false, text8, 2);
  end;

  sql_:='select max(out_office_date) all_data'+
                ' from ok_period'+
                  where_pers;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource, sql_, True);

  Text8:= cdsTempSource.fieldbyname('all_data').asstring;
{
11.��������� ����� �������<TEXT11>
����������<TEXT11A>����� �����������<TEXT11B>
������� �����������<TEXT11C>
}
  if text8 <> ''
  then begin
    sql_:='select office_name, established_post'+
//        ' ok_service.get_motivname(motive_) motive_out'+
                ' from ok_period'+
                  where_pers +
                ' and TYPE_PERIOD_CODE<>:p_3' +
//                ' and out_office_date<=to_date('''+text8+''',''dd.mm.yyyy'')';
                ' and out_office_date<=to_date(:p_4,:p_5)';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftInteger,'p_3' ,ptInput);
          ParamByName('p_3').Value := 3;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := text8;
          CreateParam(ftString,'p_5' ,ptInput);
          ParamByName('p_5').Value := 'dd.mm.yyyy';
      end;
    LoadData(cdsTempSource, sql_ , True);
    Text11:= cdsTempSource.fieldbyname('office_name').asstring;
    Text11a:= cdsTempSource.fieldbyname('established_post').asstring;
    text11b := text8;
//    Text11c:= cdsTempSource.fieldbyname('motive_out').asstring;
// � ����� ������� ������ ������� ����������
// ���� � ������ �������� ���� ��� ����!!!!!!!!!!
    text11c := '';
  end else begin
    text11  := '';
    text11a := '';
    text11b := '';
    text11c := '';
  end;

  App.Selection.Find.Execute('<TEXT11>', false, false, false, false, false,
           true, 1, false, text11, 2);
  App.Selection.Find.Execute('<TEXT11A>', false, false, false, false, false,
           true, 1, false, text11a, 2);
  App.Selection.Find.Execute('<TEXT11B>', false, false, false, false, false,
           true, 1, false, text11b, 2);
  App.Selection.Find.Execute('<TEXT11C>', false, false, false, false, false,
           true, 1, false, text11c, 2);

//

  if text8 = '' then text8 := '01.01.1901';
  sql_:= 'select min(IN_OFFICE_DATE) all_data'+
                ' from ok_period'+
                  where_pers +
//                ' and IN_OFFICE_DATE >= to_date('''+text8+''',''dd.mm.yyyy'' )';
                ' and IN_OFFICE_DATE >= to_date(:p_3,:p_4 )';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := text8;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := 'dd.mm.yyyy';
      end;
  LoadData(cdsTempSource, sql_ , True);
//  Text8a:= cdsTempSource.fieldbyname('all_data').asstring;
  Text8a:= cdsTempSource.fieldbyname('all_data').asstring;

  App.Selection.Find.Execute('<TEXT8A>', false, false, false, false, false,
           true, 1, false, text8a, 2);


//text9
{select soe.education_name from ss_ok_education soe, ss_ok_institution soi
where soe.education_code=soi.education_code
and soi.institution_code=  text9 := '';
}
  sql_:= 'select b.institution_name||'' ''||b.institution_place,'+
                ' to_char(a.begin_date),'+
                ' DECODE (a.end_date,null, ''    '', to_char(a.end_date)),'+
                ' a.profession_personal,'+
                ' a.diplom_num,'+
                ' c.education_name'+
                ' from ok_education a, ss_ok_institution b, ss_ok_education c'+
                  where_pers_a +
                ' and a.institution_code = b.institution_code'+
                ' and b.education_code = c.education_code'+
                ' order by a.end_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource, sql_ , True);
{
������������ �������� ��������� � ��� ���������������
 b.institution_name||'' ''||b.institution_place||'' ''||
��� �����������
' to_char(a.begin_date,''yyyy'')||'' ''||'+
��� ��������� ��� �����
' to_char(a.end_date,''yyyy'')||'' ''||'+
����� ������������� ������� � ���������� ��������� �������� ���������
' a.profession_personal'+
� ������� ��� �������������
 a.diplom_num
}
  k:=11;
  While not cdsTempSource.Eof do
  Begin
    for i:=0 to 4
    do begin
      Text9a:= cdsTempSource.fields[i].asstring;
//            '|'+cdsTempSource.fieldbyname('rabota').asstring+
//            '|'+cdsTempSource.fieldbyname('RELATION_HOME_ADDRESS').asstring;

      App.Selection.Find.Execute('<'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text9a, 2);
      inc(k);
    end;
//    k:=k+4;
//    if text9a = ''
//    then Text9a:= cdsTempSource.fieldbyname('all_data').asstring
//    else Text9a:= text9a+';'+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  for i:= k to 30
  do begin
      App.Selection.Find.Execute('<'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;

  Text9:= cdsTempSource.fieldbyname('education_name').asstring;

  App.Selection.Find.Execute('<TEXT9>', false, false, false, false, false,
           true, 1, false, text9, 2);

//  App.Selection.Find.Execute('<TEXT9A>', false, false, false, false, false,
//           true, 1, false, copy(text9a,1,250), 2);

//text10
  text10 := ''; // ss_ok_FAMILY_STATUS.FAMILY_STATUS_CODE
  sql_:= 'select family_status_name all_data'+
                ' from ss_ok_FAMILY_STATUS'+
                ' where FAMILY_STATUS_CODE=:p_1'; // cdsOKPersonal.FieldByName('FAMILY_STATUS_CODE').AsString;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('FAMILY_STATUS_CODE').AsString;
      end;
  LoadData(cdsTempSource, sql_, True);

  Text10:= cdsTempSource.fieldbyname('all_data').asstring;

  App.Selection.Find.Execute('<TEXT10>', false, false, false, false, false,
           true, 1, false, text10, 2);

{
//text10a
  text10a := '';
  sql_:= 'select b.relation_name ||'' ''|| a.RELATION_FAMILY	||'' ''||a.RELATION_NAME ||'' ''||'+
                ' a.RELATION_PATRONYMIC||'' ''|| to_char(a.RELATION_BIRTHDAY) as all_data'+
                ' from ok_relation a, ss_ok_relation b'+
                  where_pers_a +
                ' and a.relation_code=b.relation_code'+
                ' order by a.relation_code';
  LoadData(cdsTempSource, sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text10a = ''
    then Text10a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text10a:= text10a+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;

  End;

  App.Selection.Find.Execute('<TEXT10a>', false, false, false, false, false,
           true, 1, false, text10a, 2);
}

  k:=11;
  sql_:='select b.relation_name,a.RELATION_FAMILY	||'' ''||a.RELATION_NAME ||'' ''||'+
                ' a.RELATION_PATRONYMIC,a.RELATION_BIRTHDAY '+
                ' from ok_relation a, ss_ok_relation b'+
                  where_pers_a +
                ' and a.relation_code=b.relation_code'+
                ' order by a.relation_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 2
    do begin
      Text11:= cdsTempSource.fields[i].asstring;
//            '|'+cdsTempSource.fieldbyname('rabota').asstring+
//            '|'+cdsTempSource.fieldbyname('RELATION_HOME_ADDRESS').asstring;
      App.Selection.Find.Execute('<TEXT11'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text11, 2);
      inc(k);
    end;
    k:=k+2;
    cdsTempSource.next;
  End;

  for i:= k to 114
  do begin
      App.Selection.Find.Execute('<TEXT11'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;




//text11 �� text8

//text12
{

ARMY_CODE 	NUMBER(1) not null, --	'��������� � ������� ������ 	���������� �� ����������� SS_OK_ARMY  ���� ARMY_CODE  ������������ ��� ����������'
FITNESS_ARMY_CODE	NUMBER (1) not null, --	'�������� � ������	���������� �� ����������� SS_OK_Fitness_ARMY  ���� fitness_ARMY_Code'
STAFF 	VARCHAR2(50) , --,--	'��� �������	�������� � ����������, ������ ����, ������������ ��� ����������'
TYPE_FORCE	VARCHAR2(50) , --,--	'��� �����	�������� � ����������, ������� ����, ������������ ��� ����������'
ARMY_GROUP	VARCHAR2(50) , --,--	'������ �����	�������� � ����������, ������� ����, ������������ ��� ����������'
CATEGORY_ARMY	VARCHAR2(50) , --,--	'��������� �����	�������� � ����������, ������� ����, ������������ ��� ����������'
SPECIAL_ARMY 	VARCHAR2(50) , --,--	'�������� �������������	�������� � ����������, ������� ����, ������������ ��� ����������'
MILITARY_RANK	VARCHAR2      (50),--	'�������� ������	�������� � ����������, ������� ����, ������������ ��� ����������'
NUMBER_VUS	VARCHAR2(50),	--'����� ������� ������� ������������� (���)	�������� � ����������, ������� ����, ������������ ��� ����������'
CODE_ARMY_POST	VARCHAR2(50),--	'��� ��������� � ������ �������� ������� ������	�������� � ����������, ������� ����, ������������ ��� ���������'
NAME_ARMY_OFFICE	VARCHAR2(50) not null,--	'���������	�������� � ����������, ������� ����, ������������ ��� ����������'
SPECREG_NUMBER	VARCHAR2      (50),--	'������� �� ��������� N	�������� � ����������, ������� ����, ������������ ��� ����������'

12.�������� � �������� �����: �������� ������<TEXT12>
������ ������<TEXT12A>�������<TEXT12B>
��������� ������<TEXT12C>�.����������� ����<TEXT12D>
��х<TEXT12E>����������<TEXT12F>
���.���������<TEXT12G>
}
  text12 := '';
  text12a := '';
  text12b := '';
  text12c := '';
  text12d := '';
  text12e := '';
  text12f := '';
  text12g := '';
  sql_:= 'select ok_service.get_militaryrankname(a.military_rank_code) MILITARY_RANK,'+
         ' ok_service.get_armygroupname(a.army_group_code) ARMY_GROUP,'+
         ' ok_service.get_staffname(a.staff_code) staff,'+
         ' ok_service.get_categoryarmyname(a.CATEGORY_ARMY_CODE) CATEGORY_ARMY,'+
         ' a.SPECREG_NUMBER,'+
                ' a.NUMBER_VUS, b.fitness_army_type, a.NAME_ARMY_OFFICE'+
                ' from ok_army a, ss_ok_fitness_army b'+
                  where_pers_a +
                ' and a.fitness_army_code= b.fitness_army_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource, sql_, True);

  Text12 := cdsTempSource.fieldbyname('MILITARY_RANK').asstring  ;
  Text12a := cdsTempSource.fieldbyname('ARMY_GROUP').asstring ;
  Text12b := cdsTempSource.fieldbyname('staff').asstring ;
  Text12c := cdsTempSource.fieldbyname('CATEGORY_ARMY').asstring ;
  Text12d := cdsTempSource.fieldbyname('SPECREG_NUMBER').asstring ;
  Text12e := cdsTempSource.fieldbyname('NUMBER_VUS').asstring  ;
  Text12f := cdsTempSource.fieldbyname('fitness_army_type').asstring ;
  Text12g := cdsTempSource.fieldbyname('NAME_ARMY_OFFICE').asstring ;

  App.Selection.Find.Execute('<TEXT12>', false, false, false, false, false,
           true, 1, false, text12, 2);
  App.Selection.Find.Execute('<TEXT12A>', false, false, false, false, false,
           true, 1, false, text12a, 2);
  App.Selection.Find.Execute('<TEXT12B>', false, false, false, false, false,
           true, 1, false, text12b, 2);
  App.Selection.Find.Execute('<TEXT12C>', false, false, false, false, false,
           true, 1, false, text12c, 2);
  App.Selection.Find.Execute('<TEXT12D>', false, false, false, false, false,
           true, 1, false, text12d, 2);
  App.Selection.Find.Execute('<TEXT12E>', false, false, false, false, false,
           true, 1, false, text12e, 2);
  App.Selection.Find.Execute('<TEXT12F>', false, false, false, false, false,
           true, 1, false, text12f, 2);
  App.Selection.Find.Execute('<TEXT12G>', false, false, false, false, false,
           true, 1, false, text12g, 2);

//text13
  text13 := DateToStr(Date);
  App.Selection.Find.Execute('<TEXT13>', false, false, false, false, false,
           true, 1, false, text13 , 2);
{
//text14
  text14 := '';

APPOINTMENT_DATE 	DATE not null, -- '���� � ������ ����� ��������� � ���������	�������� � ����������, ������� ����, ������������ ��� ����������
APPOINTMENT_MOTIVE	VARCHAR2(100) not null, -- '������� �����������	�������� � ����������, ������� ����, ������������ ��� ����������
DEPARTMENT_CODE 	NUMBER (2) not null, -- '������������ ������ ���� ���������	���������� �� ����������� SS_OK_DEPARTAMENT ���� DEPARTAMENT_CODE  � ����������� �� ���� ������ . ������� ����, ������������ ��� ����������
POST_CODE	NUMBER (3) not null, -- '�� ����� ��������� ���������	���������� �� ����������� SS_OK_POST ���� POST_CODE, ������� ����, ������������ ��� ����������
GRADE 	NUMBER (2) not null, -- '������ 	�������� � ����������, ��������� ����, �������������� ��� ����������
SALARY_FACT  	NUMBER(10,2)  not null, -- '����������� �����	�������� � ����������, ������� ����, ������������ ��� ����������
RAISE_PERSONAL	NUMBER(10,2) not null, -- '������������ �������� 	�������� � ����������, ������� ����, ������������ ��� ����������
RAISE_ADD 	NUMBER(10,2) not null, -- '������ ��������	�������� � ����������, ������� ����, ������������ ��� ����������
BASIS_NUM 	NUMBER (3) not null, -- '����� �������/���������	�������� � ����������, ������� ����, ������������ ��� ����������
BASIS_DATE	DATE not null, -- '���� �������/���������	�������� � ����������, ������� ����, ������������ ��� ����������
N ���������   BASIS_NUM
�������������    DEPARTMENT_CODE
���������    POST_CODE
����       BASIS_DATE
������� �����������   APPOINTMENT_MOTIVE
������ GRADE
�������� (���) RAISE_PERSONAL+RAISE_ADD
�����   SALARY_FACT
}
//
// �� ���� ������� ���������� word �������� � ������� ������
  App.Visible:=true;

//  App.Application.Quit; -- ����� �� ����� ������
 except
  App.Application.Quit(false); // ����� �� ����� ������ ��� ����������
//  App.Application.Quit(true); // ����� �� ����� � �����������
//showmessage(sql_);
   raise;
 end;

  App:=unassigned;
 FINALLY
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.dbeokRegionChange(Sender: TObject);
begin

  if  DBEokRegion.Text = ''
  then begin
    cdsSDistr_RO.Filtered := False;
  end
  else begin
    cdsSDistr_RO.Filtered := False;
    cdsSDistr_RO.Filter := 'region_id='+ cdsSRegion.FieldByName('region_id').AsString;
    cdsSDistr_RO.Filtered := True;
  end;

end;

procedure TBOKFormSTAT.cdbgOKEducationEditButtonClick(Sender: TObject);
begin

  if bokmainSTAT.BossLevel='0'
  then begin
        showmessage('������ ��������: ������ �������� ������ ��� ������!!!');
    exit;
  end;

  If cdsOKEducation.State in dsEditModes
  Then //
  Else cdsOKEducation.Edit;

  try
//,RPad(institution_name,25,'' '') name2
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKEducation.FieldByName('education_code').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
    BOKFormSTAT.LoadData(cdsTempSource,'SELECT to_char(institution_code) id, institution_name name, INSTITUTION_PLACE'+
                                              ' FROM ss_ok_institution'+
                                              ' WHERE education_code=:p_1'+ //cdsOKEducation.FieldByName('education_code').AsString+
                                              ' AND state_notes=:p_2',True); // ''A''',True);
  except
    Showmessage('����������, ������� ����������� � ������ ����� ������� ���������!');
    exit;
  end;

  cdsTempSource.Edit;
  With TSelectDialog.CreateEx(Self, cdsTempSource, cdsTempSource, cdsTempSource.FindField('id').Index) do
    Try
      If ShowModal = mrOk
      Then begin
        cdsOKEducation.FieldByName('institution_code').AsString  := cdsTempSource.FieldByName('ID').AsString;
        cdsOKEducation.FieldByName('cod_vuz_prim').AsString  := cdsTempSource.FieldByName('NAME').AsString;
        if cdsOKEducation.FieldByName('education_end').AsString='1'
        then
        cdsOKEducation.FieldByName('education_city').AsString  := cdsTempSource.FieldByName('INSTITUTION_PLACE').AsString;

      end;
//      lbInstitution.Caption := cdsTempSource.FieldByName('NAME2').AsString+'*';
    Finally
      Destination.Filtered:=false;
      Free;
    End;

{������:
procedure TBuildForm.cdbgSS_DEPPAREditButtonClick(Sender: TObject);
var cdbg: TClientDBGrid;
begin
  cdbg := Sender as TClientDBGrid;
  With TfmLargeField.Create(Self) do
    Try
      Begin
        Caption := cdbg.Columns[cdbg.SelectedIndex].Title.Caption;
        SetDep('');
        redLargeField.Clear;
        redLargeField.Text := cdbg.SelectedField.AsString;
        If ShowModal = mrOk Then
          Begin
            If cdbg.DataSource.DataSet.State <> dsEdit Then cdbg.DataSource.DataSet.Edit;
            cdbg.SelectedField.AsString := redLargeField.Text;
          End;
      End;
    Finally
      Free;
    End;
}

end;




procedure TBOKFormSTAT.actObiektivkaExecute(Sender: TObject);
var App:      OLEVariant;
//  i,j:      integer;
  Text_i, Text_iB: string;
  Text1a,Text2a,Text3a,Text4a,Text5a,Text6a,Text7a,Text8a,Text9a,Text10a: string;
  Text11a, Text12a, Text13a: string;
//  Text17,Text18,Text19,Text20,
  ErMes, Text21,Text22: string;
  texth3, sql_,where_pers, where_pers_a : string;
  file_name_,text11,TextDD,TextMM,TextYYYY :string;

//  V: Variant;

// col, nn,
 k,i :integer;

// NumFormat,  DateFormat,
//  StrFormat: String;
//  first_string : boolean;
//  prev0,prev2 : string;
//  prev1 : string;
    Save_Cursor:TCursor;

begin


  ErMes := '';

  if cdsOKPersonal.FieldByName('education_title_code').AsString =''
  then begin
    erMes := erMes+'� ������ ���������� �� ������� ������������ ����������� ����������!'+#13;
  end;

  if ErMes<>''
  then begin
    showmessage(ErMes);
    exit;
  end;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }


 TRY
    { Do some lengthy operation }
   if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
   then begin
     App := PrepareOle( 'pril03_kb.doc' ,'Word.Application');
     file_name_  := 'pril03_kb.doc';
   end else begin
     App := PrepareOle( 'pril03.doc' ,'Word.Application');
     file_name_  := 'pril03.doc';
   end;

//  App := CreateOleObject('Word.Application');
//App.visible:=true;
//  App.Documents.Add('"C:\NCI Bank\Ok\Templates\pril03.doc"');


//  App.Selection.HomeKey(6);
//  App.Selection.Find.ClearFormatting;

  If VarIsNull(App) Then
  begin
    showmessage('���������� ''Word'' �� ����� ������� ���� C:\NCI Bank\Ok\Templates\ '+file_name_ +#10#13+
           ' � �� ������ ���� '+GetCurrentDir_templates+'\'+file_name_+#10#13+
    '���������� ��������� ������� ����� �����.' );
    Exit;
  end;
//App.Visible:=true;
  try
    where_pers := ' WHERE branch=:p_1'+ // '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                  ' AND personal_code=:p_2'; //+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers_a := ' WHERE a.branch=:p_1'+ // ''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                    ' AND a.personal_code=:p_2'; //+cdsOKPersonal.FieldByName('personal_code').AsString;

    sql_:='select to_char(a.in_office_date,''yyyy'') column0,'+
                         ' to_char(a.in_office_date,''mm'') column1,'+
                         '  ESTABLISHED_POST column3'+
                         ' FROM ok_period a '+
                         ' WHERE a.branch=:p_1'+
                    ' AND a.personal_code=:p_2'+
                         ' and a.in_office_date='+
                         ' (select max(in_office_date) from ok_period '+
                         ' WHERE branch=:p_3'+
                    ' AND personal_code=:p_4)';
    ErMes:='�� ������� �������� �������� � ������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);

    App.Selection.Find.Execute('<TEXTH1>', false, false, false, false, false,
           true, 1, false, cdsTempSource.FieldByName('column0').AsString, 2);

    App.Selection.Find.Execute('<TEXTH2>', false, false, false, false, false,
           true, 1, false, toMonthName(cdsTempSource.FieldByName('column1').AsString), 2);


    App.Selection.Find.Execute('<TEXTH4>', false, false, false, false, false,
           true, 1, false, cdsTempSource.FieldByName('column3').AsString, 2);

    sql_:='select level, d.department_name name_, d.department_code,'+
        ' d.high_dep_code from ss_ok_department d'+
        ' connect by d.department_code = prior  d.high_dep_code'+
//        ' start with d.department_code='+cdsOKPersonal.FieldByName('department_code').AsString;
        ' start with d.department_code=:p_1';

    texth3:='';

  try
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('department_code').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    While not cdsTempSource.Eof do
    Begin
      texth3:= cdsTempSource.FieldByName('name_').AsString+' '+texth3;
      cdsTempSource.next;
    End;
  except
      texth3:=' �� ������� � ������ ����������!';
  end;


    App.Selection.Find.Execute('<TEXTH3>', false, false, false, false, false,
           true, 1, false, texth3, 2);

// ��� �������� !!!!

    App.Selection.Find.Execute('<FAMILY1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('family').AsString, 2);

    App.Selection.Find.Execute('<NAME1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('First_Name').AsString, 2);

    App.Selection.Find.Execute('<PATRONYMIC1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('Patronymic').AsString, 2);

    try
      cdsOKPhoto.close;
      with cdsOKPhoto.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '1';
      end;
      LoadData(cdsOKPhoto, SQL_OKPhoto+where_pers+    ' and (priznak is null or priznak=:p_3)');

      if not cdsOKPhoto.IsEmpty
      then begin
//        (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
  //      App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', 2,0 ,15,30);
        (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
        App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg',  false,true, 1,1);

         cdsOKPhoto.Close;
      end;
    except
    end;
//text1a

    DateTimeToString(TextDD, 'dd', cdsOKPersonal.FieldByName('birthday').AsDateTime);
    DateTimeToString(TextMM, 'mm', cdsOKPersonal.FieldByName('birthday').AsDateTime);
    DateTimeToString(TextYYYY, 'yyyy', cdsOKPersonal.FieldByName('birthday').AsDateTime);
    Text1a := TextDD+' '+ToMonthName(TextMM)+' '+TextYYYY+' ���';

    App.Selection.Find.Execute('<TEXT1A>', false, false, false, false, false,
           true, 1, false, Text1a, 2);

//DateTimeToString(var Result: string; const Format: string; DateTime: TDateTime);


//text2a
  text2a := '';
  sql_:='SELECT nationality_name '+
                         ' FROM ss_ok_nationality'+
                         ' where nationality_code=:p_1'+ //cdsOKPersonal.FieldByName('nationality_code').AsString+
                         ' and state_notes=:p_2'; // +#39+'A'+#39;
  ErMes:='�� ������� �������� �������� � ��������������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('nationality_code').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  LoadData(cdsTempSource,sql_, True);

  text2a := cdsTempSource.FieldByName('nationality_name').AsString;

  App.Selection.Find.Execute('<TEXT2A>', false, false, false, false, false,
           true, 1, false, text2a, 2);

//text3a
  sql_:='SELECT education_title_name '+
                         ' FROM ss_ok_education_title'+
                         ' where education_title_code=:p_1'+ //cdsOKPersonal.FieldByName('education_title_code').AsString+
                         ' and state_notes=:p_2'; // +#39+'A'+#39;
  try
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('education_title_code').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
    LoadData(cdsTempSource,sql_, True);
    Text3a:= cdsTempSource.fieldbyname('education_title_name').asstring;
  except
    Text3a:='';
  end;

  App.Selection.Find.Execute('<TEXT3A>', false, false, false, false, false,
           true, 1, false, text3a, 2);

//text4a
  if cdsOKPersonal.FieldByName('region_id').IsNull
  then begin
    text4a := cdsOKPersonal.FieldByName('birthplace').AsString;
  end else begin
    ErMes:='�� ������� �������� �������� � ����� ��������';
    sql_:='SELECT region_nam FROM s_region'+
                         ' where region_id=:p_1'; //'''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('region_id').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    text4a := cdsTempSource.FieldByName('region_nam').AsString;

    sql_:='SELECT distr_name FROM s_distr'+
                         ' where distr=:p_1'; //'''+cdsOKPersonal.FieldByName('distr').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('distr').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    text4a := text4a + ' '+cdsTempSource.FieldByName('distr_name').AsString;
  end;

    App.Selection.Find.Execute('<TEXT4A>', false, false, false, false, false,
           true, 1, false, text4a, 2);
//text5a
  ErMes:='�� ������� �������� �������� � ������';
  sql_:='select b.party_name'+
                ' from ok_party a, ss_ok_party b'+
                  where_pers_a +
                ' and a.party_code = b.party_code'+
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.party_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;

  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text5a = ''
    then Text5a:= cdsTempSource.fieldbyname('party_name').asstring
    else Text5a:= text5a+','+cdsTempSource.fieldbyname('party_name').asstring;
    cdsTempSource.next;
  End;

  if text5a='' then text5a:='���������';
  App.Selection.Find.Execute('<TEXT5A>', false, false, false, false, false,
           true, 1, false, text5a, 2);

//text6a
//text7a
  text6a := '';
  text7a := '';
//  ||to_char(a.END_DATE)
  if (HeadBranch_ ='00883') or (HeadBranch_ ='09006')
//or (1=1)
  then begin
  // �������� ����
    sql_:='select b.institution_name||'' ''||to_char(a.END_DATE)||'' ���.'' all_data0,'+
                ' a.profession_personal all_data1'+
                ' from ok_education a, ss_ok_institution b'+
                  where_pers_a +
                ' and a.institution_code = b.institution_code'+
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.end_date';
  end else begin
    sql_:='select b.institution_name all_data0,'+
                ' a.profession_personal all_data1'+
                ' from ok_education a, ss_ok_institution b'+
                  where_pers_a +
                ' and a.institution_code = b.institution_code'+
                ' and b.state_notes=:p_3'+ //#39+'A'+#39+
                ' order by a.end_date';
  end;
  ErMes:='�� ������� �������� �������� �� ������� ���������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
      end;
  LoadData(cdsTempSource,sql_, True);


  While not cdsTempSource.Eof do
  Begin
    if text6a = ''
    then Text6a:= cdsTempSource.fieldbyname('all_data0').asstring
    else Text6a:= text6a+#13+cdsTempSource.fieldbyname('all_data0').asstring;
    if text7a = ''
    then Text7a:= cdsTempSource.fieldbyname('all_data1').asstring
    else Text7a:= text7a+#13+cdsTempSource.fieldbyname('all_data1').asstring;

    cdsTempSource.next;
  End;

  App.Selection.Find.Execute('<TEXT6A>', false, false, false, false, false,
           true, 1, false, text6a, 2);
  App.Selection.Find.Execute('<TEXT7A>', false, false, false, false, false,
           true, 1, false, text7a, 2);


//text8a
// ������ �������
  sql_:='select b.degree_name all_data'+
                ' from ok_degree a, ss_ok_degree b'+
                  where_pers_a +
                ' and a.degree_code= b.degree_code'+
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.degree_date';
  ErMes:='�� ������� �������� �������� �� ������ �������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text8a = ''
    then Text8a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text8a:= text8a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

//
  if text8a='' then text8a:='���';
  App.Selection.Find.Execute('<TEXT8A>', false, false, false, false, false,
           true, 1, false, text8a, 2);

//text9a
  text9a := ''; //
  ErMes:='�� ������� �������� �������� �� ������ ������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
      end;
  LoadData(cdsTempSource,'select b.academic_name all_data'+
                ' from ok_academic a,ss_ok_academic b '+
                  where_pers_a +
                ' and a.academic_code=b.academic_code'+
                ' and b.state_notes=:p_3'+ //#39+'A'+#39+
                ' order by a.academic_date', True);

  While not cdsTempSource.Eof do
  Begin
    if text9a = ''
    then Text9a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text9a:= text9a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  App.Selection.Find.Execute('<TEXT9A>', false, false, false, false, false,
           true, 1, false, text9a, 2);

//text10a
  text10a := '';
  ErMes:='�� ������� �������� �������� �� ����������� ������';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := 'A';
      end;
  LoadData(cdsTempSource,'select b.language_name||'' ���� (''|| c.LEVEL_LANGUAGE_NAME ||'')'' all_data'+
                ' from ok_language a, ss_ok_language b, ss_ok_level_language c'+
                  where_pers_a +
                ' and a.language_code= b.language_code'+
                ' and a.level_code=c.level_language_code'+
                ' and c.state_notes=:p_3'+ //#39+'A'+#39+
                ' and b.state_notes=:p_4'+ //#39+'A'+#39+
                ' order by a.language_code', True);

  While not cdsTempSource.Eof do
  Begin
    if text10a = ''
    then Text10a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text10a:= text10a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text10a='' then text10a:='��������';
  App.Selection.Find.Execute('<TEXT10A>', false, false, false, false, false,
           true, 1, false, text10a, 2);

//text11a
  text11a := '';
  ErMes:='�� ������� �������� �������� � ���������� ��������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,'select voyage_date||'' ''||voyage_land all_data'+
                ' from ok_voyage'+
                  where_pers +
                ' order by voyage_date', True);

  While not cdsTempSource.Eof do
  Begin
    if text11a = ''
    then Text11a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text11a:= text11a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text11a='' then text11a:='��������';

  App.Selection.Find.Execute('<TEXT11A>', false, false, false, false, false,
           true, 1, false, text11a, 2);

//text12a
  text12a := ''; // ��� ������ ok_premium

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,'select premium_name all_data'+
                ' from ok_premium'+
                  where_pers +
                ' order by premium_date', True);

  While not cdsTempSource.Eof do
  Begin
    if text12a = ''
    then Text12a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text12a:= text12a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text12a='' then text12a:='���';

  App.Selection.Find.Execute('<TEXT12A>', false, false, false, false, false,
           true, 1, false, text12a, 2);

//text13a
  text13a := '';

  ErMes:='�� ������� �������� �������� �� ��������';
  sql_:='select b.ELECTION_name all_data'+
        ' from ok_election a, ss_ok_election b '+
        where_pers+
                ' and a.election_code= b.election_code'+
                ' and b.state_notes='+#39+'A'+#39+
        ' order by a.election_date_begin';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text13a = ''
    then Text13a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text13a:= text13a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;

  End;

  if text13a='' then text13a:='�����������';
  App.Selection.Find.Execute('<TEXT13A>', false, false, false, false, false,
           true, 1, false, text13a, 2);

//text14a
// ����� �����������: (�����)
//  App.Selection.Find.Execute('<TEXT14A>', false, false, false, false, false,
//           true, 1, false, DateToStr(Date), 2);


  text_i := '';
  text_iB := '';
  ErMes:='�������� � ������ (������ ��������)';

  if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
  then begin
// �������-����� ���� ���������� ����-�����-���
    sql_:='select to_char(IN_OFFICE_DATE,''dd.mm.yyyy'') IN_OFFICE,'+
        'to_char(OUT_OFFICE_DATE,''dd.mm.yyyy'') OUT_OFFICE,'+
        ' substr(OFFICE_NAME ||'' ''||ESTABLISHED_department ||'', ''||ESTABLISHED_POST,1,255) column2'+
        ' FROM ok_period'+
        where_pers+' order by in_office_date';
  end else begin

    sql_:='select to_char(IN_OFFICE_DATE,''mm.yyyy'') IN_OFFICE,'+
        'to_char(OUT_OFFICE_DATE,''mm.yyyy'') OUT_OFFICE,'+
        ' substr(OFFICE_NAME ||'' ''||ESTABLISHED_department ||'', ''||ESTABLISHED_POST,1,255) column2'+
        ' FROM ok_period'+
        where_pers+' order by in_office_date';
  end;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

//  row:=1;
  sql_ := 'App.Selection.GoTo(2, 1, 4, '''');';


  if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
  then begin
    App.Selection.GoTo(2, 1, 3, '');
  end else begin
    App.Selection.GoTo(2, 1, 4, '');
  end;

  sql_:='App.Selection.SelectRow;';
  App.Selection.SelectRow;
//App.Visible:=true;
//showmessage('1');
  sql_:='App.Selection.Copy;';
  App.Selection.Copy;
//      App.Selection.Find.Execute('<TEXT21>', false, false, false, false, false,
//                                         true, 1, false, ' ', 1);
//      App.Selection.Find.Execute('<TEXT22>', false, false, false, false, false,
//                                         true, 1, false, '������ ��������', 1);

//   sql_ := 'App.Selection.InsertRowsBelow;';
//      App.Selection.InsertRowsBelow;
//   sql_ := 'App.Selection.Paste';
//      App.Selection.Paste;



//   sql_ := 'App.Selection.PasteSpecial;'; �������� �� ������
//      App.Selection.PasteSpecial;

  While not cdsTempSource.eOF do
    begin
      cdsTempSource.Next;
    end;

  While not cdsTempSource.bOF do
    begin
      if cdsTempSource.Fields[1].AsString <> ''
      then begin
        text21 := cdsTempSource.Fields[0].AsString+' - '+cdsTempSource.Fields[1].AsString+ ' �.';
        text22 := cdsTempSource.Fields[2].AsString;
        App.Selection.Find.Execute('<TEXT21>', false, false, false, false, false,
                                         true, 1, false, text21, 1);
        App.Selection.Find.Execute('<TEXT22>', false, false, false, false, false,
                                         true, 1, false, text22, 1);

//        App.Selection.PasteAppendTable;
//        App.Selection.InsertRowsBelow;
//        App.Selection.Paste;
        sql_ := 'App.Selection.InsertRows(1);';
        App.Selection.InsertRows(1);
        sql_ := 'App.Selection.paste;';
        App.Selection.Paste;

      end else begin
        text21 := cdsTempSource.Fields[0].AsString+' ������ ������� ��������';
        text22 := cdsTempSource.Fields[2].AsString;
        App.Selection.Find.Execute('<TEXT21>', false, false, false, false, false,
                                         true, 1, false, text21, 1);
        App.Selection.Find.Execute('<TEXT22>', false, false, false, false, false,
                                         true, 1, false, text22, 1);
        sql_ := 'App.Selection.InsertRows(1);';
        App.Selection.InsertRows(1);
        sql_ := 'App.Selection.paste;';
        App.Selection.Paste;

      end;

      cdsTempSource.prior;
    end;

      App.Selection.Find.Execute('<TEXT21>', false, false, false, false, false,
                                         true, 1, false, ' ', 1);
      App.Selection.Find.Execute('<TEXT22>', false, false, false, false, false,
                                         true, 1, false, '������ ��������', 1);

// �� ���� ������� ���������� word �������� � ������� ������

//  App.Visible:=true;

//  V.Visible:=true;


   if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
   then begin
//text11
  text11 := '';
  k:=11;
  sql_:='select b.relation_name,a.RELATION_FAMILY	||'' ''||a.RELATION_NAME ||'' ''||'+
                ' a.RELATION_PATRONYMIC,a.RELATION_BIRTHDAY||'' ��� ''||a.RELATION_BIRTHPLACE ,'+
                ' a.RELATION_OFFICE||'' ''||a.RELATION_POST ,'+
                ' a.RELATION_HOME_ADDRESS'+
                ' from ok_relation a, ss_ok_relation b'+
                  where_pers_a +
                ' and a.relation_code=b.relation_code'+
                ' order by a.relation_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 4
    do begin
      Text11:= cdsTempSource.fields[i].asstring;
//            '|'+cdsTempSource.fieldbyname('rabota').asstring+
//            '|'+cdsTempSource.fieldbyname('RELATION_HOME_ADDRESS').asstring;
      App.Selection.Find.Execute('<TEXT11'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text11, 2);
      inc(k);
    end;
    cdsTempSource.next;

  End;

  for i:= k to 114
  do begin
      App.Selection.Find.Execute('<TEXT11'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;
//text11:=copy(text11,1,255);
//showmessage('text11 '+text11);

   end;

   App.visible:=true;
   App.ActiveDocument.SaveAs('"C:\NCI Bank\Ok\Templates\temp.doc"');

 except
//  App.ActiveDocument.SaveAs('"C:\NCI Bank\Ok\Templates\temp.doc"');
  App.Application.Quit(false); // ����� �� ����� ������ ��� ����������
  showmessage(ermes+#13+sql_);
//  App.Application.Quit(true); // ����� �� ����� � �����������
//  V.Quit(false); // ����� �� ������� ������ ��� ����������
   raise;
 end;

  App := unassigned;
//  V := unassigned;
//        App.Selection.EndKey(6);
//    App.ActiveDocument.Range.InsertAfter('one' +#9+ 'two' +#9+ 'three'+#10);
//    App.ActiveDocument.Range.ConvertToTable(Separator:=Chr(9), NumRows:=1, NumColumns:=3);

 FINALLY
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.actOptionsExecute(Sender: TObject);
begin
  LastPanel := 'OptionsPanel';
  pcmainok.ActivePage := OptionsPanel_;

  DetailsPanel.Visible             := False;
  FormPanel.Visible             := False;
  OpenPanel.Visible             := False;
//  OptionsPanel.Visible := False;
  RefPanel.Visible               := False;
  TablePanel.Visible            := False;

  actDetails.Checked := False;
  actForm.Checked    := False;
  actNew.Checked     := False;
  actRef.Checked     := False;
  actTable.Checked   := False;
  actReAccept.Checked   := False;
//  actUndoChanges.Enabled := True;

  actOptions.Checked   := True;
  OptionsPanel.Visible := True;

end;

procedure TBOKFormSTAT.edFilialExit(Sender: TObject);
//var i: Integer;
begin
  //inherited;

  If not edFilial.Modified Then Exit;
  With Registry do
    Try
      OpenKey(INIT_KEY + Self.ClassName, True);
      WriteString('edFilial', edFilial.Text);
    Finally
      CloseKey;
    End;

end;

procedure TBOKFormSTAT.edOfficeAddressExit(Sender: TObject);
begin
  If not edOfficeAddress.Modified Then Exit;
  With Registry do
    Try
      OpenKey(INIT_KEY + Self.ClassName, True);
      WriteString('edOfficeAddress', edOfficeAddress.Text);
    Finally
      CloseKey;
    End;

end;

procedure TBOKFormSTAT.ChbArticleClick(Sender: TObject);
begin

  if not ChbArticle.Checked
  then begin
    If (cdsOKPeriod.State in dsEditModes) and (cdbgOKPeriod.CanFocus)
    Then begin
      cdsOKPeriod.FieldByName('article_code').AsString:='';
    end else begin
      cdsOKPeriod.Edit;
      cdsOKPeriod.FieldByName('article_code').AsString:='';
    end;
  end;

end;

procedure TBOKFormSTAT.actToExcelExecute(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant;
 i, col,row,nn:integer;
 NumFormat,DateFormat,StrFormat: String;


begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

  cdbgOK_PERSONAL.DataSource.Dataset.DisableControls;
  cdbgOK_PERSONAL.DataSource.Dataset.First;

  row:=1;
  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;
  nn:=cdbgOK_PERSONAL.Columns.Count-1;
  i:=1;
  // ������������ ����� ��� ���������� �����
  for col:=0 to nn
  do begin
    if cdbgOK_PERSONAL.Columns.Items[col].Visible then
    begin
      V.Cells[row, i ].Value := cdbgOK_PERSONAL.Columns.Items[col].title.Caption;
//          rpad(cdbgSSOK.Columns.Items[i].title.Caption, cdbgSSOK.Columns.Items[i].Width div 6)  + '|';
      inc(i);
    end;
  end;

  inc(row);
  While not cdbgOK_PERSONAL.DataSource.Dataset.Eof
  do begin
    i := 1;
    For col:=0 To nn
    Do Begin

      if cdbgOK_PERSONAL.Columns.Items[col].Visible
      then begin
        case cdbgOK_PERSONAL.DataSource.Dataset.Fields[col].DataType Of
          ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
          ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
          ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
{
           begin
                           if i=14 then V.Cells[row, i ].NumberFormat := StrFormat
                                   else V.Cells[row, i ].NumberFormat := DateFormat;
                         end;
}
        end;
//     V.Cells[row,col+1].Font.Bold := False;
        V.Cells[row, i ].Value := Trim(cdbgOK_PERSONAL.DataSource.Dataset.Fields.FieldByName(cdbgOK_PERSONAL.Columns.Items[col].FieldName).AsString );
        inc(i);
      end;

    End;

    inc(row);
    cdbgOK_PERSONAL.DataSource.Dataset.Next;
    Application.ProcessMessages;
  end;

  V.Cells.Select;
  V.Columns.AutoFit;
  V.Visible := True; //��� �������
  cdbgOK_PERSONAL.DataSource.Dataset.ENableControls;
 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.actDeleteExecute(Sender: TObject);
begin

  if LastPanel = 'DetailsPanel'
  then begin
    ActDetailDeleteExecute(nil);
  end;

  if LastPanel = 'FormPanel'
  then begin

    if cdsOKPersonal.FieldByName('status_code').AsInteger >1
    then begin
      showmessage('������ �������. ������ ������ ���������� ����� �������.');
    end else begin
      If Application.MessageBox(PChar('������� ��� ������ � ����������?'), PChar('������'), MB_YESNO or MB_ICONQUESTION) = mrYes
      Then Begin
        Try

//          ExecSQLPAR('delete from ok_personal where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
//                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQLPAR('delete from ok_personal where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          try
          ExecSQLPAR('delete from OK_ACADEMIC where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_ADDINFORM where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_ARMY where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_ATTESTATION where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_AWARD where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_CHANGE_FIO where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_CONVICTIONS where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_DEGREE where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_EDUCATION where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_ELECTION where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_LANGUAGE where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_LEAVE where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_PARTY where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_PENALTY where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_PERIOD where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_POST where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_PREMIUM where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_RELATION where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_RISE where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_SCIENTIFIC where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);

          ExecSQLPAR('delete from OK_VOYAGE where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          ExecSQLPAR('delete from OK_YOUTH where branch=:p_1 and personal_code=:p_2',
                            cdsOKPersonal.FieldByName('branch').AsString,
                            cdsOKPersonal.FieldByName('personal_code').AsString);
          except
          end;
          ExecSQL('COMMIT');

        Except on E: Exception do
          Begin
            ExecSQL('ROLLBACK');
            ShowMessage('������ ��� ��������.'+#13+E.Message);
          End;
        End;

        cdsOKPersonal.Refresh;
      end;
    end;

// end else begin
//   showmessage('����� ������� ������ � ����������,'+
//     ' ��������� �� ������� "�����-���������� �� ����������"!');
  end;

end;

procedure TBOKFormSTAT.cdsSSOKDepartment_SETBeforePost(DataSet: TDataSet);
begin
  DataSet.Fields.FieldByName('branch').AsString := Branch;
  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  if DataSet.Fields.FieldByName('state_notes').AsVariant<>'P'
  then DataSet.Fields.FieldByName('state_notes').AsVariant:='A';

end;

procedure TBOKFormSTAT.cdsOKPersonalBeforeEdit(DataSet: TDataSet);
begin
  OldStatus := cdsOKPERSONAL.FieldByName('status_code').AsString;
  OldSpecial := cdsOKPERSONAL.FieldByName('special_code').AsString;
end;

procedure TBOKFormSTAT.cdsOKPersonalAfterOpen(DataSet: TDataSet);
begin
    cdsOKPersonal.FieldByName('birthday').EditMask  := '!09/09/0099;1;_';
    cdsOKPersonal.FieldByName('pass_date').EditMask := '!09/09/0099;1;_';
    cdsOKPersonal.FieldByName('pass_date_end').EditMask := '!09/09/0099;1;_';
    cdsOKPersonal.FieldByName('srok_date').EditMask := '!09/09/0099;1;_';

    cdsOKPersonal.FieldByName('REG_DATE_END').EditMask := '!09/09/0099;1;_';

end;

procedure TBOKFormSTAT.dsOKPersonalDataChange(Sender: TObject; Field: TField);
begin
  StatusBar.Panels[0].Text := Format('�����: %d', [cdsOKPersonal.RecordCount]);
//  ed_iias_strChange(nil);
//  ed_iias_live_strChange(nil);
end;

procedure TBOKFormSTAT.chbTabVisibleClick(Sender: TObject);
var n:integer;
begin

  if chbTabVisible.checked
  then begin

    with PCDetails
    do begin
      for n:=0 to PageCount-2
      do begin
        Pages[n].TabVisible:= true;
      end;
    end;

  end else begin

    with PCDetails
    do begin
      for n:=0 to PageCount-2
      do begin
        Pages[n].TabVisible:=false;
      end;
    end;

  end;

end;

procedure TBOKFormSTAT.actLichKartaBExecute(Sender: TObject);
{
var App:      Variant;
//  Text2, Text3, Text4, Text5, Text6, Text6a, Text6b, Text6c : string;
//  Text7, Text7a, Text7b, Text8, Text8a, Text9, Text9a : string;
//  Text10, Text10a, Text11, Text11a, Text11b, Text11c  : string;
//  Text12, Text12a, Text12b, Text12c, Text12d, Text12e, Text12f,  Text12g : string;
   Text14, Text15, Text16 : string;
 sql_, where_pers, where_pers_a : string;
  Save_Cursor:TCursor;
}  
begin
{
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;

 TRY

  App := PrepareOle( 'pril02b.doc' ,'Word.Application');

  If VarIsNull(App) Then
  begin
    showmessage('���������� ''Word'' �� ����� ������� ���� C:\NCI Bank\Ok\Templates\pril02b.doc .' +#10#13+
               ' � �� ������ ���� '+GetCurrentDir_templates+'\'+file_name_+#10#13+
    '���������� ��������� ������� ����� �����.' );
    Exit;
  end;

  try
// ��� �������� !!!!
}
{
    App.Selection.Find.Execute('<FAMILY1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('family').AsString, 2);

    App.Selection.Find.Execute('<NAME1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('First_Name').AsString, 2);

    App.Selection.Find.Execute('<PATRONYMIC1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('Patronymic').AsString, 2);

    try


// ����
      (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
      cdsOKPhoto.Close;

//    App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', 2,0 ,15,30, 90,120);
// ����� ���� ��������� ������ ���� !!!
      App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', 2,0 ,15,30);
    except
    end;
}
{    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;




}{
  While not cdsTempSource.Eof do
  Begin
    if text14 = ''
    then Text14:= cdsTempSource.fieldbyname('all_data').asstring
    else Text14:= text14+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;

  End;

try
  App.Selection.Find.Execute('<TEXT14>', false, false, false, false, false,
           true, 1, false, text14, 2);
except
showmessage(text14);
raise;
end;
}{
//text14
  text14 := '';
//

//try

//except
//memo3.Clear;
//memo3.lines.add(sql_);
//raise;
//end;

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 4
    do begin
      Text11:= cdsTempSource.fields[i].asstring;
//            '|'+cdsTempSource.fieldbyname('rabota').asstring+
//            '|'+cdsTempSource.fieldbyname('RELATION_HOME_ADDRESS').asstring;
      App.Selection.Find.Execute('<TEXT11'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text11, 2);
      inc(k);
    end;
    cdsTempSource.next;

  End;

  for i:= k to 114
  do begin
      App.Selection.Find.Execute('<TEXT11'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;



//text15
  text15 := '';
  sql_:='select b.leave_name||'' ''||a.BEGIN_YEAR||''-''||'+
        ' a.END_YEAR||'' ''||a.DATE_IN_LEAVE||''-''||a.DATE_OUT_LEAVE||'' ''||'+
        ' a.PERIOD_LEAVE||'' ''||a.MOTIVE_LEAVE'+
        ' as all_data'+
        ' from ok_leave a, ss_ok_leave b'+
          where_pers_a+
        ' and a.leave_code= b.leave_code'+
        ' and b.state_notes='+#39+'A'+#39+
        ' order by a.date_in_leave';


  While not cdsTempSource.Eof do
  Begin
    if text15 = ''
    then Text15 := cdsTempSource.fieldbyname('all_data').asstring
    else Text15 := text15+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;

  End;

  App.Selection.Find.Execute('<TEXT15>', false, false, false, false, false,
           true, 1, false, text15, 2);

//text16 ����� �����������: �<TEXT16>
  text16 := DateToStr(Date);
  App.Selection.Find.Execute('<TEXT16>', false, false, false, false, false,
           true, 1, false, text16, 2);

// �� ���� ������� ���������� word �������� � ������� ������
  App.Visible:=true;

//  App.Application.Quit; -- ����� �� ����� ������
 except
  App.Application.Quit(false); // ����� �� ����� ������ ��� ����������
//  App.Application.Quit(true); // ����� �� ����� � �����������
   raise;
 end;

  App:=unassigned;
 FINALLY
    Screen.Cursor := Save_Cursor;
 END;
}
end;

procedure TBOKFormSTAT.actObiektivkaRTFExecute(Sender: TObject);
var
s: string;
tf:textFile;
//app: variant;
begin

  try
    AssignFile(tf,'C:\NCI Bank\OK\Temp\rep_ok.rtf');
    Rewrite(tf);
    s:='{\rtf1\ansi\ansicpg1251\deff0\deflang1049{\fonttbl{\f0\fswiss\fcharset204{\*\fname Arial;}Arial CYR;}}'+#13#10+
    '\viewkind4\uc1\pard\qc\b\f0\fs20 ����-����� � ����������� ������\par '+#13#10+
    '\pard\b0\par '+#13#10+
    '\par '+#13#10+
    '\qc �����������  '+cdsOKPersonal.FieldByName('family').AsString+'.\par '+#13#10+
    '������������ \par '+#13#10+
    '\par '+#13#10+
    '\par '+#13#10+
    '\trowd\trbrdrt\brdrdb\brdrw20 '+#13#10+
    '\trbrdrb\brdrdb\brdrw20 '+#13#10+
    '\cellx850\cellx1300\cellx4800\cellx8000\cellx8668\pard '+#13#10+
    '\intbl\qc ����\cell ��.\cell ����\cell ���������� ���������\cell % �����-�����\cell\pard\row';
    WriteLn(tf,s);

    s:='\intbl 1'+
    '\cell 2'+
    '\cell 3' +
    '\cell 4'  +
    '\cell 5'   +
    '\cell\row';
    WriteLn(tf,s);

    s:='\intbl 1'+
    '\cell 2'+
    '\cell 3' +
    '\cell 4'  +
    '\cell 5'   +
    '\cell\row';
    WriteLn(tf,s);

    s:='\pard\sb100\sa100 '+#13#10+
      '\par\pard\f1\fs20\par '+#13#10+
      '\par '+#13#10+
      '\par '+#13#10+
      '\viewkind4\uc1\pard\qc\b\f0\fs20 �����������                                 ������������\par'+#13#10+
      '\pard\b0\par'+#13#10+
      '}';
    WriteLn(tf,s);
  finally
    CloseFile(tf);
  end;

  try
    WinExec('C:\NCI Bank\OK\wordpad.exe "C:\NCI Bank\OK\Temp\rep_ok.rtf"', SW_MAXIMIZE);
  except
    showmessage('�� ������� �������  "C:\NCI Bank\OK\wordpad.exe C:\NCI Bank\OK\Temp\rep_ok.rtf"');
  end;

end;

procedure TBOKFormSTAT.actLichKartaB_rtfExecute(Sender: TObject);
var
  sql_,text11,s: string;
  tf:textFile;
  app: variant;
//  where_pers, where_pers_a :string;
  i,k:integer;
begin

{    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
}
  try
    AssignFile(tf,'C:\NCI Bank\OK\Templates\rep_ok.rtf');
    Rewrite(tf);

    s:='{\rtf1\ansi\ansicpg1251\deff0\deflang1049{\fonttbl{\f0\froman\fprq2\'+
      'fcharset204{\*\fname Times New Roman;}Times New Roman CYR;}'+
      '{\f1\fswiss\fcharset204{\*\fname Arial;}Arial CYR;}}';
    WriteLn(tf,s);

    s:='{\stylesheet{ Normal;}{\s1 heading 1;}}';
    WriteLn(tf,s);

    s:='\viewkind4\uc1\pard\keepn\nowidctlpar\s1\qc\lang1033\b\f0\fs24 ����������, ����������� �� ������, ������ \par ';
    WriteLn(tf,s);

    s:='\trowd\trgaph108\trleft-142\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb';
    WriteLn(tf,s);

    s:='\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15';
    WriteLn(tf,s);


    s:='\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx1700\clbrdrt\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs \cellx3500\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs';
    WriteLn(tf,s);

    s:='\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5000\clbrdrt';
    WriteLn(tf,s);

    s:='\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr';
    WriteLn(tf,s);

    s:='\brdrw15\brdrs \cellx6500\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs';
    WriteLn(tf,s);

    s:='\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx10000\clbrdrt\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs \cellx11000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb';
    WriteLn(tf,s);

    s:='\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx12000\clbrdrt\brdrw15\brdrs';
    WriteLn(tf,s);

    s:='\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs \cellx13000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs';
    WriteLn(tf,s);

    s:='\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx15000\pard';
    WriteLn(tf,s);



    s:='\intbl\b0 N ������� ���������\cell �������������\cell ���������\cell ����\cell ������� �����������\cell ������\cell ��������\cell �����\cell �������\cell\b\row';
    WriteLn(tf,s);

  sql_:='select a.BASIS_NUM, a.ESTABLISHED_DEPARTMENT,'+
        ' a.ESTABLISHED_POST, to_char(a.basis_date,''dd.mm.yyyy'') b_date,'+
        ' b.BASE_MOVE_NAME,'+
        ' 0, 0, 0'+
        ' from ok_period a, ss_ok_BASE_MOVE b'+
        ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
            ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
        ' and a.BASE_MOVE_CODE= b.BASE_MOVE_CODE'+
        ' and b.state_notes='+#39+'A'+#39+
        ' order by a.basis_date';

  try
    cdsTempSource.close;
    with cdsTempSource.params
      do begin
        clear;
         CreateParam(ftString, 'p_1', ptInput);
         ParamByName('p_1').Value   :=15;
      end;
    LoadData(cdsTempSource,sql_, True);
  except
    showmessage(sql_);
    raise;
  end;
  k:=0;

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 7
    do begin
      Text11:= Text11+cdsTempSource.fields[i].asstring+'\cell ';
    end;

    s:='\intbl\b0 '+text11+'  \cell\b\row';
    WriteLn(tf,s);
    cdsTempSource.next;
    Text11:='';
    k:=k+1;
  End;

  if k=0
  then begin
    s:='\intbl\b0 \cell \cell \cell \cell \cell \cell \cell \cell \cell\b\row';
    WriteLn(tf,s);
  end;

    s:='\pard\nowidctlpar\b0\f1\fs20\par\pard\f2\par';
    WriteLn(tf,s);

//------------------------

    s:='\viewkind4\uc1\pard\keepn\nowidctlpar\s1\qc\lang1033\b\f0\fs24 '+
      ' �������� �� �������� \par ';
    WriteLn(tf,s);


    s:='\trowd\trgaph108\trleft-142\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb';
    WriteLn(tf,s);

    s:='\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx2000\clbrdrt\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs \cellx5000\clbrdrt';
    WriteLn(tf,s);

    s:='\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr';
    WriteLn(tf,s);

    s:='\brdrw15\brdrs \cellx8000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs';
    WriteLn(tf,s);

    s:='\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx10000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb';
    WriteLn(tf,s);

    s:='\brdrw15\brdrs\clbrdrr\brdrw15\brdrs';
    WriteLn(tf,s);

    s:=' \cellx13000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs';
    WriteLn(tf,s);

    s:='\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx16000\pard';
    WriteLn(tf,s);

    s:='\intbl\b0 ��� �������\cell ������� ���\cell ������������ ������\cell ����������������� �������\cell ���������\cell ������� �� ����������\cell\b\row';
    WriteLn(tf,s);









    s:='\trowd\trgaph108\trleft-142\trbrdrt\brdrs\brdrw10 \trbrdrl\brdrs\brdrw10 \trbrdrb';
    WriteLn(tf,s);

    s:='\brdrs\brdrw10 \trbrdrr\brdrs\brdrw10 \clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx2000\clbrdrt\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs \cellx3500\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs';
    WriteLn(tf,s);

    s:='\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx5000\clbrdrt';
    WriteLn(tf,s);

    s:='\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr';
    WriteLn(tf,s);

    s:='\brdrw15\brdrs \cellx6500\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs';
    WriteLn(tf,s);

    s:='\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx8000\clbrdrt\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15';
    WriteLn(tf,s);

    s:='\brdrs \cellx10000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs\clbrdrb';
    WriteLn(tf,s);

    s:='\brdrw15\brdrs\clbrdrr\brdrw15\brdrs';
    WriteLn(tf,s);

    s:=' \cellx13000\clbrdrt\brdrw15\brdrs\clbrdrl\brdrw15\brdrs';
    WriteLn(tf,s);

    s:='\clbrdrb\brdrw15\brdrs\clbrdrr\brdrw15\brdrs \cellx16000\pard';
    WriteLn(tf,s);

    s:='\intbl\b0  \cell ������\cell ���������\cell ������\cell ���������\cell  \cell  \cell ..............................\cell\b\row';
    WriteLn(tf,s);


  sql_:='select b.leave_name,a.BEGIN_YEAR,'+
        ' a.END_YEAR,a.DATE_IN_LEAVE,a.DATE_OUT_LEAVE,'+
        ' a.PERIOD_LEAVE,a.MOTIVE_LEAVE'+
        ' from ok_leave a, ss_ok_leave b'+
        ' WHERE a.branch=:p_1'+ // '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
            ' AND a.personal_code=:p_2'+  //cdsOKPersonal.FieldByName('personal_code').AsString+
        ' and a.leave_code= b.leave_code'+
        ' and b.state_notes=:p_3'+ //#39+'A'+#39+
        ' order by a.date_in_leave';

  try
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
      end;
    LoadData(cdsTempSource,sql_, True);
  except on e:exception
    do begin
      showmessage(sql_+#13+e.Message);
      raise;
    end;
  end;
  k:=0;
  Text11:='';

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 6
    do begin
      Text11:= Text11+cdsTempSource.fields[i].asstring+'\cell ';
    end;

    s:='\intbl\b0 '+text11+'  \cell\b\row';
    WriteLn(tf,s);
    cdsTempSource.next;
    Text11:='';
    k:=k+1;
  End;

  if k=0
  then begin
    s:='\intbl\b0 \cell \cell \cell \cell \cell \cell \cell \cell\b\row';
    WriteLn(tf,s);
  end;

    s:='\pard\nowidctlpar\b0\f1\fs20\par\pard\f2\par';
    WriteLn(tf,s);



//-----------------------

    // End of File.rtf
    s:='}';
    WriteLn(tf,s);


  finally
    CloseFile(tf);
  end;

  try
    App := PrepareOle( 'rep_ok.rtf' ,'Word.Application');
    App.Visible:=true;
  except
    App.Application.Quit(false); // ����� �� ����� ������ ��� ����������
    raise;
//  App.Application.Quit(true); // ����� �� ����� � �����������
    showmessage('�� ������� ������� "rep_ok.rtf"');
  end;
  App:=unassigned;


end;

procedure TBOKFormSTAT.actStatExecute(Sender: TObject);
begin
//
end;

procedure TBOKFormSTAT.cdbgOK_PERSONALDblClick(Sender: TObject);
begin

  if actForm.Enabled
  then begin
    actFormExecute(nil);
  end;

end;

procedure TBOKFormSTAT.dbeOK_PASS_NUMKeyPress(Sender: TObject; var Key: Char);
begin
//showmessage(Key);
  if key<>chr(vk_back)
  then begin

    try
      StrToInt(Key);
    except
      Key:=#0;
    end;

    if length(dbeOK_PASS_NUM.Text)>=7
    then begin
      key:=#0;
    end;

  end;

end;

procedure TBOKFormSTAT.dbeOK_PASS_SERIYAKeyPress(Sender: TObject;
  var Key: Char);
var is_good_ :boolean;
    Str_Key : string;
begin

  if cdsOKPersonal_NEW.FieldByName('passport_type_code').asstring='1'
  then begin
    Str_Key:=Key;

    if (key<>chr(vk_back))
    and (key<>chr(vk_return))
    then begin

      is_good_:= false;

      if Key in ['a'..'z']
      then begin
        Str_Key := Key;
        Str_Key:= upperCase( Str_Key ); //  UpperCase �� �������� ��� Char
        Key := Str_Key[1];
      end;

      if Key in ['A'..'Z']
      then begin
        is_good_:=true;
      end else begin
        showmessage('����� �������� ������ ���� ������� ���������� �������!');
      end;

      if not is_good_
      then key:=#0;

      if length(dbeOK_PASS_SERIYA.Text)>=2
      then begin
        key:=#0;
      end;

    end;
  end;


end;

procedure TBOKFormSTAT.edDepChange(Sender: TObject);
var i : integer;
    is_found : boolean;
// FilialName_ : string;
begin

//  DBEdPost.Text:='';
//  DBLCBpost.ItemIndex:=-1;
  is_found := false;

  if (cdsOKStat.State in dsEditModes)
  then cdsOKStat.cancel;

//  memo4.clear;
  for i:=1 to CBDep.Items.Count
  do begin
    if edDep.text = TData(CBDep.Items.Objects[ i-1 ]).Id
    then begin
//      memo4.lines.add(Branch+')'+edDep.text +'='+ TData(CBDep.Items.Objects[ i-1 ]).Id);
        is_found := true;
        CBDep.ItemIndex := i-1;
//      DBEdPost.OnChange:= nil;
//      edSpecial.OnChange:= nil;
      cdsOKStat.disableControls;
      cdsOKStat.close;
      with cdsOKStat.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := Branch;
      end;
      LoadData(cdsOKStat,       SQL_OKStat+' where branch=:p_1');
      cdsOKStat.Filtered := False;
//      cdsOKStat.Filter := 'department_code='
//      TData(CBDep.Items.Objects[CBDep.ItemIndex]).Id;
      cdsOKStat.Filter := 'department_code='+ edDep.text;
      cdsOKStat.Filtered := True;

      cdsOKStat.Close;
      if not cdsSSOKDepartment_RO.Active then loadData(cdsSSokDepartment_RO, SQL_ssokDepartment_set);
      if not cdsSSOKSpecial_RO.Active then loadData(cdsSSokSpecial_RO, SQL_ssokSpecial_set);

      if (headbranch_='09006')
      then begin
        if not cdsSSOKPostCategory.Active
        then begin
          mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
          ' where branch=:p_1',branch);
          if varisnull(mfo_category_type_code_VAR)
          then begin
            mfo_category_type_code :='0';
            showmessage('(13489)������� ��������� ������� '+branch+' � ���� �����.(��������� ���������� ��������� ��������)');
          end else begin
            mfo_category_type_code :=vartostr(mfo_category_type_code_VAR) ;
          end;
          sql_ :='select sop.post_code, to_char(soc.salary) salary, soc.category_name '+
                 ' from ss_ok_post_category sop, ss_ok_category soc '+
                 ' where sop.category_code=soc.category_code'+
                 ' and sop.mfo_category_type_code=:p_1';
          cdsSSOKPostCategory.close;
          with cdsSSOKPostCategory.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := mfo_category_type_code;
          end;
          loadData(cdsSSOKPostCategory, SQL_);
        end;
      end else begin
        if not cdsSSOKPostCategory.Active
        then begin
          cdsSSOKPostCategory.close;
          with cdsSSOKPostCategory.Params
          do begin
              clear;
          end;
          loadData(cdsSSOKPostCategory, SQL_cdsSSOKPostCategory);
        end;
      end;

      addLookUpField(cdsOKStat, cdsSSokPost_Set, 'post_code_show', 'post_code', 'post_code', 'post_name', True);
      addLookUpField(cdsOKStat, cdsSSOKDepartment_RO, 'department_code_show', 'department_code', 'department_code', 'department_name', False);
      addLookUpField(cdsOKStat, cdsSSOKSpecial_RO, 'special_show', 'special_code', 'special_code', 'special_name', False);
      addLookUpField(cdsOKStat, cdsSSOKPostCategory, 'salary_show', 'post_code', 'post_code', 'salary', False);
      addLookUpField(cdsOKStat, cdsSSOKPostCategory, 'razrad_show', 'post_code', 'post_code', 'category_name', False);
      cdsOKStat.Open;
      cdsOKStat.EnableControls;
//      DBEdPost.OnChange:= DBEdPostChange;
//      edSpecial.OnChange:= edSpecialChange;

    end;

  end;

  if not is_found
  then begin
    CBDep.ItemIndex := -1;
  end;


end;

procedure TBOKFormSTAT.DBEdPostChange(Sender: TObject);
var // i : integer;
//    is_found : boolean;
    SQLParams:TParams;
    sql_ : string;
    salary_ : double;
begin
      salary_ :=0;

      if (cdsOKStat.State in dsEditModes)
      then begin
  // ����� � ��������� ������ � �� ������� ���������� �����
///////
        sql_ := 'select ok_service.GET_POST_Salary( :P_POST_CODE ) from dual';
        SQLParams:=TParams.Create;
        with SQLParams do
        begin
           clear;
           CreateParam(ftInteger,'P_POST_CODE',ptInput);
           ParamByName('P_POST_CODE').Value := cdsOKStat.FieldByName('post_code').asinteger;
        end;
        try
          salary_ := GetSqlResult(sql_,sqlParams);  // :P
        except on e:exception
          do begin
            showmessage('������ �������'+#13+sql_+#13+e.Message);
          end;
        end;
        cdsOKStat.FieldByName('salary_fact').AsFloat := salary_;

        if salary_=0
        then LbOklad.caption :='(�� ������)'
        else LbOklad.caption :='           ';
      end;



end;

procedure TBOKFormSTAT.CBdepChange(Sender: TObject);
begin


  if CBdep.itemIndex = -1
  then begin
    exit;
  end else begin
    if (cdsOKStat.State in dsEditModes)
    then cdsOKStat.cancel;
    
    cdsOKStat.Filtered := False;
    cdsOKStat.Filter := 'department_code='+
    TData(CBDep.Items.Objects[CBDep.ItemIndex]).Id;
    cdsOKStat.Filtered := True;
//    lbDep.caption:=TData(CBDep.Items.Objects[CBDep.ItemIndex]).name;
    edDep.text  := TData(CBDep.Items.Objects[CBDep.ItemIndex]).Id;
  end;

end;

procedure TBOKFormSTAT.actShuBankdaExecute(Sender: TObject);
begin
//

    If not (cdsOKPeriod.State in dsEditModes)
    then begin
      cdsOKPeriod.edit;
    end;
      cdsOKPeriod.FieldByName('type_period_code').AsString := '3';
      cdsOKPeriod.FieldByName('office_name').AsString := edFilial.text;
      cdsOKPeriod.FieldByName('office_address').AsString := edOfficeAddress.text;


end;

procedure TBOKFormSTAT.PCDetailsChange(Sender: TObject);
begin
    ActDetailUndoExecute(nil);

end;

procedure TBOKFormSTAT.dbedHOME_ADDRESSFACTChange(Sender: TObject);
begin
  if (BOKFormSTAT.cdsOKPersonal.State in [dsEdit, dsInsert])
  and (chbGluk.checked)
  then begin
    cdsOKPersonal.FieldByName('home_address').AsString := dbedHOME_ADDRESSFACT.Text ;
    cdsOKPersonal.FieldByName('HOME_ADDRESS_REGION_ID').AsString :=
       cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString ;
    cdsOKPersonal.FieldByName('HOME_ADDRESS_DISTR').AsString :=
       cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_DISTR').AsString ;

  end;

end;

procedure TBOKFormSTAT.cdsOKRezervDetailAfterOpen(DataSet: TDataSet);
begin
  If dsOKRezerv.DataSet.Active Then
  Begin
// ��������� ����� ����� ���� ����
//    cdsOKRelation.FieldByName('relation_birthday').EditMask  := '!09/09/0099;1;_';
    cdsOKRezervDetail.MasterSource    := dsOKRezerv;
    cdsOKRezervDetail.IndexFieldNames := 'branch;master_id';
    cdsOKRezervDetail.MasterFields    := 'branch;master_id';
  End;

end;

procedure TBOKFormSTAT.cdsOKRezervBeforePost(DataSet: TDataSet);
begin

  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  DataSet.Fields.FieldByName('branch').AsString := Branch;

end;

procedure TBOKFormSTAT.bbSaveOptionsClick(Sender: TObject);
begin

  With Registry do
    Try
      OpenKey(INIT_KEY + Self.ClassName, True);
      WriteString('edOfficeAddress', edOfficeAddress.Text);
      WriteString('edFilial', edFilial.Text);
      Writebool('chbTabVisible', chbTabVisible.checked);
      Writebool('chbGluk', chbGluk.checked);
//      WriteInteger('clbNoLead',        clbNoLead.Selected);
    Finally
      CloseKey;
    End;

end;

procedure TBOKFormSTAT.actReAcceptExecute(Sender: TObject);
var s : string;
begin

  if ((cdsOKPersonal.FieldByName('status_code').AsString='3') or
      (cdsOKPersonal.FieldByName('status_code').AsString='4') )
  then begin
// FAMILY FIRST_NAME PATRONYMIC
  //  ok_personal.status_code=1
    s:='��������� ���������� '+
      cdsOKPersonal.FieldByName('family').AsString+' '+
      cdsOKPersonal.FieldByName('first_name').AsString+' '+
      cdsOKPersonal.FieldByName('patronymic').AsString+' '+
      ' � ��������� "������"?';

    If Application.MessageBox(PChar(s), PChar('������'), MB_YESNO or MB_ICONQUESTION) = mrYes
    then begin
      cdsOKPersonal.readonly:=false;
      cdsOKPersonal.edit;
      cdsOKPersonal.FieldByName('status_code').AsString:='1';
      cdsOKPersonal.FieldByName('PRICH_ID').AsString:='';
      cdsOKPersonal.FieldByName('NAME_PR').AsString:='';
      cdsOKPersonal.FieldByName('MOTIVE_OUT').AsString:='';
      cdsOKPersonal.post;
      cdsOKPersonal.readonly:=true;
    end;
  end else begin
    showmessage('������ �������� �������� ������ ��� ����������� �� �������� "������" ��� "�� ������".');
    exit;
  end;
{
  LastPanel := 'OpenPanel';
  pcmainok.ActivePage := OpenPanel_;

  actNew.Checked     := False;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actRef.Checked     := False;
  actDetails.Checked := False;
  actReAccept.Checked  := True ;

  actNew.Enabled     := False;
  actTable.Enabled   := False;
  actForm.Enabled    := False;
  actRef.Enabled     := False;
  actDetails.Enabled := False;
  actReAccept.Enabled   := False;
  actFilter.Enabled  := False;

  actUndoChanges.Enabled := True;
}

end;

procedure TBOKFormSTAT.actFindDepExecute(Sender: TObject);
var
  d_is_found: boolean;
  i : integer;
begin
//
  TreeV.FullCollapse;
  cdsDerevo.first;
  if TreeV.Items.Count>0
  then begin
    TreeV.Items.Item[1].Selected := true;
  end;

  d_is_found:= false;
  For i := 0 to TreeV.Items.Count - 1
  do begin
    if (not d_is_found)
    then begin
//showmessage(inttostr(i));
      if i<>0
      then begin
        TreeV.Items.Item[i].Selected := true;
      end;
      TreeV.Selected.Expand(False);
      cdsDerevo.Locate('id', Integer(TreeV.Selected.data), []);

      if (edDepartmentcodeNew.Text =cdsDerevo.FieldByname('department_code').AsString)
      or (edDepartmentNameNew.Text =cdsDerevo.FieldByname('department_name').AsString)
      or (edDEPARTMENTNUMnew.TEXT =cdsDerevo.FieldByname('department_num').AsString)
      then begin
        TreeVclick(nil);
        d_is_found:=true;
      end else begin
//        TreeV.Items.Item[i].Selected := false;
      end;
    end;
  end;

   if (not d_is_found)
   then begin
    showmessage('�� ������� ������, ��� ��������'+#13+
      '��� ������ '+edDepartmentcodeNew.Text+#13+
      '��� ������������ ������ '+edDepartmentNameNew.Text+#13+
      '��� ����� ������ '+edDEPARTMENTNUMnew.TEXT +#13 );

   end else begin
    if BOKFormSTAT.chbsavefiltr.checked
    then begin
    With BOKFormSTAT.Registry do
    Try
      OpenKey(INIT_KEY + 'TBOKForm\TfmFilterPersonal', False);
//      OpenKey(INIT_KEY + TComponent(Self.Owner).ClassName + '\' + Self.ClassName, False);
      WriteString('edDepartment', edDepartmentcodeNew.Text);
    Finally
      CloseKey;
    End;

   end;

  end;

end;

procedure TBOKFormSTAT.edDepFindKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Case Key of
    VK_RETURN:
    begin
      if sender = edDepartmentNameNew
      then begin
        edDEPARTMENTNUMnew.text:='';
        edDepartmentcodeNew.Text:='';
//        edDepartmentNameNew.Text:='';
      end;
      if sender = edDEPARTMENTNUMnew
      then begin
//        edDEPARTMENTNUMnew.text:='';
        edDepartmentcodeNew.Text:='';
        edDepartmentNameNew.Text:='';
      end;
      if sender = edDepartmentcodeNew
      then begin
        edDEPARTMENTNUMnew.text:='';
//        edDepartmentcodeNew.Text:='';
        edDepartmentNameNew.Text:='';
      end;
      actFindDep.execute;
    end;
  end;  

end;

procedure TBOKFormSTAT.actIIASExecute(Sender: TObject);
begin
  LastPanel := 'IIASPanel';
  pcmainok.ActivePage := IIASPanel_;

  actiias.Checked := true;

  actCopyPers.Checked     := False ;
  actTable.Checked := False;
  actTabel.Checked     := False ;
  actKurs.Checked     := False ;
  actNew.Checked     := False;
  actForm.Checked    := False;
  actRef.Checked     := False;
  actRef2.Checked     := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  cdsOKPersonal.ReadOnly := false;
  OptionsPanel.Visible := False;
  ActDetailUndoExecute(nil);

  if not(cdsdistr.Active)
  then begin
    loaddata(cdsdistr,SQL_S_DISTR);
  end;

  if not(cds_yesno.Active)
  then begin
    loaddata(cds_yesno,SQL_yesno);
  end;

  if not(cdsS_STR.Active)
  then begin
    loaddata(cdsS_STR,SQL_str);
  end;


end;

procedure TBOKFormSTAT.dblcbS_STRCloseUp(Sender: TObject);
begin

         cdsOKVoyage.FieldByName('VOYAGE_LAND').AsString:=
           cdsOKVoyage.FieldByName('voyage_str_show').AsString;

end;

procedure TBOKFormSTAT.actShowPhotoExecute(Sender: TObject);
var sql_ : string;
begin
  if cdsOKPhoto.Active then
  Begin
    cdsOKPhoto.close;
  End;

  sql_:=  SQL_OKPhoto+' where e.branch=:p_1'+ //'''+cdsOKPersonal.fieldbyname('branch').asstring+''''+
    ' and e.personal_code=:p_2'+ //+cdsOKPersonal.fieldbyname('personal_code').asstring ;
        ' and (priznak is null or priznak=:p_3)';

  try
      cdsOKPhoto.close;
      with cdsOKPhoto.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '1';
      end;
    LoadData(cdsOKPhoto, sql_);
  Except
   on E: Exception do
     begin
       ShowMessage(SQL_+#13+' ������ '+#13+E.Message);
     end;
  End;

  if ( cdsOKPhoto.recordcount<1 ) and (sender=actShowPhoto)
  then showmessage('���� �����������.');

end;

procedure TBOKFormSTAT.BitBtn116Click(Sender: TObject);
var bmp:  TBitmap;
begin
  memobmp.clear;
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftInteger,'p_2' ,ptInput);
          ParamByName('p_2').Value := 2;
          CreateParam(ftInteger,'p_3' ,ptInput);
          ParamByName('p_3').Value := 5;
      end;
  loaddata(cdsTemp,'select * from ok_personal '+
   ' where branch=:p_1'+ //''''+curBranch +''''+
//   ' and status_code in (2,5) order by branch,nn');
   ' and status_code in (:p_2,:p_3) order by branch,nn');
  cdsTemp.First;
  while not  cdsTemp.Eof
  do begin
      cdsokphotobmp.close;
      with cdsokphotobmp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsTemp.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTemp.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '1';
      end;
  loaddata(cdsokphotobmp,'SELECT /*+ INDEX (e OK_PHOTO_PK)*/ a.*,  e.PHOTO, '+
    ' lpad(to_char(nvl(a.nn,99)),2,''0'') pers '+
    ' FROM ok_personal a,ok_photo e '+
    ' where a.branch=e.branch and a.personal_code=e.personal_code '+
    ' and a.branch=:p_1'+ //cdsTemp.fieldbyname('branch').asstring+
    ' and a.personal_code=:p_2'+
    ' and (priznak is null or priznak=:p_3)'
    ); //+cdsTemp.fieldbyname('personal_code').asstring);

    with imgSignature.Picture, cdsokphotobmp do
    begin
      Graphic := nil;
      if FieldByName('photo').Value <> '' then
      begin
        Graphic := TJPEGImage.Create;
        Graphic.Assign(FieldByName('photo'));
        bmp := TBitmap.Create;
        try
          bmp.Assign(Graphic);
          memobmp.lines.add(ROOT_DIR+'OK\OK_'+ cdsokphotobmp.fieldbyname('branch').asstring+'_'+
            cdsokphotobmp.fieldbyname('pers').asstring+'_'+
            cdsokphotobmp.fieldbyname('family').asstring+'_'+
            cdsokphotobmp.fieldbyname('FIRST_NAME').asstring+'_'+
            cdsokphotobmp.fieldbyname('PATRONYMIC').asstring+'_'+
            cdsokphotobmp.fieldbyname('personal_code').asstring+'_'+
                        '.bmp');
          bmp.SaveTofile( ROOT_DIR+'OK\OK_'+ cdsokphotobmp.fieldbyname('branch').asstring+'_'+
            cdsokphotobmp.fieldbyname('pers').asstring+'_'+
            cdsokphotobmp.fieldbyname('family').asstring+'_'+
            cdsokphotobmp.fieldbyname('FIRST_NAME').asstring+'_'+
            cdsokphotobmp.fieldbyname('PATRONYMIC').asstring+'_'+
            cdsokphotobmp.fieldbyname('personal_code').asstring+'_'+
                        '.bmp');
        finally
          bmp.Free;
        end;
        if actPhotoActualSize.Checked then
        begin
          ScrollBox.HorzScrollBar.Position := 0;
          ScrollBox.VertScrollBar.Position := 0;
        end;
      end
      else begin
                memobmp.lines.add('��� ���� '+ cdstemp.fieldbyname('branch').asstring+'_'+
            cdsTemp.fieldbyname('family').asstring+'_'+
            cdsTemp.fieldbyname('FIRST_NAME').asstring+'_'+
            cdsTemp.fieldbyname('PATRONYMIC').asstring+'_'+
            cdsTemp.fieldbyname('personal_code').asstring);

        if actPhotoActualSize.Checked then
        begin
          imgSignature.Width := 0;
          imgSignature.Height := 0;
        end;
      end;
    end;
    cdstemp.Next;
  end;

end;

procedure TBOKFormSTAT.cdsokhospitalAfterOpen(DataSet: TDataSet);
begin

  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsokhospital.MasterSource    := dsOKPersonal;
    cdsokhospital.IndexFieldNames := 'branch;personal_code';
    cdsokhospital.MasterFields    := 'branch;personal_code';
  End;
  Dataset.FieldByName('date_open').EditMask  := '!09/09/0099;1;_';
  Dataset.FieldByName('date_close').EditMask  := '!09/09/0099;1;_';
  Dataset.FieldByName('date_hospital').EditMask  := '!09/09/0099;1;_';

end;

procedure TBOKFormSTAT.TabSheet_21Show(Sender: TObject);
begin
  if cdsokhospital.Active then
  Begin
    Exit;
  End;

      cdsokhospital.close;
      with cdsokhospital.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
      end;
  LoadData(cdsokhospital, SQL_okhospital+' where branch=:p_1'); //+''''+curBranch +'''');

// 1. lookup ���� - ���� ���� :)
  cdsokhospital.Close;
  cdsokhospital.DisableControls;

// 2. �������� ���������-�������
  if not cdsSSokhospital_Set.Active
  then LoadData(cdsSSokhospital_Set, SQL_SSokhospital_Set);

// 3. ���������� lookup �����
  addLookUpField(cdsokhospital, cdsSSokhospital_Set, 'hospital_code_show', 'hospital_code', 'hospital_code', 'hospital_name', True);
  addLookUpField(cdsokhospital, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsokhospital.Open;
  cdsokhospital.EnableControls;

end;

procedure TBOKFormSTAT.cdsOkvoyageAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsOkvoyage.MasterSource    := dsOKPersonal;
    cdsOkvoyage.IndexFieldNames := 'branch;personal_code';
    cdsOkvoyage.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.EnterKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Case Key of
    VK_RETURN:
      begin
        SelectNext(ActiveControl, True, True);
      end;
  end;

end;

procedure TBOKFormSTAT.dbedHospitalDateOpenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var sql_:string;
begin
  Case Key of
    VK_RETURN:
      begin
// ���������� ����
        SelectNext(ActiveControl, True, True);
{        sql_:='select ok_service.get_work_period('''+branch+''','+
            cdsokpersonal.fieldbyname('personal_code').asstring+','+
            'to_date('''+cdsokhospital.fieldbyname('date_open').asstring+''',''dd.mm.yyyy'') ) from dual';
}        sql_:='select ok_service.get_work_period(:p_1,:p_2,'+
            'to_date(:p_3,''dd.mm.yyyy'') ) from dual';
        if not (cdsokhospital.state in [dsEdit])
        then cdsokhospital.edit;
        try
          cdsokhospital.fieldbyname('work_period').asstring:=
            getsqlresultpar(sql_, curbranch, cdsokpersonal.fieldbyname('personal_code').asstring,
             cdsokhospital.fieldbyname('date_open').asstring
            );
        except on e:exception
          do begin
            showmessage(sql_+#13+e.message);
            SelectNext(ActiveControl, FALSe, True);

          end;
        end;
      end;
  end;

end;

procedure TBOKFormSTAT.dbedHospitalDateCloseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sql_:string;
  number_day_:extended;
  day_date_ : tdatetime;
begin
  Case Key of
    VK_RETURN:
      begin
        SelectNext(ActiveControl, True, True);
        if not (cdsokhospital.state in [dsEdit])
        then cdsokhospital.edit;

// ���������� ���� 5   . "����������� ���-�� ����"  - ���������� �� ���� �������� �� ���� �������� � ����
        if cdsokhospital.fieldbyname('date_open').asdatetime>
           strtodate(dbedHospitalDateClose.text)
        then begin
          showmessage('���� �������� '+dbedHospitalDateClose.text +
             '������ ���� ������ ���� ��������'+ cdsokhospital.fieldbyname('date_open').asstring);
          exit;
        end;

//        number_day_:= cdsokhospital.fieldbyname('date_close').Asdatetime-
//          cdsokhospital.fieldbyname('date_open').asdatetime ;
        number_day_:=0;
        day_date_:=cdsokhospital.fieldbyname('date_open').asdatetime ;
        while (day_date_<> (strtodate(dbedHospitalDateClose.text) +1))
        do begin
          if (dayofweek(day_date_) <> 7) and (dayofweek(day_date_) <> 1)
          then  number_day_:=number_day_+1;
          day_date_:=day_date_+1;
//showmessage(floattostr(number_day_));
        end;

        try
{          sql_:='select count(*) from Z_DN where pr=0 '+
            ' and dn>= to_date('''+cdsokhospital.fieldbyname('date_open').asstring+''',''dd.mm.yyyy'')'+
            ' and dn<= to_date('''+dbedHospitalDateClose.text+''',''dd.mm.yyyy'')'+
            ' and to_char(dn,''D'') not in (7,1)';
}          sql_:='select count(*) from Z_DN where pr=:p_1 '+
            ' and dn>= to_date(:p_2,''dd.mm.yyyy'')'+
            ' and dn<= to_date(:p_3,''dd.mm.yyyy'')'+
            ' and to_char(dn,:p_4) not in (:p_5,:p_6)';
          number_day_:=number_day_- (
            getsqlresultPAR( sql_,'0', cdsokhospital.fieldbyname('date_open').asstring,
              dbedHospitalDateClose.text,'D','7','1'
              )
            );
        except on e:exception
          do begin
            showmessage(e.Message+#13+sql_);
          end
        end;
//showmessage(floattostr(number_day_));
        cdsokhospital.fieldbyname('number_day').asstring :=floattostr(number_day_);

// ���������� ���� 7 �� ����������� � ����������� �� ����� ��� �� �����������
        if cdsokhospital.fieldbyname('work_period').asstring=''
        then begin
// ���������� ����
          sql_:='select ok_service.get_work_period(:p_1,:p_2,'+
              'to_date(:p_3,''dd.mm.yyyy'') ) from dual';
          if not (cdsokhospital.state in [dsEdit])
          then cdsokhospital.edit;
          try
            cdsokhospital.fieldbyname('work_period').asstring:=
              getsqlresultPAR(sql_, curbranch, cdsokpersonal.fieldbyname('personal_code').asstring,
                  cdsokhospital.fieldbyname('date_open').asstring
              );
          except on e:exception
            do begin
              showmessage(sql_+#13+e.message);
            end;
          end;
        end;
{        sql_:='select percentage from ss_ok_hospital '+
          ' where hospital_code='+cdsokhospital.fieldbyname('hospital_code').asstring+
          ' and work_period_from<= '+copy( cdsokhospital.fieldbyname('work_period').asstring ,1,2)+
          ' and work_period_to> '+copy( cdsokhospital.fieldbyname('work_period').asstring ,1,2);
}        sql_:='select percentage from ss_ok_hospital '+
          ' where hospital_code=:p_1'+
          ' and work_period_from<=:p_2 '+ //copy( cdsokhospital.fieldbyname('work_period').asstring ,1,2)+
          ' and work_period_to>:p_3 '; //+copy( cdsokhospital.fieldbyname('work_period').asstring ,1,2);
        try
          cdsokhospital.fieldbyname('percentage').asstring:=
            getsqlresultPar(sql_, cdsokhospital.fieldbyname('hospital_code').asstring,
                 copy( cdsokhospital.fieldbyname('work_period').asstring ,1,2),
                 copy( cdsokhospital.fieldbyname('work_period').asstring ,1,2)
            );
        except on e:exception
          do begin
            showmessage(sql_+#13+e.message);
            SelectNext(ActiveControl, FALSe, True);
          end;
        end;
      end;
  end;

end;

procedure TBOKFormSTAT.cdsokprivilegeAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsokprivilege.MasterSource    := dsOKPersonal;
    cdsokprivilege.IndexFieldNames := 'branch;personal_code';
    cdsokprivilege.MasterFields    := 'branch;personal_code';
  End;
  Dataset.FieldByName('date_open').EditMask  := '!09/09/0099;1;_';
  Dataset.FieldByName('date_close').EditMask  := '!09/09/0099;1;_';

end;

procedure TBOKFormSTAT.TabSheet_22Show(Sender: TObject);
begin
  if cdsokprivilege.Active then
  Begin
    Exit;
  End;

      cdsokprivilege.close;
      with cdsokprivilege.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
      end;
  LoadData(cdsokprivilege, SQL_okprivilege+' where branch=:p_1'); //+''''+curBranch +'''');
  LoadData(cdsSSokprivilege_SET, SQL_SSokprivilege_SET);

// 1. lookup ���� - ���� ���� :)
  cdsokprivilege.Close;
  cdsokprivilege.DisableControls;

// 2. �������� ���������-�������

// 3. ���������� lookup �����
  addLookUpField(cdsokprivilege, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);
  addLookUpField(cdsokprivilege, cdsSSokprivilege_SET, 'privilege_view', 'privilege_code', 'privilege_code', 'privilege_name', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsokprivilege.Open;
  cdsokprivilege.EnableControls;

end;

procedure TBOKFormSTAT.TabSheet_23Show(Sender: TObject);
begin
  if cdsokincrease.Active then
  Begin
    Exit;
  End;

  LoadData(cdsssokincrease_set, SQL_ssokincrease_SET);
      cdsokincrease.close;
      with cdsokincrease.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
      end;
  LoadData(cdsokincrease, SQL_okincrease+' where branch=:p_1'); // '+''''+curBranch +'''');

// 1. lookup ���� - ���� ���� :)
  cdsokincrease.Close;
  cdsokincrease.DisableControls;

// 2. �������� ���������-�������

// 3. ���������� lookup �����
  addLookUpField(cdsokincrease, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);
  addLookUpField(cdsokincrease, cdsSSokincrease_Set, 'increase_code_show', 'increase_code', 'increase_code', 'increase_name', false);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsokincrease.Open;
  cdsokincrease.EnableControls;

//  SQL_ssokincrease_SET

end;

procedure TBOKFormSTAT.cdsokincreaseAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsokincrease.MasterSource    := dsOKPersonal;
    cdsokincrease.IndexFieldNames := 'branch;personal_code';
    cdsokincrease.MasterFields    := 'branch;personal_code';
  End;
  Dataset.FieldByName('date_open').EditMask  := '!09/09/0099;1;_';
  Dataset.FieldByName('date_close').EditMask  := '!09/09/0099;1;_';
  Dataset.FieldByName('order_date').EditMask  := '!09/09/0099;1;_';

end;

procedure TBOKFormSTAT.addLookUpField_OkPersonal;
begin
// ���������� ���������-����-�����
  addLookUpField(cdsOKPersonal, cdsSSOKDepartment_RO,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);
//try
  addLookUpField(cdsOKPersonal, cdsSS_OK_GOSUBMIT,
                'gosubmit_show', 'gosubmit_code',
                'gosubmit_code', 'gosubmit_name', false);

  addLookUpField(cdsOKPersonal, cdsSSOKPost_SET,
                'post_show', 'post_code',
                'post_code', 'post_name', False);
//except
//showmessage('*');
//end;

  addLookUpField(cdsOKPersonal, cdsSSOKspecial_SET,
                'special_show', 'special_code',
                'special_code', 'special_name', False);

//  addLookUpField(cdsOKPersonal, cdsSSOKmotive_SET,
//                'motive_show', 'motive_dismissial_code',
//                'motive_dismissial_code', 'motive_dismissial_name', False);

//  GENDER_CODE 	NUMBER (1) not null,	-- '��� ����������	����������  �� ���������� ����������� SS_OK_GENDER, ���� GENDER_CODE � �������� ����� ��������� ������������ ����, ������� ����, ������������ ��� ����������'
  addLookUpField(cdsOKPersonal, cdsSSokgender_Set, 'GENDER_SHOW', 'GENDER_CODE', 'GENDER_CODE', 'GENDER_NAME', False);

//  distr
//  ShowMessage(cdsSDistrRO2.Fields[0].Value+' '+cdsSDistrRO2.Fields[1].Value+' '+IntToStr(cdsSDistrRO2.RecordCount));
  addLookUpField(cdsOKPersonal, cdsSDistrRO2, 'DISTR_SHOW', 'DISTR', 'DISTR', 'DISTR_NAME', False);
  addLookUpField(cdsOKPersonal, cdsSRegionRO2, 'REGION_SHOW', 'REGION_ID', 'REGION_ID', 'REGION_NAM', False);

  if not cds_Region.Active then LoadData(cds_Region, SQL_Sregion);
  if not cds_distr.Active then LoadData(cds_distr, SQL_Sdistr);
  addLookUpField(cdsOKPersonal, cds_Region, 'HOME_ADDRESSFACT_REGION_ID_SHOW', 'HOME_ADDRESSFACT_REGION_ID', 'REGION_ID', 'REGION_NAM', False);
  addLookUpField(cdsOKPersonal, cds_Region, 'HOME_ADDRESS_REGION_ID_SHOW', 'HOME_ADDRESS_REGION_ID', 'REGION_ID', 'REGION_NAM', False);

  addLookUpField(cdsOKPersonal, cds_distr, 'HOME_ADDRESS_DISTR_SHOW', 'HOME_ADDRESS_DISTR', 'DISTR', 'DISTR_NAME', False);
  addLookUpField(cdsOKPersonal, cds_distr, 'HOME_ADDRESSFACT_DISTR_SHOW', 'HOME_ADDRESSFACT_DISTR', 'DISTR', 'DISTR_NAME', False);

//NATIONALITY_CODE	NUMBER(3) not null, 	-- '��� �������������� 	���������� �� ����������� SS_OK_NATIONALITY  ���� NATIONALITY_CODE, ������� ����, ������������ ��� ����������'
  addLookUpField(cdsOKPersonal, cdsSSOkNationality_Set, 'NATIONALITY_SHOW', 'NATIONALITY_CODE', 'NATIONALITY_CODE', 'NATIONALITY_NAME', False);

//FAMILIY_STATUS_CODE	NUMBER(1) not null, -- '��� ��������� ���������	���������� �� �����������SS_OK_FAMILY_STATUS���� FAMILY_STATUS_CODE, ������� ����, ������������ ��� ����������'
  addLookUpField(cdsOKPersonal, cdsSSOkFamilyStatus_Set, 'FAMILY_STATUS_SHOW', 'FAMILY_STATUS_CODE', 'FAMILY_STATUS_CODE', 'FAMILY_STATUS_NAME', False);

//REG_TYPE_CODE	NUMBER(1) not null,	-- '��� ���� ��������	���������� �� ����������� SS_OK_REGISTRATION_TYPE, ������� ����, ������������ ��� ����������'
  addLookUpField(cdsOKPersonal, cdsSSOkRegType_Set, 'REG_TYPE_SHOW', 'REG_TYPE_CODE', 'REG_TYPE_CODE', 'REG_TYPE_NAME', False);

// ������ ���������� SS_OK_STATUS
  addLookUpField(cdsOKPersonal, cdsSSOkSTATUS_Set, 'STATUS_SHOW', 'STATUS_CODE', 'STATUS_CODE', 'STATUS_NAME', False);

// ��������
  addLookUpField(cdsOKPersonal, cdsSSOkProfmember_Set, 'Profmember_SHOW', 'Profmember', 'Profmember', 'Profmember_NAME', False);
//  addLookUpField(cdsOKPersonal, cdsSSOkLeave_Set, 'Leave_SHOW', 'leave_code', 'leave_code', 'leave_NAME', False);

  addLookUpField(cdsOKPersonal, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);


  // END ���������� ���������-����-�����
end;

procedure TBOKFormSTAT.TabSheet10Show(Sender: TObject);
begin

  if cdsok_business_voyage.Active then
  Begin
    Exit;
  End;

  cdsok_business_voyage.Close;
      with cdsok_business_voyage.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
      end;
  LoadData(cdsok_business_voyage, SQL_ok_business_voyage+' where branch=:p_1');

  LoadData(cdsStr_SET, SQL_S_STR);
  LoadData(CDSss_ok_org_business_voyage, SQL_ss_ok_org_business_voyage);
  LoadData(CDSss_ok_theme_business_voyage, SQL_ss_ok_theme_business_voyage);

// 1. lookup ���� - ���� ���� :)
  cdsok_business_voyage.Close;
  cdsok_business_voyage.DisableControls;

// 2. �������� ���������-�������

// 3. ���������� lookup �����
  addLookUpField(cdsok_business_voyage, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  addLookUpField(cdsok_business_voyage, cdsStr_SET, 'CODE_STR_show', 'CODE_STR', 'CODE_STR', 'name', false);
  addLookUpField(cdsok_business_voyage, CDSss_ok_org_business_voyage, 'org_business_voyage_code_show', 'org_business_voyage_code', 'org_business_voyage_code', 'org_business_voyage_name', false);
  addLookUpField(cdsok_business_voyage, CDSss_ok_theme_business_voyage, 'theme_business_voyage_code_show', 'theme_business_voyage_code', 'theme_business_voyage_code', 'theme_business_voyage_name', false);
  addLookUpField(cdsok_business_voyage, cdsss_ok_city, 'city_code_show', 'city_code', 'city_code', 'city_name', false);


//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-�������, cds-����������, '��� ����������� ���� � cds-�������',
// ' ��� ��������� ���� � cds-������� ',' ��� ��������� ���� � cds-����������� ',
// ' ��� ���� � ������������� ������� � cds-����������� ')

//��� ����������� FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsok_business_voyage.Open;
  cdsok_business_voyage.EnableControls;

//  SQL_ssokincrease_SET

end;

procedure TBOKFormSTAT.cdsok_business_voyageAfterOpen(DataSet: TDataSet);
begin

  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsok_business_voyage.MasterSource    := dsOKPersonal;
    cdsok_business_voyage.IndexFieldNames := 'branch;personal_code';
    cdsok_business_voyage.MasterFields    := 'branch;personal_code';
  End;

  Dataset.FieldByName('date_open').EditMask  := '!09/09/0099;1;_';
  Dataset.FieldByName('date_close').EditMask  := '!09/09/0099;1;_';
  Dataset.FieldByName('order_date').EditMask  := '!09/09/0099;1;_';

end;

procedure TBOKFormSTAT.DBEdit137KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var
//  sql_:string;
begin
  Case Key of
    VK_RETURN:
      begin
        SelectNext(ActiveControl, True, True);
        if not (cdsok_business_voyage.state in [dsEdit])
        then cdsok_business_voyage.edit;

// ���������� ���� 5   . "����������� ���-�� ����"  - ���������� �� ���� �������� �� ���� �������� � ����
        if cdsok_business_voyage.fieldbyname('date_open').asdatetime>
           cdsok_business_voyage.fieldbyname('date_close').Asdatetime
        then begin
          showmessage('���� �������� '+cdsok_business_voyage.fieldbyname('date_close').asstring+
             '������ ���� ������ ���� ��������'+ cdsok_business_voyage.fieldbyname('date_open').asstring);
          exit;
        end;
        cdsok_business_voyage.fieldbyname('number_day').asstring:=floattostr(
          1+ cdsok_business_voyage.fieldbyname('date_close').Asdatetime-
             cdsok_business_voyage.fieldbyname('date_open').asdatetime );


      end;
  end;

end;

procedure TBOKFormSTAT.cdsOKKursAfterOpen(DataSet: TDataSet);
begin
  If dsSSOKkv_kurs_SET.DataSet.Active Then
  Begin
    cdsOKKurs.MasterSource    := dsSSOKkv_kurs_SET;
    cdsOKKurs.IndexFieldNames := 'kv_kurs_code';
    cdsOKKurs.MasterFields    := 'kv_kurs_code';
  end else begin
    loaddata(cdsSSOKkv_kurs_SET,SQL_SSOKkv_kurs_SET);
    cdsOKKurs.MasterSource    := dsSSOKkv_kurs_SET;
    cdsOKKurs.IndexFieldNames := 'kv_kurs_code';
    cdsOKKurs.MasterFields    := 'kv_kurs_code';

  End;

end;

procedure TBOKFormSTAT.ListDetailClick(Sender: TObject);
begin
    PCDetails.ActivePageIndex := StrToInt( TData(ListDetail.Items.Objects[ListDetail.ItemIndex]).Id );

end;

procedure TBOKFormSTAT.cdsOK_kursAfterOpen(DataSet: TDataSet);
begin

  If dsSSOKkv_kurs_SET.DataSet.Active Then
  Begin
    cdsOK_Kurs2.MasterSource    := dsSSOKkv_kurs_SET;
    cdsOK_Kurs2.IndexFieldNames := 'kv_kurs_code';
    cdsOK_Kurs2.MasterFields    := 'kv_kurs_code';

    cdsOK_Kurs2.MasterSource    := dsSSOKkv_kurs_SET;
    cdsOK_Kurs2.IndexFieldNames := 'kv_kurs_code';
    cdsOK_Kurs2.MasterFields    := 'kv_kurs_code';
  end else begin
  cdsSSOKkv_kurs_SET.DisableControls;
  LOADDATA(CDSSSOKkv_kurs_SET,SQL_SSOKkv_kurs_SET);

  CDSSSOKkv_kurs_SET.Close;

  LOADDATA(cdsS_Str, 'select * from S_Str');
  addLookUpField(CDSSSOKkv_kurs_SET, cdsS_Str,
                'CODE_STR_show', 'CODE_STR',
                'CODE_STR', 'name', True);

  LOADDATA(cdsssok_theme_business_voyage_SET,  sql_ss_ok_theme_business_voyage_SET    );
  addLookUpField(CDSSSOKkv_kurs_SET, cdsssok_theme_business_voyage_SET,
                'theme_business_voyage_code_show', 'theme_business_voyage_code',
                'theme_business_voyage_code', 'theme_business_voyage_name', false);

  LOADDATA(cdsssok_org_business_voyage_SET, sql_ss_ok_org_business_voyage_SET);
  addLookUpField(CDSSSOKkv_kurs_SET, cdsssok_org_business_voyage_SET,
                'org_business_voyage_code_show', 'org_business_voyage_code',
                'org_business_voyage_code', 'org_business_voyage_name', false);

  LOADDATA(cdsss_ok_city, sql_ss_ok_city);
  addLookUpField(CDSSSOKkv_kurs_SET, cdsss_ok_city,
                'city_code_show', 'city_code',
                'city_code', 'city_name', false);

  CDSSSOKkv_kurs_SET.Open;
  cdsSSOKkv_kurs_SET.EnableControls;


    cdsOK_Kurs2.MasterSource    := dsSSOKkv_kurs_SET;
    cdsOK_Kurs2.IndexFieldNames := 'kv_kurs_code';
    cdsOK_Kurs2.MasterFields    := 'kv_kurs_code';

  End;

{  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKEducation.FieldByName('begin_date').EditMask  := '!09/09/0099;1;_';
//    cdsOKEducation.FieldByName('end_date').EditMask    := '!09/09/0099;1;_';
    cdsOK_kurs.MasterSource    := dsOKPersonal;
    cdsOK_kurs.IndexFieldNames := 'branch;personal_code';
    cdsOK_kurs.MasterFields    := 'branch;personal_code';
  End;
}
end;

procedure TBOKFormSTAT.TabSheet11Show(Sender: TObject);
begin


  If cdsok_kurs2.Active Then Exit;
  cdsok_kurs2.DisableControls;
  cdsok_kurs3.DisableControls;

  if bosslevel='1'
  then begin loaddata(cdsok_kurs2,'select a.branch,a.personal_code,'+
    ' p.FAMILY||'' ''||p.FIRST_NAME||'' ''||p.PATRONYMIC fio,'+
    ' substr(ok_service.GET_POSTNAME(p.post_code),1,200) post_code_show,'+
    ' substr(ok_service.GET_DEPARTMENTNAME(p.department_code),1,200) department_code_show,'+
    ' substr(ok_service.GET_HIGH_NAME(p.department_code),1,200) HIGH_NAME,'+
    ' b.* from ok_personal p,ok_kurs a,ss_ok_kv_kurs b '+
    ' where a.KV_KURS_CODE=b.KV_KURS_CODE'+
    ' and p.branch=a.branch'+
    ' and p.personal_code=a.personal_code');
  end else begin
      cdsok_kurs2.close;
      with cdsok_kurs2.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
      end;
    loaddata(cdsok_kurs2,'select a.branch,a.personal_code,'+
    ' p.FAMILY||'' ''||p.FIRST_NAME||'' ''||p.PATRONYMIC fio,'+
    ' substr(ok_service.GET_POSTNAME(p.post_code),1,200) post_code_show,'+
    ' substr(ok_service.GET_DEPARTMENTNAME(p.department_code),1,200) department_code_show,'+
    ' substr(ok_service.GET_HIGH_NAME(p.department_code),1,200) HIGH_NAME,'+
    ' b.* from ok_personal p,ok_kurs a,ss_ok_kv_kurs b '+
    ' where p.branch=:p_1'+ //'''+curbranch+''
    ' and a.KV_KURS_CODE=b.KV_KURS_CODE'+
    ' and p.branch=a.branch'+
    ' and p.personal_code=a.personal_code');
  end;

 loaddata(cdsok_kurs3,'select a.branch,a.personal_code,'+
    ' p.FAMILY||'' ''||p.FIRST_NAME||'' ''||p.PATRONYMIC fio,'+
    ' substr(ok_service.GET_POSTNAME(p.post_code),1,200) post_code_show,'+
    ' substr(ok_service.GET_DEPARTMENTNAME(p.department_code),1,200) department_code_show,'+
    ' substr(ok_service.GET_HIGH_NAME(p.department_code),1,200) HIGH_NAME,'+
    ' b.* from ok_personal p,ok_kurs a,ss_ok_kv_kurs b '+
    ' where a.KV_KURS_CODE=b.KV_KURS_CODE'+
    ' and p.branch=a.branch'+
    ' and p.personal_code=a.personal_code');

  cdsok_kurs3.Close;
  LOADDATA(cdsS_Str, 'select * from S_Str');
  addLookUpField(cdsok_kurs3, cdsS_Str,
                'CODE_STR_show', 'CODE_STR',
                'CODE_STR', 'name', True);

  LOADDATA(cdsssok_theme_business_voyage_SET,  sql_ss_ok_theme_business_voyage_SET    );
  addLookUpField(cdsok_kurs3, cdsssok_theme_business_voyage_SET,
                'theme_business_voyage_code_show', 'theme_business_voyage_code',
                'theme_business_voyage_code', 'theme_business_voyage_name', false);

  LOADDATA(cdsssok_org_business_voyage_SET, sql_ss_ok_org_business_voyage_SET);
  addLookUpField(cdsok_kurs3, cdsssok_org_business_voyage_SET,
                'org_business_voyage_code_show', 'org_business_voyage_code',
                'org_business_voyage_code', 'org_business_voyage_name', false);

  LOADDATA(cdsss_ok_city, sql_ss_ok_city);
  addLookUpField(cdsok_kurs3, cdsss_ok_city,
                'city_code_show', 'city_code',
                'city_code', 'city_name', false);
  cdsok_kurs3.open;
  cdsok_kurs3.enableControls;


  cdsok_kurs2.Close;
  LOADDATA(cdsS_Str, 'select * from S_Str');
  addLookUpField(cdsok_kurs2, cdsS_Str,
                'CODE_STR_show', 'CODE_STR',
                'CODE_STR', 'name', True);

  LOADDATA(cdsssok_theme_business_voyage_SET,  sql_ss_ok_theme_business_voyage_SET    );
  addLookUpField(cdsok_kurs2, cdsssok_theme_business_voyage_SET,
                'theme_business_voyage_code_show', 'theme_business_voyage_code',
                'theme_business_voyage_code', 'theme_business_voyage_name', false);

  LOADDATA(cdsssok_org_business_voyage_SET, sql_ss_ok_org_business_voyage_SET);
  addLookUpField(cdsok_kurs2, cdsssok_org_business_voyage_SET,
                'org_business_voyage_code_show', 'org_business_voyage_code',
                'org_business_voyage_code', 'org_business_voyage_name', false);

  LOADDATA(cdsss_ok_city, sql_ss_ok_city);
  addLookUpField(cdsok_kurs2, cdsss_ok_city,
                'city_code_show', 'city_code',
                'city_code', 'city_name', false);
  cdsok_kurs2.open;
  cdsok_kurs2.enableControls;

end;

procedure TBOKFormSTAT.cdsOK_Kurs2AfterOpen(DataSet: TDataSet);
begin


//    cdsOK_kurs2.MasterSource    := dsOKPersonal;
//    cdsOK_kurs2.IndexFieldNames := 'branch;personal_code';
//    cdsOK_kurs2.MasterFields    := 'branch;personal_code';

  If dsSSOKkv_kurs_SET.DataSet.Active Then
  Begin
    cdsOK_Kurs2.MasterSource    := dsSSOKkv_kurs_SET;
    cdsOK_Kurs2.IndexFieldNames := 'kv_kurs_code';
    cdsOK_Kurs2.MasterFields    := 'kv_kurs_code';
  end else begin
  cdsSSOKkv_kurs_SET.DisableControls;
  LOADDATA(CDSSSOKkv_kurs_SET,SQL_SSOKkv_kurs_SET);

  CDSSSOKkv_kurs_SET.Close;

    LOADDATA(cdsS_Str, 'select * from S_Str');
  addLookUpField(CDSSSOKkv_kurs_SET, cdsS_Str,
                'CODE_STR_show', 'CODE_STR',
                'CODE_STR', 'name', True);

  LOADDATA(cdsssok_theme_business_voyage_SET,  sql_ss_ok_theme_business_voyage_SET    );
  addLookUpField(CDSSSOKkv_kurs_SET, cdsssok_theme_business_voyage_SET,
                'theme_business_voyage_code_show', 'theme_business_voyage_code',
                'theme_business_voyage_code', 'theme_business_voyage_name', false);

  LOADDATA(cdsssok_org_business_voyage_SET, sql_ss_ok_org_business_voyage_SET);
  addLookUpField(CDSSSOKkv_kurs_SET, cdsssok_org_business_voyage_SET,
                'org_business_voyage_code_show', 'org_business_voyage_code',
                'org_business_voyage_code', 'org_business_voyage_name', false);

  LOADDATA(cdsss_ok_city, sql_ss_ok_city);
  addLookUpField(CDSSSOKkv_kurs_SET, cdsss_ok_city,
                'city_code_show', 'city_code',
                'city_code', 'city_name', false);

  CDSSSOKkv_kurs_SET.Open;
  cdsSSOKkv_kurs_SET.EnableControls;


    cdsOK_Kurs2.MasterSource    := dsSSOKkv_kurs_SET;
    cdsOK_Kurs2.IndexFieldNames := 'kv_kurs_code';
    cdsOK_Kurs2.MasterFields    := 'kv_kurs_code';

  End;

end;

procedure TBOKFormSTAT.DBEdit134KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    VK_RETURN:
      begin
        if (strtodate(dbedHospitalDateOpen.text)) > (strtodate(DBEdit134.text))
        then begin
          showmessage('���� ������ ����������� '+DBEdit134.text+' ������ ���� ������ ��� ����� ���� �������� ����������� '+dbedHospitalDateOpen.text);
        end else begin
          SelectNext(ActiveControl, True, True);
        end;
      end;
  end;

end;

procedure TBOKFormSTAT.CDSok_zp_rateAfterOpen(DataSet: TDataSet);
begin
    CDSok_zp_rate.MasterSource    := dsOKPersonal;
    CDSok_zp_rate.IndexFieldNames := 'branch;personal_code';
    CDSok_zp_rate.MasterFields    := 'branch;personal_code';
    CDSok_zp_rate.FieldByName('zp_rate_date').EditMask  := '!09/09/0099;1;_';
    CDSok_zp_rate.FieldByName('zp_rate_order_date').EditMask  := '!09/09/0099;1;_';

end;

procedure TBOKFormSTAT.TabSheet12Show(Sender: TObject);
begin
  if cdsok_zp_rate.Active then
  Begin
    Exit;
  End;

      cdsok_zp_rate.close;
      with cdsok_zp_rate.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
      end;
//  LoadData(cdsok_zp_rate, SQL_ok_zp_rate+' where branch = '+''''+curBranch +'''');
  LoadData(cdsok_zp_rate, SQL_ok_zp_rate+' where branch=:p_1');

  cdsok_zp_rate.Close;
  cdsok_zp_rate.DisableControls;

  if not cdsss_ok_zp_rate.Active then LoadData(cdsss_ok_zp_rate, SQL_ss_ok_zp_rate);
  if not cdsss_ok_zp_rate_type.Active then LoadData(cdsss_ok_zp_rate_type, SQL_ss_ok_zp_rate_type);

  addLookUpField(cdsok_zp_rate, cdsss_ok_zp_rate, 'zp_rate_code_show', 'zp_rate_code', 'zp_rate_code', 'zp_rate_name', True);
  addLookUpField(cdsok_zp_rate, cdsss_ok_zp_rate_type, 'zp_rate_type_code_show', 'zp_rate_type_code', 'zp_rate_type_code', 'zp_rate_type_name', False);
  addLookUpField(cdsok_zp_rate, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsok_zp_rate.Open;
  cdsok_zp_rate.EnableControls;

end;

procedure TBOKFormSTAT.DBEd_zp_rate_dateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sql_ : string;
  v : variant;
begin
  Case Key of
    VK_RETURN:
      begin
        SelectNext(ActiveControl, True, True);
        if not (cdsok_zp_rate.state in [dsEdit])
        then cdsok_zp_rate.edit;

// ���������� ���� "����������� ������"

//        DBEd_zp_rate_date.text
//  DBLCB_zp_rate.text


{        sql_:='select round(salary*'+DBLCB_zp_rate.text+',2) from ss_ok_category sokc , ok_personal okp,'+
         ' ss_ok_post sokp'+
         ' where branch='''+branch+''''+
         ' and okp.personal_code='+cdsokpersonal.fieldbyname('personal_code').asstring+
         ' and okp.post_code=sokp.post_code'+
         ' and sokc.category_code=sokp.category_code'+
         ' and sokp.state_notes=''A'''+
         ' and sokc.state_notes=''A''';
}        sql_:='select round(salary* :p_1 ,2) from ss_ok_category sokc , ok_personal okp,'+
         ' ss_ok_post sokp'+
         ' where branch=:p_2'+ // '''+branch+''''+
         ' and okp.personal_code=:p_3'+ //cdsokpersonal.fieldbyname('personal_code').asstring+
         ' and okp.post_code=sokp.post_code'+
         ' and sokc.category_code=sokp.category_code'+
         ' and sokp.state_notes=:p_4'+ //''A'''+
         ' and sokc.state_notes=:p_5'; //''A''';

        try
          v:= getsqlresultPAR(sql_,DBLCB_zp_rate.text,curbranch,cdsokpersonal.fieldbyname('personal_code').asstring,
            'A','A'
          );
          if not varisnull(v)
          then begin
            cdsok_zp_rate.fieldbyname('zp_fakt').asstring:= v;
          end else begin
//            sql_:='select ok_service.get_postname('+cdsokpersonal.fieldbyname('post_code').asstring+') from dual';
            sql_:='select ok_service.get_postname(:p_1) from dual';
            v:=  getsqlresultPAR(sql_,cdsokpersonal.fieldbyname('post_code').asstring);
            if not varisnull(v)
            then showmessage('��� ��������� '+v+' �� ������ ������ ���� �� ������ �����')
            else  showmessage('��� ��������� ���������� �� ������ ������ ���� �� ������ �����');
          end;

        except on e:exception
          do begin
            showmessage(sql_+#13+e.message);
            SelectNext(ActiveControl, FALSe, True);
          end;
        end;
      end;
  end;

end;

procedure TBOKFormSTAT.dbedCOD_OBL_LIVEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if  dbedCOD_OBL_LIVE.Text = ''
  then begin
    cds_distr.Filtered := False;
  end
  else begin
    cds_distr.Filtered := False;
    cds_distr.Filter := 'region_id='+ cds_Region.FieldByName('region_id').AsString;
    cds_distr.Filtered := True;
  end;

end;

procedure TBOKFormSTAT.dbedCOD_OBL_birthKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if  dbedCOD_OBL_birth.Text = ''
  then begin
    cds_distr.Filtered := False;
  end
  else begin
    cds_distr.Filtered := False;
    cds_distr.Filter := 'region_id='+ cds_Region.FieldByName('region_id').AsString;
    cds_distr.Filtered := True;
  end;

end;

procedure TBOKFormSTAT.DBLookupComboBox27Click(Sender: TObject);
begin
  if  dbedCOD_OBL_LIVE.Text = ''
  then begin
    cds_distr.Filtered := False;
  end
  else begin
    cds_distr.Filtered := False;
    cds_distr.Filter := 'region_id='+ cds_Region.FieldByName('region_id').AsString;
    cds_distr.Filtered := True;
  end;

end;

procedure TBOKFormSTAT.DBLookupComboBox9Click(Sender: TObject);
begin
  if  dbedCOD_OBL_birth.Text = ''
  then begin
    cds_distr.Filtered := False;
  end
  else begin
    cds_distr.Filtered := False;
    cds_distr.Filter := 'region_id='+ cds_Region.FieldByName('region_id').AsString;
    cds_distr.Filtered := True;
  end;

end;

procedure TBOKFormSTAT.ed_iias_live_regionChange(Sender: TObject);
begin
  if (cdsOKPersonal.Active) and (cdsOKPersonal.fieldbyname('cod_str_live').asstring<>'860')
  and (cdsOKpersonal.State in [dsEdit, dsInsert])
  then cdsOKPersonal.fieldbyname('cod_str_live').asstring:='860';

  if (cdsOKPersonal.Active) and (cdsOKPersonal.fieldbyname('cod_str_birth').asstring<>'860')
  and (cdsOKpersonal.State in [dsEdit, dsInsert])
  then cdsOKPersonal.fieldbyname('cod_str_birth').asstring:='860';

  if sender.ClassType= TDBEdit
  then begin
    if tdbedit(sender).Text = ''
    then begin
      cdsSDistr_RO2.Filtered := False;
    end
    else begin
      cdsSDistr_RO2.Filtered := False;
      cdsSDistr_RO2.Filter := 'region_id='+ cdsSRegion.FieldByName('region_id').AsString;
      cdsSDistr_RO2.Filtered := True;
    end;
  end;


end;

procedure TBOKFormSTAT.edRegion_RO2Change(Sender: TObject);
begin
  if (cdsOKPersonal.Active) and (cdsOKPersonal.fieldbyname('cod_str_live').asstring<>'860')
  and (cdsOKpersonal.State in [dsEdit, dsInsert])
  then cdsOKPersonal.fieldbyname('cod_str_live').asstring:='860';

  if (cdsOKPersonal.Active) and (cdsOKPersonal.fieldbyname('cod_str_birth').asstring<>'860')
  and (cdsOKpersonal.State in [dsEdit, dsInsert])
  then cdsOKPersonal.fieldbyname('cod_str_birth').asstring:='860';

  if sender.ClassType= TDBEdit
  then begin
    if tdbedit(sender).Text = ''
    then begin
      cdsSDistr_RO2.Filtered := False;
    end
    else begin
      cdsSDistr_RO2.Filtered := False;
      cdsSDistr_RO2.Filter := 'region_id='+ cdsSRegion.FieldByName('region_id').AsString;
      cdsSDistr_RO2.Filtered := True;
    end;
  end;

end;

procedure TBOKFormSTAT.edDistrRO2Change(Sender: TObject);
begin
  if (cdsOKPersonal.Active) and (cdsOKPersonal.fieldbyname('cod_str_live').asstring<>'860')
  and (cdsOKpersonal.State in [dsEdit, dsInsert])
  then cdsOKPersonal.fieldbyname('cod_str_live').asstring:='860';

  if (cdsOKPersonal.Active) and (cdsOKPersonal.fieldbyname('cod_str_birth').asstring<>'860')
  and (cdsOKpersonal.State in [dsEdit, dsInsert])
  then cdsOKPersonal.fieldbyname('cod_str_birth').asstring:='860';

  if sender.ClassType= TDBEdit
  then begin
    if tdbedit(sender).Text = ''
    then begin
      cdsSDistrRO2.Filtered := False;
    end
    else begin
      cdsSDistrRO2.Filtered := False;
      cdsSDistrRO2.Filter := 'region_id='+ cdsSRegion.FieldByName('region_id').AsString;
      cdsSDistrRO2.Filtered := True;
    end;
  end;

end;

procedure TBOKFormSTAT.cdsOKPeriodAfterScroll(DataSet: TDataSet);
begin

  if kapital_bank
  then begin
    if DataSet.FieldByName('type_period_code').AsString='3'
    then begin
      DBEd_poststring.Width := 160;
      DBEd_depstring.Width := 160;
    end else begin
      DBEd_poststring.Width := 465;
      DBEd_depstring.Width := 465;
    end;
  end;

end;

procedure TBOKFormSTAT.cdsOKPeriodAfterRefresh(DataSet: TDataSet);
begin
  if kapital_bank
  then begin
    if DataSet.FieldByName('type_period_code').AsString='3'
    then begin
      DBEd_poststring.Width := 160;
      DBEd_depstring.Width := 160;
    end else begin
      DBEd_poststring.Width := 465;
      DBEd_depstring.Width := 465;
    end;
  end;

end;

procedure TBOKFormSTAT.BitBtn151Click(Sender: TObject);
begin
  cdsokleave.Edit;
  cdsokleave.FieldByName('date_recall_begin').Value:=NULL;
  cdsokleave.FieldByName('date_recall_end').Value:=NULL;
  cdsokleave.FieldByName('period_leave_recall').Value:=NULL;
  cdsokleave.FieldByName('date_order_recall').Value:=NULL;
  cdsokleave.FieldByName('num_order_recall').Value:=NULL;
  cdsokleave.post;

end;

procedure TBOKFormSTAT.actRefreshRefExecute(Sender: TObject);
begin
//
        cdsOKPersonalAfterScroll(nil);

   LOADDATA(CDS_iias_birth_region,sql_sregion);
   LOADDATA(CDS_iias_birth_distr,sql_sdistr);

   LOADDATA(CDS_iias_live_region,sql_sregion);
   LOADDATA(CDS_iias_live_distr, sql_sdistr);

   LOADDATA(CDSregionNew,sql_sregion);
   LOADDATA(CDSdistrNew, sql_sdistr);

   LOADDATA(cds_DBLCB_SRegion,sql_sregion);
   LOADDATA(cds_DBLCBdistr, sql_sdistr);

   LOADDATA(cds_dblcbRegion_RO2,sql_sregion);
   LOADDATA(cds_dblcbDistrRO_2, sql_sdistr);
   LOADDATA(cds_dblcbRegion_RO3,sql_sregion);
   LOADDATA(cds_dblcbDistrRO_3, sql_sdistr);

   LOADDATA(CDSSS_OK_CITY,      SQL_SS_OK_CITY);
   LOADDATA(CDSSS_OK_GOSUBMIT,'SELECT * FROM SS_OK_GOSUBMIT');
   LOADDATA(CDSSS_OK_PASSPORT_TYPE,      SQL_SS_OK_PASSPORT_TYPE);
   LOADDATA(CDSSS_OK_REGPLACE,      SQL_SS_OK_REGPLACE);
   LOADDATA(CDSSSOKACADEMIC_SET,      SQL_SSOKACADEMIC_SET);
   LOADDATA(CDSSSOKARTICLE_SET,      SQL_SSOKARTICLE_SET);
   LOADDATA(CDSSSOKBASIS_SET, SQL_SSOKBASIS_SET);
   LOADDATA(CDSSSOKCOMMANDTYPE_SET,      SQL_SSOKCOMMANDTYPE_SET);
   LOADDATA(CDSSSOKDEGREE_SET,            SQL_SSOKDEGREE_SET);
   LOADDATA(CDSSSOKDEPARTMENT_RO,      SQL_SSOKDEPARTMENT_SET2);
   LOADDATA(CDSSSOKDEPARTMENT_SET,             SQL_SSOKDEPARTMENT_SET);
   LOADDATA(CDSSSOKDEPARTMENTTYPE_SET,      SQL_SSOKDEPARTMENTTYPE_SET);
   LOADDATA(CDSSSOKEDUCATION_SET,      SQL_SSOKEDUCATION_SET);
   LOADDATA(CDSSSOKEDUCATIONTITLE_SET,     SQL_SSOKEDUCATIONTITLE_SET);
   LOADDATA(CDSSSOKFAMILYSTATUS_SET,    SQL_SSOKFAMILYSTATUS_SET);
   LOADDATA(CDSSSOKGENDER_SET,     SQL_SSOKGENDER_SET);
   LOADDATA(CDSSSOKINSTITUTION_SET,    SQL_SSOKINSTITUTION_SET);
   LOADDATA(CDSSSOKLANGUAGE_SET,      SQL_SSOKLANGUAGE_SET);
   LOADDATA(CDSSSOKLEAVE_SET,      SQL_SSOKLEAVE_SET);
   LOADDATA(CDSSSOKLEVELLANGUAGE_SET,      SQL_SSOKLEVELLANGUAGE_SET);
   LOADDATA(CDSSSOKMOTIVE_SET,     SQL_SSOKMOTIVEDISMISSIAL_SET);
   LOADDATA(CDSSSOKMOTIVEDISMISSIAL_SET,      SQL_SSOKMOTIVEDISMISSIAL_SET);
   LOADDATA(CDSSSOKNATIONALITY_SET,     SQL_SSOKNATIONALITY_SET);
   LOADDATA(CDSSSOKPARTY_SET,    SQL_SSOKPARTY_SET);

   mfo_category_type_code_proc;

   LOADDATA(CDSSSOKPROFMEMBER_SET, SQL_SSOKPROFMEMBER_SET);
   LOADDATA(CDSSSOKQUALIFICATION_SET,      SQL_SSOKQUALIFICATION_SET);
   LOADDATA(CDSSSOKREGTYPE_SET,     SQL_SSOKREGTYPE_SET);
   LOADDATA(CDSSSOKRELATION_SET,      SQL_SSOKRELATION_SET);
   LOADDATA(CDSSSOKSPECIAL_RO, SQL_SSOKSPECIAL_SET);
   LOADDATA(CDSSSOKSPECIAL_SET,      SQL_SSOKSPECIAL_SET);
   LOADDATA(CDSSSOKSTATUS_SET,     SQL_SSOKSTATUS_SET);
   LOADDATA(CDSSSOKTEMPLATECOMMAND_SET,    SQL_SSOKTEMPLATECOMMAND_SET);
   LOADDATA(CDSSSOKTYPEPERIOD_SET,      SQL_SSOKTYPEPERIOD_SET);
   LOADDATA(CDSSSOKYOUTH_SET,      SQL_SSOKYOUTH_SET);

end;

procedure TBOKFormSTAT.dblcb_iias_birth_distrEnter(Sender: TObject);
begin
   CDS_iias_birth_distr.filtered:=false;
   CDS_iias_birth_distr.filter:='REGION_ID='+
      CDS_iias_birth_region.fieldbyname('REGION_ID').asstring;
   CDS_iias_birth_distr.filtered:=true;

end;

procedure TBOKFormSTAT.dblcb_iias_birth_distrCloseUp(Sender: TObject);
begin
   CDS_iias_birth_distr.filtered:=false;
   CDS_iias_birth_distr.filter:='';

end;

procedure TBOKFormSTAT.dblcb_iias_live_distrCloseUp(Sender: TObject);
begin
   CDS_iias_live_distr.filtered:=false;
   CDS_iias_live_distr.filter:='';

end;

procedure TBOKFormSTAT.dblcb_iias_live_distrEnter(Sender: TObject);
begin
   CDS_iias_live_distr.filtered:=false;
   CDS_iias_live_distr.filter:='REGION_ID='+
     CDS_iias_live_region.fieldbyname('REGION_ID').asstring;
   CDS_iias_live_distr.filtered:=true;

end;

procedure TBOKFormSTAT.dblcbDistrNewCloseUp(Sender: TObject);
begin
   CDSDistrNew.filtered:=false;
   CDSDistrNew.filter:='';

end;

procedure TBOKFormSTAT.dblcbDistrNewEnter(Sender: TObject);
begin
   CDSDistrNew.filtered:=false;
   CDSDistrNew.filter:='REGION_ID='+
     CDSregionnew.fieldbyname('REGION_ID').asstring;
   CDSDistrNew.filtered:=true;

end;

procedure TBOKFormSTAT.DBLCBdistrCloseUp(Sender: TObject);
begin
   CDS_DBLCBdistr.filtered:=false;
   CDS_DBLCBdistr.filter:='';

end;

procedure TBOKFormSTAT.DBLCBdistrEnter(Sender: TObject);
begin
   CDS_DBLCBdistr.filtered:=false;
   CDS_DBLCBdistr.filter:='REGION_ID='+
     cds_DBLCB_SRegion.fieldbyname('REGION_ID').asstring;
   CDS_DBLCBdistr.filtered:=true;

end;

procedure TBOKFormSTAT.dblcbDistrRO_3CloseUp(Sender: TObject);
begin
   CDS_dblcbDistrRO_3.filtered:=false;
   CDS_dblcbDistrRO_3.filter:='';

end;

procedure TBOKFormSTAT.dblcbDistrRO_2CloseUp(Sender: TObject);
begin
   CDS_dblcbDistrRO_2.filtered:=false;
   CDS_dblcbDistrRO_2.filter:='';

end;

procedure TBOKFormSTAT.dblcbDistrRO_3Enter(Sender: TObject);
begin
   CDS_dblcbDistrRO_3.filtered:=false;
   CDS_dblcbDistrRO_3.filter:='REGION_ID='+
     cds_dblcbRegion_RO3.fieldbyname('REGION_ID').asstring;
   CDS_dblcbDistrRO_3.filtered:=true;

end;

procedure TBOKFormSTAT.dblcbDistrRO_2Enter(Sender: TObject);
begin
   CDS_dblcbDistrRO_2.filtered:=false;
   CDS_dblcbDistrRO_2.filter:='REGION_ID='+
     cds_dblcbRegion_RO2.fieldbyname('REGION_ID').asstring;
   CDS_dblcbDistrRO_2.filtered:=true;

end;

procedure TBOKFormSTAT.actStatPersonalExecute(Sender: TObject);
var
  MyRange: OLEVariant;
 Save_Cursor:TCursor;
 V: Variant;
 i, col,row:integer; // ,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname,oldpost: String;
  total_count,
  total_sum,total_sum2,total_count2:double;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2' + //''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
  row:=1;
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // ������������ �����
  V.Cells[row, i ].Value := '������������';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '��������';
  inc(i);
  V.Cells[row, i ].Value := '����������';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '�������,';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����������';
  inc(i);
  V.Cells[row, i ].Value := '�������';
  inc(i);
  V.Cells[row, i ].Value := '������������';
  inc(i);
  V.Cells[row, i ].Value := '��';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '����������';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����';

  total_count:=0;
  total_count2:=0;
  total_sum:=0;
  total_sum2:=0;

  olddepname:='x';
  oldpost:='x';
  While not cdsTempSource.Eof
  do begin
    if (headbranch_='09006')
    then begin
        sql_:='select '+
         ' c.post_name field1 ,d.category_name field2,d.category_rate,'+
         ' quantity_post,d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,'+
         ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' ok_service.GET_STAVKA(okp.branch,okp.personal_code) stavka,'+
         ' round(to_number(nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'')*nvl(d.salary,0),2) zarpl, '+
         ' to_number( nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'') float_stavka '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp, ss_ok_post_category f'+
         ' where okp.branch=:p_1'+  // '+''''+curBranch +''''+
         ' and a.department_code=:p_2'+ // cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes=:p_3'+ //''A'' '+
         ' and a.post_code=c.post_code'+
         ' and a.branch=okp.branch'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and a.special_code=okp.special_code'+
         ' and okp.status_code in (:p_4,:p_5)'+ //(2,5)'+
         ' and a.post_code=f.post_code'+
         ' and d.category_code=f.category_code'+
         ' and f.MFO_CATEGORY_TYPE_CODE=:p_6'+
         ' order by d.category_code';
        cdsTemp.close;
        with cdsTemp.Params
        do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftInteger,'p_4' ,ptInput);
          ParamByName('p_4').Value := 2;
          CreateParam(ftInteger,'p_5' ,ptInput);
          ParamByName('p_5').Value := 5;
          CreateParam(ftString,'p_6' ,ptInput);
          ParamByName('p_6').Value := MFO_CATEGORY_TYPE_CODE;
        end;
    end else begin
        sql_:='select '+
         ' c.post_name field1 ,d.category_name field2,d.category_rate,'+
         ' quantity_post,d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,'+
         ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' ok_service.GET_STAVKA(okp.branch,okp.personal_code) stavka,'+
         ' round(to_number(nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'')*nvl(d.salary,0),2) zarpl, '+
         ' to_number( nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'') float_stavka '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp'+
         ' where okp.branch=:p_1'+  // '+''''+curBranch +''''+
         ' and a.department_code=:p_2'+ // cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes=:p_3'+ //''A'' '+
         ' and a.post_code=c.post_code'+
         ' and a.branch=okp.branch'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and a.special_code=okp.special_code'+
         ' and okp.status_code in (:p_4,:p_5)'+ //(2,5)'+
         ' and c.category_code=d.category_code (+)'+
         ' order by d.category_code';
        cdsTemp.close;
        with cdsTemp.Params
        do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftInteger,'p_4' ,ptInput);
          ParamByName('p_4').Value := 2;
          CreateParam(ftInteger,'p_5' ,ptInput);
          ParamByName('p_5').Value := 5;
        end;
      end;
      loaddata(cdsTemp,sql_);

      While not cdsTemp.Eof
      do begin

          if (olddepname <>cdsTemp.Fields[6].AsString)
          then begin
            inc(row);
            inc(row);
            V.Cells[row, 1 ].NumberFormat := StrFormat;
            MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(4)+inttostr(row)];  MyRange.Merge;
            V.Cells[row, 1 ].Value := cdsTemp.Fields[6].AsString;
          end;
          olddepname :=cdsTemp.Fields[6].AsString;

         if (oldpost <>cdsTemp.Fields[0].AsString)
         then begin
          inc(row);
          inc(row);
          i := 1;
          For col:=0 To 5
          Do Begin

              case cdsTemp.Fields[col].DataType Of
                ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
                ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
                ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
              end;
              V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);
              inc(i);
          if col=3
          then total_count:= total_count+ cdsTemp.Fields[col].Asfloat;
          if col= 5
          then begin
            total_sum:= total_sum+   cdsTemp.Fields[col].Asfloat;
          end;
         end;

         oldpost :=cdsTemp.Fields[0].AsString;

        End;

        inc(row);
        V.Cells[row, 1 ].Value := cdsTemp.fieldbyname('fio').asstring;
        V.Cells[row, 4 ].Value := cdsTemp.fieldbyname('stavka').asstring;
        V.Cells[row, 5 ].Value := cdsTemp.fieldbyname('zarpl').asstring;
        total_sum2:= total_sum2+  cdsTemp.fieldbyname('zarpl').Asfloat;
        total_count2:=  total_count2   +  cdsTemp.fieldbyname('float_stavka').Asfloat;

        cdsTemp.Next;
     end;
     cdsTempSource.Next;

     Application.ProcessMessages;

  end;


    inc(row);
    inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '����� �� �������';

      sum2_:= floattostr(total_count);
      V.Cells[row,4].NumberFormat := NumFormat;
      V.Cells[row,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count2);
      V.Cells[row+1,4].NumberFormat := NumFormat;
      V.Cells[row+1,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count-total_count2);
      if (total_count-total_count2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;


      sum2_:=floattostr(total_sum);
      V.Cells[row,6].NumberFormat := NumFormat;
      V.Cells[row,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum2);
      V.Cells[row+1,6].NumberFormat := NumFormat;
      V.Cells[row+1,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum-total_sum2);
      if (total_sum-total_sum2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;

      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������� ���������';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '��������  ������������ �� ������';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '� ����������';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '������������ ���������';

  inc(row);
      sum2_:=floattostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����� �� �����';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '���� ������ �����';

  inc(row);
      V.Cells[row, 2].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' ';

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := bankdate;
  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '������� ����������';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' �� ��������� �� '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  V.Cells.Select;
  V.Columns.AutoFit;
  V.Visible := True; //��� �������

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;
//
end;

procedure TBOKFormSTAT.actStatPersonalDepExecute(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant; // ,Range
 i, col,row:integer; // ,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname: String;
  total_count,
  total_sum:double;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

{  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat)'+
        ' and b.state_notes=''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';
}

  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2' + //''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
  row:=1;
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);



  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // ������������ �����
  V.Cells[row, i ].Value := '������������';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '��������';
  inc(i);
  V.Cells[row, i ].Value := '����������';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '�������,';

  inc(i);
  V.Cells[row, i ].Value := '������';

  inc(i);
  V.Cells[row, i ].Value := '�����������';

  inc(i);
  V.Cells[row, i ].Value := '�������';

  inc(i);
  V.Cells[row, i ].Value := '������������';

  inc(i);
  V.Cells[row, i ].Value := '��';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '���������� "�������������"';

  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '����';

  inc(i);
  V.Cells[row, i ].Value := '������';

  inc(i);
  V.Cells[row, i ].Value := '�����';

  V.Range['A'+inttostr(row-3)+':'+'F'+inttostr(row)].Select;
  V.Columns.AutoFit;
//  selection.autofit;


  total_count:=0;
  total_sum:=0;

  olddepname:='x';

  While not cdsTempSource.Eof
  do begin
    if (headbranch_='09006')
    then begin
      sql_:='select '+
       ' c.post_name||'' "''||e.special_name||''"'' field1 , d.category_name field2,d.category_rate,'+
       ' quantity_post,d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ss_ok_special e, ss_ok_post_category f'+
       ' where a.branch=:p_1'+ //''''+curBranch +''''+
       ' and a.department_code=:p_2'+ //cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
       ' and a.department_code=b.department_code'+
        ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
       ' and b.state_notes=:p_3'+ //''A'' '+
       ' and a.post_code=c.post_code'+
       ' and a.post_code=f.post_code'+
       ' and d.category_code=f.category_code'+
       ' and f.MFO_CATEGORY_TYPE_CODE=:p_4'+
       ' and a.special_code=e.special_code'+
       ' order by d.category_code';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring ;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := MFO_CATEGORY_TYPE_CODE;
      end;
    end else begin
      sql_:='select '+
       ' c.post_name||'' "''||e.special_name||''"'' field1 , d.category_name field2,d.category_rate,'+
       ' quantity_post,d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ss_ok_special e'+
       ' where a.branch=:p_1'+ //''''+curBranch +''''+
       ' and a.department_code=:p_2'+ //cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
       ' and a.department_code=b.department_code'+
        ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
       ' and b.state_notes=:p_3'+ //''A'' '+
       ' and a.post_code=c.post_code'+
       ' and c.category_code=d.category_code (+)'+
       ' and a.special_code=e.special_code'+
       ' order by d.category_code';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring ;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
      end;
    end;

    loaddata(cdsTemp,sql_);
    While not cdsTemp.Eof
    do begin

        if (olddepname <>cdsTemp.Fields[6].AsString)
        then begin
          inc(row);
          inc(row);
          V.Cells[row, 1 ].NumberFormat := StrFormat;
          V.Cells[row, 1 ].Value := cdsTemp.Fields[6].AsString;
        end;
        olddepname :=cdsTemp.Fields[6].AsString;

        i := 1;
        inc(row);
        For col:=0 To 5
        Do Begin
            case cdsTemp.Fields[col].DataType Of
              ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
              ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
              ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
            end;
            V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);
//            V.Cells[row, i ].select;
//            V.selection.autofit;
            inc(i);
            if col=3
            then total_count:= total_count+ cdsTemp.Fields[col].Asfloat;
            if col= 5
            then total_sum:= total_sum+   cdsTemp.Fields[col].Asfloat;
        End;
     V.Range['A'+inttostr(row)+':'+'F'+inttostr(row)].Select;
     V.Columns.AutoFit;

        cdsTemp.Next;
     end;
     cdsTempSource.Next;

     Application.ProcessMessages;

  end;


      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '����� �� �������';

      sum2_:=floattostr(total_count);
      V.Cells[row,4].NumberFormat := NumFormat;
      V.Cells[row,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum);
      V.Cells[row,6].NumberFormat := NumFormat;
      V.Cells[row,6].Value:= trim(sum2_);

      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������� ���������';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '��������  ������������ �� ������';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '� ����������';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '������������ ���������';

  inc(row);
      sum2_:=floattostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '����� �� �����';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '���� ������ �����';

  inc(row);
      V.Cells[row, 2].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' ';

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := bankdate;
  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '������� ����������';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' �� ��������� �� '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';


//  V.Cells.Select;
//  V.Columns.AutoFit;
  V.Visible := True; //��� �������

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;
//
end;

procedure TBOKFormSTAT.actStatStagExecute(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant;
 i, col,row:integer; //,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,olddepname,oldpost: String; // sum2_,
//  total_count:float;
//  total_sum,total_sum2,total_count2:double;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2 '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';


      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
  row:=1;
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  // ������������ �����

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '���';
  inc(i);
  V.Cells[row, i ].Value := '���������';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����';
  inc(i);
  V.Cells[row, i ].Value := '�� ����������';
  inc(i);
  V.Cells[row, i ].Value := '������-���������';
  inc(i);
  V.Cells[row, i ].Value := '����������';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '����';

//  total_count:=0;
//  total_count2:=0;
//  total_sum:=0;
//  total_sum2:=0;

  olddepname:='x';
  oldpost:='x';
  While not cdsTempSource.Eof
  do begin
// ������� ������ � �����������
    if (headbranch_='09006')
    then begin
        cdsTemp.close;
        with cdsTemp.Params do
        begin
          Clear;
          CreateParam(ftString,'P_BRANCH',ptInput);
          ParamByName('P_BRANCH').Value:=branch;
          CreateParam(ftInteger,'P_DEP',ptInput);
          ParamByName('P_DEP').Value:= cdsTempSource.fieldbyname('DEPARTMENT_CODE').asinteger;
          CreateParam(ftString,'P_A',ptInput);
          ParamByName('P_A').Value:='A';
          CreateParam(ftInteger,'P_2',ptInput);
          ParamByName('P_2').Value:= 2;
          CreateParam(ftInteger,'P_5',ptInput);
          ParamByName('P_5').Value:= 5;
          CreateParam(ftString,'p_6' ,ptInput);
          ParamByName('p_6').Value := MFO_CATEGORY_TYPE_CODE;
        end;
        sql_:='select '+
         ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' c.post_name field1 , d.category_name field2,'+
         ' ok_service.GET_WORK_PERIOD(okp.branch,okp.personal_code,info.getday) "����� ����",'+
         ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,1) "�� ���������� ����",'+
         ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,3) "������-��������� ����",'+
         ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,5) "���������� ����" '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp, ss_ok_post_category f'+
         ' where okp.branch = :P_BRANCH'+
         ' and a.department_code= :P_DEP'+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes= :P_A'+
         ' and a.post_code=c.post_code'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and okp.status_code in ( :P_2 , :P_5 )'+
         ' and a.post_code=f.post_code'+
         ' and d.category_code=f.category_code'+
         ' and f.MFO_CATEGORY_TYPE_CODE=:p_6'+
         ' order by d.category_code';
    end else begin
        with cdsTemp do
        begin
          close;
          Params.Clear;
          Params.CreateParam(ftString,'P_BRANCH',ptInput);
          Params.ParamByName('P_BRANCH').Value:=branch;
          Params.CreateParam(ftInteger,'P_DEP',ptInput);
          Params.ParamByName('P_DEP').Value:= cdsTempSource.fieldbyname('DEPARTMENT_CODE').asinteger;
          Params.CreateParam(ftString,'P_A',ptInput);
          Params.ParamByName('P_A').Value:='A';
          Params.CreateParam(ftInteger,'P_2',ptInput);
          Params.ParamByName('P_2').Value:= 2;
          Params.CreateParam(ftInteger,'P_5',ptInput);
          Params.ParamByName('P_5').Value:= 5;
        end;
        sql_:='select '+
         ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' c.post_name field1 , d.category_name field2,'+
         ' ok_service.GET_WORK_PERIOD(okp.branch,okp.personal_code,info.getday) "����� ����",'+
         ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,1) "�� ���������� ����",'+
         ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,3) "������-��������� ����",'+
         ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,5) "���������� ����" '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp'+
         ' where okp.branch = :P_BRANCH'+
         ' and a.department_code= :P_DEP'+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes= :P_A'+
         ' and a.post_code=c.post_code'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and okp.status_code in ( :P_2 , :P_5 )'+
         ' and c.category_code=d.category_code (+)'+
         ' order by d.category_code';
     end;
      loaddata(cdsTemp,sql_);
      While not cdsTemp.Eof
      do begin

          if (olddepname <>cdsTemp.Fields[0].AsString)
          then begin
            inc(row);
            inc(row);
            V.Cells[row, 1 ].NumberFormat := StrFormat;
            V.Cells[row, 1 ].Value := cdsTemp.Fields[0].AsString;
          end;
          olddepname :=cdsTemp.Fields[0].AsString;

          inc(row);
          inc(row);
          i := 1;
          For col:=1 To 7
          Do Begin

              case cdsTemp.Fields[col].DataType Of
                ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
                ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
                ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
              end;
              V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);
              inc(i);
         end;


        inc(row);
//        V.Cells[row, 1 ].Value := cdsTemp.fieldbyname('fio').asstring;
//        V.Cells[row, 4 ].Value := cdsTemp.fieldbyname('stavka').asstring;
//        V.Cells[row, 5 ].Value := cdsTemp.fieldbyname('zarpl').asstring;
//        total_sum2:= total_sum2+  cdsTemp.fieldbyname('zarpl').Asfloat;
//        total_count2:=  total_count2   +  cdsTemp.fieldbyname('float_stavka').Asfloat;

        cdsTemp.Next;
     end;
     cdsTempSource.Next;

     Application.ProcessMessages;

  end;

{
    inc(row);
    inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '����� �� �������';

      sum2_:=float(total_count);
      V.Cells[row,4].NumberFormat := NumFormat;
      V.Cells[row,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count2);
      V.Cells[row+1,4].NumberFormat := NumFormat;
      V.Cells[row+1,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count-total_count2);
      if (total_count-total_count2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;


      sum2_:=floattostr(total_sum);
      V.Cells[row,6].NumberFormat := NumFormat;
      V.Cells[row,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum2);
      V.Cells[row+1,6].NumberFormat := NumFormat;
      V.Cells[row+1,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum-total_sum2);
      if (total_sum-total_sum2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;
}
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������� ���������';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '��������  ������������ �� ������';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '� ����������';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '������������ ���������';
{
  inc(row);
      sum2_:=float(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����� �� �����';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '���� ������ �����';

  inc(row);
      V.Cells[row, 2].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' ';

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := bankdate;
  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';
}
  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '�������� � �����������';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' �� ��������� �� '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  V.Cells.Select;
  V.Columns.AutoFit;
  V.Visible := True; //��� �������

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;
//

end;

procedure TBOKFormSTAT.cdbgToExcel(cdbgREP: TClientDBGrid; rep1,rep2,rep3,rep4 : string);
var
 Save_Cursor:TCursor;
 V: Variant;
 line,i, col,row,nn:integer;
 NumFormat,DateFormat,StrFormat: String;
// cdbgREP : TClientDBGrid;

begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

  cdbgREP.DataSource.Dataset.DisableControls;
  cdbgREP.DataSource.Dataset.First;

  row:=1;
  V.Cells[row, 3 ].Value:=rep1;
  inc(row);
  V.Cells[row, 3 ].Value:=rep2;
  inc(row);
  V.Cells[row, 3 ].Value:=rep3;
  inc(row);
  V.Cells[row, 3 ].Value:=rep4;
  inc(row);
  inc(row);

  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;
  nn:=cdbgREP.Columns.Count-1;
  i:=1;
  V.Cells[row, i ].Value:='�/�';
  inc(i);

  // ������������ ����� ��� ���������� �����
  for col:=0 to nn
  do begin
    if cdbgREP.Columns.Items[col].Visible then
    begin
      V.Cells[row, i ].Value := cdbgREP.Columns.Items[col].title.Caption;
//          rpad(cdbgSSOK.Columns.Items[i].title.Caption, cdbgSSOK.Columns.Items[i].Width div 6)  + '|';
      inc(i);
    end;
  end;

  inc(row);
  line :=1;
  While not cdbgREP.DataSource.Dataset.Eof
  do begin
    i := 1;
    V.Cells[row, i ].Value:=line;
    inc(i);
    inc(line);

    For col:=0 To nn
    Do Begin

      if cdbgREP.Columns.Items[col].Visible
      then begin
        case cdbgREP.DataSource.Dataset.Fields[col].DataType Of
          ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
          ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
          ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
        end;
        V.Cells[row, i ].Value := Trim(cdbgREP.DataSource.Dataset.Fields.FieldByName(cdbgREP.Columns.Items[col].FieldName).AsString );
        inc(i);
      end;

    End;

    inc(row);
    cdbgREP.DataSource.Dataset.Next;
    Application.ProcessMessages;
  end;

  V.Cells.Select;
  V.Columns.AutoFit;
  V.Visible := True; //��� �������
  cdbgREP.DataSource.Dataset.ENableControls;
 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.cdsOK_Kurs3AfterOpen(DataSet: TDataSet);
begin

  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsOK_Kurs3.MasterSource    := dsOKPersonal;
    cdsOK_Kurs3.IndexFieldNames := 'branch;personal_code';
    cdsOK_Kurs3.MasterFields    := 'branch;personal_code';
  End;


end;

procedure TBOKFormSTAT.cdsOK_TabelAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsok_tabel.MasterSource    := dsOKPersonal;
    cdsok_tabel.IndexFieldNames := 'branch;personal_code';
    cdsok_tabel.MasterFields    := 'branch;personal_code';
  End;

//  Dataset.FieldByName('date_open').EditMask  := '!09/09/0099;1;_';
//  Dataset.FieldByName('date_close').EditMask  := '!09/09/0099;1;_';
//  Dataset.FieldByName('order_date').EditMask  := '!09/09/0099;1;_';

end;

procedure TBOKFormSTAT.TextOut_(gb_: tgroupbox; X, Y: Integer; const Text: string; i : integer);
begin
  LockWindowUpdate(gb_.Handle);
  try

        with TLabel.Create(gb_) do begin
//          Font.Name := name_;
//          Font.Size := strtoint(size_);
          Caption := text;
          Left := x+16;
          Top := y+16;

          Parent := gb_;
        end;

      if i >0
      then begin
        with TDBEDit.Create(gb_) do begin
//          Font.Name := name_;
//          Font.Size := strtoint(size_);
//          Caption := text;
          Left := x+16+18;
          Top := y+12;
          datasource:=dsOK_Tabel;
          datafield:='day'+lpad( inttostr(i),2,'0' );
          Parent := gb_;
          width:=16;
        end;
      end;
{
    lb := tlabel.Create(gb_);
    lb.top:=x;
    lb.Left:=y;
    lb.Font.Name := name_;
    lb.Font.Size := strtoint(size_);
    lb.caption:=text;
    lb.visible :=true;
    lb.Parent := gb_;
}
  finally
    LockWindowUpdate(0);
  end;

end;

procedure TBOKFormSTAT.bbGB_PERSClick(Sender: TObject);
const // ��������� �������� ���������:
  MonthDX = 150;
  MonthDY = 135;
  DayDX = 40; // DayDX = 20;
  DayDY = 25; // DayDY = 15;
  MonthH = 0; // MonthH = 20;
var
  month, i: integer;
  day: integer;
  s: string[2];
begin

    year_ := strtoint( copy(medBankDate2.text,7,4));
    month := strtoint( copy(medBankDate2.text,4,2));

  if GB_PERS.caption<>('   '+LongMonthNames[month]+'   ')
  then begin
    cdsok_freedays.close;
      with cdsok_freedays.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'mm.yyyy';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := copy(medBankDate2.Text,4,7);
      end;

    LoadData(cdsok_freedays, SQL_ok_freedays+' where branch=:p_1 '+ //''''+curBranch +''''+
    'and to_char(v_date,:p_2) like :p_3'); //'''+copy(medBankDate2.Text,4,7)+''' ');

    with GB_PERS do
      for i := ComponentCount - 1 downto 0 do
        Components[i].Free;

    // ����� �������� ������:
    //  TextOut_(GB_PERS,(0) mod 3 * MonthDX, (0) div 3 * MonthDY,
    //    LongMonthNames[month],-1);
    GB_PERS.Caption := '   '+LongMonthNames[month]+'   ';

    // ����� �������� ���� ������:
    for day := 1 to 7 do
      TextOut_(GB_PERS,(0) mod 3 * MonthDX,
        day mod 7 * DayDY + (0) div 3 * MonthDY + MonthH,
        ShortDayNames[(day + 1) mod 7 + 1],-1);

    // ����������� ��� ������ ������� ����� ������:
    day := DayOfWeek(EncodeDate(year_, month, 1)) - 2;
    if day < 0 then inc(day, 7);
    // ����� �����:
    for i := 1 to months_[month] do begin
      str(i: 2, s);
      TextOut_(GB_PERS,day div 7 * DayDX + (0) mod 3 * MonthDX + DayDX,
        day mod 7 * DayDY + (0) div 3 * MonthDY + MonthH, s,i);
      inc(day);
    end;

  end;

end;

procedure TBOKFormSTAT.cdsOK_FreeDaysAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKAward.FieldByName('award_date').EditMask  := '!09/09/0099;1;_';
    cdsOK_FreeDays.MasterSource    := dsOKPersonal;
    cdsOK_FreeDays.IndexFieldNames := 'branch;personal_code';
    cdsOK_FreeDays.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKFormSTAT.bbGOTO_IIASClick(Sender: TObject);
begin
  LastPanel := 'IIASPanel';
  pcmainok.ActivePage := IIASPanel_;

  actiias.Checked := true;

  actCopyPers.Checked     := False ;
  actTable.Checked := False;
  actTabel.Checked     := False ;
  actKurs.Checked     := False ;
  actNew.Checked     := False;
  actForm.Checked    := False;
  actRef.Checked     := False;
  actRef2.Checked     := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  cdsOKPersonal.ReadOnly := false;
  OptionsPanel.Visible := False;


  if not(cdsdistr.Active)
  then begin
    loaddata(cdsdistr,SQL_S_DISTR);
  end;

  if not(cds_yesno.Active)
  then begin
    loaddata(cds_yesno,SQL_yesno);
  end;

  if not(cdsS_STR.Active)
  then begin
    loaddata(cdsS_STR,SQL_str);
  end;


end;

procedure TBOKFormSTAT.BitBtn168Click(Sender: TObject);
begin

  LastPanel := 'FormPanel';
  pcmainok.ActivePage := FormPanel_;
  actForm.Checked := True;

  actCopyPers.Checked     := False ;
  actTable.Checked   := False;
  actTabel.Checked     := False ;
  actKurs.Checked     := False ;
  actNew.Checked     := False;
  actRef.Checked     := False;
  actRef2.Checked     := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  cdsOKPersonal.ReadOnly:=False;
  OptionsPanel.Visible := False;

  actiias.Checked := false;

end;

procedure TBOKFormSTAT.DBEdit156Exit(Sender: TObject);
begin
  if cdsOkRelation.fieldbyname('COD_STR_LIVE').asstring='860'
  then begin
    dbedCOD_OBL_LIVE.enabled:=true;
    DBEdit99.enabled:=true;
    DBLookupComboBox27.enabled:=true;
    DBLookupComboBox29.enabled:=true;
    DBEdit45.enabled:=false;
    DBEdit116.enabled:=false;
  end else begin
    dbedCOD_OBL_LIVE.enabled:=false;
    DBEdit99.enabled:=false;
    DBLookupComboBox27.enabled:=false;
    DBLookupComboBox29.enabled:=false;
    DBEdit45.enabled:=true;
    DBEdit116.enabled:=true;
  end;

end;

procedure TBOKFormSTAT.dsOkRelationDataChange(Sender: TObject; Field: TField);
begin
  DBEdit156Exit(Sender);
  DBEdit158Exit(Sender);
end;

procedure TBOKFormSTAT.DBEdit158Exit(Sender: TObject);
begin
  if cdsOkRelation.fieldbyname('COD_STR_birth').asstring='860'
  then begin
    dbedCOD_OBL_birth.enabled:=true;
    DBEdit157.enabled:=true;
    DBLookupComboBox9.enabled:=true;
    DBLookupComboBox5.enabled:=true;
    DBEdit92.enabled:=false;
    DBEdit51.enabled:=false;
  end else begin
    dbedCOD_OBL_birth.enabled:=false;
    DBEdit157.enabled:=false;
    DBLookupComboBox9.enabled:=false;
    DBLookupComboBox5.enabled:=false;
    DBEdit92.enabled:=true;
    DBEdit51.enabled:=true;
  end;

end;

procedure TBOKFormSTAT.dsOKPeriodDataChange(Sender: TObject; Field: TField);
begin
  if cdsOKPeriod.FieldByName('type_period_code').AsString = '3'
  then begin
  // �� ������
    DBEd_poststring2.enabled:=true;
    DBlcb_poststring3.enabled:=true;
    DBEd_depstring2.enabled:=true;
    DBlcb_depstring3.enabled:=true;
  end else begin
    DBEd_poststring2.enabled:=false;
    DBlcb_poststring3.enabled:=false;
    DBEd_depstring2.enabled:=false;
    DBlcb_depstring3.enabled:=false;
  end;

end;

procedure TBOKFormSTAT.DBEdit184Change(Sender: TObject);
begin
{  if (BOKFormSTAT.cdsOKPersonal_NEW.State in [dsEdit, dsInsert])
  and (chbGluk.checked)
  then begin
     cdsOKPersonal_NEW.FieldByName('home_address').AsString := dbeOK_HOME_ADDRESSFACT.Text ;
     cdsOKPersonal_NEW.FieldByName('HOME_ADDRESS_REGION_ID').AsString :=
       cdsOKPersonal_NEW.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString ;
     cdsOKPersonal_NEW.FieldByName('HOME_ADDRESS_DISTR').AsString :=
       cdsOKPersonal_NEW.FieldByName('HOME_ADDRESSFACT_DISTR').AsString ;
  end;
}
end;

procedure TBOKFormSTAT.DBEdit185Change(Sender: TObject);
begin
  if DBEdit185.text='860'
  then begin
    DBEdit189.Enabled:=true;
    DBLookupComboBox57.Enabled:=true;
    DBEdit187.Enabled:=true;
    DBLookupComboBox56.Enabled:=true;
    if cdsOKpersonal_new.state in dseditmodes
    then begin
      cdsOKpersonal_new.FieldByName('cod_obl_live_prim').AsString:='';
      cdsOKpersonal_new.FieldByName('cod_distr_live_prim').AsString:='';
    end;
    DBEdit190.Enabled:=false;
    DBEdit188.Enabled:=false;
  end else begin
    if cdsOKpersonal_new.state in dseditmodes
    then begin
      cdsOKpersonal_new.FieldByName('cod_obl_live').AsString:='';
      cdsOKpersonal_new.FieldByName('cod_distr_live').AsString:='';
    end;
    DBEdit189.Enabled:=false;
    DBLookupComboBox57.Enabled:=false;
    DBEdit187.Enabled:=false;
    DBLookupComboBox56.Enabled:=false;
    DBEdit190.Enabled:=true;
    DBEdit188.Enabled:=true;

  end;

end;

procedure TBOKFormSTAT.DBEdit185Click(Sender: TObject);
begin
  DBEdit185Change(sender);
end;

procedure TBOKFormSTAT.DBLCB_iias_str_NEWClick(Sender: TObject);
begin
  ed_iias_str_NEWChange(nil);
end;

procedure TBOKFormSTAT.ed_iias_str_NEWChange(Sender: TObject);
begin

  if ed_iias_str_NEW.text='860'
  then begin
    dbeokRegion.Enabled:=true;
    DBLCBokregion.Enabled:=true;
    dbeOKdistr.Enabled:=true;
    DBLCBokdistr.Enabled:=true;
    if cdsOKpersonal_NEW.state in dseditmodes
    then begin
      cdsOKpersonal_NEW.FieldByName('cod_obl_prim').AsString:='';
      cdsOKpersonal_NEW.FieldByName('cod_place_birth_prim').AsString:='';
    end;
    DBEdit183.Enabled:=false;
    DBEdit184.Enabled:=false;
  end else begin
    if cdsOKpersonal_NEW.state in dseditmodes
    then begin
      cdsOKpersonal_NEW.FieldByName('region_id').AsString:='';
      cdsOKpersonal_NEW.FieldByName('distr').AsString:='';
    end;
    dbeokRegion.Enabled:=false;
    DBLCBokregion.Enabled:=false;
    dbeOKdistr.Enabled:=false;
    DBLCBokdistr.Enabled:=false;
    DBEdit183.Enabled:=true;
    DBEdit184.Enabled:=true;

  end;

end;

procedure TBOKFormSTAT.dbeOKFamilyStatusExit(Sender: TObject);
begin
  if  dbeOKFamilyStatus.Text = ''
  then begin
    cdsSSOKGender_SET.Filtered := False;
  end
  else begin
    cdsSSOKGender_SET.Filtered := False;
    cdsSSOKGender_SET.Filter := 'gender_code='+ cdsSSOKFamilyStatus_SET.FieldByName('gender_code').AsString;
    cdsSSOKGender_SET.Filtered := True;
    if BOKFormSTAT.cdsOKPersonal_NEW.State in [dsEdit, dsInsert]
    then cdsOKPersonal_NEW.FieldByName('gender_code').AsString := cdsSSOKFamilyStatus_SET.FieldByName('gender_code').AsString;
//showmessage(cdsSSOKFamilyStatus_SET.FieldByName('gender_code').AsString);
  end;

end;

procedure TBOKFormSTAT.N23Click(Sender: TObject);
var
//msg,
  s : string;
  FileHandle : THandle;

begin
  ExecPrc.Close;
  ExecPrc.Params.Clear;
  ExecPrc.Params.CreateParam(ftCursor, 'REP_CUR',ptInputOutput);
  LoadData(ExecPrc,'ok_service.PrintCheckW',False);

  If not DirectoryExists(ROOT_DIR+'\OK') then
     ForceDirectories(ROOT_DIR+'\OK');
  FileHandle:=FileCreate(ROOT_DIR+'\OK\REP.TXT');

  while not ExecPrc.Eof do
  begin
    s:=s+ ExecPrc.Fields[0].AsString+#13#10;
    ExecPrc.Next;
  end;
  FileWrite(FileHandle,PChar(s)^,Length(s));
  FileClose(FileHandle);
  WinExec(PChar('notepad.exe '+ROOT_DIR+'\OK\REP.TXT'), SW_SHOWNORMAL);
end;

procedure TBOKFormSTAT.bbApplicationClick(Sender: TObject);
var
  doljn_counter_  : integer; // ,checking_fail_
  ErMessage, doljn_educ_,post_name_,educ_name_,educ_name_pers_ : string;
      text_f : textfile;

begin
// ����� "��������� � ��"
//  ��������� ���������� ��
//
  cdsOKPersonal.refresh;

  if (cdsOKPersonal.FieldByName('GOsubmit_code').AsString='22')
//  and (cdsOKPersonal.FieldByName('GOsubmit_code').AsString<>'')
  then begin
    showmessage('������ ��������� ������, ��������� � ��������� '+dblcbGOsubmit.text);
    exit;
  end;

  proverka(1);

  ErMessage:='';

/////////////////////////
//  �������� � �����
// ���� �������-������� �������-�� �� ��������� ��  �������, ���� -���- �� ��  �� ������ ����
// ���� �������-������� ������ -�� �� ��������� ��� �������, ���� -���- �� ��� �� ������ ����
// ����������� ������ ��������������� ��������� � ok_education ������� ����������
/////////////////////////
  if  ( cdsOKPersonal.FieldByName('reg_type_code').AsString='2')
  and (   cdsOKPersonal.FieldByName('REG_DATE_END').AsString='')
  then begin
    ErMessage := ErMessage+' "������� * ���� ��������� ��������" ';
  end;

        if cdsOKPersonal.FieldByName('TRUD_SOGL').AsString=''
        then ErMessage := ErMessage+' "�� ��������� ����������" ';

        if cdsOKPersonal.FieldByName('profmember').AsString=''
        then ErMessage := ErMessage+' "��������" ';
        if cdsOKPersonal.FieldByName('telefon').AsString=''
        then ErMessage := ErMessage+' "�������(���������� ���������� ���� ���)" ';
        try
          strtoint64(cdsOKPersonal.FieldByName('telefon').AsString);
        except
          ErMessage := ErMessage+' "������� '+cdsOKPersonal.FieldByName('telefon').AsString+' ������ ���� ������ �� ���� ��� ����" ';
        end;

  if ( strtoint(copy(datetostr(now),7,4))-
        strtoint(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,7,4))
        <45)    // � ���� ���� ���������� ������ 45 ����� ���������� ��������� ���� ���������
  or (( strtoint(copy(datetostr(now),7,4))-
        strtoint(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,7,4))
        =45) and (now< strtodate(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,1,6)+copy(datetostr(now),7,4))  )
  )
  then begin
    if (cdsokpersonal.FieldByName('PASS_DATE_END').AsString='') // ������� ������������ ��..
    then begin
      ErMessage := ErMessage+' "������� ������������ ��..'+cdsokpersonal.FieldByName('PASS_DATE_END').AsString+'" ';
    end else begin
      if (cdsokpersonal.FieldByName('PASS_DATE_END').AsDateTime < now)
      then ErMessage := ErMessage+' "������� ������������ ��..'+cdsokpersonal.FieldByName('PASS_DATE_END').AsString+'" ';
    end;
  end;
{
  doljn_counter_:=getsqlresultpar('select count(*) from s_doljn d, ss_ok_post o, ss_ok_nci sok'+
         ' where sok.nci_id=:p_1'+
         ' and sok.s_id=d.dolj_id'+
         ' and sok.ok_id=o.post_code'+
         ' and o.post_code in (:p_2,:p_3)',
            '79',cdsOKPersonal.fieldbyname('POST_CODE').asstring,
                 cdsOKPersonal.fieldbyname('POST_CODE_NEW').asstring
         );
  if (doljn_counter_=0) and
    (cdsOKPersonal.fieldbyname('POST_CODE').asstring<>'')
  then begin
    // �� ��� � �� �������� �� ����������� ���������
      actAppointExecute(nil);
  end else begin
    // ��� ���� �������� �� ����������� ���������
    // ��� ����������� �� ������ � ������ ��� ���� ��� ����������� ����� ����������
}
     //        \\
    // �������� \\
   //            \\
    try
      if chbSvetaOnly.checked
      then begin
        showmessage('������ ��� �����: �������� "CHECKW" ���������.');
      end else begin
        // ������� ����  \
        doljn_counter_ := getsqlresultpar('select count(*) from ok_photo where branch=:p_1 '+
          ' and personal_code=:p_2 and (priznak is null or priznak=:p_3)',
           curbranch, cdsOKPersonal.fieldbyname('personal_code').asstring,'1'
          );
        if doljn_counter_=0 then ErMessage:=ErMessage+' ����������� ���� ';
        // ������� �����������
        doljn_counter_ := getsqlresultpar('select count(*) from ok_education where branch=:p_1 '+
          ' and personal_code=:p_2',
           curbranch, cdsOKPersonal.fieldbyname('personal_code').asstring
          );
        if doljn_counter_=0 then ErMessage:=ErMessage+' ����������� ����������� � ���.��������� ';

        if cdsOKPersonal.fieldbyname('Education_Title_CODE').asstring=''
        then begin
          ErMessage:=ErMessage+' ����������� * ����������� ���������� ( ������������ ) �� ������� "���������� �� ����������" ';
        end else begin
          doljn_educ_ := getsqlresultpar('select nvl(Education_Title_CODE,0) from ss_ok_post where post_code=:p_1',
              cdsOKPersonal.fieldbyname('POST_CODE_NEW').asstring
            );
          if doljn_educ_<>'0'
          then begin
            if doljn_educ_<> cdsOKPersonal.fieldbyname('Education_Title_CODE').asstring
            then begin
              post_name_:=getsqlresultpar('select post_name from ss_ok_post where post_code=:p_1',cdsOKPersonal.fieldbyname('POST_CODE_NEW').asstring);
              educ_name_:=getsqlresultpar('select Education_Title_name from ss_ok_Education_Title where Education_Title_code=:p_1',
                  doljn_educ_
                );
              educ_name_pers_:=getsqlresultpar('select Education_Title_name from ss_ok_Education_Title where Education_Title_code=:p_1',
                cdsOKPersonal.fieldbyname('Education_Title_CODE').asstring
                );
              ErMessage:=ErMessage+'��� ��������� '+post_name_+' ���������� ����������� '+educ_name_+' � �� '+educ_name_pers_;
            end;
          end;
        end;

        if ErMessage<>''
        then begin
          showmessage(ErMessage);
      ////
          if HeadBranch_='09006'
          then begin
            If not DirectoryExists('C:\NCI Bank\') Then ForceDirectories('C:\NCI Bank\');
            If not DirectoryExists('C:\NCI Bank\Ok\') Then ForceDirectories('C:\NCI Bank\Ok\');
            If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');
            try
              System.AssignFile(text_f,'C:\NCI Bank\OK\Temp\err_ok3.txt');
              System.Rewrite(text_f);

              Try
                System.Writeln(text_f,ErMessage);
              Finally
                System.CloseFile(text_f);
              End;
            except
              showmessage('�� ������� ��������� ������ � ���� "C:\NCI Bank\OK\Temp\err_ok3.txt"');
              raise;
            end;

            try
              WinExec('notepad C:\NCI Bank\OK\Temp\err_ok3.txt', SW_MAXIMIZE);
            except
              showmessage('�� ������� ������� � �������� "notepad C:\NCI Bank\OK\Temp\err_ok3.txt"');
            end;
          end;
      ////


          exit;
        end;
        ExecSQL('BEGIN ok_service.checkw;  END;');
      end;

//      try
    //    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PAR_NAME','��������');
        execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_BRANCH',curbranch);
        execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_PERSONAL_CODE',cdsOKPersonal.fieldbyname('personal_code').asstring);
        execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_DEPARTMENT_CODE',cdsOKPersonal.fieldbyname('DEPARTMENT_CODE').asstring);
        execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_POST_CODE',cdsOKPersonal.fieldbyname('POST_CODE').asstring);
        execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_DEPARTMENT_CODE_NEW',cdsOKPersonal.fieldbyname('DEPARTMENT_CODE_NEW').asstring);
        execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_POST_CODE_NEW',cdsOKPersonal.fieldbyname('POST_CODE_NEW').asstring);
        execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_USERID',UserId);
        execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_VDATE',bankdate);
    //    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','','');
        execSQL('begin OK_SERVICE.NEW_appoint; end;');
        ExecSQL('COMMIT');

        if (cdsokpersonal.State in dsEditModes)
        then begin
          cdsokpersonal.cancel;
        end;
        cdsokpersonal.Refresh;
        cdsOKPersonalAfterScroll(nil);

//      except on e:exception
//        do begin
//          showmessage('(21540)������ '+#13+e.Message);
//        end;
//      end;

    except
      on E: Exception do
      begin
        ExecSQL('rollback');
//      if getSQLResultpar('select Errors.getErrId(:p_1) from dual',E.Message)='1043'
  //    then T1.Enabled:=true;
//      if Pos(ERROR_NO, E.Message) > 0 then
  //    begin
    //     Msg := Copy(E.Message, Pos(ERROR_NO, E.Message) + Length(ERROR_NO), Length(E.Message));
//         Msg := Copy(Msg, 1, Pos(#10, Msg) - 1);
  //    end
    //  else
      //   Msg := E.Message;

        n23click(sender);
        Showmessage('��������� ��� ������ ��������� � ������.'+#13+e.Message);
      // �� ������ ��������, ������� ����� �� �������
        exit;

      end;
    end;




          cdsOKPersonalAfterScroll(nil);

end;

procedure TBOKFormSTAT.BitBtn129Click(Sender: TObject);
begin
//  ����� "������ �� ����������"
  try
//    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','PAR_NAME','��������');
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_BRANCH',curbranch);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_PERSONAL_CODE',cdsOKPersonal.fieldbyname('personal_code').asstring);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_USERID',UserId);
    execSQLpar('begin Param.SetParam(:p_1,:p_2); end;','P_VDATE',bankdate);
    execSQL('begin OK_SERVICE.NEW_dismiss; end;');
    ExecSQL('COMMIT');
    if (cdsokpersonal.State in dsEditModes)
    then begin
      cdsokpersonal.cancel;
    end;
    cdsokpersonal.Refresh;
  except on e:exception
    do begin
      showmessage('(21564)������ '+#13+e.Message);
    end;
  end;
          cdsOKPersonalAfterScroll(nil);

end;

procedure TBOKFormSTAT.BitBtn134Click(Sender: TObject);
var App:      Variant;
   WorkBook: Variant;
   k,x:      integer; //  i,
  Text61,Text62,Text63: string;
  Text3,Text4 : string; //Text_, Text2, ,Text5,Text7,Text8,Text9,Text10
  Text11, Text12: string; //, Text13,Text14,Text15,Text16, Text16a, Text16b
  //Text16i, Text16j,  Text16h,   text16c,  text16d,  text16e,  text16f,  text16g  : string;
  //Text17,Text18,Text19,
  Text20,Text21: string;
  file_name_, sql_, where_pers, where_pers_a : string;
  Save_Cursor:TCursor;
begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
                                   // ��� ������ - �������� ����
 TRY
    { Do some lengthy operation }

  if (HeadBranch_ ='00974') or (HeadBranch_ ='09049')
  then begin
    App := CreateOLEObject('Excel.Application');
    WorkBook:=App.Workbooks.Open('C:\NCI Bank\Ok\templates\pril01.xls');
    App.Visible := false;
    file_name_:= 'pril01.xls';
  end else begin
    App := CreateOLEObject('Excel.Application');
    WorkBook:=App.Workbooks.Open('C:\NCI Bank\Ok\templates\pril01.xls');
    App.Visible := false;
    file_name_:= 'pril01.xls';
  end;

  If VarIsNull(App) Then
  begin
    showmessage('���������� ''Excel'' �� ����� ������� ���� C:\NCI Bank\Ok\Templates\'+file_name_+
      #10#13+ ' � �� ������ ���� '+GetCurrentDir_templates+'\'+file_name_+
      #10#13+'���������� ��������� ������� ����� �����.' );
    Exit;
  end;

// ��� �������� !!!!
{
  try
    App.Selection.Find.Execute('<INN>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('inn').AsString, 2);

    text21 :=  cdsOKPersonal.FieldByName('HOME_ADDRESS_REGION_ID_SHOW').AsString+' '+
              cdsOKPersonal.FieldByName('HOME_ADDRESS_DISTR_SHOW').AsString;
    App.Selection.Find.Execute('<KB_HOME_ADDRESS>', false, false, false, false, false,
           true, 1, false, text21, 2);

    text21 :=  cdsOKPersonal.FieldByName('HOME_ADDRESS').AsString; // ok_personal.home_address
    App.Selection.Find.Execute('<HOME_ADDRESS>', false, false, false, false, false,
           true, 1, false, text21, 2);




    text21 := cdsOKPersonal.FieldByName('home_address').AsString; // ok_personal.home_address
    App.Selection.Find.Execute('<TEXT21>', false, false, false, false, false,
           true, 1, false, text21, 2);
}
//    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
//                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
//    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
//                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers := ' WHERE branch=:p_1'+
                  ' AND personal_code=:p_2' ;
    where_pers_a := ' WHERE a.branch=:p_1'+
                    ' AND a.personal_code=:p_2' ;
    TRY
    sql_ := SQL_OKPhoto+where_pers  +  ' and (priznak is null or priznak=:p_3)';

    try

      cdsOKPhoto.close;
      with cdsOKPhoto.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '1';
      end;
      LoadData(cdsOKPhoto, sql_);

      if fileexists('C:\NCI Bank\Ok\Temp\photo.jpg')
      then deletefile('C:\NCI Bank\Ok\Temp\photo.jpg');

      if not cdsOKPhoto.FieldByName('photo').IsNull
      then begin
        (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
        WorkBook.WorkSheets[1].Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg',
          false,true,0,0, 162,216 );
        cdsOKPhoto.Close;
      end else begin
        cdsOKPhoto.Close;
      end;
    except
    end;

    WorkBook.WorkSheets[1].Cells[3,4].Value:=
    cdsOKPersonal.FieldByName('family').AsString+' '+
    cdsOKPersonal.FieldByName('First_Name').AsString+' '+
    cdsOKPersonal.FieldByName('Patronymic').AsString;

    WorkBook.WorkSheets[1].Cells[5,4].Value:=
    '���������:'+getsqlresultpar('select ok_service.GET_POSTNAME(:p_1) from dual',cdsOKPersonal.FieldByName('post_code').AsString);

    WorkBook.WorkSheets[1].Cells[11,4].Value:=
      '���� � ���������� �����: '+
      getsqlresultpar('select ok_service.GET_WORK_PERIOD_BY_TYPE(:p_1,:p_2,to_date(:p_3,''dd.mm.yyyy''),:p_4) from dual',
        cdsOKPersonal.FieldByName('branch').AsString,cdsOKPersonal.FieldByName('personal_code').AsString,
        bankdate,'5'
      );

    WorkBook.WorkSheets[1].Cells[11,9].Value:=
      '���: '+ cdsOKPersonal.FieldByName('TELEFON').AsString;

    x:=0;
    inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:= copy(cdsOKPersonal.FieldByName('birthday').AsString, 7,4);

  if cdsOKPersonal.FieldByName('region_id').IsNull
  then begin
    text3 := text3 +' '+cdsOKPersonal.FieldByName('birthplace').AsString;
  end else begin
//    sql_:='SELECT region_nam '+
//                         ' FROM s_region'+
//                         ' where region_id='''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('region_id').AsString;
      end;
    LoadData(cdsTempSource,'SELECT region_nam '+
                         ' FROM s_region'+
                         ' where region_id=:p_1', True);
    text3 := text3 + ' '+cdsTempSource.FieldByName('region_nam').AsString;

//    sql_:='SELECT distr_name '+
//                         ' FROM s_distr'+
//                         ' where distr='''+cdsOKPersonal.FieldByName('distr').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('distr').AsString;
      end;
    LoadData(cdsTempSource,'SELECT distr_name '+
                         ' FROM s_distr'+
                         ' where distr=:p_1', True);
    text3 := text3 + ' '+cdsTempSource.FieldByName('distr_name').AsString;
  end;
    inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:= text3;

//text4
  text4 := '';
//  sql_:='SELECT nationality_name '+
//                         ' FROM ss_ok_nationality'+
//                         ' where nationality_code='+cdsOKPersonal.FieldByName('nationality_code').AsString;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('nationality_code').AsString;
      end;
  LoadData(cdsTempSource,'SELECT nationality_name '+
                         ' FROM ss_ok_nationality'+
                         ' where nationality_code=:p_1' , True);

  text4 := cdsTempSource.FieldByName('nationality_name').AsString;

    inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:= text4;

//text6
  sql_:='select a.end_date||'' ''|| b.institution_name all_data,   a.diplom_num diplomnum, '+
                ' c.qualification_name '+
                ' from ok_education a, ss_ok_institution b, ss_ok_qualification c'+
                  where_pers_a +
                ' and a.institution_code = b.institution_code'+
                ' and a.qualification_code = c.qualification_code'+
                ' order by a.end_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  k:=1; Text61:='';Text62:='';Text63:='';
  While not cdsTempSource.Eof do
  Begin
    Text61:= Text61+' '+cdsTempSource.fieldbyname('all_data').asstring;
    Text62:= Text62+' '+cdsTempSource.fieldbyname('qualification_name').asstring;
    Text63:= Text63+' '+cdsTempSource.fieldbyname('diplomnum').asstring;
    inc(k);
    cdsTempSource.next;
  End;
    inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:= Text61;
    inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:= Text62;
    inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:= Text63;

   // �����
    text21 :=  cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_REGION_ID_SHOW').AsString+ ' ' +
               cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_DISTR_SHOW').AsString+ ' '+
               cdsOKPersonal.FieldByName('HOME_ADDRESSFACT').AsString; // ok_personal.home_address
   inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:=text21;

//text20
  text20 := ''; // ss_ok_FAMILY_STATUS.FAMILY_STATUS_CODE
//  sql_:='select family_status_name all_data'+
//                ' from ss_ok_FAMILY_STATUS'+
//                ' where FAMILY_STATUS_CODE='+ cdsOKPersonal.FieldByName('FAMILY_STATUS_CODE').AsString;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('FAMILY_STATUS_CODE').AsString;
      end;
  LoadData(cdsTempSource,'select family_status_name all_data'+
                ' from ss_ok_FAMILY_STATUS'+
                ' where FAMILY_STATUS_CODE=:p_1', True);

  Text20:= cdsTempSource.fieldbyname('all_data').asstring;

   // �������� ���������
   inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:=text20;
   //�����
   inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:=
            cdsOKPersonal.FieldByName('PASS_SERIYA').AsString +' '+
            cdsOKPersonal.FieldByName('PASS_NUM').AsString ;

   //  �����
   inc(x);WorkBook.WorkSheets[1].Cells[16,x].Value:=
            cdsOKPersonal.FieldByName('PASS_DATE').AsString +' '+
            cdsOKPersonal.FieldByName('PASS_REG').AsString;
// �� ���� ������� ����������  �������� � ������� ������

//text12
  text12 := '';
  k:=19;
  sql_:='select IN_OFFICE_DATE ||'' �.'' date1_,'+
        ' OUT_OFFICE_DATE ||'' �.'' DATE2_,'+
        ' substr(OFFICE_NAME,1,250),'+//   ||'' - ''||'+
        ' substr(ESTABLISHED_DEPARTMENT,1,250)  ||'' - ''||'+
        ' substr(ESTABLISHED_POST,1,250)  ||'' - ''||OFFICE_ADDRESS office_'+
        ' from ok_period '+
        where_pers+' order by in_office_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
      WorkBook.WorkSheets[1].Cells[k,1].WrapText := True;
      WorkBook.WorkSheets[1].Cells[k,1].Value:= cdsTempSource.fields[0].asstring;

      WorkBook.WorkSheets[1].Cells[k,2].WrapText := True; // ��� ������������ ����� ���� �� �������� ((
      if cdsTempSource.fields[1].asstring<>' �.'
      then WorkBook.WorkSheets[1].Cells[k,2].Value:= cdsTempSource.fields[1].asstring;

      WorkBook.WorkSheets[1].Cells[k,3].WrapText := True;
      WorkBook.WorkSheets[1].Cells[k,3].Value:= cdsTempSource.fields[2].asstring;

//  ���������� ????
      WorkBook.WorkSheets[1].Cells[k,7].Value:= cdsTempSource.fields[3].asstring;


    inc(k);
    cdsTempSource.next;

  End;

  text11 := '';
  k:=41;
  sql_:='select b.relation_name,a.RELATION_FAMILY	||'' ''||a.RELATION_NAME ||'' ''||'+
                ' a.RELATION_PATRONYMIC,a.RELATION_BIRTHDAY||'' ��� ''||a.RELATION_BIRTHPLACE ,'+
                ' a.RELATION_OFFICE||'' ''||a.RELATION_POST ,'+
                ' a.RELATION_HOME_ADDRESS'+
                ' from ok_relation a, ss_ok_relation b'+
                  where_pers_a +
                ' and a.relation_code=b.relation_code'+
                ' order by a.relation_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin

      WorkBook.WorkSheets[1].Cells[k,1].WrapText := True;
      WorkBook.WorkSheets[1].Cells[k,1].Value:= cdsTempSource.fields[0].asstring;

      WorkBook.WorkSheets[1].Cells[k,3].WrapText := True; // ��� ������������
      WorkBook.WorkSheets[1].Cells[k,3].Value:= cdsTempSource.fields[1].asstring;

      WorkBook.WorkSheets[1].Cells[k,5].WrapText := True;
      WorkBook.WorkSheets[1].Cells[k,5].Value:= cdsTempSource.fields[2].asstring;

      WorkBook.WorkSheets[1].Cells[k,7].WrapText := True;
      WorkBook.WorkSheets[1].Cells[k,7].Value:= cdsTempSource.fields[3].asstring;
      WorkBook.WorkSheets[1].Cells[k,9].WrapText := True;
      WorkBook.WorkSheets[1].Cells[k,9].Value:= cdsTempSource.fields[4].asstring;

      inc(k);
    cdsTempSource.next;

  End;


  App.Visible:=true;

//  App.Application.Quit; -- �����  ������
 except
  App.Application.Quit(false); // �����  ������ ��� ����������
/////
  raise;
//  App.Application.Quit(true); // �����  � �����������
 end;

  App:=unassigned;
 FINALLY
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

{
//text2
  text2 := '';
  sql_:= 'SELECT change_date,change_motive '+
                         ' FROM ok_change_fio'+
                           where_pers+' order by change_date' ;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text2 = ''
    then Text2:= cdsTempSource.fieldbyname('change_date').asstring+' ��� '+cdsTempSource.fieldbyname('change_motive').asstring
    else Text2:= text2+#13+cdsTempSource.fieldbyname('change_date').asstring+' ��� '+cdsTempSource.fieldbyname('change_motive').asstring;

    cdsTempSource.next;

  End;
  if text2 = '' then text2 := '����������';
  App.Selection.Find.Execute('<TEXT2>', false, false, false, false, false,
           true, 1, false, text2, 2);






//text5 text17, text18
  text5  := '';
  text17 := '';
  text18 := '';
  sql_:= 'select b.party_name, party_outdate,out_party, '+
                ' punishment_date||'' ''||punishment_motive text18'+
                ' from ok_party a, ss_ok_party b'+
                  where_pers_a +
//                ' and a.party_outdate is null'+
                ' and a.party_code = b.party_code'+
                ' order by a.party_date'  ;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);
// ||'' ��� ''||
  While not cdsTempSource.Eof do
  Begin
    if text5 = ''
    then Text5:= cdsTempSource.fieldbyname('party_name').asstring
    else Text5:= text5+' '+cdsTempSource.fieldbyname('party_name').asstring;

    text_:='';
    if cdsTempSource.fieldbyname('party_outdate').asstring<>''
    then
      text_:= cdsTempSource.fieldbyname('party_outdate').asstring+' ��� '+
                  cdsTempSource.fieldbyname('out_party').asstring;
    if text17 = ''
    then Text17:= text_
    else Text17:= text17+#13+text_;

    if text18 = ''
    then Text18:= cdsTempSource.fieldbyname('text18').asstring
    else Text18:= text18+#13+cdsTempSource.fieldbyname('text18').asstring;

    cdsTempSource.next;

  End;

  if text5 = ''
  then Text5:= '������ ������ ����';

  App.Selection.Find.Execute('<TEXT5>', false, false, false, false, false,
           true, 1, false, text5, 2);

  App.Selection.Find.Execute('<TEXT17>', false, false, false, false, false,
           true, 1, false, text17, 2);

  App.Selection.Find.Execute('<TEXT18>', false, false, false, false, false,
           true, 1, false, text18, 2);



//text7
  text7 := '';
// �������
  sql_:='select award_date||'' ��� ''||award_info all_data'+
                ' from ok_award '+
                  where_pers +
                ' order by award_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text7 = ''
    then Text7:= cdsTempSource.fieldbyname('all_data').asstring
    else Text7:= text7+' ; '+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

// ������ �������
   sql_:='select a.degree_date||'' ��� ''||b.degree_name all_data'+
                ' from ok_degree a, ss_ok_degree b'+
                  where_pers_a +
                ' and a.degree_code= b.degree_code'+
                ' order by a.degree_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text7 = ''
    then Text7:= cdsTempSource.fieldbyname('all_data').asstring
    else Text7:= text7+' ; '+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

//
    if text7 = ''
    then Text7:= '����� �������� ���';
  App.Selection.Find.Execute('<TEXT7>', false, false, false, false, false,
           true, 1, false, text7, 2);

//text8
  text8 := '';
//OK_SCIENTIFIC
  sql_:='select scientific_date||'' ��� ''||scientific_info all_data'+
                ' from ok_scientific'+
                  where_pers +
                ' order by scientific_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);


  While not cdsTempSource.Eof do
  Begin
    if text8 = ''
    then Text8:= cdsTempSource.fieldbyname('all_data').asstring
    else Text8:= text8+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

    if text8 = ''
    then Text8:= '����� ������ ���';
  App.Selection.Find.Execute('<TEXT8>', false, false, false, false, false,
           true, 1, false, text8, 2);

//text9
  text9 := '';
  sql_:='select voyage_date, voyage_land, voyage_info'+
                ' from ok_voyage'+
                  where_pers +
                ' order by voyage_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    text_:='';
    if cdsTempSource.fieldbyname('voyage_date').asstring<>''
    then text_:= cdsTempSource.fieldbyname('voyage_date').asstring+' ��� '+
                 cdsTempSource.fieldbyname('voyage_land').asstring+' '+
                 cdsTempSource.fieldbyname('voyage_info').asstring;

    if text9 = ''
    then Text9:= text_
    else Text9:= text9+'; '+text_;

    cdsTempSource.next;
  End;

  App.Selection.Find.Execute('<TEXT9>', false, false, false, false, false,
           true, 1, false, copy(text9,1,250) , 2);

//text10
  text10 := '';
  sql_:='select b.language_name||'' - ''||c.level_language_name all_data'+
                ' from ok_language a, ss_ok_language b, ss_ok_level_language c'+
                  where_pers_a +
                ' and a.language_code= b.language_code'+
                ' and a.level_code= c.level_language_code'+
                ' order by a.language_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text10 = ''
    then Text10:= cdsTempSource.fieldbyname('all_data').asstring
    else Text10:= text10+'                                 '+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

//showmessage('text10 '+text10);
  App.Selection.Find.Execute('<TEXT10>', false, false, false, false, false,
           true, 1, false, text10, 2);



//text13
  text13 := '';
  sql_:='select RISE_DATE_YEAR,'+
        'RISE_INFO '+
        ' from ok_rise '+
        where_pers+' order by rise_date_year';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    text_:='';

    if cdsTempSource.fieldbyname('RISE_DATE_YEAR').asstring<>''
    then text_:= cdsTempSource.fieldbyname('RISE_DATE_YEAR').asstring+' ��� '+
                 cdsTempSource.fieldbyname('RISE_INFO').asstring;

    cdsTempSource.next;

  End;
  // ������ ��������� ��������� ������������
  Text13:= text_;

//showmessage('text13 '+text13);
  App.Selection.Find.Execute('<TEXT13>', false, false, false, false, false,
           true, 1, false, text13, 2);



//text14
  text14 := '';
  k:=11;
  sql_:='select b.ELECTION_ADDRESS,b.ELECTION_NAME,'+
        'a.ELECTION_POST ,a.ELECTION_DATE_BEGIN,a.ELECTION_DATE_END '+
        ' from ok_election a, ss_ok_election b'+
        where_pers+
        ' and a.election_code=b.election_code'+
        ' and b.state_notes='+#39+'A'+#39+
        ' order by election_date_begin';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 4
    do begin
      Text14 := cdsTempSource.fields[i].asstring;
      App.Selection.Find.Execute('<TEXT14'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text14, 2);
      inc(k);
    end;
    cdsTempSource.next;

  End;

  for i:= k to 30
  do begin
      App.Selection.Find.Execute('<TEXT14'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;

  if text14=''
  then begin
      App.Selection.Find.Execute('<TEXT14>', false, false, false, false, false,
            true, 1, false, '�����������', 2);
  end else begin
      App.Selection.Find.Execute('<TEXT14>', false, false, false, false, false,
            true, 1, false, ' ', 2);
  end;


//text15
  text15 := ''; // ��� ������ ok_premium
//PREMIUM_DATE 	DATE not null, --���� ��������� ������	�������� � ����������, ��������� ����, ������������ ��� ����������
//PREMIUM_NAME	VARCHAR2(200) not null, --������������ ������	�������� � ����������, ��������� ����, ������������ ��� ����������
  sql_:='select premium_date, premium_name '+
                ' from ok_premium'+
                  where_pers +
                ' order by premium_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);


  While not cdsTempSource.Eof do
  Begin
    text_:='';
    if cdsTempSource.fieldbyname('premium_date').asstring<>''
    then text_ := cdsTempSource.fieldbyname('premium_date').asstring+' ��� '+
                  cdsTempSource.fieldbyname('premium_name').asstring;

    if text15 = ''
    then Text15:= text_
    else Text15:= text15+' ; '+text_;

    cdsTempSource.next;
  End;

  if text15 = ''
  then Text15:= '���������������';

  App.Selection.Find.Execute('<TEXT15>', false, false, false, false, false,
           true, 1, false, text15, 2);


  text16 := '';
  text16a := '';
  text16b := '';
  text16c := '';
  text16d := '';
  text16e := '';
  text16f := '';
  text16g := '';
  sql_:= 'select ok_service.get_staffname(a.staff_code) staff_show,'+
         ' ok_service.get_typeforcename(a.type_force_code) type_force_show, '+
         ' ok_service.get_categoryarmyname(a.CATEGORY_ARMY_CODE) CATEGORY_ARMY,'+
         ' a.SPECREG_NUMBER, a.NUMBER_VUS, b.fitness_army_type, a.NAME_ARMY_OFFICE,'+
         ' ok_service.get_armytype(a.army_code) army_type, '+
         ' ok_service.get_militaryrankname(a.military_rank_code) MILITARY_RANK, '+
         ' ok_service.get_armygroupname(a.army_group_code) ARMY_GROUP'+
                ' from ok_army a, ss_ok_fitness_army b'+
                 where_pers_a +
                ' and a.fitness_army_code= b.fitness_army_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource, sql_, True);

  Text16a := cdsTempSource.fieldbyname('staff_show').asstring ;
  text16b := cdsTempSource.fieldbyname('type_force_show').asstring ;

  Text16c := cdsTempSource.fieldbyname('CATEGORY_ARMY').asstring ;
  Text16d := cdsTempSource.fieldbyname('SPECREG_NUMBER').asstring ;
  Text16e := cdsTempSource.fieldbyname('NUMBER_VUS').asstring  ;
  Text16f := cdsTempSource.fieldbyname('fitness_army_type').asstring ;
  Text16g := cdsTempSource.fieldbyname('NAME_ARMY_OFFICE').asstring ;

  text16i := cdsTempSource.fieldbyname('army_type').asstring ;
  Text16j := cdsTempSource.fieldbyname('MILITARY_RANK').asstring  ;
  Text16h := cdsTempSource.fieldbyname('ARMY_GROUP').asstring ;

  Text16 :=  Text16j+' '+text16i; //  MILITARY_RANK   army_type


//text16
  // ������ �����, ��������� �����,
//ARMY_GROUP_CODE
//CATEGORY_ARMY_CODE
//MILITARY_RANK_CODE
//STAFF_CODE
//TYPE_FORCE_CODE

  if text16=''
  then begin
    text16 :='���������� ���';
  end;

  App.Selection.Find.Execute('<TEXT16>', false, false, false, false, false,
           true, 1, false, text16, 2);
  App.Selection.Find.Execute('<TEXT16A>', false, false, false, false, false,
           true, 1, false, text16a, 2);
  App.Selection.Find.Execute('<TEXT16B>', false, false, false, false, false,
           true, 1, false, text16b, 2);

  App.Selection.Find.Execute('<TEXT16C>', false, false, false, false, false,
           true, 1, false, text16c, 2);
  App.Selection.Find.Execute('<TEXT16D>', false, false, false, false, false,
           true, 1, false, text16d, 2);
  App.Selection.Find.Execute('<TEXT16E>', false, false, false, false, false,
           true, 1, false, text16e, 2);
  App.Selection.Find.Execute('<TEXT16F>', false, false, false, false, false,
           true, 1, false, text16f, 2);
  App.Selection.Find.Execute('<TEXT16G>', false, false, false, false, false,
           true, 1, false, text16g, 2);

  App.Selection.Find.Execute('<TEXT16H>', false, false, false, false, false,
           true, 1, false, text16h, 2);
  App.Selection.Find.Execute('<TEXT16I>', false, false, false, false, false,
           true, 1, false, text16i, 2);
  App.Selection.Find.Execute('<TEXT16J>', false, false, false, false, false,
           true, 1, false, text16j, 2);

//text17 �� ����� 5 �����������
//text18 �� ����� 5 �����������

//text19
  text19 := '';
//CONVICTIONS_DATE 	DATE not null, --���� �����������	�������� � ����������, ������� ����, ������������ ��� ����������
//CONVICTIONS_MOTIVE	VARCHAR2(200) not null, --������� �����������	�������� � ����������, ������� ����, ������������ ��� ����������
  sql_:='select CONVICTIONS_date||'' ''||CONVICTIONS_MOTIVE all_data'+
                ' from ok_convictions'+
                  where_pers +
                ' order by CONVICTIONS_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text19 = ''
    then Text19:= cdsTempSource.fieldbyname('all_data').asstring
    else Text19:= text19+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text19 = ''
  then Text19:= '�����������';

  App.Selection.Find.Execute('<TEXT19>', false, false, false, false, false,
           true, 1, false, text19, 2);




//text21 �� text1 (��� ���)
}

end;

procedure TBOKFormSTAT.DBLookupComboBox40CloseUp(Sender: TObject);
begin
  if (sender= DBLookupComboBox40) //and (DBLookupComboBox40.ItemIndex<>-1)
  then begin
    mfo_category_type_code_proc;
  end;

end;

procedure TBOKFormSTAT.ed_iias_birth_region_primChange(Sender: TObject);
begin
  if (ed_iias_str.text='860') and (ed_iias_birth_region_prim.text<>'')
  and (cdsOKPERSONAL.state in dseditmodes)
  then begin
    ed_iias_birth_region_prim.text:='';
    showmessage('���� ������ �������� '+DBLCB_iias_str.text +#13+
      ' �� ���� '+label194.caption+'('+cdsOKPERSONAL.FieldByName('cod_obl_prim').AsString+') ������ ���� ������.'
    );
  end;

end;

procedure TBOKFormSTAT.ed_iias_birth_distr_primChange(Sender: TObject);
begin
  if (ed_iias_str.text='860') and (ed_iias_birth_distr_prim.text<>'')
  and (cdsOKPERSONAL.state in dseditmodes)
  then begin
    ed_iias_birth_distr_prim.text:='';
    showmessage('���� ������ �������� '+DBLCB_iias_str.text +#13+
      ' �� ���� '+label189.caption+'('+cdsOKPERSONAL.FieldByName('cod_place_birth_prim').AsString+') ������ ���� ������.'
    );
  end;

end;

procedure TBOKFormSTAT.cdsOKPersonalAfterScroll(DataSet: TDataSet);
var is_boss:integer;
begin
//showmessage('AfterScroll');
(*������������� �����, ���� ��������� �����,
���� ��� ������� �/��� ������� ��������� �����������.

������ �������, ���� �������� ������������� �� ����� ���������,
� ��������� �� ��� ��� �� �������� ��� ��� ������� ��������� �� �����������.

������ �������, ���� ������� ��������� �� �����������,
�� ����� ��������- ���������� �� ����������� ��������� ��� ������������� ����������.

���� ��������� �� �������� �� ����� ���������,
���(���������) ����������� � ��������� � ������, ����� �� ���������� ������ �������.
*)
//* showmessage('0)'+HeadBranch_+'/'+cdsokpersonal.FieldByName('DEPARTMENT_CODE').asstring+'/'+cdsokpersonal.FieldByName('DEPARTMENT_CODE_NEW').asstring+
//*   '/'+cdsokpersonal.FieldByName('POST_CODE').asstring+'/'+cdsokpersonal.FieldByName('POST_CODE_NEW').asstring+'/'+
//*   cdsokpersonal.FieldByName('GOSUBMIT_CODE').asstring+'/'+cdsokpersonal.FieldByName('STATUS_CODE').asstring='1');
  if (HeadBranch_ ='09006') and (cdsokpersonal.active)         // 08.11.2012 �� ���� ��������-��������� ������ � ����
  then begin
//* showmessage('1)'+HeadBranch_+'/'+cdsokpersonal.FieldByName('DEPARTMENT_CODE').asstring+'/'+cdsokpersonal.FieldByName('DEPARTMENT_CODE_NEW').asstring+
//*   '/'+cdsokpersonal.FieldByName('POST_CODE').asstring+'/'+cdsokpersonal.FieldByName('POST_CODE_NEW').asstring+'/'+
//*   cdsokpersonal.FieldByName('GOSUBMIT_CODE').asstring+'/'+cdsokpersonal.FieldByName('STATUS_CODE').asstring='1');
//showmessage('AfterScroll_'+cdsokpersonal.FieldByName('DEPARTMENT_CODE').asstring);
    IF ((    (cdsokpersonal.FieldByName('DEPARTMENT_CODE').asstring<>cdsokpersonal.FieldByName('DEPARTMENT_CODE_NEW').asstring)
         or (cdsokpersonal.FieldByName('POST_CODE').asstring<>cdsokpersonal.FieldByName('POST_CODE_NEW').asstring)
       )
    and (cdsokpersonal.FieldByName('GOSUBMIT_CODE').asstring='33'))
    then begin
//* showmessage('2)'+HeadBranch_+'/'+cdsokpersonal.FieldByName('DEPARTMENT_CODE').asstring+'/'+cdsokpersonal.FieldByName('DEPARTMENT_CODE_NEW').asstring+
//*   '/'+cdsokpersonal.FieldByName('POST_CODE').asstring+'/'+cdsokpersonal.FieldByName('POST_CODE_NEW').asstring+'/'+
//*   cdsokpersonal.FieldByName('GOSUBMIT_CODE').asstring+'/'+cdsokpersonal.FieldByName('STATUS_CODE').asstring='1');

      if (cdsokpersonal.FieldByName('STATUS_CODE').asstring='1') // ����� ���������
      then begin
        actAppointNew.Enabled := true;
        actAppoint.Enabled := false;
      end else begin
        actAppointNew.Enabled := false;
        actAppoint.Enabled := true;
      end;

    end else begin

//      is_boss:=getsqlresultpar('select count(*) from SS_OK_NCI son'+
//        ' where son.ok_id=:p_1 and son.NCI_ID=:p_2',cdsokpersonal.FieldByName('POST_CODE').asstring,'79');
//    is_submit_needed_:=1; -- 13.02.2012 ��������� ������������� ��� ���� ����������
      is_boss :=1;
      
      if (is_boss>0)  // ������� ��������� �����������
      or (cdsokpersonal.FieldByName('STATUS_CODE').asstring='1') // ����� ���������
      then begin
        actAppointNew.Enabled := false;
        actAppoint.Enabled := false;
      end else begin
        actAppointNew.Enabled := true;
        actAppoint.Enabled := true;
      end;

    end;

  end;

end;

procedure TBOKFormSTAT.cdbgOK_PERSONALDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var perekras:integer;
begin
  perekras:=0;

  if (cdsokpersonal.FieldByName('PASS_DATE_END').AsString<>'') // ������� ������������ ��..
  then
  if (cdsokpersonal.FieldByName('PASS_DATE_END').AsDateTime < now)
  and ( strtoint(copy(cdsokpersonal.FieldByName('PASS_DATE_END').AsString,7,4))-
        strtoint(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,7,4))
        <44)    // ���� ��������� �������� ������ ���� 45 ����� ����������
  then begin
    perekras:=perekras+1;
  end;

  if (cdsokpersonal.FieldByName('REG_DATE_END').AsString<>'')
  then
  if (cdsokpersonal.FieldByName('REG_DATE_END').AsDateTime < now)
  then begin
    perekras:=perekras+1;
  end;

  if (cdsokpersonal.FieldByName('SROK_DATE').AsString<>'')
  then
  if (cdsokpersonal.FieldByName('SROK_DATE').AsDateTime < now+10)
  then begin
    perekras:=perekras+1;
  end;

  if perekras>0
  then
     if not (gdSelected in State) then
     begin
            cdbgOK_PERSONAL.Canvas.Font.Color := clOlive;
            cdbgOK_PERSONAL.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

end;

procedure TBOKFormSTAT.dsOKEducationDataChange(Sender: TObject; Field: TField);
begin

  if cdsOKEducation.FieldByName('education_end').AsString='1' // ��
  then begin

    if DBEdit85.Text<>'' then DBEdit85.Text := '';
    DBEdit85.Enabled:=false;
    DBEdit74.Enabled:=true;
  end else begin
    DBEdit74.Enabled:=false;
    DBEdit85.Enabled:=true;
  end;

end;

procedure TBOKFormSTAT.actObiektivkaAgroUzExecute(Sender: TObject);
begin
 //
 Obiektivka23('2','pril_03_v2.doc');
end;

procedure TBOKFormSTAT.BitBtn139Click(Sender: TObject);
var dbName:string;
//db:TextFile;
//FileHandle:Integer;
begin


      cdsOK_diplom.Close;
      with cdsOK_diplom.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOkeducation.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOkeducation.FieldByName('id').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOkeducation.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='2'; // 2-������
      end;

       LoadData(cdsOK_diplom, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3 and priznak=:p_4');

     if cdsOK_diplom.RecordCount=0
     then begin
       showmessage('��� ������');
     end else begin
       if not DirectoryExists(ROOT_DIR+'OK\TEMP') then
       begin
         CreateDir(ROOT_DIR+'OK\TEMP');
       end;

       cdsOK_diplom.First;
       dbName:=ROOT_DIR+'OK\TEMP\'+cdsOK_diplom.FieldByName('file_name').AsString;
//showmessage(dbName);
       TBlobField(cdsOK_diplom.FieldByName('photo')).SaveToFile(dbName);

       OpenDlFile.FileName:=dbName;
       if OpenDlFile.Execute then
       begin
         ShellExecute(0, 'open', PChar(dbName), '', '', SW_SHOW);
       end;
     end;

end;

procedure TBOKFormSTAT.BtnAddlFileClick(Sender: TObject);
var ss, ss1, s:string; // , id
k, i:Integer;
begin
    with TOpenDialog.Create(Self) do
     try
       if Execute then
       begin
         s:=FileName;
         k:=0;
         for i:=length(s) downto 1 do
         begin
          k:=k+1;
           if s[i]='\' then
           begin
            ss:=copy(s,length(s)-k+2,k-1);
            ss1:=ss;
            Break;
           end;
         end;

         if  (copy(FileName,Length(FileName)-3,4) <>'.pdf')
         and (copy(FileName,Length(FileName)-3,4) <>'.jpg')
         and (copy(FileName,Length(FileName)-3,4) <>'.JPG')
         then begin
           showmessage('��������� ���� ������� .pdf ��� .jpg � �� '+copy(FileName,Length(FileName)-3,4));
         end else begin
            EditFileName.Text:=FileName;

            cdsOK_diplom.Close;
            with cdsOK_diplom.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value := cdsOkeducation.FieldByName('branch').AsString;
                CreateParam(ftString,'p_2' ,ptInput);
                ParamByName('p_2').Value := cdsOkeducation.FieldByName('id').AsString;
                CreateParam(ftString,'p_3' ,ptInput);
                ParamByName('p_3').Value := cdsOkeducation.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='2'; // 2-������
            end;
            LoadData(cdsOK_diplom, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3  and priznak=:p_4' );

           if cdsOK_diplom.RecordCount=0
           then begin
             cdsOK_diplom.Insert;
           end else begin
             cdsOK_diplom.Edit;
           end;

           cdsOK_diplom.FieldByName('ok_id').Value:=cdsOkeducation.FieldByName('id').AsString;
           cdsOK_diplom.FieldByName('priznak').Value:='2';
           cdsOK_diplom.FieldByName('personal_code').Value:=cdsOkeducation.FieldByName('personal_code').AsString;
           cdsOK_diplom.FieldByName('FILE_NAME').Value:=ss1;
           cdsOK_diplom.FieldByName('branch').Value:=cdsOkeducation.FieldByName('branch').AsString;
           (cdsOK_diplom.FieldByName('photo') as TBlobField).LoadFromFile(FileName);

           cdsOK_diplom.post;
         end;

       end;
     finally
       Free;
     end;

  if cdsOK_diplom.Active
  then cdsOK_diplom.Refresh;

end;

procedure TBOKFormSTAT.cdsOK_diplomAfterOpen(DataSet: TDataSet);
begin
  If dsOKEducation.DataSet.Active Then
  Begin
    cdsOK_diplom.MasterSource    := dsOKEducation;
    cdsOK_diplom.IndexFieldNames := 'branch;personal_code;ok_id';
    cdsOK_diplom.MasterFields    := 'branch;personal_code;id';
  End;

end;

procedure TBOKFormSTAT.PageControl3Change(Sender: TObject);
begin
      cdsOK_diplom.Close;
      with cdsOK_diplom.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOkeducation.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOkeducation.FieldByName('id').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOkeducation.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='2'; // 2-������
      end;

       LoadData(cdsOK_diplom, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3 and priznak=:p_4');

end;

procedure TBOKFormSTAT.BitBtn154Click(Sender: TObject);
begin
  PageControl3Change(nil);

end;

procedure TBOKFormSTAT.Obiektivka23(type_,file_name: string);
var App:      OLEVariant;
//  i,j:      integer;
  vid_education_,Text_i, Text_iB: string;
  Text1a,Text2a,Text3a,Text4a,Text5a,Text6a,Text7a,Text8a,Text9a,Text10a: string;
  Text11a, Text12a, Text13a, Text16: string;
//  Text17,Text18,Text19,Text20,
  ErMes, Text21,Text22: string;
  texth3, sql_,where_pers, where_pers_a : string;
  file_name_,text11,TextDD,TextMM,TextYYYY :string;

//  V: Variant;

// col, nn,
 k,i :integer;

// NumFormat,  DateFormat,
//  StrFormat: String;
//  first_string : boolean;
//  prev0,prev2 : string;
//  prev1 : string;
    Save_Cursor:TCursor;

begin

//  showmessage(tobject(sender).ClassName);
  ErMes := '';

  if cdsOKPersonal.FieldByName('education_title_code').AsString =''
  then begin
    erMes := erMes+'� ������ ���������� �� ������� ������������ ����������� ����������!'+#13;
  end;

  if ErMes<>''
  then begin
    showmessage(ErMes);
    exit;
  end;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }


 TRY
    { Do some lengthy operation }

   if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
   then begin
     App := PrepareOle( file_name ,'Word.Application'
        );
     file_name_  := file_name;
   end else begin
     App := PrepareOle( file_name ,'Word.Application'
        );
     file_name_  := file_name;
   end;

//  App := CreateOleObject('Word.Application');
//App.visible:=true;
//  App.Documents.Add('"C:\NCI Bank\Ok\Templates\pril03.doc"');


//  App.Selection.HomeKey(6);
//  App.Selection.Find.ClearFormatting;

  If VarIsNull(App) Then
  begin
    showmessage('���������� ''Word'' �� ����� ������� ���� C:\NCI Bank\Ok\Templates\ '+file_name_ +#10#13+
           ' � �� ������ ���� '+GetCurrentDir_templates+'\'+file_name_+#10#13+
    '���������� ��������� ������� ����� �����.' );
    Exit;
  end;
//App.Visible:=true;
  try
    where_pers := ' WHERE branch=:p_1'+ // '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                  ' AND personal_code=:p_2'; //+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers_a := ' WHERE a.branch=:p_1'+ // ''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                    ' AND a.personal_code=:p_2'; //+cdsOKPersonal.FieldByName('personal_code').AsString;

    sql_:='select to_char(a.in_office_date,''yyyy'') column0, to_char(a.in_office_date,''dd'') column_day,'+
                         ' to_char(a.in_office_date,''mm'') column1,'+
//                         '  ESTABLISHED_POST column3,'+
        ' substr(OFFICE_NAME ||'' ''||ESTABLISHED_department ||'' ''||ESTABLISHED_POST,1,255) column3'+
                         ' FROM ok_period a '+
                         ' WHERE a.branch=:p_1'+
                    ' AND a.personal_code=:p_2'+
                         ' and a.in_office_date='+
                         ' (select max(in_office_date) from ok_period '+
                         ' WHERE branch=:p_3'+
                    ' AND personal_code=:p_4)';
    ErMes:='�� ������� �������� �������� � ������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);

    App.Selection.Find.Execute('<TEXTH1>', false, false, false, false, false,
           true, 1, false, cdsTempSource.FieldByName('column0').AsString, 2);

    App.Selection.Find.Execute('<TEXTH2>', false, false, false, false, false,
           true, 1, false, cdsTempSource.FieldByName('column_day').AsString +' '+ toMonthName(cdsTempSource.FieldByName('column1').AsString), 2);

(*
    sql_:='select level, d.department_name name_, d.department_code,'+
        ' d.high_dep_code from ss_ok_department d'+
        ' connect by d.department_code = prior  d.high_dep_code'+
//        ' start with d.department_code='+cdsOKPersonal.FieldByName('department_code').AsString;
        ' start with d.department_code=:p_1';
  try
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('department_code').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    While not cdsTempSource.Eof do
    Begin
      texth3:= cdsTempSource.FieldByName('name_').AsString+' '+texth3;
      cdsTempSource.next;
    End;
  except
      texth3:=' �� ������� � ������ ����������!';
  end;
    App.Selection.Find.Execute('<TEXTH4>', false, false, false, false, false,
           true, 1, false, cdsTempSource.FieldByName('column3').AsString, 2);
*)
    texth3:=cdsTempSource.FieldByName('column3').AsString;
    App.Selection.Find.Execute('<TEXTH3>', false, false, false, false, false,
           true, 1, false, texth3, 2);







// ��� �������� !!!!

    App.Selection.Find.Execute('<FAMILY1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('family').AsString, 2);

    App.Selection.Find.Execute('<NAME1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('First_Name').AsString, 2);

    App.Selection.Find.Execute('<PATRONYMIC1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('Patronymic').AsString, 2);

    try
      cdsOKPhoto.close;
      with cdsOKPhoto.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '1';
      end;
      LoadData(cdsOKPhoto, SQL_OKPhoto+where_pers + ' and (priznak is null or priznak=:p_3)');

      if not cdsOKPhoto.IsEmpty
      then begin
//        (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
  //      App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', 2,0 ,15,30);
        (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
        App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg',  true,true, 403,13);

         cdsOKPhoto.Close;
      end;
    except
    end;
//text1a

    DateTimeToString(TextDD, 'dd', cdsOKPersonal.FieldByName('birthday').AsDateTime);
    DateTimeToString(TextMM, 'mm', cdsOKPersonal.FieldByName('birthday').AsDateTime);
    DateTimeToString(TextYYYY, 'yyyy', cdsOKPersonal.FieldByName('birthday').AsDateTime);
//    Text1a := cdsOKPersonal.FieldByName('birthday').AsString;
    Text1a := TextDD+'.'+TextMM+'.'+TextYYYY;

    App.Selection.Find.Execute('<TEXT1A>', false, false, false, false, false,
           true, 1, false, Text1a, 2);

//DateTimeToString(var Result: string; const Format: string; DateTime: TDateTime);


//text2a
  text2a := '';
  sql_:='SELECT nationality_name '+
                         ' FROM ss_ok_nationality'+
                         ' where nationality_code=:p_1'+ //cdsOKPersonal.FieldByName('nationality_code').AsString+
                         ' and state_notes=:p_2'; // +#39+'A'+#39;
  ErMes:='�� ������� �������� �������� � ��������������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('nationality_code').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  LoadData(cdsTempSource,sql_, True);

  text2a := cdsTempSource.FieldByName('nationality_name').AsString;

  App.Selection.Find.Execute('<TEXT2A>', false, false, false, false, false,
           true, 1, false, text2a, 2);

//text3a
  sql_:='SELECT education_title_name '+
                         ' FROM ss_ok_education_title'+
                         ' where education_title_code=:p_1'+ //cdsOKPersonal.FieldByName('education_title_code').AsString+
                         ' and state_notes=:p_2'; // +#39+'A'+#39;
  try
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('education_title_code').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
    LoadData(cdsTempSource,sql_, True);
    Text3a:= cdsTempSource.fieldbyname('education_title_name').asstring;
  except
    Text3a:='';
  end;

  App.Selection.Find.Execute('<TEXT3A>', false, false, false, false, false,
           true, 1, false, text3a, 2);

//text4a
  if cdsOKPersonal.FieldByName('region_id').IsNull
  then begin
    text4a := cdsOKPersonal.FieldByName('birthplace').AsString;
  end else begin
    ErMes:='�� ������� �������� �������� � ����� ��������';
    sql_:='SELECT region_nam FROM s_region'+
                         ' where region_id=:p_1'; //'''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('region_id').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    text4a := cdsTempSource.FieldByName('region_nam').AsString;

    sql_:='SELECT distr_name FROM s_distr'+
                         ' where distr=:p_1'; //'''+cdsOKPersonal.FieldByName('distr').AsString+'''';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('distr').AsString;
      end;
    LoadData(cdsTempSource,sql_, True);
    text4a := text4a + ' '+cdsTempSource.FieldByName('distr_name').AsString;
  end;

    App.Selection.Find.Execute('<TEXT4A>', false, false, false, false, false,
           true, 1, false, text4a, 2);
//text5a
  ErMes:='�� ������� �������� �������� � ������';
  sql_:='select b.party_name'+
                ' from ok_party a, ss_ok_party b'+
                  where_pers_a +
                ' and a.party_code = b.party_code'+
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.party_date';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;

  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text5a = ''
    then Text5a:= cdsTempSource.fieldbyname('party_name').asstring
    else Text5a:= text5a+','+cdsTempSource.fieldbyname('party_name').asstring;
    cdsTempSource.next;
  End;

  if text5a='' then text5a:='���';
  App.Selection.Find.Execute('<TEXT5A>', false, false, false, false, false,
           true, 1, false, text5a, 2);

//text6a
//text7a
  text6a := '';
  text7a := '';

  if (HeadBranch_ ='00883') or (HeadBranch_ ='09006')
  or (HeadBranch_ ='00394') or (HeadBranch_ ='09004')
  then begin
  // �������� ����- ���� ����
    sql_:='select to_char(a.END_DATE)||'' �. ''||b.institution_name all_data0,'+
                ' a.profession_personal all_data1,'+
                ' a.vid_education_code'+
                ' from ok_education a, ss_ok_institution b'+
                  where_pers_a +
                ' and a.institution_code = b.institution_code'+
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.end_date';
  end else begin
    sql_:='select b.institution_name all_data0,'+
                ' a.profession_personal all_data1,'+
                ' a.vid_education_code'+
                ' from ok_education a, ss_ok_institution b'+
                  where_pers_a +
                ' and a.institution_code = b.institution_code'+
                ' and b.state_notes=:p_3'+ //#39+'A'+#39+
                ' order by a.end_date';
  end;
  ErMes:='�� ������� �������� �������� �� ������� ���������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
      end;
  LoadData(cdsTempSource,sql_, True);


  While not cdsTempSource.Eof do
  Begin
    if cdsTempSource.fieldbyname('vid_education_code').asstring=''
    then begin
      vid_education_:=' ';
    end else begin
      vid_education_:=getsqlresultpar('select vid_education_name from ss_ok_vid_education where vid_education_code=:p_1',
        cdsTempSource.fieldbyname('vid_education_code').asstring);
    end;

    if text6a = ''
    then Text6a:= cdsTempSource.fieldbyname('all_data0').asstring+vid_education_
    else Text6a:= text6a+', '+#13+cdsTempSource.fieldbyname('all_data0').asstring+vid_education_;
    if text7a = ''
    then Text7a:= cdsTempSource.fieldbyname('all_data1').asstring
    else Text7a:= text7a+', '+#13+cdsTempSource.fieldbyname('all_data1').asstring ;

    cdsTempSource.next;
  End;

  App.Selection.Find.Execute('<TEXT6A>', false, false, false, false, false,
           true, 1, false, text6a, 2);
  App.Selection.Find.Execute('<TEXT7A>', false, false, false, false, false,
           true, 1, false, text7a, 2);
////////////

  text16 := '���������� ���';
(*  text16a := '';
  text16b := '';
  text16c := '';
  text16d := '';
  text16e := '';
  text16f := '';
  text16g := '';
*)
  sql_:= 'select ok_service.get_staffname(a.staff_code) staff_show,'+
         ' ok_service.get_typeforcename(a.type_force_code) type_force_show, '+
         ' ok_service.get_categoryarmyname(a.CATEGORY_ARMY_CODE) CATEGORY_ARMY,'+
         ' a.SPECREG_NUMBER, a.NUMBER_VUS, b.fitness_army_type, a.NAME_ARMY_OFFICE,'+
         ' ok_service.get_armytype(a.army_code) army_type, '+
         ' ok_service.get_militaryrankname(a.military_rank_code) MILITARY_RANK, '+
         ' ok_service.get_armygroupname(a.army_group_code) ARMY_GROUP'+
                ' from ok_army a, ss_ok_fitness_army b'+
                 where_pers_a +
                ' and a.fitness_army_code= b.fitness_army_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource, sql_, True);

(*  Text16a := cdsTempSource.fieldbyname('staff_show').asstring ;
  text16b := cdsTempSource.fieldbyname('type_force_show').asstring ;

  Text16c := cdsTempSource.fieldbyname('CATEGORY_ARMY').asstring ;
  Text16d := cdsTempSource.fieldbyname('SPECREG_NUMBER').asstring ;
  Text16e := cdsTempSource.fieldbyname('NUMBER_VUS').asstring  ;
  Text16f := cdsTempSource.fieldbyname('fitness_army_type').asstring ;
  Text16g := cdsTempSource.fieldbyname('NAME_ARMY_OFFICE').asstring ;

  text16i := cdsTempSource.fieldbyname('army_type').asstring ;
  Text16j := cdsTempSource.fieldbyname('MILITARY_RANK').asstring  ;
  Text16h := cdsTempSource.fieldbyname('ARMY_GROUP').asstring ;
  Text16 :=  Text16j+' '+text16i; //  MILITARY_RANK   army_type
*)
  while not cdsTempSource.Eof
  do begin
    Text16 :=  cdsTempSource.fieldbyname('MILITARY_RANK').asstring+' '+
             cdsTempSource.fieldbyname('army_type').asstring;
    cdsTempSource.Next;
  end;

//text16
  // ������ �����, ��������� �����,
//ARMY_GROUP_CODE
//CATEGORY_ARMY_CODE
//MILITARY_RANK_CODE
//STAFF_CODE
//TYPE_FORCE_CODE

  if text16=''
  then begin
    text16 :='���������� ���';
  end;

  App.Selection.Find.Execute('<TEXT16>', false, false, false, false, false,
           true, 1, false, text16, 2);

////////////

//text8a
// ������ �������
  sql_:='select b.degree_name all_data'+
                ' from ok_degree a, ss_ok_degree b'+
                  where_pers_a +
                ' and a.degree_code= b.degree_code'+
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.degree_date';
  ErMes:='�� ������� �������� �������� �� ������ �������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text8a = ''
    then Text8a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text8a:= text8a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

//
  if text8a='' then text8a:='���';
  App.Selection.Find.Execute('<TEXT8A>', false, false, false, false, false,
           true, 1, false, text8a, 2);

//text9a
  text9a := ''; //
  ErMes:='�� ������� �������� �������� �� ������ ������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
      end;
  LoadData(cdsTempSource,'select b.academic_name all_data'+
                ' from ok_academic a,ss_ok_academic b '+
                  where_pers_a +
                ' and a.academic_code=b.academic_code'+
                ' and b.state_notes=:p_3'+ //#39+'A'+#39+
                ' order by a.academic_date', True);

  While not cdsTempSource.Eof do
  Begin
    if text9a = ''
    then Text9a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text9a:= text9a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  App.Selection.Find.Execute('<TEXT9A>', false, false, false, false, false,
           true, 1, false, text9a, 2);

//text10a
  text10a := '';
  ErMes:='�� ������� �������� �������� �� ����������� ������';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;

          CreateParam(ftString,'pp_3' ,ptInput);
          ParamByName('pp_3').Value := '%������%';
          CreateParam(ftString,'pp_4' ,ptInput);
          ParamByName('pp_4').Value := '%�����';

          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := 'A';
      end;
//  LoadData(cdsTempSource,'select b.language_name||'' ���� (''|| c.LEVEL_LANGUAGE_NAME ||'')'' all_data'+
  LoadData(cdsTempSource,'select b.language_name||'' ���� '' all_data'+
                ' from ok_language a, ss_ok_language b, ss_ok_level_language c'+
                  where_pers_a +
                ' and a.language_code= b.language_code'+
                ' and (upper(c.level_language_name) like :pp_3'+
                     ' or upper(c.level_language_name) like :pp_4)'+
                ' and a.level_code=c.level_language_code'+
                ' and c.state_notes=:p_3'+ //#39+'A'+#39+
                ' and b.state_notes=:p_4'+ //#39+'A'+#39+
                ' order by a.language_code', True);

  While not cdsTempSource.Eof do
  Begin
    if text10a = ''
    then Text10a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text10a:= text10a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text10a='' then text10a:='��������';
  App.Selection.Find.Execute('<TEXT10A>', false, false, false, false, false,
           true, 1, false, text10a, 2);

//text11a
  text11a := '';
  ErMes:='�� ������� �������� �������� � ���������� ��������';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,'select voyage_date||'' ''||voyage_land all_data'+
                ' from ok_voyage'+
                  where_pers +
                ' order by voyage_date', True);

  While not cdsTempSource.Eof do
  Begin
    if text11a = ''
    then Text11a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text11a:= text11a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text11a='' then text11a:='��������';

  App.Selection.Find.Execute('<TEXT11A>', false, false, false, false, false,
           true, 1, false, text11a, 2);

//text12a
  text12a := ''; // ��� ������ ok_premium

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,'select premium_name all_data'+
                ' from ok_premium'+
                  where_pers +
                ' order by premium_date', True);

  While not cdsTempSource.Eof do
  Begin
    if text12a = ''
    then Text12a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text12a:= text12a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text12a='' then text12a:='���';

  App.Selection.Find.Execute('<TEXT12A>', false, false, false, false, false,
           true, 1, false, text12a, 2);

//text13a
  text13a := '';

  ErMes:='�� ������� �������� �������� �� ��������';
  sql_:='select a.election_date_begin, a.election_date_end,b.ELECTION_name all_data'+
        ' from ok_election a, ss_ok_election b '+
        where_pers+
                ' and a.election_code= b.election_code'+
                ' and b.state_notes='+#39+'A'+#39+
        ' order by a.election_date_begin';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if cdsTempSource.fieldbyname('election_date_end').asstring=''
    then begin
      if text13a = ''
      then Text13a:=
        cdsTempSource.fieldbyname('election_date_begin').asstring+' �. -  �.�. - '+cdsTempSource.fieldbyname('all_data').asstring
      else Text13a:= text13a+','+
        cdsTempSource.fieldbyname('election_date_begin').asstring+' �. -  �.�. - '+cdsTempSource.fieldbyname('all_data').asstring;
    end else begin
      if text13a = ''
      then Text13a:=
        cdsTempSource.fieldbyname('election_date_begin').asstring+' �. - '+
        cdsTempSource.fieldbyname('election_date_end').asstring+' �. - '+cdsTempSource.fieldbyname('all_data').asstring
      else Text13a:= text13a+','+
        cdsTempSource.fieldbyname('election_date_begin').asstring+' �. - '+
        cdsTempSource.fieldbyname('election_date_end').asstring+' �. - '+cdsTempSource.fieldbyname('all_data').asstring
    end;

    cdsTempSource.next;

  End;

  if text13a='' then text13a:='�����������';
  App.Selection.Find.Execute('<TEXT13A>', false, false, false, false, false,
           true, 1, false, text13a, 2);

//text14a
// ����� �����������: (�����)
//  App.Selection.Find.Execute('<TEXT14A>', false, false, false, false, false,
//           true, 1, false, DateToStr(Date), 2);


  text_i := '';
  text_iB := '';
  ErMes:='�������� � ������ (������ ��������)';

  if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
  then begin
// �������-����� ���� ���������� ����-�����-���
    if type_='2'
    then begin
      sql_:='select to_char(IN_OFFICE_DATE,''dd.mm.yyyy'') IN_OFFICE,'+
        'to_char(OUT_OFFICE_DATE,''dd.mm.yyyy'') OUT_OFFICE,'+
        ' substr(OFFICE_NAME ||'' ''||ESTABLISHED_department ||'' ''||ESTABLISHED_POST,1,255) column2'+
        ' FROM ok_period'+
        where_pers+' order by in_office_date';
    end;
    if type_='3'
    then begin
      sql_:='select to_char(IN_OFFICE_DATE,''mm.yyyy'') IN_OFFICE,'+
        'to_char(OUT_OFFICE_DATE,''mm.yyyy'') OUT_OFFICE,'+
        ' substr(OFFICE_NAME ||'' ''||ESTABLISHED_department ||'' ''||ESTABLISHED_POST,1,255) column2'+
        ' FROM ok_period'+
        where_pers+' order by in_office_date';
    end;
  end else begin
    if type_='2'
    then begin
      sql_:='select to_char(IN_OFFICE_DATE,''yyyy'') IN_OFFICE,'+
        'to_char(OUT_OFFICE_DATE,''yyyy'') OUT_OFFICE,'+
        ' substr(OFFICE_NAME ||'' ''||ESTABLISHED_department ||'' ''||ESTABLISHED_POST,1,255) column2'+
        ' FROM ok_period'+
        where_pers+' order by in_office_date';
    end;
    if type_='3'
    then begin
      sql_:='select to_char(IN_OFFICE_DATE,''mm.yyyy'') IN_OFFICE,'+
        'to_char(OUT_OFFICE_DATE,''mm.yyyy'') OUT_OFFICE,'+
        ' substr(OFFICE_NAME ||'' ''||ESTABLISHED_department ||'' ''||ESTABLISHED_POST,1,255) column2'+
        ' FROM ok_period'+
        where_pers+' order by in_office_date';
    end;
  end;
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

//  row:=1;
//  sql_ := 'App.Selection.GoTo(2, 1, 4, '''');';

(*
  if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
  then begin
    App.Selection.GoTo(2, 1, 3, '');
  end else begin
    App.Selection.GoTo(2, 1, 3, '');
  end;
*)
//  App.Selection.SelectRow;
  App.Selection.Find.Execute('xxxx-xxxx ��. - <xxxxxxx>',
        EmptyParam, true,
                          EmptyParam, EmptyParam, EmptyParam,
                          EmptyParam, EmptyParam, EmptyParam,
                          EmptyParam, EmptyParam, EmptyParam,
                          EmptyParam, EmptyParam, EmptyParam);

  App.Selection.Copy;



  While not cdsTempSource.eOF do
    begin

      if cdsTempSource.Fields[1].AsString <> ''
      then begin
        text21 := cdsTempSource.Fields[0].AsString+'-'+cdsTempSource.Fields[1].AsString+ ' ��. - ';
        text22 := cdsTempSource.Fields[2].AsString;
//        App.Selection.Find.Execute('xx.xxxx-xx.xxxx ��. - <xxxxxxx>', false, false, false, false, false,
//                                         true, 1, false, text22+text21, 1);

        App.Selection.typetext(text21+text22+#10);

//        App.Selection.Paste;

      end else begin
        text21 := cdsTempSource.Fields[0].AsString+' �. -  �.�.  - ';
        text22 := cdsTempSource.Fields[2].AsString;
//        App.Selection.Find.Execute('xx.xxxx-xx.xxxx ��. - <xxxx'+#13+'xxx>', false, false, false, false, false,
//                                         true, 1, false, text22+text21, 1);

//        App.Selection.Paste;
        App.Selection.typetext(text21 +text22+#10);

      end;

      cdsTempSource.next;
    end;


// �� ���� ������� ���������� word �������� � ������� ������

//  App.Visible:=true;

//  V.Visible:=true;


//   if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or
   if (1=1)
   then begin
//text11
  text11 := '';
  k:=11;
  sql_:='select b.relation_name,a.RELATION_FAMILY ||'' ''||a.RELATION_NAME ||'' ''||'+
                ' a.RELATION_PATRONYMIC,a.RELATION_BIRTHDAY||'' ���, ''||a.RELATION_BIRTHPLACE,'+
                ' a.RELATION_OFFICE||'' ''||a.RELATION_POST ,'+
                ' a.RELATION_HOME_ADDRESS'+
                ' from ok_relation a, ss_ok_relation b'+
                  where_pers_a +
                ' and a.relation_code=b.relation_code'+
                ' order by a.relation_code';
      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKPersonal.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKPersonal.FieldByName('personal_code').AsString;
      end;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 4
    do begin
      Text11:= cdsTempSource.fields[i].asstring;
//            '|'+cdsTempSource.fieldbyname('rabota').asstring+
//            '|'+cdsTempSource.fieldbyname('RELATION_HOME_ADDRESS').asstring;
      App.Selection.Find.Execute('<TEXT11'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text11, 2);
      inc(k);
    end;
    cdsTempSource.next;

  End;

  for i:= k to 114
  do begin
      App.Selection.Find.Execute('<TEXT11'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;
//text11:=copy(text11,1,255);
//showmessage('text11 '+text11);

   end;

   App.visible:=true;
   App.ActiveDocument.SaveAs('"C:\NCI Bank\Ok\Templates\'+
            cdsOKPersonal.FieldByName('family').AsString +' '+
            cdsOKPersonal.FieldByName('First_Name').AsString+' '+
            cdsOKPersonal.FieldByName('Patronymic').AsString+
        '.doc"');

 except
//  App.ActiveDocument.SaveAs('"C:\NCI Bank\Ok\Templates\temp.doc"');
  App.Application.Quit(false); // ����� �� ����� ������ ��� ����������
  showmessage(ermes+#13+sql_);
//  App.Application.Quit(true); // ����� �� ����� � �����������
//  V.Quit(false); // ����� �� ������� ������ ��� ����������
   raise;
 end;

  App := unassigned;
//  V := unassigned;
//        App.Selection.EndKey(6);
//    App.ActiveDocument.Range.InsertAfter('one' +#9+ 'two' +#9+ 'three'+#10);
//    App.ActiveDocument.Range.ConvertToTable(Separator:=Chr(9), NumRows:=1, NumColumns:=3);

 FINALLY
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.bbSaveIIASClick(Sender: TObject);
begin
// �������� ����� �� �������� ����
  IIAS_TabSheet_Check;
end;

procedure TBOKFormSTAT.IIAS_TabSheet_Check;
var z: integer;
 sql_,ErMessage: string;
 QuantityPost_ , QuantityPostReal_ : integer;
 text_f : TextFile;
begin

  if not (cdsOKPersonal.State in dseditmodes)
  then begin
    cdsOKPersonal.edit;
  end;

  ErMessage:='';

  if  ( cdsOKPersonal.FieldByName('spec_ikki').AsString='')
  then begin
    ErMessage := ErMessage+' "* ������� ������ �������������" ';
  end else begin

  end;

  if  ( cdsOKPersonal.FieldByName('nationality_code').AsString='')
  then begin
    ErMessage := ErMessage+' " * ��������������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('FAMILY').AsString='')
  then begin
    ErMessage := ErMessage+' " * �������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('FIRST_NAME').AsString='')
  then begin
    ErMessage := ErMessage+' " * ���" ';
  end;



  if  ( cdsOKPersonal.FieldByName('cod_distr_uvd').AsString='')
  then begin
    ErMessage := ErMessage+' " * ��� ������, �������������� ��� �������� ����� �������" ';
  end;

    sql_ := 'select count(id) from ok_personal where branch=:p_1'+ //cdsOKPERSONAL.FieldByName('branch').AsString+
        ' and tabno=:p_2'+ //cdsOKPERSONAL.FieldByName('tabno').AsString+
        ' and personal_code<>:p_3'; //+cdsOKPERSONAL.FieldByName('personal_code').AsString;
    try
      z := getSQLresultpar(sql_,cdsOKPERSONAL.FieldByName('branch').AsString,
          cdsOKPERSONAL.FieldByName('tabno').AsString,
          cdsOKPERSONAL.FieldByName('personal_code').AsString
      );
      if (z<>0)
      then begin
        ErMessage := ErMessage+#13+#13+'��������� ����� '+cdsOKPERSONAL.FieldByName('tabno').AsString+' ��� ������������!'+#13+' �������� ��������� ����� � ��������� ������.';
//        Showmessage(ErMessage);
//        exit;
      end;
    except
      showmessage('��� ����� ������ ���������� ��������� � ����� "�������" � ������� ������ "�����". ');
      cdsOKPERSONAL.cancel;
      exit;
    end;

// ������ ������� ������ 4-������
    if (OldStatus<>'4') and (cdsOKPERSONAL.FieldByName('status_code').AsString='4')
    then begin
        ErMessage := ErMessage+#13+#13+'����� ��������� ������ ���������� � ��������� "������" ����������� ������ "����������".';
//        Showmessage(ErMessage);
//      exit;
    end;

  if (HeadBranch_='09006') and
    (cdsOKPersonal.FieldByName('passport_type_code').AsInteger <> 1)
  then begin
    cdsOKPersonal.FieldByName('passport_type_code').AsInteger := 1;
  end;

  cdsOKPERSONAL.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString :=cdsOKPERSONAL.FieldByName('cod_obl_live').AsString ;
  cdsOKPERSONAL.FieldByName('HOME_ADDRESSFACT_DISTR').AsString :=    cdsOKPERSONAL.FieldByName('cod_distr_live').AsString ;
// �������� ����� �� �������� ����
  if (cdsOKPERSONAL.FieldByName('status_code').AsString<>'2')
  then begin
//    cdsOKPERSONAL.FieldByName('special_code').AsString:='';
  end else begin
    QuantityPost_     :=-1;
    QuantityPostReal_ :=-1;

    try
    sql_ :=  'select ok_service.get_QuantityPost(:p_1,:p_2,:p_3,:p_4) from dual'   ;
    QuantityPost_ := GetSQLResultpar(sql_,
      cdsOKPERSONAL.FieldByName('branch').AsString ,
      cdsOKPERSONAL.FieldByName('department_code').AsString ,
      cdsOKPERSONAL.FieldByName('post_code').AsString ,
      cdsOKPERSONAL.FieldByName('special_code').AsString
    );

    sql_ := 'select ok_service.get_QuantityPostReal(:p_1,:p_2,:p_3,:p_4) from dual'   ;

    QuantityPostReal_ := GetSQLResultpar(sql_,
      cdsOKPERSONAL.FieldByName('branch').AsString ,
      cdsOKPERSONAL.FieldByName('department_code').AsString ,
      cdsOKPERSONAL.FieldByName('post_code').AsString ,
      cdsOKPERSONAL.FieldByName('special_code').AsString
    );

    except on e:exception
      do begin
        ErMessage:= ErMessage+' ��������� ������������� �� �������. �������� ��������!'+#13+
        sql_+#13+e.message;
      end;
    end;

    if QuantityPost_ =-1 then
      ErMessage:= ErMessage+' ��������� ������������� �� �������. �������� ��������!';

    if (QuantityPostReal_ >=QuantityPost_)
    and (OldSpecial<>cdsOKPERSONAL.FieldByName('special_code').AsString)
    then
      ErMessage := ErMessage+ ' � ������� ���������� ������� '+inttostr(QuantityPost_)+
        ' ������� ���� �� ��������� �������������. ���������� ��������� '+
          inttostr(QuantityPostReal_)+' �����������. �������� ��������!';

  end;

  if  ( cdsOKPersonal.FieldByName('Education_Title_CODE').AsString='')
  then begin
    ErMessage := ErMessage+' "* �����������  ����������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('bank_spec').AsString='')
  then begin
    ErMessage := ErMessage+' "������� ���������� ������������� *" ';
  end;


  if  ( cdsOKPersonal.FieldByName('is_boss').AsString='')
  then begin
    ErMessage := ErMessage+' "������ � ����������� ������ *" ';
  end;

  if  ( cdsOKPersonal.FieldByName('COD_STR_SITIZENT').AsString='')
  then begin
    ErMessage := ErMessage+' "�����������" ';
  end else begin
    if getsqlresultpar('select count(*) from s_str where code_str=:p_1 and act=:p_2',cdsOKPersonal.FieldByName('COD_STR_SITIZENT').AsString,'A')=0
    then begin
      ErMessage := ErMessage+' " * ������ ����������� '+cdsOKPersonal.FieldByName('COD_STR_SITIZENT').AsString+' ��� � �����������" ';
    end;
    if  ( cdsOKPersonal.FieldByName('COD_STR_SITIZENT').AsString='860')
    then begin
      if  ( cdsOKPersonal.FieldByName('cod_distr_uvd').AsString='')
      then  ErMessage := ErMessage+' "* ��� ������, �������������� ��� �������� ����� �������" ';
    end else begin
      if  ( cdsOKPersonal.FieldByName('cod_distr_prim').AsString='')
      then  ErMessage := ErMessage+' "* ���������� � ��� ������, �������������� ��� �������� ����� �������" ';
    end;
  end;


  if  ( cdsOKPersonal.FieldByName('PASS_DATE').AsString='')
  then begin
    ErMessage := ErMessage+' "���� ��������� ��������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('cod_str_birth').AsString='')
  then begin
    ErMessage := ErMessage+' "������ ��������" ';
  end else begin
    if getsqlresultpar('select count(*) from s_str where code_str=:p_1 and act=:p_2',cdsOKPersonal.FieldByName('cod_str_birth').AsString,'A')=0
    then begin
      ErMessage := ErMessage+' " * ������ �������� '+cdsOKPersonal.FieldByName('cod_str_birth').AsString+' ��� � �����������" ';
    end;
  end;

  if (cdsOKPersonal.FieldByName('cod_str_birth').AsString='860')
  then begin
    if ( cdsOKPersonal.FieldByName('region_id').AsString='')
    Then ErMessage := ErMessage+' "����� �������� ���������� (�������)" ';
    If ( cdsOKPersonal.FieldByName('distr').AsString=''    )
    Then ErMessage := ErMessage+' "����� �������� ���������� (�����/�����)" ';
  end else begin
    if ( cdsOKPersonal.FieldByName('cod_obl_prim').AsString='')
    Then ErMessage := ErMessage+' "����� �������� ���������� (�������-����������)" ';
    If ( cdsOKPersonal.FieldByName('cod_place_birth_prim').AsString=''    )
    Then ErMessage := ErMessage+' "����� �������� ���������� (�����/�����-����������)" ';
  end;

  if  ( cdsOKPersonal.FieldByName('cod_str_live').AsString='')
  then begin
    ErMessage := ErMessage+' " * ������ ����������" ';
  end else begin
    if getsqlresultpar('select count(*) from s_str where code_str=:p_1 and act=:p_2',cdsOKPersonal.FieldByName('cod_str_live').AsString,'A')=0
    then begin
      ErMessage := ErMessage+' " * ������ ���������� '+cdsOKPersonal.FieldByName('cod_str_live').AsString+' ��� � �����������" ';
    end;
  end;

  if (cdsOKPersonal.FieldByName('cod_str_live').AsString='860')
  then begin
    if ( cdsOKPersonal.FieldByName('cod_obl_live').AsString='')
    Then ErMessage := ErMessage+' "����� ���������� ���������� (�������)" ';
    If ( cdsOKPersonal.FieldByName('cod_distr_live').AsString=''    )
    Then ErMessage := ErMessage+' "����� ���������� ���������� (�����/�����)" ';
  end else begin
    if ( cdsOKPersonal.FieldByName('cod_obl_live_prim').AsString='')
    Then ErMessage := ErMessage+' "����� ���������� ���������� (�������-����������)" ';
    If ( cdsOKPersonal.FieldByName('cod_distr_live_prim').AsString=''    )
    Then ErMessage := ErMessage+' "����� ���������� ���������� (�����/�����-����������)" ';
  end;

  if  ( cdsOKPersonal.FieldByName('check_kfs').AsString='')
  then begin
    ErMessage := ErMessage+' "������ ������������ ������� *" ';
  end;

  if (cdsokpersonal.fieldbyname('gender_code').asstring='1')
  and (not cdsokpersonal.fieldbyname('maiden_family').IsNull)
  then begin
    ErMessage := ErMessage+' "������ ������ ������� ������� - �� ����� ��� �������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('region_id').AsString='')
  and ( cdsOKPersonal.FieldByName('cod_obl_prim').AsString='')
  then begin
    ErMessage := ErMessage+' "������� �������� ��� ����������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('distr').AsString='')
  and ( cdsOKPersonal.FieldByName('cod_place_birth_prim').AsString='')
  then begin
    ErMessage := ErMessage+' "�����/����� �������� ��� ����������" ';
  end;

    if cdsOKPERSONAL.FieldByName('nps_id').AsString <> ''
    then begin
      sql_ := 'select count(id) from ok_personal'+
        ' where nps_id=:p_1'+ //cdsOKPERSONAL.FieldByName('nps_id').AsString+
        ' and personal_code<>:p_2'; //+cdsOKPERSONAL.FieldByName('personal_code').AsString;
      try
        z:=getSQLresultpar(sql_,cdsOKPERSONAL.FieldByName('nps_id').AsString,
                cdsOKPERSONAL.FieldByName('personal_code').AsString
        );
        if (z<>0)
        then begin
          ErMessage:=ErMessage+#13+#13+'���������� �� '+cdsOKPERSONAL.FieldByName('nps_id').AsString+' ��� ������������!'+#13+' �������� ���������� �� � ��������� ������.';
//          Showmessage(ErMessage);
//          exit;
        end;
      except
        showmessage(sql_);
        exit;
      end;



    end;

    z := length(cdsOKPERSONAL.FieldByName('nps_id').AsString);
    if (z<>14) and (z<>0)
    then begin
        ErMessage:=ErMessage+#13+#13+'���� ���������� �� ������ ��������� 14 ����'+#13+
          '�� ����� ��='+cdsOKPERSONAL.FieldByName('nps_id').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
    end;

    if  ( cdsOKPersonal.FieldByName('nps_id').AsString='')
    then begin
      ErMessage := ErMessage+' "���������� �� *" ';
    end;

    if cdsOKPERSONAL.FieldByName('cod_str_sitizent').asstring='860'
    then begin
      try
        strtoint64(cdsOKPERSONAL.FieldByName('nps_id').AsString);
      except
        ErMessage:=ErMessage+#13+#13+'���� ���������� �� ��� ���������� ������ ���� 14 ����'+#13+
          '�� ����� ��='+cdsOKPERSONAL.FieldByName('nps_id').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
      end;
    end;

    z := length(cdsOKPERSONAL.FieldByName('inn').AsString);
    if (z<>9) and (z<>0)
    then begin
        ErMessage:=ErMessage+#13+#13+'���� ��� ������ ��������� 9 ����'+#13+
          '�� ����� ���='+cdsOKPERSONAL.FieldByName('inn').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
    end;

    if  ( cdsOKPersonal.FieldByName('inn').AsString='')
    then begin
      ErMessage := ErMessage+' "���" ';
    end;



// END �������� ����� �� �������� ����
    if ErMessage <> '' then
  begin
    ShowMessage( ErMessage);
////
    if HeadBranch_='09006'
    then begin
      If not DirectoryExists('C:\NCI Bank\') Then ForceDirectories('C:\NCI Bank\');
      If not DirectoryExists('C:\NCI Bank\Ok\') Then ForceDirectories('C:\NCI Bank\Ok\');
      If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');
      try
        System.AssignFile(text_f,'C:\NCI Bank\OK\Temp\err_ok2.txt');
        System.Rewrite(text_f);

        Try
          System.Writeln(text_f,ErMessage);
        Finally
          System.CloseFile(text_f);
        End;
      except
        showmessage('�� ������� ��������� ������ � ���� "C:\NCI Bank\OK\Temp\err_ok2.txt"');
        raise;
      end;

      try
        WinExec('notepad C:\NCI Bank\OK\Temp\err_ok2.txt', SW_MAXIMIZE);
      except
        showmessage('�� ������� ������� � �������� "notepad C:\NCI Bank\OK\Temp\err_ok2.txt"');
      end;
    end;
////
    exit;
  end;

   cdsOKPersonal.Post;



end;

procedure TBOKFormSTAT.bbSaveFormClick(Sender: TObject);
begin
// �������� ����� �� �������� Form
  Form_TabSheet_Check;
end;

procedure TBOKFormSTAT.Form_TabSheet_Check;
var z: integer;
 sql_,ErMessage: string;
 QuantityPost_ , QuantityPostReal_ : integer;
 text_f : TextFile;
    raznica:double;
begin

  if not (cdsOKPersonal.State in dseditmodes)
  then begin
    cdsOKPersonal.edit;
  end;

  ErMessage:='';

        if cdsOKPersonal.FieldByName('TRUD_SOGL').AsString=''
        then ErMessage := ErMessage+' "�� ��������� ����������" ';

        if cdsOKPersonal.FieldByName('Reg_Type_code').AsString=''
        then ErMessage := ErMessage+' "��� ��������" ';

        if cdsOKPersonal.FieldByName('PASS_DATE').AsString=''
        then ErMessage := ErMessage+' "���� ������ ��������" ';

        if cdsOKPersonal.FieldByName('PASS_NUM').AsString=''
        then ErMessage := ErMessage+' "����� ��������" ';

        if cdsOKPersonal.FieldByName('PASS_SERIYA').AsString=''
        then ErMessage := ErMessage+' "����� ��������" ';

        if cdsOKPersonal.FieldByName('profmember').AsString=''
        then ErMessage := ErMessage+' "��������" ';

  if  ( cdsOKPersonal.FieldByName('gender_code').AsString='')
  then begin
    ErMessage := ErMessage+' " * ���" ';
  end;

  if  ( cdsOKPersonal.FieldByName('nationality_code').AsString='')
  then begin
    ErMessage := ErMessage+' " * ��������������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('family_status_code').AsString='')
  then begin
    ErMessage := ErMessage+' " * �������� ���������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('FAMILY').AsString='')
  then begin
    ErMessage := ErMessage+' " * �������" ';
  end;

  if  ( cdsOKPersonal.FieldByName('FIRST_NAME').AsString='')
  then begin
    ErMessage := ErMessage+' " * ���" ';
  end;

    sql_ := 'select count(id) from ok_personal where branch=:p_1'+ //cdsOKPERSONAL.FieldByName('branch').AsString+
        ' and tabno=:p_2'+ //cdsOKPERSONAL.FieldByName('tabno').AsString+
        ' and personal_code<>:p_3'; //+cdsOKPERSONAL.FieldByName('personal_code').AsString;
    try
      z := getSQLresultpar(sql_,cdsOKPERSONAL.FieldByName('branch').AsString,
          cdsOKPERSONAL.FieldByName('tabno').AsString,
          cdsOKPERSONAL.FieldByName('personal_code').AsString
      );
      if (z<>0)
      then begin
        ErMessage := ErMessage+#13+#13+'��������� ����� '+cdsOKPERSONAL.FieldByName('tabno').AsString+' ��� ������������!'+#13+' �������� ��������� ����� � ��������� ������.';
//        Showmessage(ErMessage);
//        exit;
      end;
    except
      showmessage('��� ����� ������ ���������� ��������� � ����� "�������" � ������� ������ "�����". ');
      cdsOKPERSONAL.cancel;
      exit;
    end;

// ������ ������� ������ 4-������
    if (OldStatus<>'4') and (cdsOKPERSONAL.FieldByName('status_code').AsString='4')
    then begin
        ErMessage := ErMessage+#13+#13+'����� ��������� ������ ���������� � ��������� "������" ����������� ������ "����������".';
//        Showmessage(ErMessage);
//      exit;
    end;

    if cdsOKPERSONAL.FieldByName('cod_str_sitizent').asstring='860'
    then begin
      try
        strtoint64(cdsOKPERSONAL.FieldByName('nps_id').AsString);
      except
        ErMessage:=ErMessage+#13+#13+'���� ���������� �� ��� ���������� ������ ���� 14 ����'+#13+
          '�� ����� ��='+cdsOKPERSONAL.FieldByName('nps_id').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
      end;
    end;
    
    if cdsOKPERSONAL.FieldByName('nps_id').AsString <> ''
    then begin
      sql_ := 'select count(id) from ok_personal'+
        ' where nps_id=:p_1'+ //cdsOKPERSONAL.FieldByName('nps_id').AsString+
        ' and personal_code<>:p_2'; //+cdsOKPERSONAL.FieldByName('personal_code').AsString;
      try
        z:=getSQLresultpar(sql_,cdsOKPERSONAL.FieldByName('nps_id').AsString,
                cdsOKPERSONAL.FieldByName('personal_code').AsString
        );
        if (z<>0)
        then begin
          ErMessage:=ErMessage+#13+#13+'���������� �� '+cdsOKPERSONAL.FieldByName('nps_id').AsString+' ��� ������������!'+#13+' �������� ���������� �� � ��������� ������.';
//          Showmessage(ErMessage);
//          exit;
        end;
      except
        showmessage(sql_);
        exit;
      end;


      z := length(cdsOKPERSONAL.FieldByName('inn').AsString);
      if (z<>9) //and (z<>0)
      then begin
        ErMessage:=ErMessage+#13+#13+'���� ��� ������ ��������� 9 ����'+#13+
          '�� ����� ���='+cdsOKPERSONAL.FieldByName('inn').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
//        Showmessage(ErMessage);
//        exit;
      end;

      z := length(cdsOKPERSONAL.FieldByName('nps_id').AsString);
      if (z<>14) //and (z<>0)
      then begin
        ErMessage:=ErMessage+#13+#13+'���� ���������� �� ������ ��������� 14 ����'+#13+
          '�� ����� ��='+cdsOKPERSONAL.FieldByName('nps_id').AsString+#13+
          '������ '+IntToStr(z)+' ��������';
//        Showmessage(ErMessage);
//        exit;
      end;
    end;

//  if (HeadBranch_='09006')
//  then begin
//    if  ( cdsOKPersonal.FieldByName('PASS_REG').AsString='')
//    then begin �� ����� �� ����� - ������))
//      ErMessage := ErMessage+' " * ����� �����������" ';
//    end;
//  end;

  if (HeadBranch_='09006') and
      (cdsOKPersonal.FieldByName('passport_type_code').AsString <> '1')
  then begin
    cdsOKPersonal.FieldByName('passport_type_code').AsInteger := 1;
  end;

  cdsOKPERSONAL.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString :=cdsOKPERSONAL.FieldByName('cod_obl_live').AsString ;
  cdsOKPERSONAL.FieldByName('HOME_ADDRESSFACT_DISTR').AsString :=    cdsOKPERSONAL.FieldByName('cod_distr_live').AsString ;
  if  ( cdsOKPersonal.FieldByName('reg_type_code').AsString='2')
  and (   cdsOKPersonal.FieldByName('REG_DATE_END').AsString='')
  then begin
    ErMessage := ErMessage+' "������� * ���� ��������� ��������" ';
  end;

  if (cdsOKPERSONAL.FieldByName('status_code').AsString<>'2')
  then begin
//    cdsOKPERSONAL.FieldByName('special_code').AsString:='';
  end else begin
    QuantityPost_     :=-1;
    QuantityPostReal_ :=-1;

    try
    sql_ :=  'select ok_service.get_QuantityPost(:p_1,:p_2,:p_3,:p_4) from dual'   ;
    QuantityPost_ := GetSQLResultpar(sql_,
      cdsOKPERSONAL.FieldByName('branch').AsString ,
      cdsOKPERSONAL.FieldByName('department_code').AsString ,
      cdsOKPERSONAL.FieldByName('post_code').AsString ,
      cdsOKPERSONAL.FieldByName('special_code').AsString
    );

    sql_ := 'select ok_service.get_QuantityPostReal(:p_1,:p_2,:p_3,:p_4) from dual'   ;

    QuantityPostReal_ := GetSQLResultpar(sql_,
      cdsOKPERSONAL.FieldByName('branch').AsString ,
      cdsOKPERSONAL.FieldByName('department_code').AsString ,
      cdsOKPERSONAL.FieldByName('post_code').AsString ,
      cdsOKPERSONAL.FieldByName('special_code').AsString
    );

    except on e:exception
      do begin
        ErMessage:= ErMessage+' ��������� ������������� �� �������. �������� ��������!'+#13+
        sql_+#13+e.message;
      end;
    end;

    if QuantityPost_ =-1 then
      ErMessage:= ErMessage+' ��������� ������������� �� �������. �������� ��������!';

    if (QuantityPostReal_ >=QuantityPost_)
    and (OldSpecial<>cdsOKPERSONAL.FieldByName('special_code').AsString)
    then
      ErMessage := ErMessage+'� ������� ���������� ������� '+inttostr(QuantityPost_)+
        ' ������� ���� �� ��������� �������������. ���������� ��������� '+
          inttostr(QuantityPostReal_)+' �����������. �������� ��������!';

  end;

      if (headbranch_='09006')
      then begin
        if cdsOKPersonal.FieldByName('telefon').AsString=''
        then ErMessage := ErMessage+' "�������(���������� ���������� ���� ���)" ';
        try
          strtoint64(cdsOKPersonal.FieldByName('telefon').AsString);
        except
          ErMessage := ErMessage+' "������� '+cdsOKPersonal.FieldByName('telefon').AsString+' ������ ���� ������ �� ���� ��� ����" ';
        end;

        if length(cdsOKPersonal.FieldByName('telefon').AsString)<>11
        then ErMessage := ErMessage+' "� �������� ������ ���� ������ 11 ���� � ���� �����" ';
        if (cdsOKPersonal.fieldbyname('regplace_code').asstring='')
        and (cdsOKPersonal.fieldbyname('PASS_REG').asstring='')
        then ErMessage := ErMessage+' "������� * *����� ����������� (�������) �� ����������� ��� ����������" ';

      end;

          if  ( cdsOKPersonal.FieldByName('HOME_ADDRESS_REGION_ID').AsString='')
          and  ( cdsOKPersonal.FieldByName('HOME_ADDRESS_DISTR').AsString='')
          and  ( cdsOKPersonal.FieldByName('Home_Address').AsString='')
          then begin
//            ErMessage := ErMessage+' "��� ��������- �����,���,�����" ';
            ErMessage := ErMessage+' "'+lbGdePropisan2.caption+' '+lbGdePropisan2_.caption+'- �����,���,�����" ';
          end;

    if  ( cdsOKPersonal.FieldByName('Education_Title_CODE').AsString='')
    then begin
      ErMessage := ErMessage+' "����������� ���������� (������������)" ';
    end else begin
      z:=getsqlresultpar('select count(*) from s_obraz so ,ss_ok_nci son where son.nci_id=:p_1 and so.OBR_ID=son.s_id and son.ok_id=:p_2',
               '74',cdsOKPersonal.FieldByName('Education_Title_CODE').AsString
        );
      if z=0
      then ErMessage := ErMessage+' "�������� ������������ ������ ��������������� ����������� ������������ <�����������>" ';
    end;

    if  ( cdsOKPersonal.FieldByName('inn').AsString='')
    then begin
      ErMessage := ErMessage+' "���" ';
    end;

    if  ( cdsOKPersonal.FieldByName('nps_id').AsString='')
    then begin
      ErMessage := ErMessage+' "���������� �� *" ';
    end;

  if  ( cdsOKPersonal.FieldByName('PASS_DATE').AsString='')
  then begin
    ErMessage := ErMessage+' "���� ��������� ��������" ';
  end;

  if  ( cdsokpersonal.FieldByName('PASS_DATE').AsString<>'')
  and (cdsokpersonal.FieldByName('BIRTHDAY').AsString<>'')
  then begin
    raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
      cdsokpersonal.FieldByName('PASS_DATE').AsString,cdsokpersonal.FieldByName('BIRTHDAY').AsString,'12');
    if (raznica<16)
    then ErMessage := ErMessage+'"������� ���� ��������� �������� � ���� �������� �� ������ ���� ������ 16" ';

  end;

  if (cdsokpersonal.FieldByName('BIRTHDAY').AsString='')
  then ErMessage := ErMessage+' "���� ��������" '
  else begin
    if ( strtoint(copy(datetostr(now),7,4))-
          strtoint(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,7,4))
          <45)    // � ���� ���� ���������� ������ 45 ����� ���������� ��������� ���� ���������
    or (( strtoint(copy(datetostr(now),7,4))-
          strtoint(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,7,4))
          =45) and (now< strtodate(copy(cdsokpersonal.FieldByName('BIRTHDAY').AsString,1,6)+copy(datetostr(now),7,4))  )
    )
    then begin
      if (cdsokpersonal.FieldByName('PASS_DATE_END').AsString='') // ������� ������������ ��..
      then begin
        ErMessage := ErMessage+' "������� ������������ ��..'+cdsokpersonal.FieldByName('PASS_DATE_END').AsString+'" ';
      end else begin
        if (cdsokpersonal.FieldByName('PASS_DATE_END').AsDateTime < now)
        then ErMessage := ErMessage+' "������� ������������ ��..'+cdsokpersonal.FieldByName('PASS_DATE_END').AsString+'" ';
      end;
    end;

    raznica:=getsqlresultpar('select trunc(months_between(sysdate,:p_1)/:p_2) from dual',cdsokpersonal.FieldByName('BIRTHDAY').AsString,'12');
    if (raznica<16) or (raznica>90)
    then ErMessage := ErMessage+'"������� ���� ������� � ���� �������� �� ������ ���� ������ 16 � ������ 90" ';
  end;



// �������� ����� �� �������� Form
  if ErMessage <> '' then
  begin
    ShowMessage( ErMessage);
////
    if HeadBranch_='09006'
    then begin
      If not DirectoryExists('C:\NCI Bank\') Then ForceDirectories('C:\NCI Bank\');
      If not DirectoryExists('C:\NCI Bank\Ok\') Then ForceDirectories('C:\NCI Bank\Ok\');
      If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');
      try
        System.AssignFile(text_f,'C:\NCI Bank\OK\Temp\err_ok1.txt');
        System.Rewrite(text_f);

        Try
          System.Writeln(text_f,ErMessage);
        Finally
          System.CloseFile(text_f);
        End;
      except
        showmessage('�� ������� ��������� ������ � ���� "C:\NCI Bank\OK\Temp\err_ok1.txt"');
        raise;
      end;

      try
        WinExec('notepad C:\NCI Bank\OK\Temp\err_ok1.txt', SW_MAXIMIZE);
      except
        showmessage('�� ������� ������� � �������� "notepad C:\NCI Bank\OK\Temp\err_ok1.txt"');
      end;
    end;
////
    exit;
  end;

   cdsOKPersonal.Post;



end;


procedure TBOKFormSTAT.Button1Click(Sender: TObject);
var ss, ss1, s:string; // , id
k, i:Integer;
begin
    with TOpenDialog.Create(Self) do
     try
       if Execute then
       begin
         s:=FileName;
         k:=0;
         for i:=length(s) downto 1 do
         begin
          k:=k+1;
           if s[i]='\' then
           begin
            ss:=copy(s,length(s)-k+2,k-1);
            ss1:=ss;
            Break;
           end;
         end;

         if  (copy(FileName,Length(FileName)-3,4) <>'.pdf')
         and (copy(FileName,Length(FileName)-3,4) <>'.jpg')
         then begin
           showmessage('��������� ���� ������� .pdf ��� .jpg � �� '+copy(FileName,Length(FileName)-3,4));
         end else begin
            EditFileNameSpravka.Text:=FileName;

            cdsSpravka.Close;
            with cdsSpravka.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value := cdsOKConvictions.FieldByName('branch').AsString;
                CreateParam(ftString,'p_2' ,ptInput);
                ParamByName('p_2').Value := cdsOKConvictions.FieldByName('id').AsString;
                CreateParam(ftString,'p_3' ,ptInput);
                ParamByName('p_3').Value := cdsOKConvictions.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='3'; // 3������� ���
            end;
            LoadData(cdsSpravka, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3  and priznak=:p_4' );

           if cdsSpravka.RecordCount=0
           then begin
             cdsSpravka.Insert;
           end else begin
             cdsSpravka.Edit;
           end;

           cdsSpravka.FieldByName('ok_id').Value:=cdsOKConvictions.FieldByName('id').AsString;
           cdsSpravka.FieldByName('priznak').Value:='3';
           cdsSpravka.FieldByName('personal_code').Value:=cdsOKConvictions.FieldByName('personal_code').AsString;
           cdsSpravka.FieldByName('FILE_NAME').Value:=ss1;
           cdsSpravka.FieldByName('branch').Value:=cdsOKConvictions.FieldByName('branch').AsString;
           (cdsSpravka.FieldByName('photo') as TBlobField).LoadFromFile(FileName);

           cdsSpravka.post;
         end;

       end;
     finally
       Free;
     end;

  if cdsSpravka.Active
  then cdsSpravka.Refresh;

end;

procedure TBOKFormSTAT.BitBtn175Click(Sender: TObject);
var dbName:string;
begin
      cdsSpravka.Close;
      with cdsSpravka.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKConvictions.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKConvictions.FieldByName('id').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOKConvictions.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='3'; // 3-������� ���
      end;

       LoadData(cdsSpravka, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3 and priznak=:p_4');

     if cdsSpravka.RecordCount=0
     then begin
       showmessage('��� ������');
     end else begin
       if not DirectoryExists(ROOT_DIR+'OK\TEMP') then
       begin
         CreateDir(ROOT_DIR+'OK\TEMP');
       end;

       cdsSpravka.First;
       dbName:=ROOT_DIR+'OK\TEMP\'+cdsSpravka.FieldByName('file_name').AsString;
//showmessage(dbName);
       TBlobField(cdsSpravka.FieldByName('photo')).SaveToFile(dbName);

       OpenDlFile.FileName:=dbName;
       if OpenDlFile.Execute then
       begin
         ShellExecute(0, 'open', PChar(dbName), '', '', SW_SHOW);
       end;
     end;

end;

procedure TBOKFormSTAT.BitBtn174Click(Sender: TObject);
begin
      cdsSpravka.Close;
      with cdsSpravka.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKConvictions.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKConvictions.FieldByName('id').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOKConvictions.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='3'; // 3-������� ���
      end;

       LoadData(cdsSpravka, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3 and priznak=:p_4');

end;

procedure TBOKFormSTAT.cdsSpravkaAfterOpen(DataSet: TDataSet);
begin
  If dsOKConvictions.DataSet.Active Then
  Begin
    cdsSpravka.MasterSource    := dsOKConvictions;
    cdsSpravka.IndexFieldNames := 'branch;personal_code;ok_id';
    cdsSpravka.MasterFields    := 'branch;personal_code;id';
  End;

end;

procedure TBOKFormSTAT.cdsSpravkaBeforePost(DataSet: TDataSet);
begin
   DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
   DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
   DataSet.Fields.FieldByName('branch').AsString := Branch;

end;

procedure TBOKFormSTAT.cdsOK_diplomBeforePost(DataSet: TDataSet);
begin
   DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
   DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
   DataSet.Fields.FieldByName('branch').AsString := Branch;

end;

procedure TBOKFormSTAT.DBLookupComboBox45Exit(Sender: TObject);
begin

  if (cdsOKEducation.FieldByName('education_end').AsString='1')
  and (cdsOKEducation.FieldByName('education_city').AsString='')
  then begin

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKEducation.FieldByName('education_code').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
    LoadData(cdsTempSource,'SELECT to_char(institution_code) id, institution_name name, INSTITUTION_PLACE'+
                                              ' FROM ss_ok_institution'+
                                              ' WHERE education_code=:p_1'+ //cdsOKEducation.FieldByName('education_code').AsString+
                                              ' AND state_notes=:p_2',True); // ''A''',True);

    cdsTempSource.Edit;
    cdsOKEducation.FieldByName('education_city').AsString  := cdsTempSource.FieldByName('INSTITUTION_PLACE').AsString;
  end;

end;

procedure TBOKFormSTAT.BitBtn178Click(Sender: TObject);
begin
  proverka(0);
end;

procedure TBOKFormSTAT.proverka(num_: integer);
var S_ID, check_date_message_,  er_mes, ErMessage: string; // sql_,birthplace_,
 z,z2,raznica:integer;
  v:variant;
// cdsok_DAHHbIE : tclientdatasetex;
    text_f : textfile;
begin

// �������� ����� �� �������� Form
  Form_TabSheet_Check;

// �������� ����� �� �������� ����
  IIAS_TabSheet_Check;

  //  ������� ��������� �� ok_personal
  // � ����������� �������� �� ��� �������������� ������
// ���������� �� ������ �� ���� ������� � ���.�������� � ����������
        er_mes:='';
        ErMessage  :='';
   z := getsqlresultpar('select count(*) from ok_photo where branch=:p_1'+
                  ' AND personal_code=:p_2 and (priznak is null or priznak=:p_3)',
           cdsOKPersonal.FieldByName('branch').AsString,cdsOKPersonal.FieldByName('personal_code').AsString,'1');
   if z=0
   then ErMessage  :=ErMessage  +'(26115)����������� ����'+#13;

// ... ����� ������ �� ������� ��������� � ������� ����������
   z:= getsqlresultpar(
     ' select nvl(sum(quantity_post),0)'+
     ' from ok_stat'+
     ' where branch=:p_1'+
     ' and department_code=:p_2'+
     ' and post_code =:p_3',
      cdsOKPersonal.FieldByName('branch').AsString,
      cdsOKPersonal.FieldByName('DEPARTMENT_CODE_NEW').AsString,
      cdsOKPersonal.FieldByName('post_CODE_NEW').AsString);

   if num_<>0
   then begin
     if z=0
     then begin
       ErMessage  :=ErMessage  +'(26130)��������� ������� ����� �� ������� � ������� ����������'+#13;
     end else begin
       z2:= getsqlresultpar(
         ' select count(*)'+
         ' from ok_personal'+
         ' where branch=:p_1'+
         ' and department_code=:p_2'+
         ' and post_code =:p_3'+
         ' and status_code=:p_4',
          cdsOKPersonal.FieldByName('branch').AsString,
          cdsOKPersonal.FieldByName('DEPARTMENT_CODE_NEW').AsString,
          cdsOKPersonal.FieldByName('post_CODE_NEW').AsString, '2');
       if z2>=z
       then ErMessage  :=ErMessage  +'(26143)� ������� ���������� �������'+inttostr(z)+'������� ����. ���������� ���������'+inttostr(z2)+#13;
     end;
   end;
     Tabokeducation_0Show(nil);

   if cdsOKEducation.recordcount=0
   then ErMessage  :=ErMessage  +'����������� �������� �� �����������'+#13;

    if  ( cdsOKPersonal.FieldByName('spec_ikki').AsString='')
    then begin
      ErMessage := ErMessage+' "* ������� ������ �������������" ';
    end else begin
      if ( cdsOKPersonal.FieldByName('spec_ikki').AsString='1')
      then begin
        z:= getsqlresultpar('select count(*) from ok_education where branch=:p_1 and personal_code=:p_2 '+
           ' and education_count_CODE=:p_3',
           cdsOKPersonal.FieldByName('branch').AsString,
           cdsOKPersonal.FieldByName('personal_code').AsString, '2'
        );
        if z=0
        then ErMessage  :=ErMessage  +'����������� ������ �����������(* ������� ������ �������������)'+#13;
      end;
    end;

     cdsOKEducation.first;
     while not cdsOKEducation.eof do begin
// �����������
//
        if not (cdsOKEducation.FieldByName('nostra_date').IsNull)
        then begin
          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
          cdsOKEducation.FieldByName('nostra_date').AsString,cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
          if (cdsOKEducation.FieldByName('nostra_date').asdatetime < cdsokpersonal.fieldbyname('birthday').asdatetime)
          or (raznica<20)
          then begin
            er_mes:=er_mes+'������� ���� ������������� '+cdsOKEducation.FieldByName('nostra_date').AsString+
              ' � ���� �������� '+cdsOKPersonal.FieldByName('BIRTHDAY').AsString+' ���������� �� ������ ���� ������ 20  � ������ �������� ����������'+#13;
          end;

        end;

        if (cdsOKEducation.FieldByName('nostra').AsString='1') // ����
        and ((cdsOKEducation.FieldByName('nostra_number').IsNull) or (cdsOKEducation.FieldByName('nostra_date').IsNull))
        then begin
          er_mes:=er_mes+'���� ������ �������� �������� ������������� ��� �1� (����), �� ��������� ������ � ���� ������������� ������ ���� ��������� �����������'+#13;
//          show message('���� ������ �������� �������� ������������� ��� �1� (����), �� ��������� ������ � ���� ������������� ������ ���� ��������� �����������');
        end;

        try
          if not (cdsOKEducation.FieldByName('diplom_date').IsNull)
          then
          if (cdsOKEducation.FieldByName('diplom_date').asdatetime>now)
          or (cdsOKEducation.FieldByName('diplom_date').asdatetime<
            strtodate( cdsOKEducation.FieldByName('end_date_dd').asstring+'.'+cdsOKEducation.FieldByName('end_date_mm').asstring+'.'+
                        cdsOKEducation.FieldByName('end_date').asstring ))
          then begin
            er_mes:=er_mes+'���� ������ ������� �� ������ ���� ������ ������� ���� � ������ ���� ��������� �������� ���������'+#13;
          end;
        except
            er_mes:=er_mes+'(6455) ��������� ���� ��������� �������� ���������'+#13;
        end;

        if (cdsOKEducation.FieldByName('end_date').IsNull)
        and (cdsOKEducation.FieldByName('curs').IsNull)
        then begin
          er_mes:=er_mes+'���� �������� ����� ��������� �������� ���������� �� ������, �� ����������� ������ ���� �������� �������� �����'+#13;
        end;

        if (cdsOKEducation.FieldByName('profession_personal').IsNull)
        then begin
          v:=getsqlresultpar('select s_id from ss_ok_nci where nci_id=:p_1 and ok_id=:p_2','74',cdsokpersonal.fieldbyname('education_title_code').asstring);
          if not varisnull(v)
          then begin
            if ((vartostr(v)='3') or (vartostr(v)='4') or (vartostr(v)='5'))
            and (cdsOKEducation.FieldByName('profession_personal').IsNull)
            then er_mes:=er_mes+'(05962)���� �������� ���� ������������ � ���������� 09-001 ������ ��� (3,4,5), �� �������� ��������������� ������ ���� ������ �����������'+#13;
          end;
        end;


        if (cdsOKEducation.FieldByName('begin_date').IsNull)
        and ( (not cdsOKEducation.FieldByName('begin_date_mm').IsNull) or (not cdsOKEducation.FieldByName('begin_date_dd').IsNull) )
        then begin
          er_mes:=er_mes+'���� ��� ���� ����������� �� ������, �� ����� � ����� ���� ����������� �� ������ �����������'+#13;
        end;

        if (cdsOKEducation.FieldByName('end_date').IsNull)
        and ( (not cdsOKEducation.FieldByName('end_date_mm').IsNull) or (not cdsOKEducation.FieldByName('end_date_dd').IsNull) )
        then begin
          er_mes:=er_mes+'���� ��� ���� ��������� �� ������, �� ����� � ����� ���� ��������� �� ������ �����������'+#13;
        end;

        try
          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
          cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString,
          cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
          if (strtodate(cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString) > now)
          or (raznica < 15)
          then begin
            er_mes:=er_mes+'(05958)������� ���� ����������� � ���� �������� ������ ���� ������ 15 ��� � ������ �������� ����������'+#13;
          end;
        except
            er_mes:=er_mes+'��������� ���� ����������� '+cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString+#13;
        end;

        try
          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
          cdsOKEducation.FieldByName('end_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('end_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('end_date').AsString,
          cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString,
          '12');
          if (raznica > 20) or (raznica < 1)
          then begin
            er_mes:=er_mes+'(05960)������� ���� ��������� � ���� ����������� � ������� ��������� �� ������ ���� ������ 20 ��� � ������ 1 ����'+#13;
          end;
        except
            er_mes:=er_mes+'��������� ���� ����������� '+cdsOKEducation.FieldByName('begin_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('begin_date').AsString+' � ���� ��������� '+
          cdsOKEducation.FieldByName('end_date_dd').AsString+'.'+
          cdsOKEducation.FieldByName('end_date_mm').AsString+'.'+
          cdsOKEducation.FieldByName('end_date').AsString+ ' �������� ���������'+
          #13;
        end;


       if cdsOKEducation.FieldByName('EDUCATION_CODE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'�����������'+#13;
//         showmessag e('�� ��������� ���� '+'�����������');
//         dblcbSSOKEducation.SetFocus;
//         exit;
       end;
//
       if cdsOKEducation.FieldByName('BASIS_CODE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'������� �����������'+#13;
//         showmessag e('�� ��������� ���� '+'������� �����������');
//         dblcbSSOKBasis.SetFocus;
//         exit;
       end;
//
       if cdsOKEducation.FieldByName('INSTITUTION_CODE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'������� ���������'+#13;
       end;

       if cdsOKEducation.FieldByName('cod_vuz_prim').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'���������� (����������� ������ ���� ������� ������� ���������)'+#13;
       end;
// -
//
       if cdsOKEducation.FieldByName('BEGIN_DATE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'����������� (���)'+#13;
//         showmessag e('�� ��������� ���� '+'����������� (���)');
//         medOK_beginDAte.SetFocus;
//         exit;
       end;
//
       if not cdsOKEducation.FieldByName('END_DATE').IsNull
       then begin
         if cdsOKEducation.FieldByName('BEGIN_DATE').AsInteger>
            cdsOKEducation.FieldByName('END_DATE').AsInteger
         then begin
           er_mes:=er_mes+'������: ��� ����������� '+
             cdsOKEducation.FieldByName('BEGIN_DATE').asstring+#13+
             ' �� ������ ���� ������ ���� ��������� �������� ��������� '+
             cdsOKEducation.FieldByName('END_DATE').asstring+#13;
         end;
       end;
//
       if cdsOKEducation.FieldByName('PROFESSION_PERSONAL').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'�������������'+#13;
//         showmessag e('�� ��������� ���� '+'�������������');
//         dbedProfession.setFocus;
//         exit;
       end;
//
       if cdsOKEducation.FieldByName('QUALIFICATION_CODE').AsString=''
       then begin
         er_mes:=er_mes+'�� ��������� ���� '+'������������'+#13;
//         showmessag e('�� ��������� ���� '+'������������');
//         dblcbSSOKQualification.SetFocus;
//         exit;
       end;
//
       if (not(cdsOKEducation.FieldByName('Diplom_Date').IsNull)) and (cdsOKEducation.FieldByName('DIPLOM_NUM').IsNull)
       then begin
         er_mes:=er_mes+'���� ������ �������� ����� ������ �������, �� �������� ������ ������� ������ ���� ������ �����������'+#13;
//         showmessag e('���� ������ �������� ����� ������ �������, �� �������� ������ ������� ������ ���� ������ �����������');
//         exit;
       end;

       check_date_message_:= check_date_yyyymmdd(cdsOKEducation.FieldByName('BEGIN_DATE').AsString,
         cdsOKEducation.FieldByName('BEGIN_DATE_mm').AsString,
         cdsOKEducation.FieldByName('BEGIN_DATE_dd').AsString,'N');

       if check_date_message_<>'1'
       then begin
         er_mes:=er_mes+'(26327)'+check_date_message_+#13;
//         showmessag e(check_date_message_);
//         medOK_beginDAte.SetFocus;
//         exit;
       end;

       if not cdsOKEducation.FieldByName('END_DATE').IsNull
       then begin
         check_date_message_:= check_date_yyyymmdd(cdsOKEducation.FieldByName('END_DATE').AsString,
           cdsOKEducation.FieldByName('END_DATE_mm').AsString,
           cdsOKEducation.FieldByName('END_DATE_dd').AsString,'Y');

         if check_date_message_<>'1'
         then begin
           er_mes:=er_mes+'(26341)'+check_date_message_+#13;
//           showmessag e(check_date_message_);
//           medOK_endDAte.SetFocus;
//           exit;
         end;
       end;

//showmessage('cdsOKEducation.FieldByName(''END_DATE'')='+cdsOKEducation.FieldByName('END_DATE').asstring);
       if not cdsOKEducation.FieldByName('END_DATE').IsNull
       then begin
         z:= getsqlresultpar('select count(*) from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3  and priznak=:p_4',
            cdsOkeducation.FieldByName('branch').AsString,
            cdsOkeducation.FieldByName('id').AsString,
            cdsOkeducation.FieldByName('personal_code').AsString, '2');
         if z=0
         then er_mes:=er_mes+' ����������� ����� �������'+#13;
       end;

      cdsOKEducation.next;

     End;

//  1: If (cdsOKacademic.State in dsEditModes) and (cdbgOKacademic.CanFocus)
     TabSheet_1Show(nil);
     cdsOKacademic.first;
       if (cdsOKpersonal.FieldByName('is_ACADEMIC').AsString='1')
       and (cdsOKacademic.recordcount=0)
       then begin
//         showmessag e(
         er_mes := er_mes+'� ��������� ��� ���� ������� "������ ������ ����"'+#13;
  //       exit;
       end;

     while not cdsOKacademic.eof do begin
// ������ ������
//
       if cdsOKpersonal.FieldByName('is_ACADEMIC').AsString='2'
       then begin
//         showmessag e(
         er_mes := er_mes+'� ��������� ��� ���� ������� "������� ������ ���"'+#13;
  //       exit;
       end;

       if (cdsOKacademic.FieldByName('ACADEMIC_CODE').AsString='')
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������ ������'+#13;
  //       dblcbSSOKAcademic.SetFocus;
    //     exit;
       end else begin
         z:=getsqlresultpar('select count(*) from s_obraz so ,ss_ok_nci son where son.nci_id=:p_1 and so.OBR_ID=son.s_id and son.ok_id=:p_2',
                 '76',cdsOKacademic.FieldByName('ACADEMIC_CODE').AsString
          );
         if z=0
         then begin
//           showmessag e(
         ErMessage := ErMessage+'�������� ������ ������ ������ ��������������� ����������� ������������.'+#13;
  //          dblcbSSOKAcademic.SetFocus;
    //        exit;
         end;
       end;

//
       if cdsOKacademic.FieldByName('ACADEMIC_DATE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� ���������� (������� ������)'+#13;
  //       dbedAcademicDate.SetFocus;
    //     exit;
       end;

       try
         if (cdsOKacademic.FieldByName('ACADEMIC_DATE').AsInteger<1917)
         then begin
    //       showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� ���������� (������� ������)='+
             cdsOKacademic.FieldByName('ACADEMIC_DATE').AsString;
//           dbedAcademicDate.SetFocus;
  //         exit;
         end;
       except on e:exception
         do begin
//           showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� ���������� (������� ������)'+
             cdsOKacademic.FieldByName('ACADEMIC_DATE').AsString;
  //         dbedAcademicDate.SetFocus;
    //       exit;
         end;
       end;
//
      cdsOKacademic.next;

     End;


//  2: If (cdsOKDegree.State in dsEditModes) and (cdbgOKDegree.CanFocus)
     TabDegree_2Show(nil);
     cdsOKDegree.first;
       if (cdsOKpersonal.FieldByName('is_DEGREE').AsString='1')
       and (cdsOKDegree.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������ ������� ����"'+#13;
  //       exit;
       end;
     while not cdsOKDegree.eof do begin
// ������ �������
//
       if cdsOKpersonal.FieldByName('is_DEGREE').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������ ������� ���"'+#13;
  //       exit;
       end;

       if cdsOKDegree.FieldByName('DEGREE_CODE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������ �������'+#13;
  //       dblcbSSOKdegree.SetFocus;
    //     exit;
       end else begin
         z:=getsqlresultpar('select count(*) from s_obraz so ,ss_ok_nci son where son.nci_id=:p_1 and so.OBR_ID=son.s_id and son.ok_id=:p_2',
                 '75',cdsOKDegree.FieldByName('DEGREE_CODE').AsString
          );
         if z=0
         then begin
//           showmessag e(
         ErMessage := ErMessage+'�������� ������ ������� ������ ��������������� ����������� ������������.'+#13;
  //          dblcbSSOKdegree.SetFocus;
    //        exit;
         end;
       end;
//
       if (cdsOKDegree.FieldByName('DEGREE_DATE').AsString='')
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� ���������� (������ �������)'+#13;
  //       dbedDegreeDate.SetFocus;
    //     exit;
       end;

       try
         if (cdsOKDegree.FieldByName('DEGREE_DATE').AsInteger<1917)
         then begin
//           showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� ���������� (������ �������)='+cdsOKDegree.FieldByName('DEGREE_DATE').AsString;
  //         dbedDegreeDate.SetFocus;
    //       exit;
         end;
       except on e:exception
         do begin
//           showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� ���������� (������ �������)'+cdsOKDegree.FieldByName('DEGREE_DATE').AsString;
  //         dbedDegreeDate.SetFocus;
    //       exit;
         end;
       end;

//
      cdsOKDegree.next;
     End;

//  3: If (cdsOKaward.State in dsEditModes) and (cdbgOKaward.CanFocus)
     TabSheet_3Show(nil);
     cdsOKaward.first;
       if (cdsOKpersonal.FieldByName('is_award').AsString='1')
       and (cdsOKaward.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������� ����"'+#13;
  //       exit;
       end;

     while not cdsOKaward.eof do begin

// �������
//


       if cdsOKpersonal.FieldByName('is_award').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������ ���"'+#13;
  //       exit;
       end;

       if cdsOKaward.FieldByName('AWARD_INFO').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'�������� � �������'+#13;
  //       dbedAwardInfo.SetFocus;
    //     exit;
       end;
//
       if cdsOKaward.FieldByName('AWARD_DATE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� ��������� (�������)'+#13;
  //       dbedAwardDate.SetFocus;
    //     exit;
       end;
//
       check_date_message_:= check_date_yyyymmdd(cdsOKaward.FieldByName('AWARD_DATE').AsString,
         cdsOKaward.FieldByName('AWARD_DATE_mm').AsString,cdsOKaward.FieldByName('AWARD_DATE_dd').AsString,
         'N');

       if check_date_message_<>'1'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'(26551)'+check_date_message_;
  //       dbedAwardDate.SetFocus;
    //     exit;
       end else begin
          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
                cdsOKaward.FieldByName('AWARD_DATE_dd').AsString+'.'+
                cdsOKaward.FieldByName('AWARD_DATE_mm').AsString+'.'+
                cdsOKaward.FieldByName('AWARD_DATE').AsString,
          cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
         if ( strtodate(cdsOKaward.FieldByName('AWARD_DATE_dd').AsString+'.'+
                        cdsOKaward.FieldByName('AWARD_DATE_mm').AsString+'.'+
                        cdsOKaward.FieldByName('AWARD_DATE').AsString) >now )
         or (raznica<18)
         then begin
           er_mes:= er_mes+ '(05971)������� ���� ����������� � ���� �������� ����������  ������ ���� ������ 18  � ������ ���� ����� �������� ����������'+#13;
         end;
       end;


      cdsOKaward.Next;

     End;

//  4: If (cdsOKScientific.State in dsEditModes) and (cdbgOKScientific.CanFocus)
//     Then begin
     TabOKScientific_4Show(nil);
     cdsOKScientific.first;
       if (cdsOKpersonal.FieldByName('is_scientific').AsString='1')
       and (cdsOKScientific.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������� ������ ����"'+#13;
  //       exit;
       end;
     while not cdsOKScientific.eof do begin

// ������� ������
//
       if cdsOKpersonal.FieldByName('is_scientific').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������� ����� ���"'+#13;
  //       exit;
       end;

       if cdsOKScientific.FieldByName('SCIENTIFIC_INFO').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'�������� � ������� ������'+#13;
  //       dbedScientificInfo.SetFocus;
    //     exit;
       end;
//
       if cdsOKScientific.FieldByName('SCIENTIFIC_DATE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� ��������� (������� ������)'+#13;
  //       dbedScientificDate.SetFocus;
    //     exit;
       end;
//
      cdsOKScientific.next;

     End;

//  5: If (cdsOKVoyage.State in dsEditModes) and (cdbgOKVoyage.CanFocus)
//     Then begin
     TabSheet_5Show(nil);
       if (cdsOKpersonal.FieldByName('is_voyage').AsString='1')
       and (cdsOKVoyage.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "���������� ������� ����"'+#13;
  //       exit;
       end;

     cdsOKVoyage.first;
     while not cdsOKVoyage.eof do begin

// ���������� ������� 09_007
//
       if cdsOKpersonal.FieldByName('is_voyage').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "���������� ������� ���"'+#13;
  //       exit;
       end;

//       if cdsOKVoyage.FieldByName('voyage_str').AsString<>''
//       then begin
//         cdsOKVoyage.FieldByName('VOYAGE_LAND').AsString:=
//           cdsOKVoyage.FieldByName('voyage_str_show').AsString;
//       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_STR').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������ �� ����������� ��'+#13;
  //       DBEdit3.SetFocus;
    //     exit;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_STR').AsString='860'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'(05975)�������� ����������� �� �������� ������ �� ������ ���� ����� �������� ������������'+#13;
  //       exit;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_INFO').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'�������� � ���������� �������'+#13;
  //       DBEdit3.SetFocus;
    //     exit;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_DATE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� ���������� �������'+#13;
  //       DBEdit1.SetFocus;
    //     exit;
       end;
//
       if (cdsOKVoyage.FieldByName('VOYAGE_DATE').Asinteger-strtoint(copy(    cdsokpersonal.fieldbyname('birthday').asstring      ,7,4))
          <18)
       or (cdsOKVoyage.FieldByName('VOYAGE_DATE').Asinteger> strtoint(copy(bankdate,7,4)) )
       then begin
//         showmessag e(
         ErMessage := ErMessage+'������� ���� ������ �� ������� � ���� �������� ���������� �� ������ ���� ������ 18  � ������ �������� ����������'+#13;
  //       DBEdit1.SetFocus;
    //     exit;
       end;


//
       check_date_message_:= check_date_yyyymmdd(cdsOKVoyage.FieldByName('VOYAGE_DATE').AsString,
         cdsOKVoyage.FieldByName('VOYAGE_DATE_mm').AsString,
         cdsOKVoyage.FieldByName('VOYAGE_DATE_dd').AsString,'N');

       if check_date_message_<>'1'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'(26695)'+check_date_message_;
  //       DBEdit1.SetFocus;
    //     exit;
       end;

       if (not cdsOKVoyage.FieldByName('DATA_IN').IsNull)
       then begin
         if (cdsOKVoyage.FieldByName('DATA_IN').AsInteger<cdsOKVoyage.FieldByName('VOYAGE_DATE').Asinteger)
         or (cdsOKVoyage.FieldByName('DATA_IN').Asinteger> strtoint(copy(bankdate,7,4)) )
         then begin
//           showmessag e(
         ErMessage := ErMessage+'���� ����������� ��-�� ������� �� ������ ���� ������ ���� ������  � �� ������ ���� ������ ������� ����'+#13;
  //         exit;
         end;
       end;

       if (not cdsOKVoyage.FieldByName('DATA_IN').IsNull)
       or (not cdsOKVoyage.FieldByName('DATA_IN_mm').IsNull)
       or (not cdsOKVoyage.FieldByName('DATA_IN_dd').IsNull)
       then begin
         check_date_message_:= check_date_yyyymmdd(cdsOKVoyage.FieldByName('DATA_IN').AsString,
           cdsOKVoyage.FieldByName('DATA_IN_mm').AsString,
           cdsOKVoyage.FieldByName('DATA_IN_dd').AsString,'Y');

         if check_date_message_<>'1'
         then begin
//           showmessag e(
         ErMessage := ErMessage+'(26722)'+check_date_message_;
  //         DBEdit57.SetFocus;
    //       exit;
         end;
       end;
      cdsOKVoyage.Next;

     End;


//  6: If (cdsOKLanguage.State in dsEditModes) and (cdbgOKLanguage.CanFocus)
//     Then begin
     TabSheet_6Show(nil);
     cdsOKLanguage.first;
       if (cdsOKpersonal.FieldByName('is_language').AsString='1')
       and (cdsOKLanguage.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "��.��. ����"'+#13;
  //       exit;
       end;

     while not cdsOKLanguage.eof do begin

// �����
//
       if cdsOKpersonal.FieldByName('is_language').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "��.��. ���"'+#13;
  //       exit;
       end;

       if cdsOKLanguage.FieldByName('language_code').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'����������� ����'+#13;
  //       exit;
       end else begin
                z:=getsqlresultpar('select count(*) from s_langs so ,ss_ok_nci son where son.nci_id=:p_1 and so.LANG_ID=son.s_id and son.ok_id=:p_2',
                 '77',cdsOKLanguage.FieldByName('language_code').AsString
          );
         if z=0
         then begin
//           showmessag e(
         ErMessage := ErMessage+'�������� ����������� ���� ������ ��������������� ����������� ������������.'+#13;
  //          exit;
         end;

       end;

       if cdsOKLanguage.FieldByName('cod_lang_prim').AsString=''
       then begin
         cdsOKLanguage.FieldByName('cod_lang_prim').AsString:=
           cdsOKLanguage.FieldByName('language_code_show').AsString;
       end;
//
       if cdsOKLanguage.FieldByName('level_code').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������� �������� (����������� ������)'+#13;
  //       DBLCBlanglevel.SetFocus;
    //     exit;
       end else begin
                z:=getsqlresultpar('select count(*) from s_lang so ,ss_ok_nci son where son.nci_id=:p_1 and so.UROV_ID=son.s_id and son.ok_id=:p_2',
                 '78',cdsOKLanguage.FieldByName('level_code').AsString
          );
         if z=0
         then begin
//           showmessag e(
         ErMessage := ErMessage+'�������� ������� �������� (����������� ������) ������ ��������������� ����������� ������������.'+#13;
  //          exit;
         end;

       end;
//
      cdsOKLanguage.Next;

     End;
//  7: If (cdsOKRelation.State in dsEditModes) and (cdbgOKRelation.CanFocus)
//     Then begin
     TabSheet_7Show(nil);
   if cdsOKRelation.recordcount=0
   then ErMessage  :=ErMessage  +'����������� �������� � �������������'+#13;

     cdsOKRelation.first;
     while not cdsOKRelation.eof do begin

// ����������� ��������� 09_002
//
(*       if cdsOKRelation.FieldByName('relation_birthplace').AsString=''
       then begin
         birthplace_ :='';
         if cdsOKRelation.FieldByName('COD_STR_birth').AsString=''
         then birthplace_:=
              cdsOKRelation.FieldByName('COD_STR_birth_prim').AsString
         else birthplace_:=
              cds_str.FieldByName('name').AsString;

         if cdsOKRelation.FieldByName('COD_OBL_birth').AsString=''
         then birthplace_:=
              birthplace_+' '+
              cdsOKRelation.FieldByName('COD_OBL_birth_PRIM').AsString
         else birthplace_:=
              birthplace_+' '+
              cds_region.FieldByName('region_nam').AsString;

         if cdsOKRelation.FieldByName('COD_CITY_birth').AsString=''
         then birthplace_:=
              birthplace_+' '+
              cdsOKRelation.FieldByName('COD_CITY_birth_prim').AsString
         else birthplace_:=
              birthplace_+' '+
              cds_distr.FieldByName('distr_name').AsString;

//         cdsOKRelation.FieldByName('relation_birthplace').AsString:= copy(birthplace_,1,200);
//showmessag e(cds_str.FieldByName('name').AsString+cds_region.FieldByName('region_nam').AsString+cds_distr.FieldByName('distr_name').AsString+#13+
//cdsOKRelation.FieldByName('relation_birthplace').AsString+#13+
//birthplace_);
       end;
*)
       if cdsOKRelation.FieldByName('RELATION_FAMILY').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������� (�����������)'+#13;
  //       DBEdit701.SetFocus;
    //     exit;
       end;
//
       if cdsOKRelation.FieldByName('RELATION_NAME').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� (�����������)'+#13;
  ///       DBEdit702.SetFocus;
     //    exit;
       end;
//
       if cdsOKRelation.FieldByName('RELATION_CODE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'����������� ��������� (�����������)'+#13;
  //       exit;
       end else begin
         // ����� ��� ���� ������������ �� ����������� ������������
         S_ID:= getsqlresultpar('select s_id from ss_ok_nci where nci_id=:p_1 and ok_id=:p_2','81',cdsOKRelation.FieldByName('RELATION_CODE').AsString);
         if cdsokpersonal.fieldbyname('gender_code').asstring='1' // ��� ������� ����������� ��� ������
         then begin
           if S_ID='02'   // ����������� ��� ������
           then begin
//             showmessag e(
         ErMessage := ErMessage+'���� ��� ���������� ������ � ��������, �� ��� ������� ������� �� ����� ��������� �������� ����'+#13;
  //           exit;
           end;
         end
          // ��� ������� ����������� ���� ������
         else begin
           if S_ID='01'   //����������� ���� ������
           then begin
  //           showmessag e(
         ErMessage := ErMessage+'���� ��� ���������� ������ � ��������, �� ��� ������� ������� �� ����� ��������� �������� �����'+#13;
//             exit;
           end;
         end;
       end;

       if cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� �������� (�����������)'+#13;
  //       exit;
       end else begin
         if (cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger <
               strtoint(copy( cdsOKpersonal.FieldByName('BIRTHDAY').asstring ,7,4)))
         and ((S_ID='6') or (S_ID='8') or (S_ID='9') or (S_ID='10')  )
         then begin
//           showmessag e(
         ErMessage := ErMessage+'���� ����������� ��������� ������ ��� ������� ���������, �� ��� �������� ������������ ������ ���� ������ ���� �������� ����������'+#13;
  //         exit;
         end;
         if (  cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger >
                 strtoint( copy( cdsOKpersonal.FieldByName('BIRTHDAY').asstring ,7,4))   )
         and ( (S_ID='3') or (S_ID='4') or (S_ID='5') or (S_ID='7') or (S_ID='11') or (S_ID='12')  )
         then begin
//           showmessag e(
         ErMessage := ErMessage+'���� ����������� ������ ��� ������� ���������, �� ��� �������� ������������ ������ ���� ������ ���� �������� ����������'+#13;
  //         exit;
         end;
         if cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger<1900
         then begin
//           showmessag e(
         ErMessage := ErMessage+'��������� ��� �������� '+
             cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsString;
  //         exit;
         end;

       end;

       if cdsOKRelation.FieldByName('COD_STR_birth').AsString=''
       then begin
         er_mes:=er_mes+'(7123) ������� ���� ������ ��������� ����������� �� ����������� <������>'+#13;
       end else begin
         z:= getsqlresultpar('select count(*) from s_str where code_str=:p_1',cdsOKRelation.FieldByName('COD_STR_birth').AsString);
         if z<1  then er_mes:=er_mes+'(05345)�������� ���� ������ ��������� ������������ ������ ��������������� ����������� <������ � ����������>'+#13;
       end;

       if cdsOKRelation.FieldByName('COD_STR_birth').AsString='860' // ���������� �� ���� ������� � �����
       then begin
         if (cdsOKRelation.FieldByName('COD_OBL_birth').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ��������� -  ������������, �� ���� ������� ��������� ������ ���� ������ ����������� �� ����������� <������� �����������>'+#13;
         end;
         if (cdsOKRelation.FieldByName('COD_CITY_birth').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ��������� -  ������������, �� ���� ������ ��������� ������ ���� ������ ����������� �� ����������� <������ �����������>'+#13;
         end;
       end else begin
         if (cdsOKRelation.FieldByName('COD_OBL_birth_prim').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ��������� -  �� ������������, �� ���������� � ���� ������� ��������� ������ ���� ������'+#13;
         end;
         if (cdsOKRelation.FieldByName('COD_CITY_birth_prim').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ��������� -  �� ������������, �� ���������� � ���� ������ ��������� ������ ���� ������'+#13;
         end;
       end;

// ����������
       if cdsOKRelation.FieldByName('COD_STR_LIVE').AsString=''
       then begin
         er_mes:=er_mes+'(7123) ������� ���� ������ ����������� ����������� �� ����������� <������>'+#13;
       end else begin
         z:= getsqlresultpar('select count(*) from s_str where code_str=:p_1',cdsOKRelation.FieldByName('COD_STR_LIVE').AsString);
         if z<1  then er_mes:=er_mes+'(05345)�������� ���� ������ ����������� ������������ ������ ��������������� ����������� <������ � ����������>'+#13;
       end;

       if cdsOKRelation.FieldByName('COD_STR_LIVE').AsString='860' // ���������� �� ���� ������� � �����
       then begin
         if (cdsOKRelation.FieldByName('COD_OBL_LIVE').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ����������� -  ������������, �� ���� ������� ����������� ������ ���� ������ ����������� �� ����������� <������� �����������>'+#13;
         end;
         if (cdsOKRelation.FieldByName('COD_CITY').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ����������� -  ������������, �� ���� ������ ����������� ������ ���� ������ ����������� �� ����������� <������ �����������>'+#13;
         end;
       end else begin
         if (cdsOKRelation.FieldByName('COD_OBL_LIVE_prim').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ����������� -  �� ������������, �� ���������� � ���� ������� ����������� ������ ���� ������'+#13;
         end;
         if (cdsOKRelation.FieldByName('COD_CITY_prim').AsString='')
         then begin
           er_mes:=er_mes+'���� ������ ���� ������ ����������� -  �� ������������, �� ���������� � ���� ������ ����������� ������ ���� ������'+#13;
         end;
       end;

       if (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString<>'')
       then begin
         if (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsInteger <
               cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger)
         or (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsInteger> strtoint(copy(bankdate,7,4)))
         then begin
  //         showmessag e(
         ErMessage := ErMessage+'��������� ���� �������� '+cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsString+
           ' � ���� ������ '+
            cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString;
//           exit;
         end;

         if (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString='')
         and ((cdsOKRelation.FieldByName('DD_DEATH').AsString<>'')
         and (cdsOKRelation.FieldByName('MM_DEATH').AsString<>''))
         then begin
           if (strtodate( cdsOKRelation.FieldByName('DD_DEATH').AsString+'.'+cdsOKRelation.FieldByName('MM_DEATH').AsString+'.'+cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString  ) > now)
           then begin
             er_mes:=er_mes+'���� ������ ������������� �� ������ ���� ������, ��� ���� �������� � ������ ������� ����;'+#13;
           end;
         end;


       end else begin
         if (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString='')
         and ((cdsOKRelation.FieldByName('DD_DEATH').AsString<>'')
         or (cdsOKRelation.FieldByName('MM_DEATH').AsString<>''))
         then begin
           er_mes:=er_mes+'���� ��� ������ �� ������, �� ����� � ����� ������ �� ������ �����������'+#13;
         end;
       end;

      cdsOKRelation.Next;

     End;

//  8: If (cdsOKPeriod.State in dsEditModes) and (cdbgOKPeriod.CanFocus)
//     Then begin
//MemoTest.lines.add('*0');
     TabSheet_8Show(nil);
//MemoTest.lines.add('*3');
//if cdsOKPeriod.Active
//then MemoTest.lines.add('*33*');
   if cdsOKPeriod.recordcount=0
   then ErMessage  :=ErMessage  +'����������� �������� � ������'+#13;

     cdsOKPeriod.first;
     while not cdsOKPeriod.eof do begin

// �������� � ������
//
       if (cdsOKPeriod.FieldByName('TYPE_PERIOD_CODE').AsString='3')
       and (cdsOKPeriod.FieldByName('COD_BANK').AsString='')
       then begin
       // ���� �� ������ � ��� ����� ����� �� ��������� ���� ������� ���
         ErMessage := ErMessage+'���� �� ������ � ��� ����� ����� �� ��������� ���� ������� ���'+#13;
//          cdsOKPeriod.FieldByName('COD_BANK').AsString:=branch;
       end;
//
       if cdsOKPeriod.FieldByName('OFFICE_NAME').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������������ �����������'+#13;
  //       DBEdit801.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKPeriod.FieldByName('OFFICE_ADDRESS').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'����� �����������'+#13;
  //       DBEdit802.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKPeriod.FieldByName('ESTABLISHED_POST').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���������� ���������'+#13;
  //       DBEd_poststring.SetFocus;
    //     exit;
       end;
//
       if cdsOKPeriod.FieldByName('IN_OFFICE_DATE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� �����������'+#13;
  //       exit;
       end else begin
         if (cdsOKPeriod.FieldByName('IN_OFFICE_DATE').AsDateTime<cdsOKPersonal.FieldByName('birthday').AsDateTime)
         then begin
           er_mes:=er_mes+'�������� ����� ������ ������ � ��������� ������ ���� ����������� ��������,  ��������������� ������� � ���� ������ ���� ��������'+#13;
         end;

          raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
          cdsOKPeriod.FieldByName('IN_OFFICE_DATE').AsString,cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
         if (cdsOKPeriod.FieldByName('in_office_date').AsDatetime>now)
         or (raznica<15)
         then begin
           er_mes:=er_mes+'������� ���� ������ ������ � ��������� � ���� �������� ���������� �� ������ ���� ������ 15 ��� � �� ������ ���� ������ �������� ����������'+#13;
         end;



       end;
//
       if cdsOKPeriod.FieldByName('BASIS_DATE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� �������/���������'+#13;
  //       exit;
       end else begin
         if cdsOKPeriod.FieldByName('IN_OFFICE_DATE').AsString<>''
         then begin
           if (cdsOKPeriod.FieldByName('BASIS_DATE').asDateTime > cdsOKPeriod.FieldByName('IN_OFFICE_DATE').asDateTime)
           then begin
             er_mes:=er_mes+'���� �������-��������� ��� ������ ������ � ��������� ������ ���� ������ ��� ����� ���� ������ ������ � ���� ���������'+#13;
           end;
         end;
       end;

       if (cdsOKPeriod.FieldByName('date_pr_off').asstring<>'' ) and ( cdsOKPeriod.FieldByName('OUT_OFFICE_DATE').asstring<>'')
       then begin
           if (cdsOKPeriod.FieldByName('date_pr_off').asDatetime > cdsOKPeriod.FieldByName('OUT_OFFICE_DATE').AsDatetime)
           then begin
             er_mes:=er_mes+'���� �������-��������� ��� ����������� ������ � ���������  ������ ���� ������ ��� ����� ���� ����������� ������ � ���� ���������'+#13;
           end;
       end;
//
       if cdsOKPeriod.FieldByName('TYPE_PERIOD_CODE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� ���� �����'+#13;
  //       DBLcbTypePeriod.SetFocus;
    //     exit;
       end else begin
         if (cdsOKPeriod.FieldByName('TYPE_PERIOD_CODE').AsString='1')
         and (cdsOKPeriod.FieldByName('established_post').AsString='')
         then begin
           er_mes:=er_mes+'�������� ����������� ������ ���� ����������� ��������, ���� �������� �������� �������� ������ ��� ������� (����� ��������)'+#13;
         end;
       end;

       if (cdsOKPeriod.FieldByName('post_CODE').AsString='')
       and (cdsOKPeriod.FieldByName('established_post').AsString='')
       then begin
         er_mes:=er_mes+'�� ����� ���� ����������� ��� ��� ��������� ��� ��������� ���� �� 2-� ����������� ������ ���� ���������'+#13;
       end;

//
       if cdsOKPeriod.FieldByName('BASIS_NUM').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'����� �������/���������'+#13;
  //       DBEdit811.SetFocus;
    //     exit;
       end;
//

       if (cdsOKPeriod.FieldByName('date_attest').AsString<>'')
       and (cdsOKPeriod.FieldByName('resh_attest').AsString='')
       then begin
         er_mes:=er_mes+'���� ������ �������� ����� ����������, �� �������� �������� �������������� �������� ������ ���� ��������'+#13;
       end;

       if (cdsOKPeriod.FieldByName('date_pr_kvl').AsString<>'')
       and (cdsOKPeriod.FieldByName('numb_pr_kvl').AsString='')
       then begin
         er_mes:=er_mes+'���� ������ �������� �����  ����������� ���������������� �������� ������������ �����, �� �������� ������ ��������� ���������������� �������� ������������ ����� � ������������ ���������, �� ������� ������������ ������ ���� ��������'+#13;
       end;

       if (cdsOKPeriod.FieldByName('date_utv_km').AsString<>'')
       and (cdsOKPeriod.FieldByName('numb_utv_km').AsString='')
       then begin
         er_mes:=er_mes+'���� ������ �������� ����� ����������� ��������� ���������, �� �������� ������ ������������� �������� ��������� �� ����������� � ���������� ��������� ������ ���� ��������'+#13;
       end;

       if (cdsOKPeriod.FieldByName('out_office_date').AsString<>'')
       and (cdsOKPeriod.FieldByName('in_office_date').AsString<>'')
       then begin
         if (cdsOKPeriod.FieldByName('cod_pr_off').AsString='')
         and (cdsOKPeriod.FieldByName('pr_off').AsString='')
         then begin
           er_mes:=er_mes+'���� �������� ���� ������� ����������� ������ � ��������� �� ������, �� ����������� ������ ���� �������� �������� �������� ����������� ������ � ���������'+#13;
         end;
         if (cdsOKPeriod.FieldByName('out_office_date').AsDatetime>now)
         or (cdsOKPeriod.FieldByName('out_office_date').AsDatetime<cdsOKPeriod.FieldByName('in_office_date').AsDatetime)
         then begin
           er_mes:=er_mes+'���� ����������� ������ � ��������� �� ������ ���� ������ ������� ���� � ������ ���� ������ ������ � ���� ���������'+#13;
         end;
       end;

      cdsOKPeriod.Next;

     End;

//  9: If (cdsOKRise.State in dsEditModes) and (cdbgOKRise.CanFocus)
//     Then begin
     Tabokrise_9Show(nil);
     cdsOKRise.first;
       if (cdsOKpersonal.FieldByName('is_rise').AsString='1')
       and (cdsOKRise.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������������ ����"'+#13;
  //       exit;
       end;

     while not cdsOKRise.eof do begin

// ������������
//
       if cdsOKpersonal.FieldByName('is_rise').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������������ ���"'+#13;
  //       exit;
       end;

       if cdsOKRise.FieldByName('rise_info').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'�������� � ��������� (������������)'+#13;
  //       DBEdit12.SetFocus;
    //     exit;
       end;
//
//
       check_date_message_:= check_date_yyyymmdd(cdsOKRise.FieldByName('rise_date_year').AsString,
         cdsOKRise.FieldByName('rise_date_mm').AsString,cdsOKRise.FieldByName('rise_date_dd').AsString,
         'N');

       if check_date_message_<>'1'
       then begin
//         showmessag e(
         ErMessage := ErMessage+check_date_message_;
  //       DBEdit46.SetFocus;
    //     exit;
       end;

       if cdsOKRise.FieldByName('rise_date_year').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� ����������� (������������)'+#13;
  //       DBEdit46.SetFocus;
    //     exit;
       end else begin
         if (cdsOKRise.FieldByName('rise_date_year').AsInteger> strtoint(copy(bankdate,7,4))  )
         or ((cdsOKRise.FieldByName('rise_date_year').AsInteger- strtoint(copy( cdsokpersonal.fieldbyname('birthday').asstring,7,4))<18 ))
         then begin
//           showmessag e(
         ErMessage := ErMessage+'������� ���� ��������� ������������ � ���� �������� ���������� �� ������ ���� ������ 18  � ������ �������� ����������'+#13;
  //         exit;
         end;
         if  (cdsOKRise.FieldByName('rise_date_year').AsString<>'')
         and (cdsOKRise.FieldByName('rise_date_mm').AsString<>'')
         and (cdsOKRise.FieldByName('rise_date_dd').AsString<>'')
         then begin
           raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
                cdsOKRise.FieldByName('rise_date_dd').AsString+'.'+
                cdsOKRise.FieldByName('rise_date_mm').AsString+'.'+
                cdsOKRise.FieldByName('rise_date_year').AsString,
           cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
           if ( strtodate(cdsOKRise.FieldByName('rise_date_dd').AsString+'.'+
                          cdsOKRise.FieldByName('rise_date_mm').AsString+'.'+
                          cdsOKRise.FieldByName('rise_date_year').AsString) >now )
           or (raznica<18)
           then begin
             er_mes:= er_mes+ '(05982)������� ���� ��������� ������������ � ���� �������� ����������  ������ ���� ������ 18  � ������ ���� ����� �������� ����������'+#13;
           end;

         end;
       end;
//

      cdsOKRise.Next;

     End;

// 10: If (cdsOKElection.State in dsEditModes) and (cdbgOKElection.CanFocus)
//     Then begin
     TabSheet_10Show(nil);
     cdsOKElection.first;
       if (cdsOKpersonal.FieldByName('is_Election').AsString='1')
       and (cdsOKElection.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "�������� ����"'+#13;
  //       exit;
       end;

     while not cdsOKElection.eof do begin

// ��������
//
       if cdsOKpersonal.FieldByName('is_Election').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "�������� ���"'+#13;
  //       exit;
       end;

       if cdsOKElection.FieldByName('election_post').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���������'+#13;
  //       DBEdit48.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKElection.FieldByName('election_date_begin').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������(���)'+#13;
  //       DBEdit47.SetFocus;
    //     exit;
       end else begin
         if (cdsOKElection.FieldByName('election_date_begin').AsInteger> strtoint(copy(bankdate,7,4))  )
         or ((cdsOKElection.FieldByName('election_date_begin').AsInteger- strtoint(copy( cdsokpersonal.fieldbyname('birthday').asstring,7,4))<18 ))
         then begin
//           showmessag e(
         ErMessage := ErMessage+'������� ���� �������� � ���� �������� ���������� �� ������ ���� ������ 18  � ������ �������� ����������'+#13;
  //         exit;
         end;
         if  (cdsOKElection.FieldByName('election_date_begin').AsString<>'')
         and (cdsOKElection.FieldByName('election_date_begin_mm').AsString<>'')
         and (cdsOKElection.FieldByName('election_date_begin_dd').AsString<>'')
         then begin
           raznica:=getsqlresultpar('select trunc(months_between(:p_1,:p_2)/:p_3) from dual',
                cdsOKElection.FieldByName('election_date_begin_dd').AsString+'.'+
                cdsOKElection.FieldByName('election_date_begin_mm').AsString+'.'+
                cdsOKElection.FieldByName('election_date_begin').AsString,
           cdsOKPersonal.FieldByName('BIRTHDAY').AsString,'12');
           if ( strtodate(cdsOKElection.FieldByName('election_date_begin_dd').AsString+'.'+
                          cdsOKElection.FieldByName('election_date_begin_mm').AsString+'.'+
                          cdsOKElection.FieldByName('election_date_begin').AsString) >now )
           or (raznica<18)
           then begin
             er_mes:= er_mes+ '(05974)������� ���� �������� � ���� �������� ����������  ������ ���� ������ 18  � ������ ���� ����� �������� ����������'+#13;
           end;

         end;

       end;
//
//
       if cdsOKElection.FieldByName('election_date_end').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'����������(���)'+#13;
  //       DBEdit14.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKElection.FieldByName('election_CODE').AsString=''
       then begin
    //     showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'�������������� �����'+#13;
//         DBLCBelection.SetFocus;
  //       exit;
       end;
//
       check_date_message_:= check_date_yyyymmdd(cdsOKElection.FieldByName('election_date_begin').AsString,
         cdsOKElection.FieldByName('election_date_begin_mm').AsString,cdsOKElection.FieldByName('election_date_begin_dd').AsString,
         'N');

       if check_date_message_<>'1'
       then begin
//         showmessag e(
         ErMessage := ErMessage+check_date_message_;
  //       DBEdit47.SetFocus;
    //     exit;
       end;


       if not cdsOKElection.FieldByName('election_date_end').isnull
       then begin
         check_date_message_:= check_date_yyyymmdd(cdsOKElection.FieldByName('election_date_end').AsString,
           cdsOKElection.FieldByName('election_date_end_mm').AsString,
           cdsOKElection.FieldByName('election_date_end_dd').AsString,'Y');

         if check_date_message_<>'1'
         then begin
//           showmessag e(
         ErMessage := ErMessage+check_date_message_;
  //         DBEdit14.SetFocus;
    //       exit;
         end;
       end;
      cdsOKElection.next;

     End;

// 11: If (cdsOKPremium.State in dsEditModes) and (cdbgOKPremium.CanFocus)
//     Then begin
     TabSheet_11Show(nil);

       if (cdsOKpersonal.FieldByName('is_Premium').AsString='1')
       and (cdsOKPremium.RecordCount=0)
       then begin
  //       showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "��� ������ ����"'+#13;
//         exit;
       end;

     cdsOKPremium.first;

     while not cdsOKPremium.eof do begin

// ��� ������
//
       if cdsOKpersonal.FieldByName('is_Premium').AsString='2'
       then begin
  //       showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "��� ������ ���"'+#13;
//         exit;
       end;

       if cdsOKPremium.FieldByName('premium_name').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������������'+#13;
  //       dbedit15.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKPremium.FieldByName('premium_date').AsString=''
       then begin
    //     showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� ���������'+#13;
//         dbedit16.SetFocus;
  //       exit;
       end;
//
      cdsOKPremium.next;

     End;

// 12: If (cdsOKArmy.State in dsEditModes) and (cdbgOKArmy.CanFocus)
//     Then begin
     TabSheet_12Show(nil);
       if (cdsOKpersonal.FieldByName('is_Army').AsString='1')
       and (cdsOKArmy.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "����� ����"'+#13;
  //       exit;
       end;

     cdsOKArmy.first;
     while not cdsOKArmy.eof do begin

// �������� ������
//
       if cdsOKpersonal.FieldByName('is_Army').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "����� ���"'+#13;
  //       exit;
       end;

       if cdsOKArmy.FieldByName('army_CODE').AsString=''
       then begin
    //     showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���������'+#13;
//         DBLookupComboBox7.SetFocus;
  //       exit;
       end;
//
     if cdsOKArmy.Fields.FieldByName('army_code').AsString='1'
     then begin
//
       if cdsOKArmy.FieldByName('fitness_army_CODE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��������'+#13;
  //       DBLookupComboBox6.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKArmy.FieldByName('staff_code').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� �������'+#13;
  //       DBLcbStaff.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKArmy.FieldByName('type_force_code').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� �����'+#13;
  //       DBLCBtypeforce.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKArmy.FieldByName('army_group_code').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������ �����'+#13;
  //       DBLCBtypeforce.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKArmy.FieldByName('category_army_code').AsString=''
       then begin
    //     showmessag e (
         ErMessage := ErMessage+'�� ��������� ���� '+'��������� �����'+#13;
//         DBLCBcategoryarmy.SetFocus;
  //       exit;
       end;
//
//
       if cdsOKArmy.FieldByName('special_army').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'�/�������������'+#13;
  //       dbedit52.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKArmy.FieldByName('number_vus').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'����� ���'+#13;
  //       dbedit50.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKArmy.FieldByName('military_rank_code').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'�/������'+#13;
  //       DBLCBmilitaryrank.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKArmy.FieldByName('code_army_post').AsString=''
       then begin
    //     showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� ��������� � ������ �������� �/������'+#13;
//         dbedit18.SetFocus;
  //       exit;
       end;
//
//
       if cdsOKArmy.FieldByName('name_army_office').AsString=''
       then begin
    //     showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���������'+#13;
//         dbedit55.SetFocus;
  //       exit;
       end;
//
//
       if cdsOKArmy.FieldByName('specreg_number').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'����.���� N'+#13;
  //       dbedit53.SetFocus;
    //     exit;
       end;
//

      end;

      cdsOKArmy.Next;

     End;

// 13: If (cdsOKParty.State in dsEditModes) and (cdbgOKParty.CanFocus)
//     Then begin
     TabSheet_13Show(nil);
     cdsOKParty.first;
       if (cdsOKpersonal.FieldByName('is_Party').AsString='1')
       and (cdsOKParty.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������ ����"'+#13;
  //       exit;
       end;
     while not cdsOKParty.eof do begin

// ������
//
       if cdsOKpersonal.FieldByName('is_Party').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "������ ���"'+#13;
  //       exit;
       end;

       if cdsOKParty.FieldByName('party_CODE').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������'+#13;
  //       DBLCBparty.SetFocus;
    //     exit;
       end;
//
//       if cdsOKParty.FieldByName('code_partii_prim').AsString=''
//       then begin
//         cdsOKParty.FieldByName('code_partii_prim').AsString :=
//           cdsOKParty.FieldByName('party_code_show').AsString;
//       end;
//
       if (uppercase(cdsOKParty.FieldByName('party_code_show').AsString)='���������')
       or (uppercase(cdsOKParty.FieldByName('party_code_show').AsString)='������������')
       or ((cdsOKParty.FieldByName('party_code_show').AsString)='���������')
       or ((cdsOKParty.FieldByName('party_code_show').AsString)='������������')
       or ((cdsOKParty.FieldByName('party_code_show').AsString)='���������')
       or ((cdsOKParty.FieldByName('party_code_show').AsString)='������������')
       then begin
       // ������������
       end else begin
           if cdsOKParty.FieldByName('party_date').AsString=''
           then begin
    //         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� ���������� � ������'+#13;
//             dbedit73.SetFocus;
  //           exit;
           end;
    //
           if (cdsOKParty.FieldByName('party_date').AsInteger<1917)
           or (cdsOKParty.FieldByName('party_date').AsInteger>strtoint(copy(bankdate,7,4) ) )
           then begin
    //         showmessag e(
         ErMessage := ErMessage+'������������='+cdsOKParty.FieldByName('party_date').AsString+' ��� ���������� � ������'+#13;
//             dbedit73.SetFocus;
  //           exit;
           end;
    //
    //
           if cdsOKParty.FieldByName('punishment_motive').AsString<>''
           then begin
             if cdsOKParty.FieldByName('punishment_date').AsString=''
             then begin
    //           showmessag e(
         ErMessage := ErMessage+'�� ����� ������� ���������� ���������,'+#13+
                 cdsOKParty.FieldByName('punishment_motive').AsString+#13+
                 '�� �� ��������� ���� '+#13+
                 '��� ����.���������'+#13;
//               dbed_gpn.SetFocus;
  //             exit;
             end;
           end;

           if  cdsOKParty.FieldByName('punishment_date').AsString<>''
           then begin
             if cdsOKParty.FieldByName('punishment_motive').AsString=''
             then begin
    //           showmessag e(
         ErMessage := ErMessage+'�� ����� ��� ����.���������,'+#13+
                 cdsOKParty.FieldByName('punishment_date').AsString+#13+
                 '�� �� ��������� ���� '+#13+
                 '������� ����.���������'+#13;
//               DBEd_ppn.SetFocus;
  //             exit;
             end;
           end;
    //
    //
           if  cdsOKParty.FieldByName('out_party').AsString<>''
           then begin
             if cdsOKParty.FieldByName('party_outdate').AsString=''
             then begin
    //           showmessag e(
         ErMessage := ErMessage+'�� ����� ������� ������ �� ������,'+#13+
                 cdsOKParty.FieldByName('out_party').AsString+#13+
                 '�� �� ��������� ���� '+#13+
                 '��� ������ �� ������'+#13;
//               dbed_gvp.SetFocus;
  //             exit;
             end;
           end;
    //
           if cdsOKParty.FieldByName('party_outdate').AsString<>''
           then begin
             if cdsOKParty.FieldByName('out_party').AsString=''
             then begin
    //           showmessag e(
         ErMessage := ErMessage+'�� ����� ��� ������ �� ������,'+#13+
                 cdsOKParty.FieldByName('party_outdate').ASstring +#13+
                 '�� �� ��������� ���� '+#13+
                 '������� ������ �� ������'+#13;
//               dbed_pvp.SetFocus;
  //             exit;
             end;
           end;
    //
       end;

      cdsOKParty.next;

     End;

// 15: If (cdsOKLeave.State in dsEditModes) and (cdbgOKLeave.CanFocus)
//     Then begin
     TabSheet_16Show(nil);
     cdsOKLeave.first;
     while not cdsOKLeave.eof do begin

// �������
//
       if cdsOKLeave.FieldByName('leave_CODE').AsString=''
       then begin
    //     showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'��� �������'+#13;
//         DBLookupComboBox13.SetFocus;
  //       exit;
       end;
//
//
       if cdsOKLeave.FieldByName('period_leave').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���-�� ���� �������'+#13;
  //       dbedit63.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKLeave.FieldByName('num_basis').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'����� �������'+#13;
  //       dbedit62.SetFocus;
    //     exit;
       end;
//
       if cdsOKLeave.FieldByName('begin_year').AsString=''
       then begin
    //     showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'������� ���- ������'+#13;
//         dbedit60.SetFocus;
  //       exit;
       end;
//
//
       if cdsOKLeave.FieldByName('end_year').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'�/ ���- ���������'+#13;
  //       dbedit61.SetFocus;
    //     exit;
       end;
//
//
       if    (cdsOKLeave.FieldByName('leave_CODE').AsString<>'4')
         and (cdsOKLeave.FieldByName('leave_CODE').AsString<>'7')
       then begin
           if cdsOKLeave.FieldByName('date_in_leave').AsString=''
           then begin
//             showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� ������ � ������'+#13;
  //           DBEDdate_in_leave.SetFocus;
    //         exit;
           end;
           if cdsOKLeave.FieldByName('date_out_leave').AsString=''
           then begin
//             showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'���� ������ �� �������'+#13;
  //           dbedit26.SetFocus;
    //         exit;
           end;
       end;
//

      cdsOKLeave.Next;

     End;

// 16: If (cdsOKConvictions.State in dsEditModes) and (cdbgOKConvictions.CanFocus)
//     Then begin
     TabSheet_17Show(nil);
       if (cdsOKpersonal.FieldByName('is_Convictions').AsString='1')
       and (cdsOKConvictions.recordcount=0)
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "��������� ����"'+#13;
  //       exit;
       end;

     cdsOKConvictions.first;
     while not cdsOKConvictions.eof do begin

// ���������
//
       if cdsOKpersonal.FieldByName('is_Convictions').AsString='2'
       then begin
//         showmessag e(
         ErMessage := ErMessage+'� ��������� ��� ���� ������� "��������� ���"'+#13;
  //       exit;
       end;

       if cdsOKConvictions.FieldByName('convictions_motive').AsString=''
       then begin
//         showmessag e(
         ErMessage := ErMessage+'�� ��������� ���� '+'�������'+#13;
  //       dbedit27.SetFocus;
    //     exit;
       end;
//
//
       if cdsOKConvictions.FieldByName('convictions_date').AsString=''
       then begin
//         showmessag e('�� ��������� ���� '+'���');
  //       dbedit28.SetFocus;
    //     exit;
         ErMessage := ErMessage+'�� ��������� ���� '+'���'+#13;
       end;
//
//
      cdsOKConvictions.next;

     end;

/////////////////////--------\\\\\\\\\\\\\\\\\\\\\\

  if er_mes<>'' then  ErMessage := ErMessage+#13+er_mes;

  if ErMessage <> '' then
  begin
    ShowMessage( ErMessage);
////
    if HeadBranch_='09006'
    then begin
      If not DirectoryExists('C:\NCI Bank\') Then ForceDirectories('C:\NCI Bank\');
      If not DirectoryExists('C:\NCI Bank\Ok\') Then ForceDirectories('C:\NCI Bank\Ok\');
      If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');
      try
        System.AssignFile(text_f,'C:\NCI Bank\OK\Temp\err_ok3.txt');
        System.Rewrite(text_f);

        Try
          System.Writeln(text_f,ErMessage);
        Finally
          System.CloseFile(text_f);
        End;
      except
        showmessage('�� ������� ��������� ������ � ���� "C:\NCI Bank\OK\Temp\err_ok3.txt"');
        raise;
      end;

      try
        WinExec('notepad C:\NCI Bank\OK\Temp\err_ok3.txt', SW_MAXIMIZE);
      except
        showmessage('�� ������� ������� � �������� "notepad C:\NCI Bank\OK\Temp\err_ok3.txt"');
      end;
    end;
////
    exit;
  end else begin
    if num_=0 then showmessage('������.');
  end;

end;

procedure TBOKFormSTAT.Button14Click(Sender: TObject);
var ss, ss1, s:string; // , id
k, i:Integer;
begin
    with TOpenDialog.Create(Self) do
     try
       if Execute then
       begin
         s:=FileName;
         k:=0;
         for i:=length(s) downto 1 do
         begin
          k:=k+1;
           if s[i]='\' then
           begin
            ss:=copy(s,length(s)-k+2,k-1);
            ss1:=ss;
            Break;
           end;
         end;

         if  (copy(FileName,Length(FileName)-3,4) <>'.pdf')
         and (copy(FileName,Length(FileName)-3,4) <>'.jpg')
         then begin
           showmessage('��������� ���� ������� .pdf ��� .jpg � �� '+copy(FileName,Length(FileName)-3,4));
         end else begin
            EditFileNamemaxallaSpravka.Text:=FileName;

            cdsmaxallaSpravka.Close;
            with cdsmaxallaSpravka.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value := cdsOKAddInform.FieldByName('branch').AsString;
                CreateParam(ftString,'p_2' ,ptInput);
                ParamByName('p_2').Value := cdsOKAddInform.FieldByName('id').AsString;
                CreateParam(ftString,'p_3' ,ptInput);
                ParamByName('p_3').Value := cdsOKAddInform.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='4'; // 4 ������� �������
            end;
            LoadData(cdsmaxallaSpravka, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3  and priznak=:p_4' );

           if cdsmaxallaSpravka.RecordCount=0
           then begin
             cdsmaxallaSpravka.Insert;
           end else begin
             cdsmaxallaSpravka.Edit;
           end;

           cdsmaxallaSpravka.FieldByName('ok_id').Value:=cdsOKAddInform.FieldByName('id').AsString;
           cdsmaxallaSpravka.FieldByName('priznak').Value:='4';
           cdsmaxallaSpravka.FieldByName('personal_code').Value:=cdsOKAddInform.FieldByName('personal_code').AsString;
           cdsmaxallaSpravka.FieldByName('FILE_NAME').Value:=ss1;
           cdsmaxallaSpravka.FieldByName('branch').Value:=cdsOKAddInform.FieldByName('branch').AsString;
           (cdsmaxallaSpravka.FieldByName('photo') as TBlobField).LoadFromFile(FileName);

           cdsmaxallaSpravka.post;
         end;

       end;
     finally
       Free;
     end;

  if cdsmaxallaSpravka.Active
  then cdsmaxallaSpravka.Refresh;

end;

procedure TBOKFormSTAT.BitBtn185Click(Sender: TObject);
begin
      cdsmaxallaSpravka.Close;
      with cdsmaxallaSpravka.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKAddInform.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKAddInform.FieldByName('id').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOKAddInform.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='4'; // 4-������� �������
      end;

       LoadData(cdsmaxallaSpravka, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3 and priznak=:p_4');

end;

procedure TBOKFormSTAT.BitBtn187Click(Sender: TObject);
var dbName:string;
begin
      cdsmaxallaSpravka.Close;
      with cdsmaxallaSpravka.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKAddInform.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKAddInform.FieldByName('id').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOKAddInform.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='4'; // 4-������� �������
      end;

       LoadData(cdsmaxallaSpravka, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3 and priznak=:p_4');

     if cdsmaxallaSpravka.RecordCount=0
     then begin
       showmessage('��� ������');
     end else begin
       if not DirectoryExists(ROOT_DIR+'OK\TEMP') then
       begin
         CreateDir(ROOT_DIR+'OK\TEMP');
       end;

       cdsmaxallaSpravka.First;
       dbName:=ROOT_DIR+'OK\TEMP\'+cdsmaxallaSpravka.FieldByName('file_name').AsString;
//showmessage(dbName);
       TBlobField(cdsmaxallaSpravka.FieldByName('photo')).SaveToFile(dbName);

       OpenDlFile.FileName:=dbName;
       if OpenDlFile.Execute then
       begin
         ShellExecute(0, 'open', PChar(dbName), '', '', SW_SHOW);
       end;
     end;

end;

procedure TBOKFormSTAT.BitBtn186Click(Sender: TObject);
begin
      cdsmaxallaSpravka.Close;
      with cdsmaxallaSpravka.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := cdsOKAddInform.FieldByName('branch').AsString;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsOKAddInform.FieldByName('id').AsString;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := cdsOKAddInform.FieldByName('personal_code').AsString;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value :='4'; // 4-������� �������
      end;

       LoadData(cdsmaxallaSpravka, 'select * from ok_photo where branch=:p_1 and ok_id=:p_2 and personal_code=:p_3 and priznak=:p_4');

end;

procedure TBOKFormSTAT.cdsMaxallaSpravkaAfterOpen(DataSet: TDataSet);
begin
  If dsOKAddInform.DataSet.Active Then
  Begin
    cdsMAXALLASpravka.MasterSource    := dsOKConvictions;
    cdsMAXALLASpravka.IndexFieldNames := 'branch;personal_code;ok_id';
    cdsMAXALLASpravka.MasterFields    := 'branch;personal_code;id';
  End;

end;

procedure TBOKFormSTAT.BitBtn188Click(Sender: TObject);
begin
  If  (not cdsOK_diplom.IsEmpty) Then
         Begin
           cdsOK_diplom.Delete;
           cdsOK_AfterPost(dsOK_diplom.DataSet);
         end;
end;

procedure TBOKFormSTAT.bbSudDel3Click(Sender: TObject);
begin
  If  (not cdsSpravka.IsEmpty) Then
         Begin
           cdsSpravka.Delete;
           cdsOK_AfterPost(dsSpravka.DataSet);
         end;

end;

procedure TBOKFormSTAT.BitBtn180Click(Sender: TObject);
begin
  If  (not cdsMAXALLASpravka.IsEmpty) Then
         Begin
           cdsMAXALLASpravka.Delete;
           cdsOK_AfterPost(dsMAXALLASpravka.DataSet);
         end;

end;

procedure TBOKFormSTAT.BitBtn163Click(Sender: TObject);
begin
// ������ �� ss_dblink_branch � ����� ������ �� ok_personal ������� �������
end;

procedure TBOKFormSTAT.BitBtn173Click(Sender: TObject);
begin
// ����������� �� � ������� ��� � ������� id � ��� ���.������
end;

procedure TBOKFormSTAT.bbGoToMfoClick(Sender: TObject);
var D: tdata;
  FilialName_, Head_, sql_ : string;
  k:integer;
  ParentNode0, ParentNode1, ParentNode2, ParentNode3, ParentNode4, ParentNode5: TTreeNode;
  i : integer;
begin
// alter session
  cdbgOKStat.width:= GBcdbgOKStat.width-14;

  cdsOKStat.readonly := false;

  filial_branch:=  edMFOStat.Text;
  curBranch:=  edMFOStat.Text;
  if copy(branch,1,2)='09'
  then begin
    old_schema:= CurrentSchema;
    old_branch:=branch;
    old_bankdate := bankdate;
  end;

  if filial_branch<>old_branch
  then begin
    loaddata(cdstemp,'select * from ss_dblink_branch where branch='''+filial_branch+'''');
    filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
    if filial_schema=''
    then begin
      showmessage('�� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
    end else begin
     FilialName_ :=cdstemp.fieldbyname('name').asstring;
     try
      sql_:='alter session set current_schema = '+filial_schema;
      ExecSQL(sql_);
      branch :=  filial_branch;

      if (headbranch_='09006')
      then begin
        mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
          ' where branch=:p_1',branch);
        if varisnull(mfo_category_type_code_VAR)
        then begin
          mfo_category_type_code :='0';
          showmessage('(22102)������� ��������� ������� '+branch+' � ���� �����.(��������� ���������� ��������� ��������)');
        end else begin
          mfo_category_type_code :=vartostr(mfo_category_type_code_VAR) ;
        end;
        gbFilialStat.Caption:= '    ���������:'+mfo_category_type_code+'  - ������� ���������� - '+FilialName_;
      end else begin
        mfo_category_type_code :='-1';
        gbFilialStat.Caption:= '    ������� ���������� - ����  ';
      end;

  //memodelete.lines.add(sql_);
       k:=getsqlresult('select count(*) from users where user_name=user'); //loaddata(cdsTemp2,
       if k=0
       then begin
         try
           ExecSQLPAR('begin IS_GO_USER(:p_1,:p_2);end;',UpperCase(UserName),go_user_code);
  //         execSql('insert into users select seq_users.nextval,'''+filial_branch+''',user,user,user,0,0,sysdate,null from dual');
           execSql('commit');
         except on e:exception
           do begin
             execSql('rollback');
             showmessage(e.Message);
  //           exit;
           end;
         end;

       end;

       ExecSQL('begin info.init; end;');

  /////

  //     ExecSQL('alter session set NLS_DATE_FORMAT ='+''''+'dd.mm.yyyy'+'''');
       execsql('COMMIT');
       bankdate:=getsqlresultPAR('select to_char(curr_date,''dd.mm.yyyy'') '+ // :P
      ' from branch where bank_id=:p_1',branch);

     finally
  //    ROLLBACK;
     end;
    end;

  ////////////////////////////////////////////
    Head_ := VarToStr(getSqlResultpar('select CONST.GETCONST(:p_1) from dual','23001'));
    if Head_ <> convert('������ � � �������� �����' +Branch) then
    begin
       sql_:='select * from s_mfo '+
          ' where bank_id=union_id '+
          ' and bank_id=:p_1'+ //'''+Branch+''' '+
          ' and header_id<>union_id '+
          ' and rownum<:p_2';

        cdsTempSource.Close;
        with cdsTempSource.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := branch;
            CreateParam(ftString,'p_2' ,ptInput);
            ParamByName('p_2').Value := '2';
        end;
       loadData(cdsTempSource,sql_);
    //showmessage(sql_);

    // �����
    //showmessage('2)�� �������� ��������� ');
        FiltrLevel:='3';
        FiltrLevelName:='�����';
        BossLevel := '3';
    // ���
       while not cdsTempSource.eof
       do begin
        BossLevel := '2';
        FiltrLevel:= '2';
        FiltrLevelName:='�������';
    //showmessage('bosslevel)�� �������� ��������� ');
        cdsTempSource.next;
       end;
       if Head_ = convert('������ � � �������� �����' +Branch)
       then begin
         FiltrLevel:='3';
         FiltrLevelName:='�����';
         BossLevel := '3';
       end;
       if Head_ = convert('������ � � ��������� �����' +Branch)
       then begin
        BossLevel := '2';
        FiltrLevel:= '2';
        FiltrLevelName:='�������';
       end;
    end else begin
      FiltrLevel:='1';
      FiltrLevelName:='����������';
      BossLevel := '1';

    end;
      lbShowBank.Caption := ' "'+branch+'" '+ '  ('+FiltrLevelName+')';
  ////////////////////////////////////////////
    LastPanel := 'RefPanel';
    pcmainok.ActivePage := RefPanel_;

    actCopyPers.Checked     := False ;
    actRef2.Checked     := False ;
    actRef.Checked    := True ;
    actTabel.Checked     := False ;
    actKurs.Checked     := False ;

    actNew.Checked     := False;
    actTable.Checked   := False;
    actForm.Checked    := False;
    actDetails.Checked := False;
    actReAccept.Checked  := False;
    actiias.Checked := false;

    if bosslevel<>'0' then actNew.Enabled         := True ;
    actUndoChanges.Enabled := False;

    OptionsPanel.Visible := False;

  // ������� ����������
    mfo_category_type_code_proc;


        cdsOKStat.DisableControls;

        cdsOKStat.close;
        with cdsOKStat.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
        end;
      LoadData(cdsOKStat,       SQL_OKStat+' where branch=:p_1');
      cdsOKStat.Filtered:=false;
//      cdsOKStat.Filter := 'department_code=0';
//      cdsOKStat.Filtered:=true;

      cdsOKStat.Close;

      loadData(cdsSSokDepartment_RO, SQL_ssokDepartment_set);
      loadData(cdsSSokSpecial_RO, SQL_ssokSpecial_set);
      if (headbranch_='09006')
      then begin
          mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
          ' where branch=:p_1',branch);
          if varisnull(mfo_category_type_code_VAR)
          then begin
            mfo_category_type_code :='0';
            showmessage('(22250)������� ��������� ������� '+branch+' � ���� �����.(��������� ���������� ��������� ��������)');
          end else begin
            mfo_category_type_code :=vartostr(mfo_category_type_code_VAR) ;
          end;
          sql_ :='select sop.post_code, to_char(soc.salary) salary, soc.category_name '+
                 ' from ss_ok_post_category sop, ss_ok_category soc '+
                 ' where sop.category_code=soc.category_code'+
                 ' and sop.mfo_category_type_code=:p_1';
          cdsSSOKPostCategory.close;
          with cdsSSOKPostCategory.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := mfo_category_type_code;
          end;
          loadData(cdsSSOKPostCategory, SQL_);
      end else begin
          cdsSSOKPostCategory.close;
          with cdsSSOKPostCategory.Params
          do begin
              clear;
          end;
          loadData(cdsSSOKPostCategory, SQL_cdsSSOKPostCategory);
      end;

      addLookUpField(cdsOKStat, cdsSSokPost_Set, 'post_code_show', 'post_code', 'post_code', 'post_name', True);
      addLookUpField(cdsOKStat, cdsSSOKDepartment_RO, 'department_code_show', 'department_code', 'department_code', 'department_name', False);
      addLookUpField(cdsOKStat, cdsSSOKSpecial_RO, 'special_show', 'special_code', 'special_code', 'special_name', False);
      addLookUpField(cdsOKStat, cdsSSOKPostCategory, 'salary_show', 'post_code', 'post_code', 'salary', False);
      addLookUpField(cdsOKStat, cdsSSOKPostCategory, 'razrad_show', 'post_code', 'post_code', 'category_name', False);
//      DBTsalary.DataSource := dsOKStat;
      cdsOKStat.Open;

      cdsOKStat.EnableControls;



    PC.ActivePage := TabOKStat;
        BOKFormSTAT.Source.close;
        with BOKFormSTAT.Source.Params
        do begin
            clear;
                            CreateParam(ftString,'p_1' ,ptInput);
                            ParamByName('p_1').Value := 'A';
                            CreateParam(ftInteger,'p_2' ,ptInput);
                            ParamByName('p_2').Value := strtoint(BossLevel);
        end;
        sql_ :=    'select a.department_code id, a.department_code||'') ''||a.department_name name '+
          ' from ss_ok_department a where'+
          ' a.state_notes=:p_1 and level_department_code in(:p_2)'+
          ' order by a.department_code';
        LoadData(BOKFormSTAT.Source, sql_ ,True);

    CBDep.Clear;
  //showmessage('BossLevel '+BossLevel);
    while not BOKFormSTAT.Source.Eof do
    begin
        D := TData.Create;
        with D do
        begin
          Id := BOKFormSTAT.Source.FieldByName('id').AsString;
          Name := BOKFormSTAT.Source.FieldByName('name').AsString;
        end;
        CBDep.Items.AddObject(BOKFormSTAT.Source.FieldByName('name').AsString, D);
  //showmessage(BOKFormSTAT.Source.FieldByName('name').AsString);
        BOKFormSTAT.Source.Next;
    end;

  ////////////

  /////////////////





  ///////////////////
  //  ������ ������ BEGIN
    TreeV.Items.BeginUpdate;
    try
      for I := TreeV.Items.Count - 1 downto 0
      do begin
        TreeV.items[I].Delete;
      end;
    finally
      TreeV.Items.EndUpdate;
    end;


    TreeV.Items.BeginUpdate;
    ParentNode0 := TreeV.Items.Add(nil, FiltrLevelName );
    ParentNode0.ImageIndex := 0;
    ParentNode0.SelectedIndex := 0;
    TreeV.Items.EndUpdate;

    try
      cdsDerevo.close;

        with cdsDerevo.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := FiltrLevel;
            CreateParam(ftString,'p_2' ,ptInput);
            ParamByName('p_2').Value := 'A';
        end;
        sql_:=SQL_Derevo+
            ' where d.level_department_code=:p_1'+ //FiltrLevel+
            ' and state_notes=:p_2'+ //''A'' '+
            ' connect by d.high_dep_code = prior d.department_code'+
            ' start with d.high_dep_code is null';
      loaddata( cdsDerevo, sql_);


    except on e:exception
      do begin
        showmessage(sql_+#13+e.Message);
      end;
    end;

  // ����� ������ BEGIN
    ParentNode1 :=ParentNode0;
    ParentNode2 :=ParentNode0;
    ParentNode3 :=ParentNode0;
    ParentNode4 :=ParentNode0;
  //  ParentNode5 :=ParentNode0;

    cdsDerevo.first;
    while not cdsDerevo.eof do begin
  //try
      if cdsDerevo.FieldbyName('level').AsString='1'
      then begin
        ParentNode1 := TreeV.Items.AddChildObject(
          ParentNode0,
          cdsDerevo.FieldbyName('name_').AsString,
          Pointer( cdsDerevo.FieldbyName('id').AsInteger));
        ParentNode1.ImageIndex := 1;
        ParentNode1.SelectedIndex := 1;
      end;

      if cdsDerevo.FieldbyName('level').AsString='2'
      then begin
        ParentNode2 := TreeV.Items.AddChildObject(
          ParentNode1,
          cdsDerevo.FieldbyName('name_').AsString,
          Pointer( cdsDerevo.FieldbyName('id').AsInteger));
        ParentNode2.ImageIndex := 1;
        ParentNode2.SelectedIndex := 1;
      end;

      if cdsDerevo.FieldbyName('level').AsString='3'
      then begin
        ParentNode3 := TreeV.Items.AddChildObject(
          ParentNode2,
          cdsDerevo.FieldbyName('name_').AsString,
          Pointer( cdsDerevo.FieldbyName('id').AsInteger));
        ParentNode3.ImageIndex := 1;
        ParentNode3.SelectedIndex := 1;
      end;

      if cdsDerevo.FieldbyName('level').AsString='4'
      then begin
        ParentNode4 := TreeV.Items.AddChildObject(
          ParentNode3,
          cdsDerevo.FieldbyName('name_').AsString,
          Pointer( cdsDerevo.FieldbyName('id').AsInteger));
        ParentNode4.ImageIndex := 1;
        ParentNode4.SelectedIndex := 1;
      end;

      if cdsDerevo.FieldbyName('level').AsString='5'
      then begin
        ParentNode5 := TreeV.Items.AddChildObject(
          ParentNode4,
          cdsDerevo.FieldbyName('name_').AsString,
          Pointer( cdsDerevo.FieldbyName('id').AsInteger));
        ParentNode5.ImageIndex := 1;
        ParentNode5.SelectedIndex := 1;
      end;

  //except
  //showmessage('*5');
  //end;
      cdsDerevo.Next;
    end;

  // ����� ������ END

  //  ������ ������ END

  end else begin
  // ��������� �� 09006
      loaddata(cdstemp,'select * from ss_dblink_branch where branch='''+filial_branch+'''');
      filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
      if filial_schema=''
      then begin
        showmessage('�� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
      end else begin
       try
        sql_:='alter session set current_schema = '+filial_schema;
        ExecSQL(sql_);
        branch :=  filial_branch;
    //memodelete.lines.add(sql_);

         ExecSQL('begin info.init; end;');

    /////

    //     ExecSQL('alter session set NLS_DATE_FORMAT ='+''''+'dd.mm.yyyy'+'''');
         execsql('COMMIT');
         bankdate:=getsqlresultPAR('select to_char(curr_date,''dd.mm.yyyy'') '+ // :P
        ' from branch where bank_id=:p_1',branch);

       finally
    //    ROLLBACK;
       end;
      end;

    ////////////////////////////////////////////
      Head_ := VarToStr(getSqlResultpar('select CONST.GETCONST(:p_1) from dual','23001'));
      if Head_ <> convert('������ � � �������� �����' +Branch) then
      begin
         sql_:='select * from s_mfo '+
            ' where bank_id=union_id '+
            ' and bank_id=:p_1'+ //'''+Branch+''' '+
            ' and header_id<>union_id '+
            ' and rownum<:p_2';

          cdsTempSource.Close;
          with cdsTempSource.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := branch;
              CreateParam(ftString,'p_2' ,ptInput);
              ParamByName('p_2').Value := '2';
          end;
         loadData(cdsTempSource,sql_);
      //showmessage(sql_);

      // �����
      //showmessage('2)�� �������� ��������� ');
          FiltrLevel:='3';
          FiltrLevelName:='�����';
          BossLevel := '3';
      // ���
         while not cdsTempSource.eof
         do begin
          BossLevel := '2';
          FiltrLevel:= '2';
          FiltrLevelName:='�������';
      //showmessage('bosslevel)�� �������� ��������� ');
          cdsTempSource.next;
         end;
         if Head_ = convert('������ � � �������� �����' +Branch)
         then begin
           FiltrLevel:='3';
           FiltrLevelName:='�����';
           BossLevel := '3';
         end;
         if Head_ = convert('������ � � ��������� �����' +Branch)
         then begin
          BossLevel := '2';
          FiltrLevel:= '2';
          FiltrLevelName:='�������';
         end;
      end else begin
        FiltrLevel:='1';
        FiltrLevelName:='����������';
        BossLevel := '1';

      end;
        lbShowBank.Caption := ' "'+branch+'" '+ '  ('+FiltrLevelName+')';
    ////////////////////////////////////////////
      LastPanel := 'RefPanel';
      pcmainok.ActivePage := RefPanel_;

      actCopyPers.Checked     := False ;
      actRef2.Checked     := False ;
      actRef.Checked    := True ;
      actTabel.Checked     := False ;
      actKurs.Checked     := False ;

      actNew.Checked     := False;
      actTable.Checked   := False;
      actForm.Checked    := False;
      actDetails.Checked := False;
      actReAccept.Checked  := False;
      actiias.Checked := false;

      if bosslevel<>'0' then actNew.Enabled         := True ;
      actUndoChanges.Enabled := False;

      OptionsPanel.Visible := False;

    // ������� ����������
    mfo_category_type_code_proc;



          cdsOKStat.DisableControls;

          cdsOKStat.close;
          with cdsOKStat.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := curBranch;
          end;
        LoadData(cdsOKStat,       SQL_OKStat+' where branch=:p_1');
        cdsOKStat.Filtered:=false;
//        cdsOKStat.Filter := 'department_code=0';
//        cdsOKStat.Filtered:=true;

        cdsOKStat.Close;

        if not cdsSSOKDepartment_RO.Active then loadData(cdsSSokDepartment_RO, SQL_ssokDepartment_set);
        if not cdsSSOKSpecial_RO.Active then loadData(cdsSSokSpecial_RO, SQL_ssokSpecial_set);

      if (headbranch_='09006')
      then begin
          mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
          ' where branch=:p_1',branch);
          if varisnull(mfo_category_type_code_VAR)
          then begin
            mfo_category_type_code :='0';
            showmessage('(22576)������� ��������� ������� '+branch+' � ���� �����.(��������� ���������� ��������� ��������)');
          end else begin
            mfo_category_type_code :=vartostr(mfo_category_type_code_VAR) ;
          end;
          sql_ :='select sop.post_code, to_char(soc.salary) salary, soc.category_name '+
                 ' from ss_ok_post_category sop, ss_ok_category soc '+
                 ' where sop.category_code=soc.category_code'+
                 ' and sop.mfo_category_type_code=:p_1';
          cdsSSOKPostCategory.close;
          with cdsSSOKPostCategory.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := mfo_category_type_code;
          end;
          loadData(cdsSSOKPostCategory, SQL_);
      end else begin
          cdsSSOKPostCategory.close;
          with cdsSSOKPostCategory.Params
          do begin
              clear;
          end;
          loadData(cdsSSOKPostCategory, SQL_cdsSSOKPostCategory);
      end;

        addLookUpField(cdsOKStat, cdsSSokPost_Set, 'post_code_show', 'post_code', 'post_code', 'post_name', True);
        addLookUpField(cdsOKStat, cdsSSOKDepartment_RO, 'department_code_show', 'department_code', 'department_code', 'department_name', False);
        addLookUpField(cdsOKStat, cdsSSOKSpecial_RO, 'special_show', 'special_code', 'special_code', 'special_name', False);
        addLookUpField(cdsOKStat, cdsSSOKPostCategory, 'salary_show', 'post_code', 'post_code', 'salary', False);
        addLookUpField(cdsOKStat, cdsSSOKPostCategory, 'razrad_show', 'post_code', 'post_code', 'category_name', False);
        cdsOKStat.Open;

        cdsOKStat.EnableControls;



      PC.ActivePage := TabOKStat;
          BOKFormSTAT.Source.close;
          with BOKFormSTAT.Source.Params
          do begin
              clear;
                              CreateParam(ftString,'p_1' ,ptInput);
                              ParamByName('p_1').Value := 'A';
                              CreateParam(ftInteger,'p_2' ,ptInput);
                              ParamByName('p_2').Value := strtoint(BossLevel);
          end;
          sql_ :=    'select a.department_code id, a.department_code||'') ''||a.department_name name '+
            ' from ss_ok_department a where'+
            ' a.state_notes=:p_1 and level_department_code in(:p_2)'+
            ' order by a.department_code';
          LoadData(BOKFormSTAT.Source, sql_ ,True);

      CBDep.Clear;
    //showmessage('BossLevel '+BossLevel);
      while not BOKFormSTAT.Source.Eof do
      begin
          D := TData.Create;
          with D do
          begin
            Id := BOKFormSTAT.Source.FieldByName('id').AsString;
            Name := BOKFormSTAT.Source.FieldByName('name').AsString;
          end;
          CBDep.Items.AddObject(BOKFormSTAT.Source.FieldByName('name').AsString, D);
    //showmessage(BOKFormSTAT.Source.FieldByName('name').AsString);
          BOKFormSTAT.Source.Next;
      end;

    ////////////

    /////////////////





    ///////////////////
    //  ������ ������ BEGIN
      TreeV.Items.BeginUpdate;
      try
        for I := TreeV.Items.Count - 1 downto 0
        do begin
          TreeV.items[I].Delete;
        end;
      finally
        TreeV.Items.EndUpdate;
      end;


      TreeV.Items.BeginUpdate;
      ParentNode0 := TreeV.Items.Add(nil, FiltrLevelName );
      ParentNode0.ImageIndex := 0;
      ParentNode0.SelectedIndex := 0;
      TreeV.Items.EndUpdate;

      try
        cdsDerevo.close;

          with cdsDerevo.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := FiltrLevel;
              CreateParam(ftString,'p_2' ,ptInput);
              ParamByName('p_2').Value := 'A';
          end;
          sql_:=SQL_Derevo+
              ' where d.level_department_code=:p_1'+ //FiltrLevel+
              ' and state_notes=:p_2'+ //''A'' '+
              ' connect by d.high_dep_code = prior d.department_code'+
              ' start with d.high_dep_code is null';
        loaddata( cdsDerevo, sql_);


      except on e:exception
        do begin
          showmessage(sql_+#13+e.Message);
        end;
      end;

    // ����� ������ BEGIN
      ParentNode1 :=ParentNode0;
      ParentNode2 :=ParentNode0;
      ParentNode3 :=ParentNode0;
      ParentNode4 :=ParentNode0;
    //  ParentNode5 :=ParentNode0;

      cdsDerevo.first;
      while not cdsDerevo.eof do begin
    //try
        if cdsDerevo.FieldbyName('level').AsString='1'
        then begin
          ParentNode1 := TreeV.Items.AddChildObject(
            ParentNode0,
            cdsDerevo.FieldbyName('name_').AsString,
            Pointer( cdsDerevo.FieldbyName('id').AsInteger));
          ParentNode1.ImageIndex := 1;
          ParentNode1.SelectedIndex := 1;
        end;

        if cdsDerevo.FieldbyName('level').AsString='2'
        then begin
          ParentNode2 := TreeV.Items.AddChildObject(
            ParentNode1,
            cdsDerevo.FieldbyName('name_').AsString,
            Pointer( cdsDerevo.FieldbyName('id').AsInteger));
          ParentNode2.ImageIndex := 1;
          ParentNode2.SelectedIndex := 1;
        end;

        if cdsDerevo.FieldbyName('level').AsString='3'
        then begin
          ParentNode3 := TreeV.Items.AddChildObject(
            ParentNode2,
            cdsDerevo.FieldbyName('name_').AsString,
            Pointer( cdsDerevo.FieldbyName('id').AsInteger));
          ParentNode3.ImageIndex := 1;
          ParentNode3.SelectedIndex := 1;
        end;

        if cdsDerevo.FieldbyName('level').AsString='4'
        then begin
          ParentNode4 := TreeV.Items.AddChildObject(
            ParentNode3,
            cdsDerevo.FieldbyName('name_').AsString,
            Pointer( cdsDerevo.FieldbyName('id').AsInteger));
          ParentNode4.ImageIndex := 1;
          ParentNode4.SelectedIndex := 1;
        end;

        if cdsDerevo.FieldbyName('level').AsString='5'
        then begin
          ParentNode5 := TreeV.Items.AddChildObject(
            ParentNode4,
            cdsDerevo.FieldbyName('name_').AsString,
            Pointer( cdsDerevo.FieldbyName('id').AsInteger));
          ParentNode5.ImageIndex := 1;
          ParentNode5.SelectedIndex := 1;
        end;

    //except
    //showmessage('*5');
    //end;
        cdsDerevo.Next;
      end;

    // ����� ������ END

    //  ������ ������ END

  end;

end;

procedure TBOKFormSTAT.tbStatClick(Sender: TObject);
var D: tdata;
 sql_ : string;
// FilialName_ : string;
begin

  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actCopyPers.Checked     := False ;
  actRef2.Checked     := False ;
  actRef.Checked    := True ;
  actTabel.Checked     := False ;
  actKurs.Checked     := False ;

  actNew.Checked     := False;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  actiias.Checked := false;

  if bosslevel<>'0' then actNew.Enabled         := True ;
  actUndoChanges.Enabled := False;

  OptionsPanel.Visible := False;

// ������� ����������
  mfo_category_type_code_proc;



    cdsOKStat.DisableControls;

      cdsOKStat.close;
      with cdsOKStat.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
      end;
    LoadData(cdsOKStat,       SQL_OKStat+' where branch=:p_1');
    cdsOKStat.Filtered:=false;
//    cdsOKStat.Filter := 'department_code=0';
//    cdsOKStat.Filtered:=true;

    cdsOKStat.Close;

    if not cdsSSOKDepartment_RO.Active then loadData(cdsSSokDepartment_RO, SQL_ssokDepartment_set);
    if not cdsSSOKSpecial_RO.Active then loadData(cdsSSokSpecial_RO, SQL_ssokSpecial_set);
      if (headbranch_='09006')
      then begin
        if not cdsSSOKPostCategory.Active
        then begin
          mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
          ' where branch=:p_1',branch);
          if varisnull(mfo_category_type_code_VAR)
          then begin
            mfo_category_type_code :='0';
            showmessage('(22828)������� ��������� ������� '+branch+' � ���� �����.(��������� ���������� ��������� ��������)');
          end else begin
            mfo_category_type_code :=vartostr(mfo_category_type_code_VAR) ;
          end;
          sql_ :='select sop.post_code, to_char(soc.salary) salary, soc.category_name '+
                 ' from ss_ok_post_category sop, ss_ok_category soc '+
                 ' where sop.category_code=soc.category_code'+
                 ' and sop.mfo_category_type_code=:p_1';
          cdsSSOKPostCategory.close;
          with cdsSSOKPostCategory.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := mfo_category_type_code;
          end;
          loadData(cdsSSOKPostCategory, SQL_);
        end;
      end else begin
        if not cdsSSOKPostCategory.Active
        then begin
          cdsSSOKPostCategory.close;
          with cdsSSOKPostCategory.Params
          do begin
              clear;
          end;
          loadData(cdsSSOKPostCategory, SQL_cdsSSOKPostCategory);
        end;
      end;

    addLookUpField(cdsOKStat, cdsSSokPost_Set, 'post_code_show', 'post_code', 'post_code', 'post_name', True);
    addLookUpField(cdsOKStat, cdsSSOKDepartment_RO, 'department_code_show', 'department_code', 'department_code', 'department_name', False);
    addLookUpField(cdsOKStat, cdsSSOKSpecial_RO, 'special_show', 'special_code', 'special_code', 'special_name', False);
    addLookUpField(cdsOKStat, cdsSSOKPostCategory, 'salary_show', 'post_code', 'post_code', 'salary', False);
    addLookUpField(cdsOKStat, cdsSSOKPostCategory, 'razrad_show', 'post_code', 'post_code', 'category_name', False);
    cdsOKStat.Open;

    cdsOKStat.EnableControls;


  PC.ActivePage := TabOKStat;
  if bosslevel='0'
  then begin
//    sql_ :=    'select a.department_code id, a.department_code||'') ''||a.department_name name '+
//      ' from ss_ok_department a where'+
//      ' a.state_notes=''A'' '+
//      ' order by a.department_code'
    sql_ :=    'select a.department_code id, a.department_code||'') ''||a.department_name name '+
      ' from ss_ok_department a where'+
      ' a.state_notes=:p_1'+
      ' order by a.department_code';
      BOKFormSTAT.Source.close;
      with BOKFormSTAT.Source.Params
      do begin
          clear;
                          CreateParam(ftString,'p_1' ,ptInput);
                          ParamByName('p_1').Value := 'A';
                          CreateParam(ftInteger,'p_2' ,ptInput);
                          ParamByName('p_2').Value := strtoint(BossLevel);
                          CreateParam(ftInteger,'p_3' ,ptInput);
                          ParamByName('p_3').Value := 4;
      end;
    LoadData(BOKFormSTAT.Source, sql_ ,True);
  end else begin
      BOKFormSTAT.Source.close;
      with BOKFormSTAT.Source.Params
      do begin
          clear;
                          CreateParam(ftString,'p_1' ,ptInput);
                          ParamByName('p_1').Value := 'A';
                          CreateParam(ftInteger,'p_2' ,ptInput);
                          ParamByName('p_2').Value := strtoint(BossLevel);
      end;
      sql_ :=    'select a.department_code id, a.department_code||'') ''||a.department_name name '+
        ' from ss_ok_department a where'+
        ' a.state_notes=:p_1 and level_department_code in(:p_2)'+
        ' order by a.department_code';
      LoadData(BOKFormSTAT.Source, sql_ ,True);
  end;

  CBDep.Clear;
//showmessage('BossLevel '+BossLevel);
  while not BOKFormSTAT.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKFormSTAT.Source.FieldByName('id').AsString;
        Name := BOKFormSTAT.Source.FieldByName('name').AsString;
      end;
      CBDep.Items.AddObject(BOKFormSTAT.Source.FieldByName('name').AsString, D);
//showmessage(BOKFormSTAT.Source.FieldByName('name').AsString);
      BOKFormSTAT.Source.Next;
  end;

////////////
      BOKFormSTAT.Source.close;
      with BOKFormSTAT.Source.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := 'A';
      end;

  LoadData(BOKFormSTAT.Source,'SELECT special_code id,'+
                     ' special_code||'') ''||special_name name'+
                     ' FROM ss_ok_special'+
                     ' WHERE state_notes=:p_1'+
                     ' order by special_code',True);

/////////////////

    if bosslevel='0'
    then begin
        BOKFormSTAT.Source.Close;
        with BOKFormSTAT.Source.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := 'A';
        end;
        sql_ := 'SELECT post_code id, post_code||'') ''||post_name name'+
          ' FROM ss_ok_post d where d.state_notes like :p_1 order by post_code';
        LoadData(BOKFormSTAT.Source,sql_,True);
    end else begin
      mfo_category_type_code_proc;
    end;




///////////////////

  ActDetailUndoExecute(nil);

end;

procedure TBOKFormSTAT.ToolButton2Click(Sender: TObject);
var
// n_TreeNode : TTreeNode;
  ParentNode0, ParentNode1, ParentNode2, ParentNode3, ParentNode4, ParentNode5: TTreeNode;
  i : integer;
//  q:integer;
//  key_txt,
  sql_ :string;
//  D : tdata;
begin

  actCopyPers.Checked     := False ;
  actRef.Checked     := False ;
  actRef2.Checked    := True ;
  actTabel.Checked     := False ;
  actKurs.Checked     := False ;

  actNew.Checked     := False;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  actiias.Checked := false;

  if bosslevel<>'0' then actNew.Enabled         := True ;
  actUndoChanges.Enabled := False;

  OptionsPanel.Visible := False;

  LastPanel := 'Ref2Panel';
  pcmainok.ActivePage := RefPanel_;

//  ������ ������ BEGIN
  TreeV.Items.BeginUpdate;
  try
    for I := TreeV.Items.Count - 1 downto 0
    do begin
      TreeV.items[I].Delete;
    end;
  finally
    TreeV.Items.EndUpdate;
  end;


  TreeV.Items.BeginUpdate;
  ParentNode0 := TreeV.Items.Add(nil, FiltrLevelName );
  ParentNode0.ImageIndex := 0;
  ParentNode0.SelectedIndex := 0;
  TreeV.Items.EndUpdate;

  try
    cdsDerevo.close;
    if bosslevel='0'
    then begin

      with cdsDerevo.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := 'A';
      end;
      sql_:=SQL_Derevo+
          ' where state_notes=:p_1 '+
          ' connect by d.high_dep_code = prior d.department_code'+
          ' start with d.high_dep_code is null';
    end else begin

      with cdsDerevo.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := FiltrLevel;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
      sql_:=SQL_Derevo+
          ' where d.level_department_code=:p_1'+ //FiltrLevel+
          ' and state_notes=:p_2'+ //''A'' '+
          ' connect by d.high_dep_code = prior d.department_code'+
          ' start with d.high_dep_code is null';
    end;
    loaddata( cdsDerevo, sql_);


  except on e:exception
    do begin
      showmessage(sql_+#13+e.Message);
    end;
  end;

// ����� ������ BEGIN
  ParentNode1 :=ParentNode0;
  ParentNode2 :=ParentNode0;
  ParentNode3 :=ParentNode0;
  ParentNode4 :=ParentNode0;
//  ParentNode5 :=ParentNode0;

  cdsDerevo.first;
  while not cdsDerevo.eof do begin
//try
    if cdsDerevo.FieldbyName('level').AsString='1'
    then begin
      ParentNode1 := TreeV.Items.AddChildObject(
        ParentNode0,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode1.ImageIndex := 1;
      ParentNode1.SelectedIndex := 1;
    end;

    if cdsDerevo.FieldbyName('level').AsString='2'
    then begin
      ParentNode2 := TreeV.Items.AddChildObject(
        ParentNode1,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode2.ImageIndex := 1;
      ParentNode2.SelectedIndex := 1;
    end;

    if cdsDerevo.FieldbyName('level').AsString='3'
    then begin
      ParentNode3 := TreeV.Items.AddChildObject(
        ParentNode2,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode3.ImageIndex := 1;
      ParentNode3.SelectedIndex := 1;
    end;

    if cdsDerevo.FieldbyName('level').AsString='4'
    then begin
      ParentNode4 := TreeV.Items.AddChildObject(
        ParentNode3,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode4.ImageIndex := 1;
      ParentNode4.SelectedIndex := 1;
    end;

    if cdsDerevo.FieldbyName('level').AsString='5'
    then begin
      ParentNode5 := TreeV.Items.AddChildObject(
        ParentNode4,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode5.ImageIndex := 1;
      ParentNode5.SelectedIndex := 1;
    end;

//except
//showmessage('*5');
//end;
    cdsDerevo.Next;
  end;

// ����� ������ END

//  ������ ������ END


  PC.ActivePage := TabOKPersonal;
  ActDetailUndoExecute(nil);
//showmessage('!!'+INIT_KEY + 'TBOKForm\TfmFilterPersonal');
  if BOKFormSTAT.chbsavefiltr.checked
  then begin

    With BOKFormSTAT.Registry do
    Try
      OpenKey(INIT_KEY + 'TBOKForm\TfmFilterPersonal', False);

      If ValueExists('edDepartment')
      Then Begin
//        key_txt := ReadString('edDepartment');
//        if  key_txt <>''
//        then begin
//showmessage('1)'+key_txt);
//          edDepartmentcodeNew.Text := '1';
          edDepartmentcodeNew.Text := ReadString('edDepartment');
//        end;
      end;
    Finally
      CloseKey;
    End;

    With BOKFormSTAT.Registry do
    Try
      OpenKey(INIT_KEY + TComponent(Self.Owner).ClassName + '\' + Self.ClassName, False);
{
      If ValueExists('edDepartmentcodeNew')
      Then Begin
        key_txt := ReadString('edDepartmentcodeNew');
        if key_txt <> ''
        then begin
//showmessage('2)'+key_txt);
          edDepartmentcodeNew.Text := key_txt;
        end;
      End;
}
      If ValueExists('edDEPARTMENTNUMnew')
      Then Begin
        edDEPARTMENTNUMnew.Text := ReadString('edDEPARTMENTNUMnew');
      End;

      If ValueExists('edDepartmentNameNew')
      Then Begin
        edDepartmentNameNew.Text := ReadString('edDepartmentNameNew');
      End;

    Finally
      CloseKey;
    End;

      if edDepartmentNameNew.Text<>''
      then begin
        edDEPARTMENTNUMnew.text:='';
        edDepartmentcodeNew.Text:='';
//        edDepartmentNameNew.Text:='';
      end;
      if  edDEPARTMENTNUMnew.Text<>''
      then begin
//        edDEPARTMENTNUMnew.text:='';
        edDepartmentcodeNew.Text:='';
        edDepartmentNameNew.Text:='';
      end;
      if  edDepartmentcodeNew.Text<>''
      then begin
        edDEPARTMENTNUMnew.text:='';
//        edDepartmentcodeNew.Text:='';
        edDepartmentNameNew.Text:='';
      end;

    if (edDepartmentNameNew.Text<>'')
      or  (edDEPARTMENTNUMnew.Text<>'')
      or  (edDepartmentcodeNew.Text<>'')
    then begin
      actFindDep.execute;
    end;

  end;

end;

procedure TBOKFormSTAT.TreeVKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TreeVClick(Sender);

end;

procedure TBOKFormSTAT.TreeVClick(Sender: TObject);
var
// is_found : boolean;
  i : integer;
//  w : string;
begin

//  showmessage('TreeV.Selected.Text ='+TreeV.Selected.Text+#13+
//              'TreeV.Selected.data ='+ IntToStr(integer(TreeV.Selected.data))
//  );
  cdsDerevo.first;

  if TreeV.Selected=nil
  then exit;

  try
    i := integer(TreeV.Selected.data)
  except
    i :=0;
  end;

  if i<>0
  then begin
    edDep.Text := inttostr(i);
//    cdsDerevo.Locate('id', Integer(TreeV.Selected.data), []);
//    lbDepcode.Caption := cdsDerevo.FieldByname('department_code').AsString;
//    LbDepname.Caption := cdsDerevo.FieldByname('department_name').AsString;


{          cdsOKPersonal.BeforePost := nil;
          cdsOKPersonal.DisableControls;

         cdsOKPersonal.close;
         if bosslevel='0'
         then begin

            with cdsOKPersonal.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value := curBranch;
                CreateParam(ftString,'p_2' ,ptInput);
                ParamByName('p_2').Value := lbDepcode.Caption;
                CreateParam(ftString,'p_3' ,ptInput);
                ParamByName('p_3').Value := lbDepcode.Caption;
            end;

            w := ' where p.branch like :p_1'+ // ''''+curBranch+''''+
            ' and (p.department_code=:p_2'+ // lbDepcode.Caption+
            ' or p.department_code in '+
                  '(select d.department_code from ss_ok_department d'+
                  ' connect by d.high_dep_code = prior d.department_code'+
//                  ' start with d.high_dep_code='+ lbDepcode.Caption+') )'
                  ' start with d.high_dep_code=:p_3) )';
         end else begin
            with cdsOKPersonal.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value := curBranch;
                CreateParam(ftString,'p_2' ,ptInput);
                ParamByName('p_2').Value := lbDepcode.Caption;
                CreateParam(ftString,'p_3' ,ptInput);
                ParamByName('p_3').Value := lbDepcode.Caption;
            end;

            w := ' where p.branch=:p_1'+ // ''''+curBranch+''''+
            ' and (p.department_code=:p_2'+ //lbDepcode.Caption+
            ' or p.department_code in '+
                  '(select d.department_code from ss_ok_department d'+
                  ' connect by d.high_dep_code = prior d.department_code'+
//                  ' start with d.high_dep_code='+ lbDepcode.Caption+') )';
                  ' start with d.high_dep_code=:p_3) )';
         end;
          LoadData(cdsOKPersonal,  SQL_OKPersonal+w);
          cdsOKPersonal.Close;

  loaddata(cdsSS_OK_GOSUBMIT,'select * from SS_OK_GOSUBMIT');
// ���������� ���������-����-�����
  addLookUpField_OkPersonal;
// END ���������� ���������-����-�����

          cdsOKPersonal.Open;
          cdsOKPersonal.EnableControls;

          cdsOKPersonal.BeforePost := cdsOK_BeforePost;


}
//  end else begin
// ������ ������ ������
//    edDepartmentcode.text  := '';
//    edDepartmentName.text:= '';
//    edDEPARTMENTNUM.text := '';
//    LbDepname.caption := FiltrLevelName;
//    cbDepType.ItemIndex := -1;
  end;

end;

procedure TBOKFormSTAT.edMFOStatKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN
  then begin

    bbGoToMfoClick(nil);
  end;

end;

procedure TBOKFormSTAT.DBEdPostKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var
//   j, count_days ,number_day_:integer;
//   sql_, s_:string;
//   d: tdata;
//   day_date_ : tdatetime;
begin
//        showmessage(Sender.ClassName);
  Case Key of
    VK_F8:
      begin
        if (Sender.ClassType =TEdit) then
        begin
          tedit(sender).text:='';
        end;
        if (Sender.ClassType =TDBEdit) then
        begin
          if (not(tdbedit(sender).DataSource.DataSet.State in [dsEdit, dsInsert]))
          then tdbedit(sender).DataSource.DataSet.Edit;
          tdbedit(sender).DataSource.DataSet.FieldByName(tdbedit(sender).datafield).asstring:='';
          SelectNext(ActiveControl, True, True);
        end;
      end;
    VK_RETURN:
      begin
        SelectNext(ActiveControl, True, True);
      end;
    VK_F1:
      begin
          If (Sender.ClassType = TCombobox) then
          begin
            if (TCombobox(Sender).Tag <> 0) and (TCombobox(Sender).Tag <> 21)
            then BOKFormSTAT.ViewRef( TCombobox(Sender).Tag );
            if (TCombobox(Sender).Tag = 21)
            then BOKFormSTAT.ViewRef( 0 );
          end;

          If (Sender.ClassType = TDBCombobox) Then
          begin
            if (TDBCombobox(Sender).Tag <> 0) and (TDBCombobox(Sender).Tag <> 21)
            then BOKFormSTAT.ViewRef( TDBCombobox(Sender).Tag );
            if (TDBCombobox(Sender).Tag = 21)
            then BOKFormSTAT.ViewRef( 0 );
          end;

          If (Sender.ClassType = TDBLookUpCombobox) Then
          begin
            if (TDBLookUpCombobox(Sender).Tag <> 0) and (TDBLookUpCombobox(Sender).Tag <> 21)
            then BOKFormSTAT.ViewRef( TDBLookUpCombobox(Sender).Tag );
            if (TDBLookUpCombobox(Sender).Tag = 21)
            then BOKFormSTAT.ViewRef( 0 );
          end;
       end;
    VK_F9:
      begin
        cdsOKStat.readonly := false;

///////////
///////////
//////////
///// �������� ������ � ������� source ///////
//////////

        If (Sender = DBLCBpost) or (Sender = DBEdPost)
        Then begin
          mfo_category_type_code_proc;
        end;
//// ����� �� ����� ���� �� ���������� F9 � ���������� ����������� Source /////
/////////
        If (Sender = DBLCBpost) or (Sender = DBEdPost)
        THEN BEGIN
          Source.Edit;
          With TSelectDialog.CreateEx(Self, Source, Source, Source.FindField('id').Index) do
          Try
            If ShowModal = mrOk
            Then begin
//                      TEdit(Sender).Text := Source.FieldByName('ID').AsString;
//////////// \\\\\\\\\\\\\
        If (Sender = DBLCBpost) or (Sender = DBEdPost)
              then begin
                if not (cdsOKStat.State in [dsEdit, dsInsert])
                then cdsOKStat.Edit;
                cdsOKStat.FieldByName('post_code').AsString :=
                  Source.FieldByName('id').AsString;
              end;
//////////// \\\\\\\\\\\\\
            End;
          Finally
            Destination.Filtered:=false;
            Free;
          End;

        END;
//
      end;
  End;

end;

procedure TBOKFormSTAT.cdsOKStatBeforeEdit(DataSet: TDataSet);
begin
  old_post_code := cdsOKStat.fieldbyname('post_code').asstring;
end;

procedure TBOKFormSTAT.bbDoljnostiClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 department_code_old, code_,name_,count_stat_,count_fakt_ : string;
 itogo_count_stat_,itogo_count_fakt_ : double;
begin
//  showmessage( '� ������ �����9.doc');
//  MemoProt.lines.add('������ '+TimeToStr(Time));
//  MemoProt.lines.add(bbDoljnosti.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := edMFOStat.text;
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and a.branch=:p_1');


  CDS_DBBranch.filtered := false;



 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='���������';


    inc(row);
    inc(row);
    row_j:=1;

//    V.Cells[row,row_j].ColumnWidth := 5;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:='       N';
//    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ������������ ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' �� ����� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' �� �����';
    inc(row_j);

//    V.Cells[row,row_j].ColumnWidth := 20;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:=' ';
//    inc(row_j);

//    V.Cells[row,row_j].ColumnWidth := 20;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:=' ';

    row_j:=1;
    inc(row);


  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    itogo_count_stat_ :=0;
    itogo_count_fakt_ :=0;
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
//      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;


      try

        sql_:=
        ' select sop.post_code,''11''||sop.post_name, sum(nvl(okp.zp_rate_code,8)/8) '+
        ' from ss_ok_post sop, '+fil_schema+'.ok_personal okp'+
        ' where sop.post_code=okp.post_code (+)'+
        ' and okp.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sop.post_code,sop.post_name'+
        ' union all'+
        ' select sop.post_code,''00''||sop.post_name, sum(nvl(oks.quantity_post,0))'+
        ' from ss_ok_post sop, '+fil_schema+'.ok_stat oks'+
        ' where sop.post_code=oks.post_code (+)'+
        ' and oks.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' group by sop.post_code,sop.post_name'+
        ' order by 1,2';

        ExecPrc.Close;
        with ExecPrc.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value :=CDS_DBBranch.fieldbyname('branch').asstring;;
            CreateParam(ftString,'p_2' ,ptInput);
            ParamByName('p_2').Value :='2';
            CreateParam(ftString,'p_3' ,ptInput);
            ParamByName('p_3').Value :='5';
        end;
//
        loaddata(ExecPrc,sql_);

        ExecPrc.First;
        department_code_old :='-1';

        while not ExecPrc.eof
        do begin

          if copy( Trim(ExecPrc.Fields[1].AsString) ,1,2)='00'
          then begin
            // �� �����
              code_ := Trim(ExecPrc.Fields[0].AsString);
              name_ := copy( Trim(ExecPrc.Fields[1].AsString) ,3, length(Trim(ExecPrc.Fields[1].AsString)) );
              count_stat_ := Trim(ExecPrc.Fields[2].AsString);
              itogo_count_stat_ := itogo_count_stat_+  ExecPrc.Fields[2].AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
                V.Cells[row,2].Value := code_;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := name_;
                V.Cells[row,4].Value := count_stat_;
              end else begin
                V.Cells[row,4].Value := count_stat_;
              end;
          end;

          if copy( Trim(ExecPrc.Fields[1].AsString) ,1,2)='11'
          then begin
            // �� �����
              code_ := Trim(ExecPrc.Fields[0].AsString);
              name_ := copy( Trim(ExecPrc.Fields[1].AsString) ,3, length(Trim(ExecPrc.Fields[1].AsString)) );
              count_fakt_ := Trim(ExecPrc.Fields[2].AsString);
              itogo_count_fakt_ := itogo_count_fakt_+  ExecPrc.Fields[2].AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
                V.Cells[row,2].Value := code_;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := name_;
                V.Cells[row,5].Value := count_fakt_;
              end else begin
                V.Cells[row,5].Value := count_fakt_;
              end;
          end;

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
//          MemoProt.lines.add(sql_);
  //        MemoProt.lines.add(e.Message);
          showmessage('������. '+#13+
            sql_+#13+
            e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// �������� �����
                inc(row);
                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := '�����';
                V.Cells[row,4].Value := itogo_count_stat_;
                V.Cells[row,5].Value := itogo_count_fakt_;
///////////////////////////////////////////
    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //��� �������
 End;
//  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKFormSTAT.bbDepClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn, row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 department_code_old, code_,name_,count_stat_,count_fakt_ : string;
 itogo_count_stat_, itogo_count_fakt_ :double;
begin
//  showmessage( '� ������ �����9.doc');
//  MemoProt.lines.add('������ '+TimeToStr(Time));
  //MemoProt.lines.add(bbDep.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := edMFOStat.text;
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and a.branch=:p_1');


  CDS_DBBranch.filtered := false;


// ������ ���� ��� ������� �� ����


 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='�������������';


    inc(row);
    inc(row);
    row_j:=1;


    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ������������ ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' �� ����� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' �� �����';
    inc(row_j);


    row_j:=1;
    inc(row);


  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    itogo_count_stat_ :=0;
    itogo_count_fakt_ :=0;
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
//      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;


      try

        sql_:=
        ' select sop.department_code,''11''||sop.department_name, sum(nvl(okp.zp_rate_code,8)/8) '+
        ' from ss_ok_department sop, '+fil_schema+'.ok_personal okp'+
        ' where sop.department_code=okp.department_code (+)'+
        ' and sop.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sop.department_code,sop.department_name'+
        ' union all'+
        ' select sop.department_code,''00''||sop.department_name, sum(nvl(oks.quantity_post,0))'+
        ' from ss_ok_department sop, '+fil_schema+'.ok_stat oks'+
        ' where sop.department_code=oks.department_code (+)'+
        ' and sop.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' group by sop.department_code,sop.department_name'+
        ' order by 1,2';

        ExecPrc.Close;
        with ExecPrc.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value :=CDS_DBBranch.fieldbyname('branch').asstring;;
            CreateParam(ftString,'p_2' ,ptInput);
            ParamByName('p_2').Value :='2';
            CreateParam(ftString,'p_3' ,ptInput);
            ParamByName('p_3').Value :='5';
        end;
//
        loaddata(ExecPrc,sql_);

        ExecPrc.First;
        department_code_old :='-1';

        while not ExecPrc.eof
        do begin

          if copy( Trim(ExecPrc.Fields[1].AsString) ,1,2)='00'
          then begin
            // �� �����
              code_ := Trim(ExecPrc.Fields[0].AsString);
              name_ := copy( Trim(ExecPrc.Fields[1].AsString) ,3, length(Trim(ExecPrc.Fields[1].AsString)) );
              count_stat_ := Trim(ExecPrc.Fields[2].AsString);
              itogo_count_stat_ := itogo_count_stat_+  ExecPrc.Fields[2].AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
                V.Cells[row,2].Value := code_;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := name_;
                V.Cells[row,4].Value := count_stat_;
              end else begin
                V.Cells[row,4].Value := count_stat_;
              end;
          end;

          if copy( Trim(ExecPrc.Fields[1].AsString) ,1,2)='11'
          then begin
            // �� �����
              code_ := Trim(ExecPrc.Fields[0].AsString);
              name_ := copy( Trim(ExecPrc.Fields[1].AsString) ,3, length(Trim(ExecPrc.Fields[1].AsString)) );
              count_fakt_ := Trim(ExecPrc.Fields[2].AsString);
              itogo_count_fakt_ := itogo_count_fakt_+  ExecPrc.Fields[2].AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
                V.Cells[row,2].Value := code_;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := name_;
                V.Cells[row,5].Value := count_fakt_;
              end else begin
                V.Cells[row,5].Value := count_fakt_;
              end;
          end;

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
//          MemoProt.lines.add(sql_);
  //        MemoProt.lines.add(e.Message);
          showmessage('������. '+#13+
            sql_+#13+
            e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// �������� �����
                inc(row);
                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := '�����';
                V.Cells[row,4].Value := itogo_count_stat_;
                V.Cells[row,5].Value := itogo_count_fakt_;
///////////////////////////////////////////
    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //��� �������
 End;
//  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKFormSTAT.BitBtn64Click(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant;
 i, col,row:integer; // ,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname,oldpost: String;
  total_count,
  total_sum,total_sum2,total_count2:double;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2' + //''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
  row:=1;
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // ������������ �����
  V.Cells[row, i ].Value := '������������';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '��������';
  inc(i);
  V.Cells[row, i ].Value := '����������';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '�������,';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����������';
  inc(i);
  V.Cells[row, i ].Value := '�������';
  inc(i);
  V.Cells[row, i ].Value := '������������';
  inc(i);
  V.Cells[row, i ].Value := '��';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '����������';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����';

  total_count:=0;
  total_count2:=0;
  total_sum:=0;
  total_sum2:=0;

  olddepname:='x';
  oldpost:='x';
  While not cdsTempSource.Eof
  do begin
    if (headbranch_='09006')
    then begin
        sql_:='select '+
         ' c.post_name field1 ,d.category_name field2,d.category_rate,'+
         ' quantity_post,d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,'+
         ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' ok_service.GET_STAVKA(okp.branch,okp.personal_code) stavka,'+
         ' round(to_number(nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'')*nvl(d.salary,0),2) zarpl, '+
         ' to_number( nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'') float_stavka '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp, ss_ok_post_category f'+
         ' where okp.branch=:p_1'+  // '+''''+curBranch +''''+
         ' and a.department_code=:p_2'+ // cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes=:p_3'+ //''A'' '+
         ' and a.post_code=c.post_code'+
         ' and a.branch=okp.branch'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and a.special_code=okp.special_code'+
         ' and okp.status_code in (:p_4,:p_5)'+ //(2,5)'+
         ' and a.post_code=f.post_code'+
         ' and d.category_code=f.category_code'+
         ' and f.MFO_CATEGORY_TYPE_CODE=:p_6'+
         ' order by d.category_code';
        cdsTemp.close;
        with cdsTemp.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
            CreateParam(ftString,'p_2' ,ptInput);
            ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring;
            CreateParam(ftString,'p_3' ,ptInput);
            ParamByName('p_3').Value := 'A';
            CreateParam(ftInteger,'p_4' ,ptInput);
            ParamByName('p_4').Value := 2;
            CreateParam(ftInteger,'p_5' ,ptInput);
            ParamByName('p_5').Value := 5;
            CreateParam(ftString,'p_6' ,ptInput);
            ParamByName('p_6').Value := MFO_CATEGORY_TYPE_CODE;
        end;
    end else begin
        sql_:='select '+
         ' c.post_name field1 ,d.category_name field2,d.category_rate,'+
         ' quantity_post,d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,'+
         ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' ok_service.GET_STAVKA(okp.branch,okp.personal_code) stavka,'+
         ' round(to_number(nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'')*nvl(d.salary,0),2) zarpl, '+
         ' to_number( nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'') float_stavka '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp'+
         ' where okp.branch=:p_1'+  // '+''''+curBranch +''''+
         ' and a.department_code=:p_2'+ // cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes=:p_3'+ //''A'' '+
         ' and a.post_code=c.post_code'+
         ' and a.branch=okp.branch'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and a.special_code=okp.special_code'+
         ' and okp.status_code in (:p_4,:p_5)'+ //(2,5)'+
         ' and c.category_code=d.category_code (+)'+
         ' order by d.category_code';
        cdsTemp.close;
        with cdsTemp.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := curBranch;
            CreateParam(ftString,'p_2' ,ptInput);
            ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring;
            CreateParam(ftString,'p_3' ,ptInput);
            ParamByName('p_3').Value := 'A';
            CreateParam(ftInteger,'p_4' ,ptInput);
            ParamByName('p_4').Value := 2;
            CreateParam(ftInteger,'p_5' ,ptInput);
            ParamByName('p_5').Value := 5;
        end;
    end;
      loaddata(cdsTemp,sql_);

      While not cdsTemp.Eof
      do begin

          if (olddepname <>cdsTemp.Fields[6].AsString)
          then begin
            inc(row);
            inc(row);
            V.Cells[row, 1 ].NumberFormat := StrFormat;
            V.Cells[row, 1 ].Value := cdsTemp.Fields[6].AsString;
          end;
          olddepname :=cdsTemp.Fields[6].AsString;

         if (oldpost <>cdsTemp.Fields[0].AsString)
         then begin
          inc(row);
          inc(row);
          i := 1;
          For col:=0 To 5
          Do Begin

              case cdsTemp.Fields[col].DataType Of
                ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
                ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
                ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
              end;
              V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);
              inc(i);
          if col=3
          then total_count:= total_count+ cdsTemp.Fields[col].Asfloat;
          if col= 5
          then begin
            total_sum:= total_sum+   cdsTemp.Fields[col].Asfloat;
          end;
         end;

         oldpost :=cdsTemp.Fields[0].AsString;

        End;

        inc(row);
        V.Cells[row, 1 ].Value := cdsTemp.fieldbyname('fio').asstring;
        V.Cells[row, 4 ].Value := cdsTemp.fieldbyname('stavka').asstring;
        V.Cells[row, 5 ].Value := cdsTemp.fieldbyname('zarpl').asstring;
        total_sum2:= total_sum2+  cdsTemp.fieldbyname('zarpl').Asfloat;
        total_count2:=  total_count2   +  cdsTemp.fieldbyname('float_stavka').Asfloat;

        cdsTemp.Next;
     end;
     cdsTempSource.Next;

     Application.ProcessMessages;

  end;


    inc(row);
    inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '����� �� �������';

      sum2_:=floattostr(total_count);
      V.Cells[row,4].NumberFormat := NumFormat;
      V.Cells[row,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count2);
      V.Cells[row+1,4].NumberFormat := NumFormat;
      V.Cells[row+1,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count-total_count2);
      if (total_count-total_count2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;


      sum2_:=floattostr(total_sum);
      V.Cells[row,6].NumberFormat := NumFormat;
      V.Cells[row,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum2);
      V.Cells[row+1,6].NumberFormat := NumFormat;
      V.Cells[row+1,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum-total_sum2);
      if (total_sum-total_sum2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;

      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������� ���������';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '��������  ������������ �� ������';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '� ����������';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '������������ ���������';

  inc(row);
      sum2_:=floattostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����� �� �����';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '���� ������ �����';

  inc(row);
      V.Cells[row, 2].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' ';

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := bankdate;
  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '������� ����������';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' �� ��������� �� '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  V.Cells.Select;
  V.Columns.AutoFit;
  V.Visible := True; //��� �������

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.BitBtn70Click(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant; // ,Range
 i, col,row:integer; // ,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname: String;
  total_count,
  total_sum:double;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

{  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat)'+
        ' and b.state_notes=''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';
}

  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2' + //''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
  row:=1;
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);



  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // ������������ �����
  V.Cells[row, i ].Value := '������������';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '��������';
  inc(i);
  V.Cells[row, i ].Value := '����������';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '�������,';

  inc(i);
  V.Cells[row, i ].Value := '������';

  inc(i);
  V.Cells[row, i ].Value := '�����������';

  inc(i);
  V.Cells[row, i ].Value := '�������';

  inc(i);
  V.Cells[row, i ].Value := '������������';

  inc(i);
  V.Cells[row, i ].Value := '��';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '���������� "�������������"';

  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '����';

  inc(i);
  V.Cells[row, i ].Value := '������';

  inc(i);
  V.Cells[row, i ].Value := '�����';

  V.Range['A'+inttostr(row-3)+':'+'F'+inttostr(row)].Select;
  V.Columns.AutoFit;
//  selection.autofit;


  total_count:=0;
  total_sum:=0;

  olddepname:='x';

  While not cdsTempSource.Eof
  do begin
    if (headbranch_='09006')
    then begin
      sql_:='select '+
       ' c.post_name||'' "''||e.special_name||''"'' field1 , d.category_name field2,d.category_rate,'+
       ' quantity_post,d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ss_ok_special e, ss_ok_post_category f'+
       ' where a.branch=:p_1'+ //''''+curBranch +''''+
       ' and a.department_code=:p_2'+ //cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
       ' and a.department_code=b.department_code'+
        ' and b.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
       ' and b.state_notes=:p_3'+ //''A'' '+
       ' and a.post_code=c.post_code'+
       ' and a.post_code=f.post_code'+
       ' and f.MFO_CATEGORY_TYPE_CODE=:p_4'+
       ' and a.special_code=e.special_code'+
       ' and d.category_code=f.category_code'+
       ' order by d.category_code';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring ;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := MFO_CATEGORY_TYPE_CODE;
      end;
    end else begin
      sql_:='select '+
       ' c.post_name||'' "''||e.special_name||''"'' field1 , d.category_name field2,d.category_rate,'+
       ' quantity_post,d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ss_ok_special e'+
       ' where a.branch=:p_1'+ //''''+curBranch +''''+
       ' and a.department_code=:p_2'+ //cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
       ' and a.department_code=b.department_code'+
        ' and b.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
       ' and b.state_notes=:p_3'+ //''A'' '+
       ' and a.post_code=c.post_code'+
       ' and c.category_code=d.category_code (+)'+
       ' and a.special_code=e.special_code'+
       ' order by d.category_code';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring ;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
      end;
    end;
    loaddata(cdsTemp,sql_);
    While not cdsTemp.Eof
    do begin

        if (olddepname <>cdsTemp.Fields[6].AsString)
        then begin
          inc(row);
          inc(row);
          V.Cells[row, 1 ].NumberFormat := StrFormat;
          V.Cells[row, 1 ].Value := cdsTemp.Fields[6].AsString;
        end;
        olddepname :=cdsTemp.Fields[6].AsString;

        i := 1;
        inc(row);
        For col:=0 To 5
        Do Begin
            case cdsTemp.Fields[col].DataType Of
              ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
              ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
              ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
            end;
            V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);
//            V.Cells[row, i ].select;
//            V.selection.autofit;
            inc(i);
            if col=3
            then total_count:= total_count+ cdsTemp.Fields[col].Asfloat;
            if col= 5
            then total_sum:= total_sum+   cdsTemp.Fields[col].Asfloat;
        End;
     V.Range['A'+inttostr(row)+':'+'F'+inttostr(row)].Select;
     V.Columns.AutoFit;

        cdsTemp.Next;
     end;
     cdsTempSource.Next;

     Application.ProcessMessages;

  end;


      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '����� �� �������';

      sum2_:=floattostr(total_count);
      V.Cells[row,4].NumberFormat := NumFormat;
      V.Cells[row,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum);
      V.Cells[row,6].NumberFormat := NumFormat;
      V.Cells[row,6].Value:= trim(sum2_);

      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������� ���������';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '��������  ������������ �� ������';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '� ����������';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '������������ ���������';

  inc(row);
      sum2_:=floattostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '����� �� �����';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '���� ������ �����';

  inc(row);
      V.Cells[row, 2].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' ';

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := bankdate;
  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '������� ����������';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' �� ��������� �� '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';


//  V.Cells.Select;
//  V.Columns.AutoFit;
  V.Visible := True; //��� �������

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.BitBtn94Click(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant;
 i, col,row:integer; //,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,olddepname,oldpost: String; // sum2_,
//  total_count,
//  total_sum,total_sum2,total_count2:double;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2 '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';


      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
  row:=1;
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  // ������������ �����

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '���';
  inc(i);
  V.Cells[row, i ].Value := '���������';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����';
  inc(i);
  V.Cells[row, i ].Value := '�� ����������';
  inc(i);
  V.Cells[row, i ].Value := '������-���������';
  inc(i);
  V.Cells[row, i ].Value := '����������';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '����';

//  total_count:=0;
//  total_count2:=0;
//  total_sum:=0;
//  total_sum2:=0;

  olddepname:='x';
  oldpost:='x';
  While not cdsTempSource.Eof
  do begin
// ������� ������ � �����������
    if (headbranch_='09006')
    then begin
        cdsTemp.close;
        with cdsTemp.Params do
        begin
          CreateParam(ftString,'P_BRANCH',ptInput);
          ParamByName('P_BRANCH').Value:=branch;
          CreateParam(ftInteger,'P_DEP',ptInput);
          ParamByName('P_DEP').Value:= cdsTempSource.fieldbyname('DEPARTMENT_CODE').asinteger;
          CreateParam(ftString,'P_A',ptInput);
          ParamByName('P_A').Value:='A';
          CreateParam(ftInteger,'P_2',ptInput);
          ParamByName('P_2').Value:= 2;
          CreateParam(ftInteger,'P_5',ptInput);
          ParamByName('P_5').Value:= 5;
          CreateParam(ftString,'p_6' ,ptInput);
          ParamByName('p_6').Value := MFO_CATEGORY_TYPE_CODE;
        end;
        sql_:='select '+
           ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
           ' c.post_name field1 , d.category_name field2,'+
           ' ok_service.GET_WORK_PERIOD(okp.branch,okp.personal_code,info.getday) "����� ����",'+
           ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,1) "�� ���������� ����",'+
           ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,3) "������-��������� ����",'+
           ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,5) "���������� ����" '+
           ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp, ss_ok_post_category f'+
           ' where okp.branch = :P_BRANCH'+
           ' and a.department_code= :P_DEP'+
           ' and a.department_code=b.department_code'+
           ' and b.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
           ' and b.state_notes= :P_A'+
           ' and a.post_code=c.post_code'+
           ' and a.department_code=okp.department_code'+
           ' and a.post_code=okp.post_code'+
           ' and okp.status_code in ( :P_2 , :P_5 )'+
           ' and a.post_code=f.post_code'+
           ' and d.category_code=f.category_code'+
           ' and f.MFO_CATEGORY_TYPE_CODE=:p_6'+
           ' order by d.category_code';
    end else begin
        with cdsTemp do
        begin
          close;
          Params.Clear;
          Params.CreateParam(ftString,'P_BRANCH',ptInput);
          Params.ParamByName('P_BRANCH').Value:=branch;
          Params.CreateParam(ftInteger,'P_DEP',ptInput);
          Params.ParamByName('P_DEP').Value:= cdsTempSource.fieldbyname('DEPARTMENT_CODE').asinteger;
          Params.CreateParam(ftString,'P_A',ptInput);
          Params.ParamByName('P_A').Value:='A';
          Params.CreateParam(ftInteger,'P_2',ptInput);
          Params.ParamByName('P_2').Value:= 2;
          Params.CreateParam(ftInteger,'P_5',ptInput);
          Params.ParamByName('P_5').Value:= 5;
        end;
        sql_:='select '+
           ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
           ' c.post_name field1 , d.category_name field2,'+
           ' ok_service.GET_WORK_PERIOD(okp.branch,okp.personal_code,info.getday) "����� ����",'+
           ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,1) "�� ���������� ����",'+
           ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,3) "������-��������� ����",'+
           ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,5) "���������� ����" '+
           ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp'+
           ' where okp.branch = :P_BRANCH'+
           ' and a.department_code= :P_DEP'+
           ' and a.department_code=b.department_code'+
          ' and b.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
           ' and b.state_notes= :P_A'+
           ' and a.post_code=c.post_code'+
           ' and a.department_code=okp.department_code'+
           ' and a.post_code=okp.post_code'+
           ' and okp.status_code in ( :P_2 , :P_5 )'+
           ' and c.category_code=d.category_code (+)'+
           ' order by d.category_code';
      end;

      loaddata(cdsTemp,sql_);
      While not cdsTemp.Eof
      do begin

          if (olddepname <>cdsTemp.Fields[0].AsString)
          then begin
            inc(row);
            inc(row);
            V.Cells[row, 1 ].NumberFormat := StrFormat;
            V.Cells[row, 1 ].Value := cdsTemp.Fields[0].AsString;
          end;
          olddepname :=cdsTemp.Fields[0].AsString;

          inc(row);
          inc(row);
          i := 1;
          For col:=1 To 7
          Do Begin

              case cdsTemp.Fields[col].DataType Of
                ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
                ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
                ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
              end;
              V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);
              inc(i);
         end;


        inc(row);
//        V.Cells[row, 1 ].Value := cdsTemp.fieldbyname('fio').asstring;
//        V.Cells[row, 4 ].Value := cdsTemp.fieldbyname('stavka').asstring;
//        V.Cells[row, 5 ].Value := cdsTemp.fieldbyname('zarpl').asstring;
//        total_sum2:= total_sum2+  cdsTemp.fieldbyname('zarpl').Asfloat;
//        total_count2:=  total_count2   +  cdsTemp.fieldbyname('float_stavka').Asfloat;

        cdsTemp.Next;
     end;
     cdsTempSource.Next;

     Application.ProcessMessages;

  end;

{
    inc(row);
    inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '����� �� �������';

      sum2_:=float(total_count);
      V.Cells[row,4].NumberFormat := NumFormat;
      V.Cells[row,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count2);
      V.Cells[row+1,4].NumberFormat := NumFormat;
      V.Cells[row+1,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count-total_count2);
      if (total_count-total_count2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;


      sum2_:=floattostr(total_sum);
      V.Cells[row,6].NumberFormat := NumFormat;
      V.Cells[row,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum2);
      V.Cells[row+1,6].NumberFormat := NumFormat;
      V.Cells[row+1,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum-total_sum2);
      if (total_sum-total_sum2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;
}
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������� ���������';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '��������  ������������ �� ������';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '� ����������';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '������������ ���������';
{
  inc(row);
      sum2_:=float(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����� �� �����';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '���� ������ �����';

  inc(row);
      V.Cells[row, 2].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' ';

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := bankdate;
  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';
}
  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '�������� � �����������';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' �� ��������� �� '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  V.Cells.Select;
  V.Columns.AutoFit;
  V.Visible := True; //��� �������

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.BitBtn179Click(Sender: TObject);
var  sql_  :string; // , rep_branch_
 Range, Cell1, Cell2, ArrayData ,V: Variant;
 j,end_row,begin_row,col,row,nn:integer;
 NumFormat,DateFormat,StrFormat: String;
// fil_schema: String;
begin






      V := CreateOleObject('Excel.Application');
      V.Workbooks.Add;
      row:=1;
       StrFormat  := '@';
       try
        V.Cells[row,3].NumberFormat := '00.0';
        NumFormat := '# ##0.00_�_.';
        DateFormat := 'dd.mm.yyyy';
       except
        NumFormat := '# ##0,00_�_.';
        DateFormat := '��.��.����';
       end;





      try
          sql_:=
            'select '+
             ' BRANCH "���",'+
             ' DEPARTMENT_CODE "��� �.", OK_SERVICE.GET_DEPARTMENTNAME(DEPARTMENT_CODE) "�����",'+
             ' POST_CODE "��� �.", OK_SERVICE.GET_POSTNAME(POST_CODE) "���������",'+
             ' SPECIAL_CODE "��� �.", OK_SERVICE.GET_SPECIALNAME(SPECIAL_CODE) "�������������",'+
             ' QUANTITY_POST "����������",'+
             ' Emp_name "������������",'+
             ' User_name "�o����������",'+
             ' to_char(INS_DATE,''dd.mm.yyyy hh24:mi:ss'') "�����"'+
            ' from ok_stat_hist'+
            ' where branch=branch'+
            ' and INS_DATE>= to_date( :p_1 ,''dd.mm.yyyy'')'+
            ' and INS_DATE< (to_date( :p_2 ,''dd.mm.yyyy'')+1)'+
            ' order by branch,department_code,post_code,User_name,INS_DATE ';


      ExecPrc.close;
      with ExecPrc.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := dtps.text;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := dtpPO.text;
      end;
  loaddata(ExecPrc,sql_);

      except on e:exception
        do begin
          showmessage('������! '+#13+
            sql_+#13+
            e.Message+#13);
          exit;
        end;
      end;

      ExecPrc.First;
      inc(row);
      nn:=ExecPrc.FieldCount-1;
      for col:=0 to nn
      do begin
        V.Cells[row,col+1].Value := ExecPrc.Fields[col].FieldName;
      end;
    //   col:=0;

       inc(row);
      begin_row:=row;
      end_row:=row+ExecPrc.recordcount+1;
    //  showmessage('row='+inttostr(row));
    //pb1.Step :=1;
    //  pb1.min:=0;
    //  pb1.max:= ExecPrc.recordcount+1;
    //showmessage();
    // memo1.lines.add('���������� ����� '+inttostr(ExecPrc.recordcount));
    // memo1.lines.add('������ '+TimeToStr(Time));
        for col:=0 to nn do
         Begin
         V.Range[numto(col+1)+inttostr(begin_row)+':'+numto(col+1)+inttostr(end_row)].Select;
         case ExecPrc.Fields[col].DataType Of
         ftString :     V.Selection.NumberFormat := StrFormat;
         ftFloat  :     V.Selection.NumberFormat := StrFormat;
         ftDateTime:    V.Selection.NumberFormat := DateFormat;
         end;
        end;
      // ������� ���������� ������, ������� �������� ��������� �������
      ArrayData := VarArrayCreate([1, 3+ExecPrc.recordcount+1, 1, ExecPrc.FieldCount], varVariant);//, 1, cdsNsi.FieldCount
      j:=1;
      While not ExecPrc.EOF do
       begin
        for col:=0 to nn do
         Begin
    //     case ExecPrc.Fields[col].DataType Of
    //     ftString :     V.Cells[row,col+1].NumberFormat := StrFormat;
    //     ftFloat  :     V.Cells[row,col+1].NumberFormat := NumFormat;
    //     ftDateTime:    V.Cells[row,col+1].NumberFormat := DateFormat;
    //     end;
    //// V.Cells[row,col+1].Value := Trim(ExecPrc.Fields[col].AsString);
           ArrayData[j, col+1] := Trim(ExecPrc.Fields[col].AsString);
    //memo1.Lines.add(Trim(ExecPrc.Fields[col].AsString));

         End;
        inc(j);
        inc(row);
        ExecPrc.Next;
    //pb1.StepIt;
       end;

       // ����� ������� ������ �������, � ������� ����� �������� ������
       Cell1 := V.Cells[begin_row, 1];
       // ������ ������ ������ �������, � ������� ����� �������� ������
       Cell2 := V.Cells[end_row, ExecPrc.FieldCount ];

      // �������, � ������� ����� �������� ������
       Range := V.Range[numto(1)+inttostr(begin_row)+':'+numto(ExecPrc.FieldCount)+inttostr(end_row)];
    //memo1.lines.add(numto(1)+inttostr(begin_row)+':'+numto(ExecPrc.FieldCount)+inttostr(end_row));
    //   Range := V.Range[Cell1, Cell2];
      // � ��� � ��� ����� ������
      // ������� ������� ����������� ����������
    //showmessage('98');
      Range.select;
      Range.Value := ArrayData;

    ///////////////////////////////////////////

      Application.ProcessMessages;
       V.Cells.Select;
       V.Columns.AutoFit;
       V.Visible := True; //��� �������

end;

procedure TBOKFormSTAT.BitBtn190Click(Sender: TObject);
var sql_,sql_2 : string;
  cdsOKTEMP1  : TClientDataSet;
  cnt_ : integer;
begin

  memotest.LineS.Clear;
  MemoTest.lines.add(datetostr(now)+' '+TimeToStr(Time));
  application.processmessages;
  cdsOKTEMP1:=tclientdataset.Create(Self);


//
// (������������ �������- �����,���,�-��)
//      BossLevel := '1'; ����������
//      BossLevel := '2'; FiltrLevel:= '2';      FiltrLevelName:='�������';
//      BossLevel := '3'; FiltrLevel:='3';      FiltrLevelName:='�����';

// 1) � ���� ��������� ��������� ��� �����������  � ���-��
// 2) � ���� ����� ��������� ��� �����������  � ���-��
// 3) � ���� ������������� ��������� ��� �����������  � ���-��
// 4) � ���� ��������� + ����� + ������������� �� ������������� �����
      MemoTest.lines.add('����������');

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := branch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '2';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '5';

          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := 'A';
          CreateParam(ftString,'p_5' ,ptInput);
          ParamByName('p_5').Value := BossLevel;
          CreateParam(ftString,'p_6' ,ptInput);
          ParamByName('p_6').Value := 'A';
          CreateParam(ftString,'p_7' ,ptInput);
          ParamByName('p_7').Value := BossLevel;
          CreateParam(ftString,'p_8' ,ptInput);
          ParamByName('p_8').Value := 'A';

          CreateParam(ftString,'p_9' ,ptInput);
          ParamByName('p_9').Value := branch;

          CreateParam(ftString,'p_10' ,ptInput);
          ParamByName('p_10').Value := 'A';
          CreateParam(ftString,'p_11' ,ptInput);
          ParamByName('p_11').Value := BossLevel;
          CreateParam(ftString,'p_12' ,ptInput);
          ParamByName('p_12').Value := 'A';
          CreateParam(ftString,'p_13' ,ptInput);
          ParamByName('p_13').Value := BossLevel;
          CreateParam(ftString,'p_14' ,ptInput);
          ParamByName('p_14').Value := 'A';
      end;

      sql_ := 'select * from ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_4 and LEVEL_DEPARTMENT_CODE=:p_5)'+
              ' or post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_6 and LEVEL_DEPARTMENT_CODE=:p_7)'+
              ' or special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_8)'+
              ' or (department_code,post_code,special_code) not in (select department_code,post_code,special_code from ok_stat where branch=:p_9) '+
              ' or (department_code,post_code,special_code) in (select department_code,post_code,special_code from ok_stat where branch=:p_9 '+
                    ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_10 and LEVEL_DEPARTMENT_CODE=:p_11)'+
                         ' or post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_12 and LEVEL_DEPARTMENT_CODE=:p_13)'+
                         ' or special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_14)'+
                         ')'+
              ')) order by tabno';



      LoadData(cdsTempSource,sql_, True);

      While not cdsTempSource.Eof do
      Begin
        MemoTest.lines.add('');
        MemoTest.lines.add(' ���.�����:'+cdsTempSource.fieldbyname('tabno').asstring+
          ' - �������: '+cdsTempSource.fieldbyname('family').asstring);
//////////////////////////////////////////////////////
// �����
        sql_2:='select count(tabno) from ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_4 and LEVEL_DEPARTMENT_CODE=:p_5)'+
              ')';
        cnt_:= getsqlresultpar(sql_2, branch,'2','5','A',bosslevel
        );

        if cnt_>0 then begin
          MemoTest.lines.add('��������� �����:'+cdsTempSource.fieldbyname('department_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_DEPARTMENTNAME(:p_1) from dual',cdsTempSource.fieldbyname('department_code').asstring));
        end;
//////////////////////////////////////////////////////
// ���������
        sql_2:='select count(tabno) from ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_4 and LEVEL_DEPARTMENT_CODE=:p_5'+
              ')';
        cnt_:= getsqlresultpar(sql_2, branch,'2','5','A',bosslevel
        );

        if cnt_>0 then begin
          MemoTest.lines.add('��������� ���������:'+cdsTempSource.fieldbyname('post_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_POSTNAME(:p_1) from dual',cdsTempSource.fieldbyname('post_code').asstring));
        end;
//////////////////////////////////////////////////////
// �������������
        sql_2:='select count(tabno) from ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and (special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_4)'+
              ')';
        cnt_:= getsqlresultpar(sql_2, branch,'2','5','A'
        );

        if cnt_>0 then begin
          MemoTest.lines.add('��������� �������������:'+cdsTempSource.fieldbyname('special_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_SPECIALNAME(:p_1) from dual',cdsTempSource.fieldbyname('special_code').asstring));
        end;
//////////////////////////////////////////////////////
// ��� � ������� ����������
        sql_2:='select count(tabno) from ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and ( (department_code,post_code,special_code) not in (select department_code,post_code,special_code from ok_stat where branch=:p_4) '+
             ')';
        cnt_:= getsqlresultpar(sql_2, branch,'2','5',branch
        );

        if cnt_>0 then begin
          MemoTest.lines.add('��� � ������� ����������:');
          MemoTest.lines.add('�����:'+cdsTempSource.fieldbyname('department_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_DEPARTMENTNAME(:p_1) from dual',cdsTempSource.fieldbyname('department_code').asstring));
          MemoTest.lines.add('���������:'+cdsTempSource.fieldbyname('post_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_POSTNAME(:p_1) from dual',cdsTempSource.fieldbyname('post_code').asstring));
          MemoTest.lines.add('�������������:'+cdsTempSource.fieldbyname('special_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_SPECIALNAME(:p_1) from dual',cdsTempSource.fieldbyname('special_code').asstring));
        end;
//////////////////////////////////////////////////////
        sql_2:='select count(tabno) from ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and (department_code,post_code,special_code) in (select department_code,post_code,special_code from ok_stat where branch=:p_4 '+
                    ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_5 and LEVEL_DEPARTMENT_CODE=:p_6)'+
                         ' or post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_7 and LEVEL_DEPARTMENT_CODE=:p_8)'+
                         ' or special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_9)'+
                         ')'+
              ')';
        cnt_:= getsqlresultpar(sql_2, branch,'2','5',branch,'A',bosslevel,'A',bosslevel,'A'
        );

        if cnt_>0 then begin
          MemoTest.lines.add('� ������� ���������� ������� ���������� ����� ��� ��������� ��� �������������');
          MemoTest.lines.add('�����:'+cdsTempSource.fieldbyname('department_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_DEPARTMENTNAME(:p_1) from dual',cdsTempSource.fieldbyname('department_code').asstring));
          MemoTest.lines.add('���������:'+cdsTempSource.fieldbyname('post_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_POSTNAME(:p_1) from dual',cdsTempSource.fieldbyname('post_code').asstring));
          MemoTest.lines.add('�������������:'+cdsTempSource.fieldbyname('special_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_SPECIALNAME(:p_1) from dual',cdsTempSource.fieldbyname('special_code').asstring));
        end;
//////////////////////////////////////////////////////

        cdsTempSource.next;
      End;

      if cdsTempSource.recordcount=0
      then begin
        MemoTest.lines.add('OK');
      end;


// 5) � ������� ������� ����������(�������������) ��������� ��� ����� ��� �������������
      MemoTest.lines.add('');
      MemoTest.lines.add('������� ����������');

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := branch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := BossLevel;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := 'A';
          CreateParam(ftString,'p_5' ,ptInput);
          ParamByName('p_5').Value := BossLevel;
          CreateParam(ftString,'p_6' ,ptInput);
          ParamByName('p_6').Value := 'A';
      end;

      sql_ := 'select * from ok_stat where branch=:p_1 '+
        ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_2 and LEVEL_DEPARTMENT_CODE=:p_3)'+
              ' or post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_4 and LEVEL_DEPARTMENT_CODE=:p_5)'+
              ' or special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_6)'+
              ') order by department_code';

      LoadData(cdsTempSource,sql_, True);

      While not cdsTempSource.Eof do
      Begin
        MemoTest.lines.add('�������� ����� ���='+cdsTempSource.fieldbyname('department_code').asstring+' , ��������� ���='+cdsTempSource.fieldbyname('post_code').asstring+' ,  ������������� ���='+cdsTempSource.fieldbyname('special_code').asstring);
        cdsTempSource.next;
      End;

      if cdsTempSource.recordcount=0
      then begin
        MemoTest.lines.add('OK');
      end;

  cdsOKTEMP1.close;
  MemoTest.lines.add(datetostr(now)+' '+TimeToStr(Time));
  MemoTest.lines.SaveToFile('C:\NCI Bank\OK\Temp\err_stat.txt');


        try
          WinExec('notepad C:\NCI Bank\OK\Temp\err_stat.txt', SW_MAXIMIZE);
        except
          showmessage('�� ������� ������� � �������� "notepad C:\NCI Bank\OK\Temp\err_stat.txt"');
        end;

end;

procedure TBOKFormSTAT.BitBtn95Click(Sender: TObject);
var
  MyRange: OLEVariant;
 Save_Cursor:TCursor;
 V: Variant;
 i, col,row:integer; // ,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname,oldpost: String;
  total_count,
  total_sum,total_sum2,total_count2:double;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2' + //''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
  row:=1;
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // ������������ �����
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '������� ����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '���� �������';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '�������� ��� ����� �������';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '������� �����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '����� �� ����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
{
  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '�������,';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����������';
  inc(i);
  V.Cells[row, i ].Value := '�������';
  inc(i);
  V.Cells[row, i ].Value := '������������';
  inc(i);
  V.Cells[row, i ].Value := '��';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := '����������';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '������';
  inc(i);
  V.Cells[row, i ].Value := '�����';
}
  total_count:=0;
  total_count2:=0;
  total_sum:=0;
  total_sum2:=0;

  olddepname:='x';
  oldpost:='x';
  While not cdsTempSource.Eof
  do begin
    if (headbranch_='09006')
    then begin
        sql_:='select '+
         ' c.post_name field1 ,nvl(quantity_post,0), d.category_name field2,'+
         ' nvl(d.SALARY,0), round(nvl(quantity_post,0)*nvl(d.SALARY,0),2) field5,'+
         ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' ok_service.GET_STAVKA(okp.branch,okp.personal_code) stavka,'+
         ' nvl(round(to_number(nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'')*nvl(d.SALARY,0),2),0) zarpl, '+
         ' nvl(to_number( nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00''),0) float_stavka '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp, ss_ok_post_category f'+
         ' where okp.branch=:p_1'+  // '+''''+curBranch +''''+
         ' and a.department_code=:p_2'+ // cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes=:p_3'+ //''A'' '+
         ' and a.post_code=c.post_code'+
         ' and a.branch=okp.branch'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and a.special_code=okp.special_code'+
         ' and okp.status_code in (:p_4,:p_5)'+ //(2,5)'+
         ' and a.post_code=f.post_code'+
         ' and d.category_code=f.category_code'+
         ' and f.MFO_CATEGORY_TYPE_CODE=:p_6'+
         ' order by d.category_code';
        cdsTemp.close;
        with cdsTemp.Params
        do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftInteger,'p_4' ,ptInput);
          ParamByName('p_4').Value := 2;
          CreateParam(ftInteger,'p_5' ,ptInput);
          ParamByName('p_5').Value := 5;
          CreateParam(ftString,'p_6' ,ptInput);
          ParamByName('p_6').Value := MFO_CATEGORY_TYPE_CODE;
        end;
    end else begin
        sql_:='select '+
         ' c.post_name field1 ,nvl(quantity_post,0), d.category_name field2,'+
         ' nvl(d.SALARY,0), round(nvl(quantity_post,0)*nvl(d.SALARY,0),2) field5,'+
         ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' ok_service.GET_STAVKA(okp.branch,okp.personal_code) stavka,'+
         ' nvl(round(to_number(nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00'')*nvl(d.SALARY,0),2),0) zarpl, '+
         ' nvl(to_number( nvl(ok_service.GET_STAVKA(okp.branch,okp.personal_code),0),''999.00''),0) float_stavka '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp'+
         ' where okp.branch=:p_1'+  // '+''''+curBranch +''''+
         ' and a.department_code=:p_2'+ // cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes=:p_3'+ //''A'' '+
         ' and a.post_code=c.post_code'+
         ' and a.branch=okp.branch'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and a.special_code=okp.special_code'+
         ' and okp.status_code in (:p_4,:p_5)'+ //(2,5)'+
         ' and c.category_code=d.category_code (+)'+
         ' order by d.category_code';
        cdsTemp.close;
        with cdsTemp.Params
        do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftInteger,'p_4' ,ptInput);
          ParamByName('p_4').Value := 2;
          CreateParam(ftInteger,'p_5' ,ptInput);
          ParamByName('p_5').Value := 5;
        end;
      end;
      loaddata(cdsTemp,sql_);

      While not cdsTemp.Eof
      do begin

          if (olddepname <>cdsTemp.Fieldbyname('department_name').AsString)
          then begin
            inc(row);
            inc(row);
            V.Cells[row, 1 ].NumberFormat := StrFormat;
            MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(5)+inttostr(row)];
            MyRange.Merge;
            MyRange.Font.Bold := True;
            V.Cells[row, 1 ].Value := cdsTemp.Fieldbyname('department_name').AsString;
          end;
          olddepname :=cdsTemp.Fieldbyname('department_name').AsString;

         if (oldpost <>cdsTemp.Fields[0].AsString)
         then begin
          inc(row);
          inc(row);
          i := 1;
          For col:=0 To 4
          Do Begin

              case cdsTemp.Fields[col].DataType Of
                ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
                ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
                ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
              end;
              V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);
              inc(i);
          if col=1
          then total_count:= total_count+ cdsTemp.Fields[col].Asfloat;
          if col= 4
          then begin
            total_sum:= total_sum+   cdsTemp.Fields[col].Asfloat;
          end;
         end;

         oldpost :=cdsTemp.Fields[0].AsString;

        End;

        inc(row);
        V.Cells[row, 1 ].Value := cdsTemp.fieldbyname('fio').asstring;
        V.Cells[row, 3 ].Value := cdsTemp.fieldbyname('stavka').asstring;
        V.Cells[row, 4 ].Value := cdsTemp.fieldbyname('zarpl').asstring;
        total_sum2:= total_sum2+  cdsTemp.fieldbyname('zarpl').Asfloat;
        total_count2:=  total_count2   +  cdsTemp.fieldbyname('float_stavka').Asfloat;

        cdsTemp.Next;
     end;
     cdsTempSource.Next;

     Application.ProcessMessages;

  end;


    inc(row);
    inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '���� ������� ������'; // ����� �� �������

      sum2_:= floattostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      sum2_:=floattostr(total_count2);
      V.Cells[row+1,3].NumberFormat := NumFormat;
      V.Cells[row+1,3].Value:= trim(sum2_);

      sum2_:=floattostr(total_count-total_count2);
      if (total_count-total_count2)<>0
      then begin
        V.Cells[row+2,4].NumberFormat := NumFormat;
        V.Cells[row+2,4].Value:= trim(sum2_);
      end;


      sum2_:=floattostr(total_sum);
      V.Cells[row,4].NumberFormat := NumFormat;
      V.Cells[row,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum2);
      V.Cells[row+1,4].NumberFormat := NumFormat;
      V.Cells[row+1,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum-total_sum2);
      if (total_sum-total_sum2)<>0
      then begin
        V.Cells[row+2,4].NumberFormat := NumFormat;
        V.Cells[row+2,4].Value:= trim(sum2_);
      end;

      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' '; // ������� ���������
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������ ������ �� ��������� �������������'; // ��������  ������������ �� ������
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������������ ��������� �.�.'; // � ����������

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '�������� ����� ����������'; // ������������ ���������

  inc(row);
      sum2_:=floattostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����'; // ����� �� �����


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '�� ���� �����'; // ���� ������ �����

  inc(row);
      V.Cells[row, 2].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' ';

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := bankdate;
  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '���� �������';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '  '+bankdate; // �� ��������� ��

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  V.Cells.Select;
  V.Columns.AutoFit;

 FINALLY
   V.Visible := True; //��� �������
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.BitBtn181Click(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant; // ,Range
 i, col,row:integer; // ,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname: String;
  total_count,            total_count_DEP,            total_sum_DEP,
  total_sum:double;
  MyRange:olevariant;

begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;


  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2' + //''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
  row:=1;
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);



  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // ������������ �����
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '������� ����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '���� �������';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '�������� ��� ����� �������';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '������� �����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '����� �� ����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;


  total_count:=0;
  total_sum:=0;

  olddepname:='x';
            total_count_DEP:=0;
            total_sum_DEP:=0;

  While not cdsTempSource.Eof
  do begin

    if (headbranch_='09006')
    then begin
      sql_:='select '+
       ' c.post_name||'' "''||e.special_name||''"'' field1 , a.quantity_post, d.category_name field2,'+
       ' d.salary, round(nvl(a.quantity_post,0)*nvl(d.salary,0),2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ss_ok_special e, ss_ok_post_category f'+
       ' where a.branch=:p_1'+ //''''+curBranch +''''+
       ' and a.department_code=:p_2'+ //cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
       ' and a.department_code=b.department_code'+
       ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
       ' and b.state_notes=:p_3'+ //''A'' '+
       ' and a.post_code=c.post_code'+
       ' and a.special_code=e.special_code'+
       ' and a.post_code=f.post_code'+
       ' and d.category_code=f.category_code'+
       ' and f.MFO_CATEGORY_TYPE_CODE=:p_4'+
       ' order by d.salary desc';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring ;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := MFO_CATEGORY_TYPE_CODE;
      end;
    end else begin
      sql_:='select '+
       ' c.post_name||'' "''||e.special_name||''"'' field1 , quantity_post, d.category_name field2,'+
       ' d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ss_ok_special e'+
       ' where a.branch=:p_1'+ //''''+curBranch +''''+
       ' and a.department_code=:p_2'+ //cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
       ' and a.department_code=b.department_code'+
       ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
       ' and b.state_notes=:p_3'+ //''A'' '+
       ' and a.post_code=c.post_code'+
       ' and c.category_code=d.category_code (+)'+
       ' and a.special_code=e.special_code'+
       ' order by d.salary desc';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring ;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
      end;
    end;

    loaddata(cdsTemp,sql_);

    While not cdsTemp.Eof
    do begin

        if (olddepname <>cdsTemp.fieldbyname('department_name').AsString)
        then begin
          //inc(row);
          if olddepname <>'x'
          then begin
            inc(row);
            V.Cells[row, 1 ].Value:='����';
            V.Cells[row, 2 ].NumberFormat := StrFormat;
            V.Cells[row, 2 ].Value := floattostr(total_count_DEP);
            V.Cells[row, 5 ].NumberFormat := StrFormat;
            V.Cells[row, 5 ].Value := floattostr(total_sum_DEP);
            total_count_DEP:=0;
            total_sum_DEP:=0;
          end;
          inc(row);
          V.Cells[row, 1 ].NumberFormat := StrFormat;
            MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(5)+inttostr(row)];
            MyRange.Merge;
            MyRange.Font.Bold := True;
          V.Cells[row, 1 ].Value := cdsTemp.fieldbyname('department_name').AsString;
        end;
        olddepname :=cdsTemp.fieldbyname('department_name').AsString;

        i := 1;
        inc(row);
        For col:=0 To 4
        Do Begin
            case cdsTemp.Fields[col].DataType Of
              ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
              ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
              ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
            end;
            V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);

            inc(i);
            if col=1
            then begin
              total_count:= total_count+ cdsTemp.Fields[col].Asfloat;
              total_count_DEP:=total_count_DEP+ cdsTemp.Fields[col].Asfloat;
            end;

            if col= 4
            then begin
              total_sum:= total_sum+   cdsTemp.Fields[col].Asfloat;
              total_sum_DEP:=total_sum_DEP+ cdsTemp.Fields[col].Asfloat;
            end;

        End;
     V.Range['A'+inttostr(row)+':'+'E'+inttostr(row)].Select;
     V.Columns.AutoFit;

        cdsTemp.Next;
     end;
     cdsTempSource.Next;

     Application.ProcessMessages;

  end;


            inc(row);
            V.Cells[row, 1 ].Value:='����';
            V.Cells[row, 2 ].NumberFormat := StrFormat;
            V.Cells[row, 2 ].Value := floattostr(total_count_DEP);
            V.Cells[row, 5 ].NumberFormat := StrFormat;
            V.Cells[row, 5 ].Value := floattostr(total_sum_DEP);
//            total_count_DEP:=0;
//            total_sum_DEP:=0;

      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '���� ������� ������';

      sum2_:=floattostr(total_count);
      V.Cells[row,2].NumberFormat := NumFormat;
      V.Cells[row,2].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum);
      V.Cells[row,5].NumberFormat := NumFormat;
      V.Cells[row,5].Value:= trim(sum2_);

      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������ ������ �� ��������� �������������';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������������ ��������� �.�.';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '�������� ����� ����������';

  inc(row);
      sum2_:=floattostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '�� ���� �����';

  inc(row);
      V.Cells[row, 2].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' ';

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := bankdate;
  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
//      V.Cells[row, 2 ].NumberFormat := StrFormat;
//      V.Cells[row, 2 ].Value := '������� ����������';

  inc(row);
//      V.Cells[row, 2 ].NumberFormat := StrFormat;
//      V.Cells[row, 2 ].Value := ' �� ��������� �� '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';


//  V.Cells.Select;
//  V.Columns.AutoFit;

 FINALLY
   V.Visible := True; //��� �������
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKFormSTAT.BitBtn184Click(Sender: TObject);
var
  MyRange: OLEVariant;
 Save_Cursor:TCursor;
 V: Variant;
 i, col,row:integer; // ,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,olddepname,oldpost: String; // sum2_,
//  total_count,
  total_num,dep_num :integer; // �������� ���������
//  dep_total_count,   // ���������� �� ������
  stav_num,total_stav_num:double; // ,total_sum2,total_count2   ,total_sum
//    MyRange: OLEVariant;
  color_:integer;
begin
  color_:=2;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2' + //''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
{ ����� ���� ���
  row:=1;
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '������������ ���������';

  inc(row);
      sum2_:=floattostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����� �� �����';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '���� ������ �����';
}
  row:=1;
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;

  inc(row); // 2
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;
  inc(row); // 3
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;
  inc(row); // 4
    V.Cells[row,  1].NumberFormat := StrFormat;
    V.Cells[row,  1].VerticalAlignment := 2;
    V.Cells[row,  1].HorizontalAlignment := 3;
    V.Cells[row,  1].Font.Bold := True;
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];  MyRange.Merge;
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;
    V.Cells[row,  1].Value := getsqlresult('select bank_name from s_bank '+
      ' where bank_type in (select bank_type '+
      ' from s_mfo where bank_id in (select bank_id from branch))');


  inc(row); // 5
    V.Cells[row,  1].NumberFormat := StrFormat;
    V.Cells[row,  1].VerticalAlignment := 2;
    V.Cells[row,  1].HorizontalAlignment := 3;
    V.Cells[row,  1].Font.Bold := True;
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];  MyRange.Merge;
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;
    V.Cells[row,  1].Value := getsqlresult('select bank_name from s_mfo where bank_id in (select bank_id from branch)');

  inc(row);
    V.Cells[row,  1].NumberFormat := StrFormat;
    V.Cells[row,  1].VerticalAlignment := 2;
    V.Cells[row,  1].HorizontalAlignment := 3;
    V.Cells[row,  1].Font.Bold := True;
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];  MyRange.Merge;
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;
    V.Cells[row,  1].Value := '����-�������������� �������� �����������';

  inc(row);
    V.Cells[row,  1].NumberFormat := StrFormat;
    V.Cells[row,  1].VerticalAlignment := 2;
    V.Cells[row,  1].HorizontalAlignment := 3;
    V.Cells[row,  1].Font.Bold := True;
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];  MyRange.Merge;
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;
      V.Cells[row, 1].Value := '� � � � � � � �';

  inc(row);
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];  
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;
      V.Cells[row, 10 ].NumberFormat := StrFormat;
      V.Cells[row, 10 ].Value := copy(bankdate,4,7)+' ��� ��������';

  inc(row);
  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // ������������ �����
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row+4)];
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := 1;
   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
  V.Cells[row, i ].Value := ' N ';

  inc(i);
   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
  V.Cells[row, i ].Value := '                              �������                              ';
  inc(i);
   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
  V.Cells[row, i ].Value := ' ���� ';
  inc(i);
   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
  V.Cells[row, i ].Value := '     �����     ';
  inc(i);
   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+1, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+2, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+3, i ].Borders[10].ColorIndex := color_; // ������

  V.Cells[row, i ].Value := '                                  �.�.�. ';
  inc(i);
   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+1, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+2, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+3, i ].Borders[10].ColorIndex := color_; // ������
  V.Cells[row, i ].Value := ' ����� ';
  inc(i);
   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+1, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+2, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+3, i ].Borders[10].ColorIndex := color_; // ������
  V.Cells[row, i ].Value := '����.';
  inc(i);
   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+1, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+2, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+3, i ].Borders[10].ColorIndex := color_; // ������
  V.Cells[row, i ].Value := '���������     ';
  inc(i);
   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+1, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+2, i ].Borders[10].ColorIndex := color_; // ������
   V.Cells[row+3, i ].Borders[10].ColorIndex := color_; // ������
  V.Cells[row, i ].Value := '�� ������     ';
  inc(i);
//   V.Cells[row, i ].Borders[7].ColorIndex := color_; //  �����
//   V.Cells[row, i ].Borders[8].ColorIndex := color_; //  �������
//   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
//   V.Cells[row, i ].Borders[10].ColorIndex := color_; // ������

   V.Cells[row, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+1, i ].Borders[9].ColorIndex := color_; //  ������
   V.Cells[row+2, i ].Borders[9].ColorIndex := color_; //  ������
  V.Cells[row, i ].Value := '     ����     ';


  inc(row);
  i:=6;
  V.Cells[row, i ].Value := '�����';
  inc(i);
  inc(i);
  V.Cells[row, i ].Value := '�����';
  inc(i);
  V.Cells[row, i ].Value := '����';

  inc(row);
  i:=8;
  V.Cells[row, i ].Value := '��������';
  inc(i);
  V.Cells[row, i ].Value := '�������';

  inc(row);
  i:=8;
  V.Cells[row, i ].Value := '����';
  inc(i);
  V.Cells[row, i ].Value := '����';

//  total_count:=0;
//  total_count2:=0;
//  total_sum:=0;
//  total_sum2:=0;

  olddepname:='x';
  oldpost:='x';
  total_num:=0;
  total_stav_num:=0;

  While not cdsTempSource.Eof
  do begin
    inc(row);
    i:=1;
    dep_num:=0;
    stav_num:=0;

    V.Cells[row, 1 ].NumberFormat := StrFormat;
    V.Cells[row, 1 ].Font.Bold := True;
    MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];  MyRange.Merge;
          MyRange.Borders.LineStyle := 1;
          MyRange.Borders.Weight := 2;
          MyRange.Borders.ColorIndex := 1;
    V.Cells[row, 1 ].Value := '** '+cdsTempSource.fieldbyname('DEPARTMENT_NAME').asstring;

    if (headbranch_='09006')
    then begin
      sql_:='select '+
         ' c.post_name,1 field1,d.salary, '+
         ' FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' tabno,'+
         ' (nvl(ZP_RATE_CODE,8))/8 stavka,'+
         ' ok_service.post_date(okp.branch,okp.personal_code) post_date,'+
         ' ok_service.SHU_BANKDA_DATE(okp.branch,okp.personal_code) shu_bankda_date,b.department_name'+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp, ss_ok_post_category f'+
         ' where okp.branch=:p_1'+  // '+''''+curBranch +''''+
         ' and a.department_code=:p_2'+ // cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes=:p_3'+ //''A'' '+
         ' and a.post_code=c.post_code'+
         ' and a.branch=okp.branch'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and a.special_code=okp.special_code'+
         ' and okp.status_code in (:p_4,:p_5)'+ //(2,5)'+
         ' and a.post_code=f.post_code'+
         ' and d.category_code=f.category_code'+
         ' and f.MFO_CATEGORY_TYPE_CODE=:p_6'+
         ' order by d.category_code';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftInteger,'p_4' ,ptInput);
          ParamByName('p_4').Value := 2;
          CreateParam(ftInteger,'p_5' ,ptInput);
          ParamByName('p_5').Value := 5;
          CreateParam(ftString,'p_6' ,ptInput);
          ParamByName('p_6').Value := MFO_CATEGORY_TYPE_CODE;
      end;
    end else begin
      sql_:='select '+
         ' c.post_name,1 field1,d.salary, '+
         ' FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' tabno,'+
         ' (nvl(ZP_RATE_CODE,8))/8 stavka,'+
         ' ok_service.post_date(okp.branch,okp.personal_code) post_date,'+
         ' ok_service.SHU_BANKDA_DATE(okp.branch,okp.personal_code) shu_bankda_date,b.department_name'+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp'+
         ' where okp.branch=:p_1'+  // '+''''+curBranch +''''+
         ' and a.department_code=:p_2'+ // cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
         ' and a.department_code=b.department_code'+
         ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
         ' and b.state_notes=:p_3'+ //''A'' '+
         ' and a.post_code=c.post_code'+
         ' and a.branch=okp.branch'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and a.special_code=okp.special_code'+
         ' and okp.status_code in (:p_4,:p_5)'+ //(2,5)'+
         ' and c.category_code=d.category_code (+)'+
         ' order by d.category_code';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftInteger,'p_4' ,ptInput);
          ParamByName('p_4').Value := 2;
          CreateParam(ftInteger,'p_5' ,ptInput);
          ParamByName('p_5').Value := 5;
      end;
    end;

      loaddata(cdsTemp,sql_);

      While not cdsTemp.Eof
      do begin
          inc(row);
          total_num:=total_num+1;
          inc(dep_num);
          stav_num:= stav_num+ cdsTemp.fieldbyname('stavka').asfloat;
          total_stav_num:= total_stav_num+stav_num;
          i := 1;
          V.Cells[row, i ].Value := inttostr(total_num);
          inc(i);

          MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];
          MyRange.Borders.LineStyle := 1;
          MyRange.Borders.Weight := 2;
          MyRange.Borders.ColorIndex := 1;
          V.Cells[row, 5 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 6 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row,  7].VerticalAlignment := 2;
          V.Cells[row,  7].HorizontalAlignment := 3;
          V.Cells[row, 7 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 8 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 9 ].Borders[10].ColorIndex := color_; // ������


          For col:=0 To 7
          Do Begin

              case cdsTemp.Fields[col].DataType Of
                ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
                ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
                ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
              end;
//              if col=0 then V.Cells[row, i ].WrapText := True;
              V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);
              inc(i);

//         oldpost :=cdsTemp.Fields[0].AsString;

        End;

        cdsTemp.Next;

     end;


     inc(row);
          MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];
          MyRange.Borders.LineStyle := 1;
          MyRange.Borders.Weight := 2;
          MyRange.Borders.ColorIndex := 1;
          V.Cells[row, 1 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 5 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 6 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 7 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 8 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 9 ].Borders[10].ColorIndex := color_; // ������

     V.Cells[row, 2 ].HorizontalAlignment := 4;
     V.Cells[row, 2 ].Font.Bold := True;
     V.Cells[row, 2 ].Value := '����:';

     V.Cells[row, 3 ].Font.Bold := True;
     V.Cells[row, 3 ].Value := inttostr(dep_num);

          V.Cells[row,  7].VerticalAlignment := 2;
          V.Cells[row,  7].HorizontalAlignment := 3;
     V.Cells[row, 7 ].Font.Bold := True;
     V.Cells[row, 7 ].Value := floattostr(stav_num);
     cdsTempSource.Next;
     Application.ProcessMessages;

  end;

     inc(row);
          MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];
          MyRange.Borders.LineStyle := 1;
          MyRange.Borders.Weight := 2;
          MyRange.Borders.ColorIndex := 1;
          V.Cells[row, 1 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 5 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 6 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 7 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 8 ].Borders[10].ColorIndex := color_; // ������
          V.Cells[row, 9 ].Borders[10].ColorIndex := color_; // ������
     V.Cells[row, 2 ].HorizontalAlignment := 4;
     V.Cells[row, 2 ].Font.Bold := True;
     V.Cells[row, 2 ].Value := '����:';

     V.Cells[row, 3 ].Font.Bold := True;
     V.Cells[row, 3 ].Value := inttostr(total_num);

          V.Cells[row,  7].VerticalAlignment := 2;
          V.Cells[row,  7].HorizontalAlignment := 3;
     V.Cells[row, 7 ].Font.Bold := True;
     V.Cells[row, 7 ].Value := floattostr(total_stav_num);

{    inc(row);
    inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����� �� �������';

      sum2_:= floattostr(total_count);
      V.Cells[row,4].NumberFormat := NumFormat;
      V.Cells[row,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count2);
      V.Cells[row+1,4].NumberFormat := NumFormat;
      V.Cells[row+1,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_count-total_count2);
      if (total_count-total_count2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;


      sum2_:=floattostr(total_sum);
      V.Cells[row,6].NumberFormat := NumFormat;
      V.Cells[row,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum2);
      V.Cells[row+1,6].NumberFormat := NumFormat;
      V.Cells[row+1,6].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum-total_sum2);
      if (total_sum-total_sum2)<>0
      then begin
        V.Cells[row+2,6].NumberFormat := NumFormat;
        V.Cells[row+2,6].Value:= trim(sum2_);
      end;
}
{      inc(row);
      inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '������� ���������';
      inc(row);
      inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '��������  ������������ �� ������';
      inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '� ����������';
}
      inc(row);
      inc(row);
    MyRange:= V.Range[numto(1)+inttostr(row-1)+':'+numto(10)+inttostr(row+2)];
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����������� ���������';
      inc(row);

    MyRange:= V.Range[numto(11)+inttostr(1)+':'+numto(12)+inttostr(row+2)];
    MyRange.Borders.LineStyle := 1;
    MyRange.Borders.Weight := 2;
    MyRange.Borders.ColorIndex := color_;

//  MyRange:= V.Range[numto(1)+inttostr(1)+':'+numto(10)+inttostr(row)];
//  MyRange.Borders.LineStyle := 1;
//  MyRange.Borders.Weight := 2;
//  MyRange.Borders.ColorIndex := 1;

  V.Cells.Select;
  V.Columns.AutoFit;

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
   V.Visible := True; //��� �������
 END;
//

end;

procedure TBOKFormSTAT.ToolButton3Click(Sender: TObject);
begin
  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;
  RefPanel_.Visible := true;

  actCopyPers.Checked     := False ;
  actRef2.Checked     := False ;
  actRef.Checked    := False ;
  actTabel.Checked     := True ;
  actKurs.Checked     := False ;
  actKurs.Checked     := False ;

  actNew.Checked     := False;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  actiias.Checked := false;

  if bosslevel<>'0' then actNew.Enabled         := True ;
  actUndoChanges.Enabled := False;

  OptionsPanel.Visible := False;

  pc.ActivePage:=TabFilial;
  ActDetailUndoExecute(nil);

end;

procedure TBOKFormSTAT.ToolButton6Click(Sender: TObject);
begin
  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actCopyPers.Checked     := False ;
  actRef2.Checked     := False ;
  actRef.Checked    := False ;
  actTabel.Checked     := false ;
  actKurs.Checked     := True ;

  actNew.Checked     := False;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  actiias.Checked := false;

  if bosslevel<>'0' then actNew.Enabled         := True ;
  actUndoChanges.Enabled := False;

  OptionsPanel.Visible := False;

  pc.ActivePage:=TabPost;
  ActDetailUndoExecute(nil);

end;

procedure TBOKFormSTAT.ToolButton7Click(Sender: TObject);
begin
  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actCopyPers.Checked     := False ;
  actRef2.Checked     := False ;
  actRef.Checked    := False ;
  actTabel.Checked     := false ;
  actKurs.Checked     := True ;

  actNew.Checked     := False;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  actiias.Checked := false;

  if bosslevel<>'0' then actNew.Enabled         := True ;
  actUndoChanges.Enabled := False;

  OptionsPanel.Visible := False;

  pc.ActivePage:=TabCategory;
  ActDetailUndoExecute(nil);

end;

procedure TBOKFormSTAT.BitBtn140Click(Sender: TObject);
begin
  cdsss_ok_mfo_category_type.post;

end;

procedure TBOKFormSTAT.BitBtn141Click(Sender: TObject);
begin
  CDSss_ok_post_category.post;
  CDSss_ok_post_category.Refresh;

end;

procedure TBOKFormSTAT.BitBtn136Click(Sender: TObject);
begin
  CDSss_ok_mfo_category.post;
  CDSss_ok_mfo_category.refresh;
end;

procedure TBOKFormSTAT.BitBtn135Click(Sender: TObject);
var
   App,WorkBook,Sheet: Variant;
 j,i,aa:integer;
str_:String;
MemoProt :tmemo;
begin
// 05.03.2014 �������

  MemoProt:=MemoFilials;
  MemoProt.Clear;
  aa:=0;
  if OpenDialogMyFile.Execute
  then begin

    App := CreateOLEObject('Excel.Application');
    WorkBook:=App.Workbooks.Open(OpenDialogMyFile.Files.Strings[0]);
   App.Visible:=true;
   j:=2;
   for i:=1 to 1 do // WorkBook.Sheets.Count do
   Begin  //1
     Application.ProcessMessages;
     Sheet:=WorkBook.WorkSheets[i];
     Sheet.Activate;
     TRY
       str_:='delete from ss_ok_mfo_category';
       execsql(str_);

       while aa=0 do
       begin    //2
         MemoProt.lines.add('--**--');

         try
           if trim(vartostr(Sheet.Cells[j,2].value))=''
           then begin aa:=2;
           end else begin
           Application.ProcessMessages;


           str_:='insert into ss_ok_mfo_category (BRANCH,REGION_ID,MFO_CATEGORY_TYPE_CODE,REGION_KOEF)'+
             ' values (:p_1,:p_2,:p_3,:p_4)';
           MemoProt.lines.add(str_);
           MemoProt.lines.add(Sheet.Cells[j,2].value);
           MemoProt.lines.add(Sheet.Cells[j,3].value);
           MemoProt.lines.add(Sheet.Cells[j,4].value);
           MemoProt.lines.add(Sheet.Cells[j,5].value);
           execsqlpar(str_,Sheet.Cells[j,2].value, Sheet.Cells[j,3].value
                          Sheet.Cells[j,4].value, Sheet.Cells[j,5].value);
           MemoProt.lines.add('------');
           end;
           j:=j+1;
         except on e:exception
           do begin
             showmessage('������)'+e.Message);
           end;
         end;


       end;
       execsql('commit');
     Except on e:exception
       do begin
         execsql('rollback');
         showmessage('������)'+e.Message);
       end;
     end;

     App:=unassigned;

    end;
  end;

  CDSss_ok_mfo_category.Refresh;

end;

procedure TBOKFormSTAT.BitBtn137Click(Sender: TObject);
var
   App,WorkBook,Sheet, razrad_code_VAR: Variant;
   j,i,aa:integer;
 line_,  str_, razrad_name_, razrad_code_:String;
MemoProt :tmemo;
begin
// 24.03.2014 ���������
  line_ :='_';
  str_:='insert into ss_ok_post_category (POST_CODE,MFO_CATEGORY_TYPE_CODE,category_code)'+
               ' values (:p_1,:p_2,:p_3)';

  MemoProt:=MemoPost;

  MemoProt.Clear;
  MemoProt.lines.add('10');
  aa:=0;
  MemoProt.lines.add('20');
  if OpenDialogMyFile.Execute
  then begin
  MemoProt.lines.add('30');

    App := CreateOLEObject('Excel.Application');
  MemoProt.lines.add('40');
    WorkBook:=App.Workbooks.Open(OpenDialogMyFile.Files.Strings[0]);
  MemoProt.lines.add('50');
   App.Visible:=true;
  MemoProt.lines.add('60');
   j:=2;
  MemoProt.lines.add('70');
   for i:=1 to 1 do // WorkBook.Sheets.Count do
   Begin  //1

  MemoProt.lines.add('80');
     Application.ProcessMessages;
  MemoProt.lines.add('90');
     Sheet:=WorkBook.WorkSheets[i];
  MemoProt.lines.add('100');
     Sheet.Activate;
  MemoProt.lines.add('110');
     TRY
  MemoProt.lines.add('120');
  MemoProt.lines.add('130');
       execsql('delete from ss_ok_post_category');
  MemoProt.lines.add('140');

       while aa=0 do
       begin    //2
         MemoProt.lines.add('--**--');

         try
  MemoProt.lines.add('150');
           if trim(vartostr(Sheet.Cells[j,3].value))=''
           then begin aa:=2;
  MemoProt.lines.add('160');
           end else begin
  MemoProt.lines.add('170');
           Application.ProcessMessages;
  MemoProt.lines.add('180');

// ���� ��� ���� ������ ������ ��� ����� ���!
  MemoProt.lines.add('');
             MemoProt.lines.add(str_);
{
           if  (trim(vartostr(Sheet.Cells[j,5].value))='')
           and (trim(vartostr(Sheet.Cells[j,6].value))='')
           and (trim(vartostr(Sheet.Cells[j,7].value))='')
           and (trim(vartostr(Sheet.Cells[j,8].value))='')
           and (trim(vartostr(Sheet.Cells[j,9].value))='')
           and (trim(vartostr(Sheet.Cells[j,10].value))='')
           and (trim(vartostr(Sheet.Cells[j,11].value))='')
           then begin
  MemoProt.lines.add('');
//             execsqlpar(str_,Sheet.Cells[j,3].value, '1' );
  MemoProt.lines.add('');
  //           execsqlpar(str_,Sheet.Cells[j,3].value, '2' );
  MemoProt.lines.add('');
    //         execsqlpar(str_,Sheet.Cells[j,3].value, '3' );
  MemoProt.lines.add('');
      //       execsqlpar(str_,Sheet.Cells[j,3].value, '4' );
  MemoProt.lines.add('');
        //     execsqlpar(str_,Sheet.Cells[j,3].value, '5' );
  MemoProt.lines.add('');
          //   execsqlpar(str_,Sheet.Cells[j,3].value, '6' );
  MemoProt.lines.add('');
            // execsqlpar(str_,Sheet.Cells[j,3].value, '7' );
  MemoProt.lines.add('');
           end;
}
  MemoProt.lines.add('26680');
  MemoProt.lines.add('26681)'+trim(vartostr(Sheet.Cells[j,5].value)));

           if  (trim(vartostr(Sheet.Cells[j,5].value))<>'')
           then begin
  MemoProt.lines.add('26685');
  MemoProt.lines.add('26687');
//           MemoProt.lines.add('5)'+Sheet.Cells[j,5].value);
  MemoProt.lines.add('26689');
             razrad_name_ := trim(vartostr(Sheet.Cells[j,5].value));
  MemoProt.lines.add('26691');
             razrad_code_VAR := getsqlresultpar('select min(category_code) from ss_ok_category where category_name=:p_1',razrad_name_);
  MemoProt.lines.add('26693');
             if varisnull(razrad_code_VAR)
             then begin razrad_code_:='0';
  MemoProt.lines.add('26696');
             end else begin razrad_code_:=vartostr(razrad_code_VAR);
  MemoProt.lines.add('26698');
             end;
  MemoProt.lines.add('26700');
             line_:='��� ���������='+trim(vartostr(Sheet.Cells[j,3].value))+', ���������='+'1'+ ', ��� �������='+razrad_code_+ '���������� ������ ��� ��� �� ��� ���� � �����';
             execsqlpar(str_,Sheet.Cells[j,3].value,'1', razrad_code_ );
  MemoProt.lines.add('26702');
           end;

  MemoProt.lines.add('26695');

           if  (trim(vartostr(Sheet.Cells[j,6].value))<>'')
           then begin
//           MemoProt.lines.add('6)'+Sheet.Cells[j,6].value);
             razrad_name_ := trim(vartostr(Sheet.Cells[j,6].value));
             razrad_code_VAR := getsqlresultpar('select min(category_code) from ss_ok_category where category_name=:p_1',razrad_name_);
             if varisnull(razrad_code_VAR)
             then begin razrad_code_:='0';
             end else begin razrad_code_:=vartostr(razrad_code_VAR);
             end;
             line_:='��� ���������='+trim(vartostr(Sheet.Cells[j,3].value))+', ���������='+'2'+ ', ��� �������='+razrad_code_+ '���������� ������ ��� ��� �� ��� ���� � �����';
             execsqlpar(str_,Sheet.Cells[j,3].value,'2', razrad_code_ );
           end;

  MemoProt.lines.add('26710');

           if  (trim(vartostr(Sheet.Cells[j,7].value))<>'')
           then begin
//           MemoProt.lines.add('7)'+Sheet.Cells[j,7].value);
             razrad_name_ := trim(vartostr(Sheet.Cells[j,7].value));
             razrad_code_VAR := getsqlresultpar('select min(category_code) from ss_ok_category where category_name=:p_1',razrad_name_);
             if varisnull(razrad_code_VAR)
             then begin razrad_code_:='0';
             end else begin razrad_code_:=vartostr(razrad_code_VAR);
             end;
             line_:='��� ���������='+trim(vartostr(Sheet.Cells[j,3].value))+', ���������='+'3'+ ', ��� �������='+razrad_code_+ '���������� ������ ��� ��� �� ��� ���� � �����';
             execsqlpar(str_,Sheet.Cells[j,3].value, '3', razrad_code_ );
           end;

  MemoProt.lines.add('26725');

           if  (trim(vartostr(Sheet.Cells[j,8].value))<>'')
           then begin
//           MemoProt.lines.add('8)'+Sheet.Cells[j,8].value);
             razrad_name_ := trim(vartostr(Sheet.Cells[j,8].value));
             razrad_code_VAR := getsqlresultpar('select min(category_code) from ss_ok_category where category_name=:p_1',razrad_name_);
             if varisnull(razrad_code_VAR)
             then begin razrad_code_:='0';
             end else begin razrad_code_:=vartostr(razrad_code_VAR);
             end;
             line_:='��� ���������='+trim(vartostr(Sheet.Cells[j,3].value))+', ���������='+'4'+ ', ��� �������='+razrad_code_+ '���������� ������ ��� ��� �� ��� ���� � �����';
             execsqlpar(str_,Sheet.Cells[j,3].value,  '4', razrad_code_ );
           end;

  MemoProt.lines.add('26740');

           if  (trim(vartostr(Sheet.Cells[j,9].value))<>'')
           then begin
//           MemoProt.lines.add('9)'+Sheet.Cells[j,9].value);
             razrad_name_ := trim(vartostr(Sheet.Cells[j,9].value));
             razrad_code_VAR := getsqlresultpar('select min(category_code) from ss_ok_category where category_name=:p_1',razrad_name_);
             if varisnull(razrad_code_VAR)
             then begin razrad_code_:='0';
             end else begin razrad_code_:=vartostr(razrad_code_VAR);
             end;
             line_:='��� ���������='+trim(vartostr(Sheet.Cells[j,3].value))+', ���������='+'5'+ ', ��� �������='+razrad_code_+ '���������� ������ ��� ��� �� ��� ���� � �����';
             execsqlpar(str_,Sheet.Cells[j,3].value,  '5', razrad_code_ );
           end;

  MemoProt.lines.add('26755');

           if  (trim(vartostr(Sheet.Cells[j,10].value))<>'')
           then begin
//           MemoProt.lines.add('10)'+Sheet.Cells[j,10].value);
             razrad_name_ := trim(vartostr(Sheet.Cells[j,10].value));
             razrad_code_VAR := getsqlresultpar('select min(category_code) from ss_ok_category where category_name=:p_1',razrad_name_);
             if varisnull(razrad_code_VAR)
             then begin razrad_code_:='0';
             end else begin razrad_code_:=vartostr(razrad_code_VAR);
             end;
             line_:='��� ���������='+trim(vartostr(Sheet.Cells[j,3].value))+', ���������='+'6'+ ', ��� �������='+razrad_code_+ '���������� ������ ��� ��� �� ��� ���� � �����';
             execsqlpar(str_,Sheet.Cells[j,3].value,  '6', razrad_code_ );
           end;

  MemoProt.lines.add('26770');

           if  (trim(vartostr(Sheet.Cells[j,11].value))<>'')
           then begin
//           MemoProt.lines.add('11)'+Sheet.Cells[j,11].value);
             razrad_name_ := trim(vartostr(Sheet.Cells[j,11].value));
             razrad_code_VAR := getsqlresultpar('select min(category_code) from ss_ok_category where category_name=:p_1',razrad_name_);
             if varisnull(razrad_code_VAR)
             then begin razrad_code_:='0';
             end else begin razrad_code_:=vartostr(razrad_code_VAR);
             end;
             line_:='��� ���������='+trim(vartostr(Sheet.Cells[j,3].value))+', ���������='+'7'+ ', ��� �������='+razrad_code_+ '���������� ������ ��� ��� �� ��� ���� � �����';
             execsqlpar(str_,Sheet.Cells[j,3].value,  '7', razrad_code_ );
           end;

           MemoProt.lines.add('------');
           end;
           j:=j+1;
         except on e:exception
           do begin
             execsql('rollback');
             showmessage('������)'+line_+#13+e.Message);
             exit;
           end;
         end;
//showmessage('select * from ss_ok_post_category');

       end;
       execsql('commit');
     Except on e:exception
       do begin
         execsql('rollback');
         showmessage('������)'+line_+#13+e.Message);
       end;
     end;

     App:=unassigned;

    end;
  end;

  CDSss_ok_post_category.Refresh;

end;

procedure TBOKFormSTAT.bbCategorySaveClick(Sender: TObject);
var  sql_  :string;
//  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 NumFormat,DateFormat,StrFormat: String;
// fil_schema: String;
 department_code_old : string; // , code_,name_,count_stat_,count_fakt_
// itogo_count_stat_,itogo_count_fakt_ : double;
begin


 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

    row_j:=1;

    V.Cells[row,row_j].Value:='  ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' REGION ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' ��������� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' ����������� ';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 80; //width:=200;  ������ �� �������� width ????
    V.Cells[row,row_j].Value:=' BANK_NAME ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' REGION_NAM ';
    inc(row_j);

//    inc(row);

      try

        sql_:='select s.bank_id ,s.region_id ,sc.mfo_category_type_code,sc.region_koef,'+
                ' s.bank_name,sr.region_nam'+
                ' from s_mfo s, s_region sr, ss_ok_mfo_category sc'+
                ' where sc.BRANCH=s.bank_id'+
                ' and sc.region_id=sr.region_id'+
                ' and s.region_id=sr.region_id order by s.region_id,s.bank_id';


        ExecPrc.Close;
//
        loaddata(ExecPrc,sql_);

        ExecPrc.First;
        department_code_old:='-1';


        while not ExecPrc.eof
        do begin
//    	���	�����	���������	�����������	BANK_NAME	REGION_NAM

                inc(row);
                V.Cells[row,1].Value := inttostr(row+1);
                V.Cells[row,2].Value := ''''+Trim(ExecPrc.Fields[0].AsString);
                V.Cells[row,3].Value := ''''+Trim(ExecPrc.Fields[1].AsString);
                V.Cells[row,4].Value := ''''+Trim(ExecPrc.Fields[2].AsString);
                V.Cells[row,5].Value := ''''+Trim(ExecPrc.Fields[3].AsString);
                V.Cells[row,6].Value := ''''+Trim(ExecPrc.Fields[4].AsString);
                V.Cells[row,7].Value := ''''+Trim(ExecPrc.Fields[5].AsString);
          ExecPrc.next;
        end;

      except on e:exception
        do begin

          showmessage('������. '+#13+
            sql_+#13+
            e.Message+#13);

        end;
      end;


  Application.ProcessMessages;

 Finally
  V.Visible := True; //��� �������
 End;

  CDSss_ok_mfo_category.Refresh;

end;

procedure TBOKFormSTAT.bbPostSaveClick(Sender: TObject);
var  sql_  :string;
//  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 NumFormat,DateFormat,StrFormat: String;
// fil_schema: String;
 department_code_old : string; // , code_,name_,count_stat_,count_fakt_
// itogo_count_stat_,itogo_count_fakt_ : double;
begin


 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

    row_j:=1;
// �������	���	���������	1 ���������	2 ���������	3 ���������	4 ���������	5 ���������	6 ���������	7 ���������

    V.Cells[row,row_j].Value:='  ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' ������� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 80; // width:=200;
    V.Cells[row,row_j].Value:=' ��������� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' 1 ��������� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' 2 ��������� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' 3 ��������� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' 4 ��������� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' 5 ��������� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' 6 ��������� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' 7 ��������� ';
    inc(row_j);

//    inc(row);

      try

//        sql_:='select sp.level_department_code ,sp.post_code ,sp.post_name ,sc.mfo_category_type_code,soc.category_name, soc.category_rate, soc.salary '+
  //            ' from ss_ok_post_category sc, SS_OK_POST sp, ss_ok_category soc'+
    //          ' where sc.post_code=sp.post_code and sc.category_code=soc.category_code'+
      //        ' order by sp.level_department_code,sp.post_code,sc.mfo_category_type_code,soc.category_code';
        sql_:='select sp.level_department_code ,sc.post_code ,sp.post_name ,sc.mfo_category_type_code,'+
              ' soc.category_name, soc.category_rate, soc.salary, '+
              ' sc.CATEGORY_CODE,sc.TERMINAL,sc.SESSION_USER,sc.ID_ADDRESS,'+
              ' to_char(sc.TIMESTAMP,''dd.mm.yyyy hh24:mi:ss'') TIMESTAMP '+
              ' from ss_ok_post_category sc, SS_OK_POST sp, ss_ok_category soc'+
              ' where sc.post_code=sp.post_code and sc.category_code=soc.category_code'+
              ' order by sp.level_department_code,sc.post_code,sc.mfo_category_type_code,soc.category_code'
              ;

        ExecPrc.Close;
        with ExecPrc.Params
        do begin
            clear;
//            CreateParam(ftString,'p_1' ,ptInput);
  //          ParamByName('p_1').Value :='A';
        end;

        loaddata(ExecPrc,sql_);

        ExecPrc.First;
        department_code_old:='-1';


        while not ExecPrc.eof
        do begin
//    	���	�����	���������	�����������	BANK_NAME	REGION_NAM
          if (department_code_old<>Trim(ExecPrc.Fields[1].AsString))
          then begin
                inc(row);
                V.Cells[row,1].Value := inttostr(row-1);
                V.Cells[row,2].Value := Trim(ExecPrc.Fields[0].AsString);
                V.Cells[row,3].Value := Trim(ExecPrc.Fields[1].AsString);
                V.Cells[row,4].Value := Trim(ExecPrc.Fields[2].AsString);
          end;
          if Trim(ExecPrc.Fields[3].AsString)='1'
          then V.Cells[row,5].Value := Trim(ExecPrc.Fields[4].AsString);
          if Trim(ExecPrc.Fields[3].AsString)='2'
          then V.Cells[row,6].Value := Trim(ExecPrc.Fields[4].AsString);
          if Trim(ExecPrc.Fields[3].AsString)='3'
          then V.Cells[row,7].Value := Trim(ExecPrc.Fields[4].AsString);
          if Trim(ExecPrc.Fields[3].AsString)='4'
          then V.Cells[row,8].Value := Trim(ExecPrc.Fields[4].AsString);
          if Trim(ExecPrc.Fields[3].AsString)='5'
          then V.Cells[row,9].Value := Trim(ExecPrc.Fields[4].AsString);
          if Trim(ExecPrc.Fields[3].AsString)='6'
          then V.Cells[row,10].Value := Trim(ExecPrc.Fields[4].AsString);
          if Trim(ExecPrc.Fields[3].AsString)='7'
          then V.Cells[row,11].Value := Trim(ExecPrc.Fields[4].AsString);
//          if Trim(ExecPrc.Fields[3].AsString)='8'
  //        then V.Cells[row,12].Value := Trim(ExecPrc.Fields[4].AsString);
          department_code_old:=Trim(ExecPrc.Fields[1].AsString);
          ExecPrc.next;
        end;

      except on e:exception
        do begin

          showmessage('������. '+#13+
            sql_+#13+
            e.Message+#13);

        end;
      end;


  Application.ProcessMessages;

 Finally
  V.Visible := True; //��� �������
 End;

   CDSss_ok_post_category.Refresh;

end;

procedure TBOKFormSTAT.ToolButton9Click(Sender: TObject);
begin
  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actCopyPers.Checked     := False ;
  actRef2.Checked     := False ;
  actRef.Checked    := False ;
  actTabel.Checked     := false ;
  actKurs.Checked     := True ;

  actNew.Checked     := False;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  actiias.Checked := false;

  if bosslevel<>'0' then actNew.Enabled         := True ;
  actUndoChanges.Enabled := False;

  OptionsPanel.Visible := False;

  pc.ActivePage:=TabRep;
  ActDetailUndoExecute(nil);

      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.bank_id,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // ' and branch=''00974'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');

    CDS_DBBranch.First;

    CBII.Clear;
    CBII.Items.Add('');
    with CDS_DBBranch do
    begin
      while not EOF do
      begin
        D := TData.Create;
        with D do
        begin
          Id := FieldByName('bank_id').AsString;
          Name := FieldByName('bank_name').AsString;
        end;
        CBII.Items.AddObject(FieldByName('bank_id').AsString +
          ' | ' + FieldByName('bank_name').AsString, D);
        Next;
      end;
    end;
    CBII.ItemIndex := 0;
//
      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  LoadData(cdsTemp, 'select region_nam, region_id from s_region where region_id in ' +
    '(select id from V_TRANS_OK where DEAL_ID=:p_1)', True);
    cbRGN.Clear;
    cbRGN.Items.Add('');
    with cdsTemp do
    begin
      while not EOF do
      begin
        D := TData.Create;
        with D do
        begin
          Id := FieldByName('region_id').AsString;
          Name := FieldByName('region_nam').AsString;
        end;
        cbRGN.Items.AddObject(FieldByName('region_id').AsString +
          ' | ' + FieldByName('region_nam').AsString, D);
        Next;
      end;
    end;
    cbRGN.ItemIndex := 0;

    dtp_From4.DateTime:=strtodate(bankdate);
    dtp_To4.DateTime:=strtodate(bankdate);
//////////////
  if headbranch='09006'
  then begin

  end else begin
    rgShtatSummaryCheck.Visible:=false;
  end;

end;

procedure TBOKFormSTAT.mfo_category_type_code_proc;
var sql_ :string;
begin

////////////////////////

    if (headbranch_='09006')
    then begin
      mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
        ' where branch=:p_1',branch);
      if varisnull(mfo_category_type_code_VAR)
      then begin
        mfo_category_type_code :='0';
        showmessage('(29290)������� ��������� ������� '+branch+' � ���� �����.(��������� ���������� ��������� ��������)');
      end else begin
        mfo_category_type_code :=vartostr(mfo_category_type_code_VAR) ;
      end;
    end else begin
      mfo_category_type_code :='-1';
    end;

////////////////////////

      cdsSSOKPost_SET.Close;
      with cdsSSOKPost_SET.Params
      do begin
          clear;
            if (headbranch_='09006')
            then begin
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := 'A';
              CreateParam(ftString,'p_4' ,ptInput);
              ParamByName('p_4').Value := mfo_category_type_code;
            end else begin
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := 'A';
              CreateParam(ftInteger,'p_2' ,ptInput);
              ParamByName('p_2').Value := strtoint(BossLevel);
              CreateParam(ftInteger,'p_3' ,ptInput);
              ParamByName('p_3').Value := 4;
            end;
      end;
      if (headbranch_='09006')
      then begin
        sql_ := 'SELECT * FROM ss_ok_post d where d.state_notes like :p_1 '+
          ' and post_code in (select post_code from ss_ok_post_category where mfo_category_type_code=:p_4)';
      end else begin
        sql_ := 'SELECT * FROM ss_ok_post d where d.state_notes like :p_1 '+
          ' and d.level_department_code in(:p_2,:p_3) ';
      end;
      LoadData(cdsSSOKPost_SET, sql_);


////////////////////////

      cdsSSOKPost_SET2.Close;
      with cdsSSOKPost_SET2.Params
      do begin
          clear;
            if (headbranch_='09006')
            then begin
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := 'A';
              CreateParam(ftString,'p_4' ,ptInput);
              ParamByName('p_4').Value := mfo_category_type_code;
            end else begin
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := 'A';
              CreateParam(ftInteger,'p_2' ,ptInput);
              ParamByName('p_2').Value := strtoint(BossLevel);
              CreateParam(ftInteger,'p_3' ,ptInput);
              ParamByName('p_3').Value := 4;
            end;
      end;
      if (headbranch_='09006')
      then begin
        sql_ := 'SELECT * FROM ss_ok_post d where d.state_notes like :p_1 '+
          ' and post_code in (select post_code from ss_ok_post_category where mfo_category_type_code=:p_4) order by post_name';
      end else begin
        sql_ := 'SELECT * FROM ss_ok_post d where d.state_notes like :p_1 '+
          ' and d.level_department_code in(:p_2,:p_3) order by post_name';
      end;
      LoadData(cdsSSOKPost_SET2, sql_);



////////////////////////

    // Source ������� �������� ����������� �������� ���� ��������
          Source.close;
          with Source.Params
          do begin
              clear;
            if (headbranch_='09006')
            then begin
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := 'A';
              CreateParam(ftString,'p_4' ,ptInput);
              ParamByName('p_4').Value := mfo_category_type_code;
            end else begin
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := 'A';
              CreateParam(ftInteger,'p_2' ,ptInput);
              ParamByName('p_2').Value := strtoint(BossLevel);
              CreateParam(ftInteger,'p_3' ,ptInput);
              ParamByName('p_3').Value := 4;
            end;
          end;
          if (headbranch_='09006')
          then begin
                LoadData(Source,'SELECT to_char(post_code) id,'+
                           ' post_name name'+
                           ' FROM ss_ok_post'+
                           ' WHERE state_notes=:p_1'+
                ' and post_code in (select post_code from ss_ok_post_category where mfo_category_type_code=:p_4)'+
                           ' order by post_code',True);
          end else begin
                LoadData(Source,'SELECT to_char(post_code) id,'+
                           ' post_name name'+
                           ' FROM ss_ok_post'+
                           ' WHERE state_notes=:p_1'+
                           ' and level_department_code in(:p_2,:p_3)'+
                           ' order by post_code',True);
          end;

////////////////////////
    TRY
      cdsSSOKPost_new.close;
      with cdsSSOKPost_new.Params
      do begin
        clear;
        if (headbranch_='09006')
        then begin
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := 'A';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := curbranch;
          CreateParam(ftInteger,'p_5' ,ptInput);
          ParamByName('p_5').Value := cdsOKPersonal.fieldbyname('DEPARTMENT_CODE_NEW').asstring;
          CreateParam(ftString,'p_6' ,ptInput);
          ParamByName('p_6').Value := mfo_category_type_code;
        end else begin
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := 'A';
          CreateParam(ftInteger,'p_2' ,ptInput);
          ParamByName('p_2').Value := strToInt(BossLevel);
          CreateParam(ftInteger,'p_3' ,ptInput);
          ParamByName('p_3').Value := 4;
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := curbranch;
          CreateParam(ftInteger,'p_5' ,ptInput);
          ParamByName('p_5').Value := cdsOKPersonal.fieldbyname('DEPARTMENT_CODE_NEW').asstring;
        end;
      end;
      if (headbranch_='09006')
      then begin
        LoadData(cdsSSOKPost_new,'select a.post_code id, '+
          ' a.post_code||'') ''||a.post_name name '+
          ' from ss_ok_post a where'+
          ' a.state_notes=:p_1'+ //''A'
          ' and a.post_code in (select post_code from ok_stat where branch=:p_4'+
          ' and department_code=:p_5'+ //edDepDown.text+
          ' and post_code in (select post_code from ss_ok_post_category where mfo_category_type_code=:p_6)'+
          ')',True);
      end else begin
        LoadData(cdsSSOKPost_new,'select a.post_code id, '+
          ' a.post_code||'') ''||a.post_name name '+
          ' from ss_ok_post a where'+
          ' a.state_notes=:p_1'+ //''A'
          ' and a.level_department_code in (:p_2,:p_3)'+ //('+BossLevel+',4)'+
          ' and a.post_code in (select post_code from ok_stat where branch=:p_4'+
          ' and department_code=:p_5'+ //edDepDown.text+
          ')',True);
      end;
    EXCEPT
    END;
/////////////////////////


end;

procedure TBOKFormSTAT.bbShtatSummaryCheckClick(Sender: TObject);
var  mfo_category_code_rep_,sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V, var_: Variant; // , Cell1, Cell2, ArrayData
 counter_,row,row_j:integer;  // begin_row,j,end_row, col,  ,nn  , row_k
 NumFormat,DateFormat,StrFormat: String;
 viloyat_name_, fil_schema: String;
 sum_koef_,itogo_count_, itogo_count_viloyat_,itogo_count_respublika_ : double;
         sum_koef_viloyat_ ,
        sum_koef_respublika_,
    itogo_sum_koef_viloyat_,
    itogo_sum_koef_respublika_,
  count1_,count2_,itogo_sum_, itogo_sum_viloyat_,itogo_sum_respublika_ : double;
begin
//  showmessage( '� ������ �����9.doc');
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(bbShtatSummaryCheck.hint);
  counter_:=0;

      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME, c.REGION_NAM from ss_dblink_branch a,s_mfo b, s_region c'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)'+
    ' and a.region=c.REGION_ID and b.REGION_ID=c.REGION_ID'+
    ' order by b.region_id,b.bank_id');



  CDS_DBBranch.filtered := false;


// ������ ���� ��� ������� �� ����

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// ��� �������
  end;

  if (CBII.ItemIndex=0) and (cbRGN.ItemIndex>0)
  then begin
    CDS_DBBranch.filter :='region='''+ TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end;

  if (CBII.ItemIndex>0)
  then begin
    CDS_DBBranch.filter :='branch='''+ TData(CBII.Items.Objects[CBII.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end;

 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(5)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=bbShtatSummaryCheck.hint;


    inc(row);
    inc(row);
    row_j:=1;

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' NN ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);


    V.Cells[row,row_j].ColumnWidth := 55;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ������������ ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ���-�� ��.��. ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ����� ������� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ����� (������� �.) ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ����� ����� ';
    inc(row_j);
    row_j:=1;
    inc(row);


    CDS_DBBranch.First;

//    itogo_count_:=0;
//    itogo_sum_:=0;

    itogo_count_viloyat_:=0;
    itogo_sum_viloyat_:=0;

    itogo_count_respublika_:=0;
    itogo_sum_respublika_:=0;

        sum_koef_viloyat_ :=0;
        sum_koef_respublika_:=0;

    itogo_sum_koef_viloyat_:=0;
    itogo_sum_koef_respublika_:=0;

    viloyat_name_:='-1';
  while not CDS_DBBranch.eof
  do begin
//     itogo_count_:=0;
//     itogo_sum_:=0;
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
      if (viloyat_name_='-1')
      then begin
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := CDS_DBBranch.fieldbyname('REGION_NAM').asstring;
                viloyat_name_:= CDS_DBBranch.fieldbyname('REGION_NAM').asstring
      end
      else if (viloyat_name_<>CDS_DBBranch.fieldbyname('REGION_NAM').asstring)
      then begin
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := viloyat_name_+' �����:';
                V.Cells[row,4].Value := floattostr(itogo_count_viloyat_);
                V.Cells[row,5].Value := floattostr(itogo_sum_viloyat_);
                if (headbranch_ ='09006')
                then begin
                  V.Cells[row,6].Value := floattostr(sum_koef_viloyat_);
                  V.Cells[row,7].Value := floattostr(itogo_sum_viloyat_+sum_koef_viloyat_);
                end;
                inc(row);

                itogo_count_viloyat_:=0;
                itogo_sum_viloyat_:=0;
                sum_koef_viloyat_ :=0;
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := CDS_DBBranch.fieldbyname('REGION_NAM').asstring;
                viloyat_name_:= CDS_DBBranch.fieldbyname('REGION_NAM').asstring
      end;
      counter_:=counter_+1;
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;
      try
        sql_:= ' select sum(quantity_post) from '+fil_schema+'.ok_stat oks'+
        ' where branch=:p_1 and oks.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)';


        var_:= getsqlresultpar(sql_,CDS_DBBranch.fieldbyname('branch').asstring);
        if varisnull(var_)
        then begin itogo_count_:=0;
        end else begin itogo_count_:=var_;
        end;

        if (headbranch_ ='09006')
        then begin
           // ����� ����� ������� � �����
          // ����� ��������� �������
            mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
              ' where branch=:p_1',
               CDS_DBBranch.fieldbyname('branch').asstring
               );
            if varisnull(mfo_category_type_code_VAR)
            then begin
              mfo_category_code_rep_ :='0';
              showmessage('(27619)������� ��������� ������� '+
                CDS_DBBranch.fieldbyname('branch').asstring+
                ' � ���� �����.(��������� ���������� ��������� ��������)');
            end else begin
              mfo_category_code_rep_ :=vartostr(mfo_category_type_code_VAR) ;
            end;


          sql_:= 'select sum(os.quantity_post*soc.salary) '+
            ' from '+fil_schema+'.ok_stat os, ss_ok_post sop, ss_ok_category soc, ss_ok_post_category sopc'+
                 ' where os.branch=:p_1 and os.post_code=sop.post_code'+
                 ' and sop.post_code=sopc.post_code'+
                 ' and sopc.category_code=soc.category_code'+
                 ' and sopc.MFO_CATEGORY_TYPE_CODE=:p_2'+
                 ' and os.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)';
          var_:= getsqlresultpar(sql_,CDS_DBBranch.fieldbyname('branch').asstring, mfo_category_code_rep_) ;
          if varisnull(var_)
          then begin itogo_sum_:=0;
          end else begin itogo_sum_:=var_;
          end;

//-- ������� ������� ���� ������ �   ss_ok_mfo_category �   ss_ok_dep_koef
//-- � ���� ��� ��� �� ����� ������ 0
          count1_:= getsqlresultpar('select nvl(REGION_KOEF,0) from ss_ok_mfo_category where branch=:p_1',CDS_DBBranch.fieldbyname('branch').asstring);
          count2_:= getsqlresultpar('select count(*) from ss_ok_dep_koef where branch=:p_1',CDS_DBBranch.fieldbyname('branch').asstring);
          if (count1_=0) and (count2_=0)
          then begin
            sum_koef_:=0;
          end else begin
            sql_:= 'select sum(field) from (select sum(os.quantity_post*(ok_service.GET_KOEFSUM(os.branch,os.department_code,soc.salary))) field '+
              ' from '+fil_schema+'.ok_stat os, ss_ok_post sop, ss_ok_category soc, ss_ok_post_category sopc'+
                   ' where os.branch=:p_1 and os.post_code=sop.post_code'+
                   ' and sop.post_code=sopc.post_code'+
                   ' and sopc.category_code=soc.category_code'+
                   ' and sopc.MFO_CATEGORY_TYPE_CODE=:p_2'+
                   ' and os.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over))';
            var_:= getsqlresultpar(sql_,CDS_DBBranch.fieldbyname('branch').asstring, mfo_category_code_rep_) ;
            if varisnull(var_)
            then begin sum_koef_:=0;
            end else begin sum_koef_:=var_;
            end;
          end;
        end else begin
          sum_koef_:=0;
           // ����� ����� ������� �� � �����
          sql_:= 'select sum(os.quantity_post*soc.salary) from '+fil_schema+'.ok_stat os, ss_ok_post sop, ss_ok_category soc'+
                 ' where os.branch=:p_1 os.post_code=sop.post_code'+
                 ' and sop.category_code=soc.category_code'+
                 ' and os.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)';
          var_:= getsqlresultpar(sql_,CDS_DBBranch.fieldbyname('branch').asstring) ;
          if varisnull(var_)
          then begin itogo_sum_:=0;
          end else begin itogo_sum_:=var_;
          end;
        end;

        itogo_count_viloyat_ :=itogo_count_viloyat_+itogo_count_;
        itogo_sum_viloyat_ :=itogo_sum_viloyat_+itogo_sum_;

        itogo_count_respublika_ :=itogo_count_respublika_+itogo_count_;
        itogo_sum_respublika_ :=itogo_sum_respublika_+itogo_sum_;


        sum_koef_viloyat_ :=itogo_sum_koef_viloyat_+sum_koef_;
        sum_koef_respublika_ :=itogo_sum_koef_respublika_+sum_koef_;


                inc(row);
                V.Cells[row,1].Value:=inttostr(counter_);
                V.Cells[row,2].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
                V.Cells[row,4].Value := floattostr(itogo_count_);
                V.Cells[row,5].Value := floattostr(itogo_sum_);

                if (headbranch_ ='09006')
                then begin
                  V.Cells[row,6].Value := floattostr(sum_koef_);
                  V.Cells[row,7].Value := floattostr(itogo_sum_+sum_koef_);
                end;
      except on e:exception
        do begin
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
        end;
      end;
    end;
    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// �������� �����
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := viloyat_name_+' �����:';
                V.Cells[row,4].Value := itogo_count_viloyat_;
                V.Cells[row,5].Value := itogo_sum_viloyat_;
                if (headbranch_ ='09006')
                then begin
                  V.Cells[row,6].Value := floattostr(sum_koef_viloyat_);
                  V.Cells[row,7].Value := floattostr(itogo_sum_viloyat_+sum_koef_viloyat_);
                end;
                inc(row);
///////////////////////////////////////////
///////////////////////////////////////////
// �������� ����������
// itogo_count_viloyat_,itogo_count_respublika_ : double;
// itogo_sum_viloyat_,itogo_sum_respublika_ : double;
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := '�����';
                V.Cells[row,4].Value := itogo_count_respublika_;
                V.Cells[row,5].Value := itogo_sum_respublika_;
                if (headbranch_ ='09006')
                then begin
                  V.Cells[row,6].Value := floattostr(sum_koef_respublika_);
                  V.Cells[row,7].Value := floattostr(itogo_sum_respublika_+sum_koef_respublika_);
                end;
///////////////////////////////////////////
  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //��� �������
 End;
  MemoProt.lines.add(TimeToStr(Time));
  //
end;

procedure TBOKFormSTAT.BitBtn142Click(Sender: TObject);
var  mfo_category_code_rep_,sql_  :string;
  MyRange: OLEVariant;
 V, var_: Variant;
 counter_,row,row_j:integer;
 NumFormat,DateFormat,StrFormat: String;
 viloyat_name_, fil_schema: String;
 itogo_count_, itogo_count_viloyat_,itogo_count_respublika_ : double;
 itogo_sum_, itogo_sum_viloyat_,itogo_sum_respublika_ : double;
begin
showmessage('�� ������.');
  counter_:=0;
  mfo_category_code_rep_ := inttostr(rgShtatSummaryCheck.itemindex+1);
  if mfo_category_code_rep_='0' then mfo_category_code_rep_:='1';

  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(rgShtatSummaryCheck.hint);

      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := mfo_category_code_rep_;

      end;

  loaddata(CDS_DBBranch,'select sdb.* from ss_ok_mfo_category somc, ss_dblink_branch sdb'+
    ' where somc.branch=sdb.branch'+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)'+
    ' and somc.mfo_category_type_code=:p_2' +
    ' order by sdb.REGION,sdb.BRANCH');
    

  CDS_DBBranch.filtered := false;


// ������ ���� ��� ������� �� ����

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// ��� �������
  end;

  if (CBII.ItemIndex=0) and (cbRGN.ItemIndex>0)
  then begin
    CDS_DBBranch.filter :='region='''+ TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end;

  if (CBII.ItemIndex>0)
  then begin
    CDS_DBBranch.filter :='branch='''+ TData(CBII.Items.Objects[CBII.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end;

 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(5)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=bbShtatSummaryCheck.hint;


    inc(row);
    inc(row);
    row_j:=1;

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' NN ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);


    V.Cells[row,row_j].ColumnWidth := 55;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ������������ ������ ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 55;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ������������ ��������� ';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 55;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ������������ ������������� ';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ���-�� ��.��. ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ����� ������� ';
    inc(row_j);

    row_j:=1;
    inc(row);


    CDS_DBBranch.First;

//    itogo_count_:=0;
//    itogo_sum_:=0;

    itogo_count_viloyat_:=0;
    itogo_sum_viloyat_:=0;

    itogo_count_respublika_:=0;
    itogo_sum_respublika_:=0;

    viloyat_name_:='-1';
  while not CDS_DBBranch.eof
  do begin
//     itogo_count_:=0;
//     itogo_sum_:=0;
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
      if (viloyat_name_='-1')
      then begin
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := CDS_DBBranch.fieldbyname('REGION_NAM').asstring;
                viloyat_name_:= CDS_DBBranch.fieldbyname('REGION_NAM').asstring
      end
      else if (viloyat_name_<>CDS_DBBranch.fieldbyname('REGION_NAM').asstring)
      then begin
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := CDS_DBBranch.fieldbyname('REGION_NAM').asstring+' �����:';
                V.Cells[row,4].Value := floattostr(itogo_count_viloyat_);
                V.Cells[row,5].Value := floattostr(itogo_sum_viloyat_);
                inc(row);

                itogo_count_viloyat_:=0;
                itogo_sum_viloyat_:=0;
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := CDS_DBBranch.fieldbyname('REGION_NAM').asstring;
                viloyat_name_:= CDS_DBBranch.fieldbyname('REGION_NAM').asstring
      end;
      counter_:=counter_+1;
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;
      try
        sql_:= ' select sum(quantity_post) from '+fil_schema+'.ok_stat oks'+
        ' where branch=:p_1 and oks.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)';


        var_:= getsqlresultpar(sql_,CDS_DBBranch.fieldbyname('branch').asstring);
        if varisnull(var_)
        then begin itogo_count_:=0;
        end else begin itogo_count_:=var_;
        end;

        if (headbranch_ ='09006')
        then begin
           // ����� ����� ������� � �����
          // ����� ��������� �������
            mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
              ' where branch=:p_1',
               CDS_DBBranch.fieldbyname('branch').asstring
               );
            if varisnull(mfo_category_type_code_VAR)
            then begin
              mfo_category_code_rep_ :='0';
              showmessage('(27619)������� ��������� ������� '+
                CDS_DBBranch.fieldbyname('branch').asstring+
                ' � ���� �����.(��������� ���������� ��������� ��������)');
            end else begin
              mfo_category_code_rep_ :=vartostr(mfo_category_type_code_VAR) ;
            end;


          sql_:= 'select sum(os.quantity_post*soc.salary) '+
            ' from '+fil_schema+'.ok_stat os, ss_ok_post sop, ss_ok_category soc, ss_ok_post_category sopc'+
                 ' where os.branch=:p_1 and os.post_code=sop.post_code'+
                 ' and sop.post_code=sopc.post_code'+
                 ' and sopc.category_code=soc.category_code'+
                 ' and sopc.MFO_CATEGORY_TYPE_CODE=:p_2';
          var_:= getsqlresultpar(sql_,CDS_DBBranch.fieldbyname('branch').asstring, mfo_category_code_rep_) ;
          if varisnull(var_)
          then begin itogo_sum_:=0;
          end else begin itogo_sum_:=var_;
          end;
        end else begin
           // ����� ����� ������� �� � �����
          sql_:= 'select sum(os.quantity_post*soc.salary) from '+fil_schema+'.ok_stat os, ss_ok_post sop, ss_ok_category soc'+
                 ' where os.branch=:p_1 os.post_code=sop.post_code'+
                 ' and sop.category_code=soc.category_code';
          var_:= getsqlresultpar(sql_,CDS_DBBranch.fieldbyname('branch').asstring) ;
          if varisnull(var_)
          then begin itogo_sum_:=0;
          end else begin itogo_sum_:=var_;
          end;
        end;

        itogo_count_viloyat_ :=itogo_count_viloyat_+itogo_count_;
        itogo_sum_viloyat_ :=itogo_sum_viloyat_+itogo_sum_;

        itogo_count_respublika_ :=itogo_count_respublika_+itogo_count_;
        itogo_sum_respublika_ :=itogo_sum_respublika_+itogo_sum_;

                inc(row);
                V.Cells[row,1].Value:=inttostr(counter_);
                V.Cells[row,2].Value := CDS_DBBranch.fieldbyname('branch').asstring;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
                V.Cells[row,4].Value := floattostr(itogo_count_);
                V.Cells[row,5].Value := floattostr(itogo_sum_);

      except on e:exception
        do begin
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
        end;
      end;
    end;
    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// �������� �����
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := viloyat_name_+' �����:';
                V.Cells[row,4].Value := itogo_count_viloyat_;
                V.Cells[row,5].Value := itogo_sum_viloyat_;
                inc(row);
///////////////////////////////////////////
///////////////////////////////////////////
// �������� ����������
// itogo_count_viloyat_,itogo_count_respublika_ : double;
// itogo_sum_viloyat_,itogo_sum_respublika_ : double;
                inc(row);
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := '�����';
                V.Cells[row,4].Value := itogo_count_respublika_;
                V.Cells[row,5].Value := itogo_sum_respublika_;
///////////////////////////////////////////
  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //��� �������
 End;
  MemoProt.lines.add(TimeToStr(Time));
  //

end;

procedure TBOKFormSTAT.ToolButton11Click(Sender: TObject);
begin
  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actCopyPers.Checked     := False ;
  actRef2.Checked     := False ;
  actRef.Checked    := False ;
  actTabel.Checked     := false ;
  actKurs.Checked     := True ;

  actNew.Checked     := False;
  actTable.Checked   := False;
  actForm.Checked    := False;
  actDetails.Checked := False;
  actReAccept.Checked  := False;
  actiias.Checked := false;

  if bosslevel<>'0' then actNew.Enabled         := True ;
  actUndoChanges.Enabled := False;

  OptionsPanel.Visible := False;

  pc.ActivePage:=Tabdep;
  ActDetailUndoExecute(nil);

end;

procedure TBOKFormSTAT.BitBtn155Click(Sender: TObject);
begin
  cdsSS_OK_DEP_KOEF.post;
  cdsSS_OK_DEP_KOEF.refresh;

end;

procedure TBOKFormSTAT.BitBtn146Click(Sender: TObject);
var
   App,WorkBook,Sheet: Variant;
 j,i,aa:integer;
str_:String;
MemoProt :tmemo;
begin
// 22.05.2014 ������������ ������� - ����� ������ ��� ������

  MemoProt:=MemoFilials;
  MemoProt.Clear;
  aa:=0;
  if OpenDialogMyFile.Execute
  then begin

    App := CreateOLEObject('Excel.Application');
    WorkBook:=App.Workbooks.Open(OpenDialogMyFile.Files.Strings[0]);
   App.Visible:=true;
   j:=2;
   for i:=1 to 1 do // WorkBook.Sheets.Count do
   Begin  //1
     Application.ProcessMessages;
     Sheet:=WorkBook.WorkSheets[i];
     Sheet.Activate;
     TRY
       str_:='delete from ss_ok_dep_koef';
       execsql(str_);

       while aa=0 do
       begin    //2
         MemoProt.lines.add('--**--');

         try
           if trim(vartostr(Sheet.Cells[j,2].value))=''
           then begin aa:=2;
           end else begin
           Application.ProcessMessages;


           str_:='insert into ss_ok_dep_koef (BRANCH,DEPARTMENT_CODE,REGION_KOEF)'+
             ' values (:p_1,:p_2,:p_3)';
           MemoProt.lines.add(str_);
           MemoProt.lines.add(Sheet.Cells[j,2].value);
           MemoProt.lines.add(Sheet.Cells[j,3].value);
           MemoProt.lines.add(Sheet.Cells[j,4].value);
           MemoProt.lines.add(Sheet.Cells[j,5].value);
           execsqlpar(str_,Sheet.Cells[j,2].value, Sheet.Cells[j,3].value,
                           Sheet.Cells[j,5].value);
           MemoProt.lines.add('------');
           end;
           j:=j+1;
         except on e:exception
           do begin
             showmessage('������)'+e.Message);
           end;
         end;


       end;
       execsql('commit');
     Except on e:exception
       do begin
         execsql('rollback');
         showmessage('������)'+e.Message);
       end;
     end;

     App:=unassigned;

    end;
  end;

  CDSss_ok_dep_koef.Refresh;

end;

procedure TBOKFormSTAT.BitBtn158Click(Sender: TObject);
var  sql_  :string;
//  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 NumFormat,DateFormat,StrFormat: String;
// fil_schema: String;
 department_code_old : string; // , code_,name_,count_stat_,count_fakt_
// itogo_count_stat_,itogo_count_fakt_ : double;
  row_k : integer;
begin


 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

    row_j:=1;

    V.Cells[row,row_j].Value:='  ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' ��� ������ ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' ������������ ������ ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' ����������� ';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 80; //width:=200;  ������ �� �������� width ????
    V.Cells[row,row_j].Value:=' BANK_NAME ';
    inc(row_j);
    V.Cells[row,row_j].Value:=' REGION_NAM ';
    inc(row_j);

//    inc(row);

      try

        sql_:='select s.bank_id ,sc.department_code ,ok_service.GET_DEPARTMENTNAME(sc.department_code) department_code_show,sc.region_koef,'+
                ' s.bank_name,sr.region_nam'+
                ' from s_mfo s, s_region sr, ss_ok_dep_koef sc'+
                ' where sc.BRANCH=s.bank_id'+
                ' and s.region_id=sr.region_id'+
                ' order by s.region_id,s.bank_id';


        ExecPrc.Close;
//
        loaddata(ExecPrc,sql_);

        ExecPrc.First;
        department_code_old:='-1';

row_k:=0;
        while not ExecPrc.eof
        do begin
//    	���	�����	���������	�����������	BANK_NAME	REGION_NAM

                inc(row_k);
                inc(row);
                V.Cells[row,1].Value := inttostr(row_k);
                V.Cells[row,2].Value := ''''+Trim(ExecPrc.Fields[0].AsString);
                V.Cells[row,3].Value := ''''+Trim(ExecPrc.Fields[1].AsString);
                V.Cells[row,4].Value := ''''+Trim(ExecPrc.Fields[2].AsString);
                V.Cells[row,5].Value := ''''+Trim(ExecPrc.Fields[3].AsString);
                V.Cells[row,6].Value := ''''+Trim(ExecPrc.Fields[4].AsString);
                V.Cells[row,7].Value := ''''+Trim(ExecPrc.Fields[5].AsString);
          ExecPrc.next;
        end;

      except on e:exception
        do begin

          showmessage('������. '+#13+
            sql_+#13+
            e.Message+#13);

        end;
      end;


  Application.ProcessMessages;

 Finally
  V.Visible := True; //��� �������
 End;

  CDSss_ok_mfo_category.Refresh;

end;

procedure TBOKFormSTAT.bbEdVer3Click(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant; // ,Range
 i, col,row:integer; // ,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname: String;
  total_count, total_sum_koef,total_count_DEP,total_sum_DEP_koef,total_sum_DEP,
  xududiy, total_sum:double;
  MyRange:olevariant;

begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 TRY
    { Do some lengthy operation }
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;


  sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
        ' b.department_name,  b.department_type_code,'+
        ' b.high_dep_code, b.level_department_code, b.department_num'+
        ' from ss_ok_department b'+
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat'+
            ' where branch=:p_1)'+
        ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and b.state_notes=:p_2' + //''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
      end;
  loaddata(cdsTempSource,sql2_);
  row:=1;
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);



  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_�_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_�_.';

//    V.Cells[7,2].
    DateFormat := '��.��.����';

  end;

//  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // ������������ �����
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '������� ����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '���� �������';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '�������� ��� ����� �������';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '������� �����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '����� �� ����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '������� �����������';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;
  inc(i);
  V.Cells[row, i ].WrapText := True;
  V.Cells[row, i ].Value := '���� ����� �� ����';
  V.Cells[row, i ].VerticalAlignment := 2;
  V.Cells[row, i ].HorizontalAlignment := 3;
  V.Cells[row, i ].Font.Bold := True;


  total_count:=0;
  total_sum:=0;
  total_sum_koef:=0;

  olddepname:='x';
            total_count_DEP:=0;
            total_sum_DEP:=0;
            total_sum_DEP_koef:=0;

  While not cdsTempSource.Eof
  do begin

    if (headbranch_='09006')
    then begin
      sql_:='select '+
       ' c.post_name||'' "''||e.special_name||''"'' field1 , nvl(a.quantity_post,0) quantity_post, d.category_name field2,'+
       ' d.salary, round(nvl(a.quantity_post,0)*nvl(d.salary,0),2) field5,'+
       ' round(ok_service.GET_KOEFSUM(a.branch,a.department_code,d.salary),2) xududiy_koef, b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ss_ok_special e, ss_ok_post_category f'+
       ' where a.branch=:p_1'+ //''''+curBranch +''''+
       ' and a.department_code=:p_2'+ //cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
       ' and a.department_code=b.department_code'+
       ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
       ' and b.state_notes=:p_3'+ //''A'' '+
       ' and a.post_code=c.post_code'+
       ' and a.special_code=e.special_code'+
       ' and a.post_code=f.post_code'+
       ' and d.category_code=f.category_code'+
       ' and f.MFO_CATEGORY_TYPE_CODE=:p_4'+
       ' order by d.salary desc';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring ;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := MFO_CATEGORY_TYPE_CODE;
      end;
    end else begin
      sql_:='select '+
       ' c.post_name||'' "''||e.special_name||''"'' field1 , quantity_post, d.category_name field2,'+
       ' d.salary, round(nvl(quantity_post,0)*nvl(d.salary,0),2) field5,0 xududiy_koef,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ss_ok_special e'+
       ' where a.branch=:p_1'+ //''''+curBranch +''''+
       ' and a.department_code=:p_2'+ //cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
       ' and a.department_code=b.department_code'+
       ' and b.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
       ' and b.state_notes=:p_3'+ //''A'' '+
       ' and a.post_code=c.post_code'+
       ' and c.category_code=d.category_code (+)'+
       ' and a.special_code=e.special_code'+
       ' order by d.salary desc';
      cdsTemp.close;
      with cdsTemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := curBranch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring ;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := 'A';
      end;
    end;

    loaddata(cdsTemp,sql_);

    While not cdsTemp.Eof
    do begin

        if (olddepname <>cdsTemp.fieldbyname('department_name').AsString)
        then begin
          //inc(row);
          if olddepname <>'x'
          then begin
            inc(row);
            V.Cells[row, 1 ].Value:='����';
            V.Cells[row, 2 ].NumberFormat := StrFormat;
            V.Cells[row, 2 ].Value := floattostr(total_count_DEP);
            V.Cells[row, 5 ].NumberFormat := StrFormat;
            V.Cells[row, 5 ].Value := floattostr(total_sum_DEP);
            V.Cells[row, 7 ].NumberFormat := StrFormat;
            V.Cells[row, 7 ].Value := floattostr(total_sum_DEP_koef);
            total_count_DEP:=0;
            total_sum_DEP:=0;
            total_sum_DEP_koef:=0;
          end;
          inc(row);
          V.Cells[row, 1 ].NumberFormat := StrFormat;
            MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(7)+inttostr(row)];
            MyRange.Merge;
            MyRange.Font.Bold := True;
          V.Cells[row, 1 ].Value := cdsTemp.fieldbyname('department_name').AsString;
        end;
        olddepname :=cdsTemp.fieldbyname('department_name').AsString;

        i := 1;
        inc(row);
        For col:=0 To 5
        Do Begin
            case cdsTemp.Fields[col].DataType Of
              ftString :     V.Cells[row, i ].NumberFormat := StrFormat;
              ftFloat  :     V.Cells[row, i ].NumberFormat := NumFormat;
              ftDateTime:    V.Cells[row, i ].NumberFormat := StrFormat;
            end;
            V.Cells[row, i ].Value := Trim(cdsTemp.Fields[col].AsString);

            inc(i);
            if col=1
            then begin
              total_count:= total_count+ cdsTemp.Fields[col].Asfloat;
              total_count_DEP:=total_count_DEP+ cdsTemp.Fields[col].Asfloat;
            end;

            if col= 4
            then begin
              total_sum:= total_sum+   cdsTemp.Fields[col].Asfloat;
              total_sum_DEP:=total_sum_DEP+ cdsTemp.Fields[col].Asfloat;
            end;

            if col= 5
            then begin
              // field5+quantity_post*xududiy_koef
              xududiy := cdsTemp.fieldbyname('quantity_post').AsFloat * cdsTemp.fieldbyname('xududiy_koef').AsFloat +
                  cdsTemp.fieldbyname('field5').AsFloat;
              V.Cells[row, 7 ].Value := xududiy;
              total_sum_koef:= total_sum_koef+   xududiy;
              total_sum_DEP_koef:=total_sum_DEP_koef+ xududiy;
            end;

        End;
     V.Range['A'+inttostr(row)+':'+'G'+inttostr(row)].Select;
     V.Columns.AutoFit;

        cdsTemp.Next;
     end;
     cdsTempSource.Next;

     Application.ProcessMessages;

  end;


            inc(row);
            V.Cells[row, 1 ].Value:='����';
            V.Cells[row, 2 ].NumberFormat := StrFormat;
            V.Cells[row, 2 ].Value := floattostr(total_count_DEP);
            V.Cells[row, 5 ].NumberFormat := StrFormat;
            V.Cells[row, 5 ].Value := floattostr(total_sum_DEP);
            V.Cells[row, 7 ].NumberFormat := StrFormat;
            V.Cells[row, 7 ].Value := floattostr(total_sum_DEP_koef);
//            total_count_DEP:=0;
//            total_sum_DEP:=0;

      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '���� ������� ������';

      sum2_:=floattostr(total_count);
      V.Cells[row,2].NumberFormat := NumFormat;
      V.Cells[row,2].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum);
      V.Cells[row,5].NumberFormat := NumFormat;
      V.Cells[row,5].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum_koef);
      V.Cells[row,7].NumberFormat := NumFormat;
      V.Cells[row,7].Value:= trim(sum2_);

      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������ ������ �� ��������� �������������';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := '������������ ��������� �.�.';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := '�������� ����� ����������';

  inc(row);
      sum2_:=floattostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '����';


  inc(row);
      sum2_:=floattostr(total_sum_koef);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := '�� ���� �����';

  inc(row);
      V.Cells[row, 2].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' ';

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := bankdate;
  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  inc(row);
//      V.Cells[row, 2 ].NumberFormat := StrFormat;
//      V.Cells[row, 2 ].Value := '������� ����������';

  inc(row);
//      V.Cells[row, 2 ].NumberFormat := StrFormat;
//      V.Cells[row, 2 ].Value := ' �� ��������� �� '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';


//  V.Cells.Select;
//  V.Columns.AutoFit;

 FINALLY
   V.Visible := True; //��� �������
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

initialization
  RegisterClass(TBOKFormSTAT);
finalization
  UnRegisterClass(TBOKFormSTAT);
end.
