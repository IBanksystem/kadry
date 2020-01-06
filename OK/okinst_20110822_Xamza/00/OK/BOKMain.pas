unit BOKMain;
{ номер кадров group_id=70 !!!}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ActnList, ImgList, ComCtrls, ToolWin, Base,
  AboutDlg, StdCtrls, DB, DBClient, CheckLst, DBCtrls, Grids, //QRExport,
  DBGrids,ComObj, Buttons, Utils, Mask, strutils, errDlg, DBActns,
  Jpeg,SelDlg, DateUtils;

type
  TBOKForm = class(TBaseForm)
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
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    TBNew: TToolButton;
    N12: TMenuItem;
    N13: TMenuItem;
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
    TBOrder: TToolButton;
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
    ToolButton3: TToolButton;
    actNew: TAction;
    actUndoChanges: TAction;
    actEdit: TAction;
    actUnactive: TAction;
    ToolButton5: TToolButton;
    ActPrev: TAction;
    actFilter: TAction;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
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
    TBTable: TToolButton;
    dbeOK_PATRONYMIC: TDBEdit;
    dbeOK_FIRST_NAME: TDBEdit;
    Label26: TLabel;
    dbeOK_PASS_SERIYA: TDBEdit;
    Label27: TLabel;
    dbeOK_PASS_NUM: TDBEdit;
    Label28: TLabel;
    dbeOK_PASS_DATE: TDBEdit;
    Label29: TLabel;
    dbeOK_PASS_REG: TDBEdit;
    Label22: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    dbeOK_HOME_ADDRESSFACT: TDBEdit;
    Label25: TLabel;
    Label18: TLabel;
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
    ToolButton11: TToolButton;
    actDetails: TAction;
    lbStatus: TLabel;
    cdsOKPersonal_NEW: TClientDataSetEx;
    dsOKPersonal_NEW: TDataSource;
    cdbgOKPERSONAL_NEW: TClientDBGrid;
    ToolButton12: TToolButton;
    dbeOKdistr: TDBEdit;
    Label34: TLabel;
    dbeOK_TELEFON: TDBEdit;
    Label20: TLabel;
    dbeOK_tabno: TDBEdit;
    dbeOK_RECORD_BOOK_SERIES: TDBEdit;
    dbeOK_RECORD_BOOK_NUMBER: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    ToolButton13: TToolButton;
    actRef: TAction;
    RefPanel: TPanel;
    PC: TPageControl;
    TabMessage: TTabSheet;
    Memo1: TMemo;
    actSaveExist: TAction;
    DetailsPanel: TPanel;
    N52: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    ActPrev1: TMenuItem;
    actRefresh1: TMenuItem;
    actFiltr1: TMenuItem;
    actTable1: TMenuItem;
    actForm1: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    DataSetRefreshSt: TDataSetRefresh;
    Label37: TLabel;
    dblcbOKStatus: TDBLookupComboBox;
    dbeOKStatus: TDBEdit;
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
    GroupBox60: TGroupBox;
    Label101: TLabel;
    Label102: TLabel;
    BitBtn69: TBitBtn;
    BitBtn70: TBitBtn;
    DBEdit27: TDBEdit;
    BitBtn71: TBitBtn;
    BitBtn72: TBitBtn;
    DBEdit28: TDBEdit;
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
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    dbedHOME_ADDRESSFACT: TDBEdit;
    DBEdit71: TDBEdit;
    DBLookupComboBox12: TDBLookupComboBox;
    DBEdit72: TDBEdit;
    DBLookupComboBox14: TDBLookupComboBox;
    DBEdit74: TDBEdit;
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
    lbFormDistr: TLabel;
    lbFormBirthPlace: TLabel;
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
    DBEd_Distr: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEd_Region: TDBEdit;
    DBLCB_SRegion: TDBLookupComboBox;
    DBLCBdistr: TDBLookupComboBox;
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
    DBEdit11: TDBEdit;
    DBEdBirthPlace: TDBEdit;
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
    N8: TMenuItem;
    Label54: TLabel;
    Label56: TLabel;
    edOfficeAddress: TEdit;
    Button7: TButton;
    actRezervShow: TAction;
    actRezervSet: TAction;
    actToExcel: TAction;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    actDelete: TAction;
    DBEdit89: TDBEdit;
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
    GroupBox70: TGroupBox;
    Label105: TLabel;
    Label174: TLabel;
    Label98: TLabel;
    Label62: TLabel;
    cdbgOKStat: TClientDBGrid;
    bbStatNew: TBitBtn;
    bbStatUndo: TBitBtn;
    bbStatSave: TBitBtn;
    bbStatDelete: TBitBtn;
    DBEdit23: TDBEdit;
    DBEdit31: TDBEdit;
    gbStatSalary: TGroupBox;
    cdbgOKStatSalary: TClientDBGrid;
    bbStatSalaryNew: TBitBtn;
    Label158: TLabel;
    Label161: TLabel;
    lbVacancy: TLabel;
    lbHire: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    lbPost: TLabel;
    lbdepartment: TLabel;
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
    CBdep: TComboBox;
    Source: TClientDataSetEx;
    dsSSOKmotive_SET: TDataSource;
    cdsSSOKmotive_SET: TClientDataSetEx;
    DBLookupComboBox33: TDBLookupComboBox;
    DBLookupComboBox34: TDBLookupComboBox;
    Label159: TLabel;
    Label160: TLabel;
    Label166: TLabel;
    edDep: TEdit;
    DBEdPost: TEdit;
    DBLCBpost: TComboBox;
    Splitter3: TSplitter;
    TreeV: TTreeView;
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
    BitBtn64: TBitBtn;
    BitBtn94: TBitBtn;
    BitBtn95: TBitBtn;
    edFilial: TEdit;
    DBEdit5: TDBEdit;
    Label68: TLabel;
    DBEdit6: TDBEdit;
    Label69: TLabel;
    lbRegionForm: TLabel;
    Label169: TLabel;
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
    Button9: TButton;
    Button8: TButton;
    Label170: TLabel;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    cbSpecial: TComboBox;
    edSpecial: TEdit;
    Label171: TLabel;
    dsSSokSpecial_RO: TDataSource;
    cdsSSokSpecial_RO: TClientDataSetEx;
    Label172: TLabel;
    lbSpecial: TLabel;
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
    ToolButton21: TToolButton;
    actReAccept: TAction;
    ToolButton4: TToolButton;
    N15: TMenuItem;
    Excel1: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
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
    ToolButton22: TToolButton;
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
    DBEdit43: TDBEdit;
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
    Button14: TButton;
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
    Label191: TLabel;
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
    N14: TMenuItem;
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
    ToolButton23: TToolButton;
    TabTabel: TTabSheet;
    actTabel: TAction;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    BitBtn129: TBitBtn;
    dsTabel: TDataSource;
    cdsTabel: TClientDataSetEx;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
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
    BitBtn134: TBitBtn;
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
    Label285: TLabel;
    edDistrRO2: TDBEdit;
    dblcbRegion_RO3: TDBLookupComboBox;
    DBEdit145: TDBEdit;
    dblcbDistrRO_3: TDBLookupComboBox;
    DBLookupComboBox43: TDBLookupComboBox;
    DSss_ok_passport_type: TDataSource;
    CDSss_ok_passport_type: TClientDataSetEx;
    cdsTabelLeave: TClientDataSetEx;
    GB_tabel_date: TGroupBox;
    cdbgTabel: TClientDBGrid;
    medBankDate: TMaskEdit;
    BitBtn136: TBitBtn;
    TabKurs: TTabSheet;
    GroupBox38: TGroupBox;
    BitBtn137: TBitBtn;
    GroupBox55: TGroupBox;
    GroupBox56: TGroupBox;
    GroupBox64: TGroupBox;
    GroupBox69: TGroupBox;
    BitBtn138: TBitBtn;
    BitBtn135: TBitBtn;
    BitBtn140: TBitBtn;
    BitBtn141: TBitBtn;
    cdsSSOKkv_kurs_SET: TClientDataSetEx;
    dsSSOKkv_kurs_SET: TDataSource;
    ToolButton24: TToolButton;
    actKurs: TAction;
    BitBtn142: TBitBtn;
    BitBtn143: TBitBtn;
    dsOKKurs: TDataSource;
    cdsOKKurs: TClientDataSetEx;
    DBEdit146: TDBEdit;
    DBEdit147: TDBEdit;
    DBLookupComboBox44: TDBLookupComboBox;
    dblcbRegionNew: TDBLookupComboBox;
    DBEdit148: TDBEdit;
    DBEdit149: TDBEdit;
    dblcbDistrNew: TDBLookupComboBox;
    DBLookupComboBox47: TDBLookupComboBox;
    Label286: TLabel;
    Label287: TLabel;
    DBLookupComboBox48: TDBLookupComboBox;
    ClientDBGrid3: TClientDBGrid;
    cdbgOKKurs: TClientDBGrid;
    cdbgSSOKkv_kurs: TClientDBGrid;
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
    Label295: TLabel;
    DBLookupComboBox53: TDBLookupComboBox;
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
    LbOklad: TLabel;
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
    Label324: TLabel;
    Label325: TLabel;
    Label326: TLabel;
    Label327: TLabel;
    Label328: TLabel;
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
    Memo3: TMemo;
    BitBtn151: TBitBtn;
    ToolButton25: TToolButton;
    actRefreshRef: TAction;
    BitBtn154: TBitBtn;
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
    BitBtn155: TBitBtn;
    actStatPersonal: TAction;
    actStatPersonalDep: TAction;
    BitBtn157: TBitBtn;
    BitBtn156: TBitBtn;
    BitBtn158: TBitBtn;
    BitBtn159: TBitBtn;
    actStatStag: TAction;
    BitBtn160: TBitBtn;
    actReports: TAction;
    DBText1: TDBText;
    BitBtn161: TBitBtn;
    cdbgKursDva: TClientDBGrid;
    cdsKursDva: TClientDataSetEx;
    BitBtn162: TBitBtn;
    dsKursDva: TDataSource;
    TabReports: TTabSheet;
    ToolButton26: TToolButton;
    BitBtn163: TBitBtn;
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
    gbTabelWork: TGroupBox;
    ClientDBGrid4: TClientDBGrid;
    MemoTabelworkList: TMemo;
    GroupBox71: TGroupBox;
    mcTabelwork: TMonthCalendar;
    MemoTabelworkDate: TMemo;
    BitBtn139: TBitBtn;
    BitBtn144: TBitBtn;
    rgTabelWork: TRadioGroup;
    BitBtn145: TBitBtn;
    BitBtn146: TBitBtn;
    gbTabel: TGroupBox;
    MCTabel: TMonthCalendar;
    memoTabel: TMemo;
    bbGotovoGbTabel: TBitBtn;
    bbCloseGbTabel: TBitBtn;
    rgTabel: TRadioGroup;
    bbClearGbTabel: TBitBtn;
    GB: TGroupBox;
    GB_PERS: TGroupBox;
    RG_avans: TRadioGroup;
    BitBtn165: TBitBtn;
    BitBtn167: TBitBtn;
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
    edPrimFreeDays1: TEdit;
    Label337: TLabel;
    actGOSubmit: TAction;
    bbGOsubmit: TBitBtn;
    bbGOChangeStatus: TBitBtn;
    Label338: TLabel;
    DBEdit176: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SplitterCanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure actToolBarExecute(Sender: TObject);
    procedure actStatusBarExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
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
    procedure dbeOKFamilyStatusChange(Sender: TObject);
    procedure cdsOKPersonal_NEWAfterOpen(DataSet: TDataSet);
    procedure actUndoChangesExecute(Sender: TObject);
    procedure actRefExecute(Sender: TObject);
    procedure actDetailsExecute(Sender: TObject);
    procedure actOrderExecute(Sender: TObject);
    procedure dbeOK_HOME_ADDRESSFACTChange(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
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
    procedure TabOKPost_15Show(Sender: TObject);
    procedure cdsOKPostAfterPost(DataSet: TDataSet);
    procedure actStatSalaryExecute(Sender: TObject);
    procedure actStatSaveExecute(Sender: TObject);
    procedure actStatDeleteExecute(Sender: TObject);
    procedure actStatUndoExecute(Sender: TObject);
    procedure actStatNewExecute(Sender: TObject);
    procedure cdsOKStatBeforePost(DataSet: TDataSet);
    procedure cdsOKStatSalaryBeforePost(DataSet: TDataSet);
    procedure cdsOKStatBeforeDelete(DataSet: TDataSet);
    procedure actChangeFIOExecute(Sender: TObject);
    procedure actDismissExecute(Sender: TObject);
    procedure actAppointExecute(Sender: TObject);
    procedure actSaveExistExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actUnactiveExecute(Sender: TObject);
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
    function check_date_yyyymmdd(yyyy: String; mm: String; dd: String): string;
    procedure actLichKartaAExecute(Sender: TObject);
    procedure dbeokRegionChange(Sender: TObject);
    procedure cdbgOKEducationEditButtonClick(Sender: TObject);
    procedure actRef2Execute(Sender: TObject);
    procedure actObiektivkaExecute(Sender: TObject);
    procedure actOptionsExecute(Sender: TObject);
    procedure edFilialExit(Sender: TObject);
    procedure edOfficeAddressExit(Sender: TObject);
    procedure ChbArticleClick(Sender: TObject);
    procedure actRezervSetExecute(Sender: TObject);
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
    procedure Button8Click(Sender: TObject);
    procedure actObiektivkaRTFExecute(Sender: TObject);
    procedure actLichKartaB_rtfExecute(Sender: TObject);
    procedure actStatExecute(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure cdbgOK_PERSONALDblClick(Sender: TObject);
    procedure actChangePassportExecute(Sender: TObject);
    procedure dbeOK_PASS_NUMKeyPress(Sender: TObject; var Key: Char);
    procedure dbeOK_PASS_SERIYAKeyPress(Sender: TObject; var Key: Char);
    procedure actAppointNewExecute(Sender: TObject);
    procedure edDepChange(Sender: TObject);
    procedure DBEdPostChange(Sender: TObject);
    procedure DBLCBpostChange(Sender: TObject);
    procedure CBdepChange(Sender: TObject);
    procedure TreeVKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeVClick(Sender: TObject);
    procedure actDekretExecute(Sender: TObject);
    procedure actDekretOutExecute(Sender: TObject);
    procedure actShuBankdaExecute(Sender: TObject);
    procedure PCDetailsChange(Sender: TObject);
    procedure dbedHOME_ADDRESSFACTChange(Sender: TObject);
    procedure cdsOKRezervDetailAfterOpen(DataSet: TDataSet);
    procedure cdsOKRezervBeforePost(DataSet: TDataSet);
    procedure bbSaveOptionsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edSpecialChange(Sender: TObject);
    procedure cbSpecialChange(Sender: TObject);
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
    procedure actTabelExecute(Sender: TObject);
    procedure BitBtn129Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure BitBtn134Click(Sender: TObject);
    procedure TabSheet10Show(Sender: TObject);
    procedure cdsok_business_voyageAfterOpen(DataSet: TDataSet);
    procedure DBEdit137KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn136Click(Sender: TObject);
    procedure BitBtn137Click(Sender: TObject);
    procedure BitBtn135Click(Sender: TObject);
    procedure MCTabelClick(Sender: TObject);
    procedure bbGotovoGbTabelClick(Sender: TObject);
    procedure bbClearGbTabelClick(Sender: TObject);
    procedure bbCloseGbTabelClick(Sender: TObject);
    procedure ClientDBGrid4CellClick(Column: TColumn);
    procedure BitBtn145Click(Sender: TObject);
    procedure BitBtn146Click(Sender: TObject);
    procedure BitBtn144Click(Sender: TObject);
    procedure BitBtn140Click(Sender: TObject);
    procedure mcTabelworkClick(Sender: TObject);
    procedure BitBtn139Click(Sender: TObject);
    procedure BitBtn141Click(Sender: TObject);
    procedure actKursExecute(Sender: TObject);
    procedure BitBtn142Click(Sender: TObject);
    procedure cdsOKKursAfterOpen(DataSet: TDataSet);
    procedure BitBtn143Click(Sender: TObject);
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
    procedure BitBtn154Click(Sender: TObject);
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
    procedure BitBtn155Click(Sender: TObject);
    procedure actStatPersonalExecute(Sender: TObject);
    procedure actStatPersonalDepExecute(Sender: TObject);
    procedure BitBtn158Click(Sender: TObject);
    procedure actStatStagExecute(Sender: TObject);
    procedure BitBtn160Click(Sender: TObject);
    procedure cdbgToExcel(cdbgREP: TClientDBGrid; rep1,rep2,rep3,rep4 : string);
    procedure BitBtn161Click(Sender: TObject);
    procedure BitBtn162Click(Sender: TObject);
    procedure actReportsExecute(Sender: TObject);
    procedure BitBtn163Click(Sender: TObject);
    procedure cdsOK_Kurs3AfterOpen(DataSet: TDataSet);
    procedure TabSheet15Show(Sender: TObject);
    procedure cdsOK_TabelAfterOpen(DataSet: TDataSet);
    procedure BitBtn164Click(Sender: TObject);
    procedure bbGB_PERSClick(Sender: TObject);
    procedure TextOut_(gb_: tgroupbox; X, Y: Integer; const Text: string; i : integer);
    procedure RG_avansClick(Sender: TObject);
    procedure GB_PERSClick(Sender: TObject);
    procedure BitBtn165Click(Sender: TObject);
    procedure BitBtn167Click(Sender: TObject);
    procedure cdsOK_FreeDaysAfterOpen(DataSet: TDataSet);
    procedure actGOSubmitExecute(Sender: TObject);
    procedure bbGOChangeStatusClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
//    function  GetSQLResult(const ASQL: string; AParams: TParams = nil): Variant;
//    function  ExecSQL(const ASQL: string; AParams: TParams = nil): Integer;
  end;
  TData = class
  private
    FId: string;
    FName: string;
  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
  end;

function Convert(const s: string): string;//контрольная сумма

resourcestring
  SShowToolBar   = 'ShowToolBar'  ;
  SShowStatusBar = 'ShowStatusBar';

const
{ номер кадров 70 (семдесять)}
  SQL_yesno = 'select id,name from ss_syesno';
  SQL_Doljn = 'select dolj_id,dolj_name from s_doljn';
  SQL_Pr_off = 'select prich_id id,name_pr name from s_prich'   ;
  SQL_S_STR = 'select * from s_str order by name';
  SQL_S_STR_source = 'select code_str id,name from s_str order by name';
  SQL_S_DISTR = 'select * from s_distr';
  SQL_OKRezerv = 'select * from ok_rezerv';

  SQL_OKRezervDetail = 'select * from ok_rezerv_detail';
  SQL_ok_freedays = 'select * from ok_freedays';
  SQL_Derevo = 'select level, d.department_id id, d.DEPARTMENT_CODE ,'+
    ' d.DEPARTMENT_CODE||'') ''||d.department_name name_, d.department_code,'+
    ' d.department_name, d.department_type_code,'+
        ' d.high_dep_code, d.level_department_code, d.department_num '+
        ' from ss_ok_department d ';

  SQL_Users_SET = 'select id, user_name from users';

// обычные справочники
  SQL_SS_OK_POST = 'select * from ss_ok_post';
  SQL_SS_OK_DEPARTMENT = 'select * from ss_ok_department';

  SQL_ss_ok_zp_rate = 'select * from ss_ok_zp_rate';
  SQL_ss_ok_zp_rate_type = 'select * from ss_ok_zp_rate_type';

  SQL_SS_OK_city = 'select * from ss_ok_city';
  SQL_SS_OK_regplace = 'select * from ss_ok_regplace';
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

  SQL_SSOKSpecial_SET = 'SELECT * FROM ss_ok_special d where d.state_notes like ''A'' ';

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


// системные справочники
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

// главная рабочая таблица
  SQL_OKPersonal_EMPTY = 'SELECT /*+ INDEX (p OK_PERSONAL_PK)*/  p.* FROM ok_personal  p WHERE rownum <1 ';
  SQL_OKPersonal       = 'SELECT /*+ INDEX (p OK_PERSONAL_PK)*/   p.* FROM ok_personal  p ';

// рабочие таблицы
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
  BOKForm: TBOKForm;
  ChParam, LineCounter              : integer ;
  LastPanel,  OldStatus, OldSpecial   : String  ;
  ToPrint, ToExcel, SchRepFileExist : Boolean ;
  F                                 : TextFile;
  SchRepFileOpened     : Boolean;
  GetCurrentDir_templates, curBranch,FiltrLevelName, FiltrLevel, BossLevel   : String  ;
  IS_READONLY_FILIAL, kapital_bank : Boolean;
  headbranch_, old_schema, old_branch, filial_schema, filial_branch : string;
  months_: array [1..12] of byte;
  year_ : integer;

implementation

uses  FilterPersonal, OKChangeFIO, OKDismiss, OKAppoint, //OKOrder, //OKObiektivka2,
//  OKOPrev,, dlg_Choice2
  OKRezerv,OKChangePasport, OKDekret, Registry;
var
  fmOKFilter:  TfmFilterPersonal;
  fmSaveOKChangeFIO: TfmOKChangeFIO;
  fmSaveOKChangePasport: TfmOKChangePasport;
  fmSaveOKDismiss: TfmOKDismiss;
  fmSaveOKDekret: TfmOKDekret;
  fmSaveOKAppoint: TfmOKAppoint;
//  fmSaveOKOrder: TfmOKOrder;
//  fmSaveOKOPrev: TfmOKOPrev;
  fmSaveOKRezerv: TfmOKRezerv;

{$R *.dfm}
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
  then aa:='январ';
  if (month_id='2') or (month_id='02')
  then aa:='феврал';
  if (month_id='3') or (month_id='03')
  then aa:='март';
  if (month_id='4') or (month_id='04')
  then aa:='апрел';
  if (month_id='5') or (month_id='05')
  then aa:='май';

  if (month_id='6') or (month_id='06')
  then aa:='июн';
  if (month_id='7') or (month_id='07')
  then aa:='июл';
  if (month_id='8') or (month_id='08')
  then aa:='август';
  if (month_id='9') or (month_id='09')
  then aa:='сентябр';
  if (month_id='10') or (month_id='10')
  then aa:='октябр';
  if (month_id='11') or (month_id='11')
  then aa:='ноябр';
  if (month_id='12') or (month_id='12')
  then aa:='декабр';

  result:= aa;

end;

function TBOKForm.check_date_yyyymmdd(yyyy: String; mm: String; dd: String): string;
var aa:string;
     d_:tdatetime;
begin
  aa:='1';

  try
    if (strtoint(yyyy)>strtoint(copy(bankdate,7,4)))
    or (strtoint(yyyy)<1917)
    then begin
      aa:='неверный год '+yyyy;
    end;

  except
    aa:='неверный год '+yyyy;
  end;

  if (mm='') and (dd='')
  then begin

    if aa='1'
    then begin
// год уже проверен выше
    end;

  end else begin

    if aa='1'
    then begin
        try
          d_:=strtodate(dd+'.'+mm+'.'+yyyy);
        except
          aa:='неверный день='+dd+' месяц='+mm+' год='+yyyy;
        end;
    end;

  end;
  result:= aa;

end;

{function TBOKForm.ExecSQL(const ASQL: string; AParams: TParams = nil): Integer;
var
  SaveCursor: TCursor;
begin
  SaveCursor := Screen.Cursor;
  try
    Screen.Cursor := crSQLWait;
    if Assigned(AParams) and (AParams.Count > 0) then
      Result := Connection.AppServer.ExecSQL(ASQL, SessionName, PackageParams(AParams))
    else
      Result := Connection.AppServer.ExecSQL(ASQL, SessionName);
  finally
    Screen.Cursor := SaveCursor;
  end;
end;

function TBOKForm.GetSQLResult(const ASQL: string; AParams: TParams = nil): Variant;
var
  SaveCursor: TCursor;
  i: Integer;
begin
  Result := Null;
  SaveCursor := Screen.Cursor;
  with TClientDataSet.Create(nil) do
  try
    Screen.Cursor := crSQLWait;
    RemoteServer := Connection;
    ProviderName := RemoteServer.AppServer.GetDataProvider(True, SessionName);
    try
      if Assigned(AParams) then
        if (AParams.Count > 0) then
          Params.Assign(AParams);
      CommandText := ASQL;
      Open;
      if IsEmpty then Exit;
      if FieldCount = 1 then
        Result := Fields[0].Value
      else
      begin
        Result := VarArrayCreate([0, FieldCount - 1], varVariant);
        for i := 0 to FieldCount - 1 do
          Result[i] := Fields[i].Value;
      end;
      Close;
    finally
      RemoteServer.AppServer.FreeDataProvider(ProviderName);
    end;
  finally
    Free;
    Screen.Cursor := SaveCursor;
  end;
end;
}
procedure TBOKForm.addLookUpField(DataSet_, LDataSet_: TDataSet;
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


procedure TBOKForm.FormCreate(Sender: TObject);
 var d : TData;
     n,i : Integer;
     sql_ : string;
  head_ : string;
begin

//showmessage(convert('Сейчас я в головном банке00974'));
//showmessage(convert('Сейчас я в районном банке00445'));
// 132536834140705

  inherited;
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

  i:=GetSqlResult('select status from statusoperday where id=1');
  if (i<>1) then
  begin
    Application.MessageBox('Опер. день закрыт !!!', 'Предупреждение', MB_OK);
  end;

  BOKForm := Self;
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
// не показывать заголовки листов
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
  Head_ := VarToStr(getSqlResult('select CONST.GETCONST(23001) from dual'));
  if Head_ <> convert('Сейчас я в головном банке' +Branch) then
  begin

     sql_:='select * from s_mfo '+
        ' where bank_id=union_id '+
        ' and bank_id='''+Branch+''' '+
        ' and header_id<>union_id '+
        ' and rownum=1';

     loadData(cdsTempSource,sql_);
  //showmessage(sql_);

  // район
  //showmessage('2)не Головное отделение ');
      FiltrLevel:='3';
      FiltrLevelName:='Район';
      BossLevel := '3';
  // обл
     while not cdsTempSource.eof
     do begin
      BossLevel := '2';
      FiltrLevel:= '2';
      FiltrLevelName:='Область';
  //showmessage('bosslevel)не Головное отделение ');
      cdsTempSource.next;
     end;
     if Head_ = convert('Сейчас я в районном банке' +Branch)
     then begin
       FiltrLevel:='3';
       FiltrLevelName:='Район';
       BossLevel := '3';
     end;
//showmessage('3)не Головное отделение ');

  end else begin
//showmessage('Головное отделение');
    FiltrLevel:='1';
    FiltrLevelName:='Республика';
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
    then FiltrLevelName:=branch+' Единая база - Агро банк';
    if (branch='09006')
    then FiltrLevelName:=branch+' Единая база - Халк банк';
    if (branch='09049')
    then FiltrLevelName:=branch+' Единая база - Капитал банк';
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
   actStatNew.Enabled      := False;
   actStatSave.Enabled      := False;
   actStatDelete.Enabled     := False;
   actStatUndo.Enabled        := False;
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
//showmessage('неберунги');
  if BossLevel = '1'
  then begin
  // республика
  end else begin
  // рядовой филиал
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

procedure TBOKForm.FormDestroy(Sender: TObject);
begin
  inherited;
  with Registry do
    if OpenKey(INIT_KEY + Self.ClassName, True) then
    try
      WriteBool(SShowToolBar, psToolBar.Visible);
      WriteBool(SShowStatusBar, StatusBar.Visible);
      WriteString('edOfficeAddress', edOfficeAddress.Text);
      WriteString('edFilial', edFilial.Text);
      Writebool('chbTabVisible', chbTabVisible.checked);
      Writebool('chbGluk', chbGluk.checked);
    finally
      CloseKey;
    end;
{
  inherited;
  With Registry do
    Try
      OpenKey(INIT_KEY + Self.ClassName, True);
//      WriteInteger('clbNoLead',        clbNoLead.Selected);
    Finally
      CloseKey;
    End;
showmessage(INIT_KEY + Self.ClassName);
}
end;

procedure TBOKForm.SplitterCanResize(Sender: TObject;
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

procedure TBOKForm.actToolBarExecute(Sender: TObject);
begin
  psToolBar.Visible := not psToolBar.Visible;
end;

procedure TBOKForm.actStatusBarExecute(Sender: TObject);
begin
  StatusBar.Visible := not StatusBar.Visible;
end;

procedure TBOKForm.actAboutExecute(Sender: TObject);
begin
  with TAboutDialog.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TBOKForm.ActionListUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin

  actToolBar.Checked := psToolBar.Visible;
  actStatusBar.Checked := StatusBar.Visible;

  OpenPanel.Visible    := (actNew.Checked or actReAccept.Checked);
  TablePanel.Visible   := actTable.Checked;
  FormPanel.Visible    := actForm.Checked;
  RefPanel.Visible     := (actRef.Checked or actRef2.Checked or actTabel.Checked
    or   actKurs.Checked  or   actREPORTS.Checked );
  DetailsPanel.Visible := actDetails.Checked;
  iiasPanel.Visible := actiias.Checked ;
//  OptionsPanel.Visible := actOptions.Checked;

  if actPhotoActualSize.Checked then
    imgSignature.Align := alNone
  else
    imgSignature.Align := alClient;

// actNew
  actNew.Enabled := (actTable.Checked or actDetails.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked);

// actReAccept         not cdsOKPersonal.IsEmpty
  if (not cdsOKPersonal.IsEmpty)
  then begin
    actReAccept.Enabled :=
      (  (  actTable.Checked
         )
         and
         (   (cdsOKPersonal.FieldByName('STATUS_CODE').AsString='3')
          or (cdsOKPersonal.FieldByName('STATUS_CODE').AsString='4')
         )
      );
  end else begin
    actReAccept.Enabled := False;
  end;

// акт отмена actUndoChanges
  actUndoChanges.Enabled := (actNew.Checked or actDetails.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked);

// ActDelete
  actDelete.Enabled := (actForm.Checked or actNew.Checked or actDetails.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked);

// акт сохранить  actEdit
  actEdit.Enabled := (actForm.Checked or actNew.Checked or actDetails.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked);

//  ActPrev
  ActPrev.Enabled := (actTable.Checked or actNew.Checked or actDetails.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked);

//  actToExcel
//  actToExcel.Enabled := (actTable.Checked or actNew.Checked or actDetails.Checked
//     or actRef.Checked or actRef2.Checked or actRezervSet.Checked);
  actToExcel.Enabled := (actTable.Checked);

//  actFilter
  actFilter.Enabled := (actTable.Checked or actForm.Checked or actiias.Checked);
//if actUndoChanges.Checked
//then showmessage('!');
// actTable
  actTable.Enabled := (actTable.Checked or actForm.Checked or actDetails.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actUndoChanges.Checked or actOptions.Checked or actiias.Checked
     or actTabel.checked or   actKurs.Checked  or   actREPORTS.Checked);

// actForm
  actForm.Enabled := (actTable.Checked or actForm.Checked or actDetails.Checked
     or   actKurs.Checked  or   actREPORTS.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked or actTabel.checked  or actKurs.Checked )
     AND (not cdsOKPersonal.IsEmpty);

// actDetails
  actDetails.Enabled := (actTable.Checked or actForm.Checked or actDetails.Checked
     or   actKurs.Checked  or   actREPORTS.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked or actTabel.checked or actKurs.Checked)
     AND (not cdsOKPersonal.IsEmpty);

// actIIAS
  actiias.Enabled := (actTable.Checked or actForm.Checked or actDetails.Checked
     or   actKurs.Checked  or   actREPORTS.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked or actTabel.checked or actKurs.Checked)
     AND (not cdsOKPersonal.IsEmpty);

// actRef
  actRef.Enabled := (actTable.Checked or actForm.Checked or actDetails.Checked
     or   actKurs.Checked  or   actREPORTS.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked or actTabel.checked or actKurs.Checked);

// actRef2
  actRef2.Enabled := (actTable.Checked or actForm.Checked or actDetails.Checked
     or   actKurs.Checked  or   actREPORTS.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked or actTabel.checked or actKurs.Checked);

// actRezervSet
  actRezervSet.Enabled := (actTable.Checked or actForm.Checked or actDetails.Checked
     or   actKurs.Checked  or   actREPORTS.Checked
     or actRef.Checked or actRef2.Checked or actRezervSet.Checked
     or actiias.Checked or actTabel.checked or actKurs.Checked);


end;



procedure TBOKForm.cdsSSOKPost_SETReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
//  if pos('Cannot modify read-only dataset', E.Message) > 0
//  then ShowMessage('Только для чтения!')
//  else
  If pos('ORA-01400', E.Message) > 0 Then ShowMessage('Ошибка при сохранении. Пожалуйста, заполните пустые поля!')
//  Else if pos('is not a valid date and time', E.Message) > 0 Then ShowMessage('Пожалуйста укажите дату в формате "дд.мм.гггг" или отмените ввод (клавиша [ESC] )!')
  else ShowMessage(e.Message);
end;

procedure TBOKForm.FormShow(Sender: TObject);
var //LevelName_ : TData;
   sql_,  w :string;
   n : integer;
   show_bank_ :string;
begin

    if curBranch=''
    then curBranch:=Branch;

  with PCmainok do
    for n:=0 to PageCount-1 do
      Pages[n].TabVisible:=false;

  GetCurrentDir_templates := GetCurrentDir+'/Templates' ;

  medBankDate.Text:=bankdate;
// Настройки
//  cbBoss.Items.Clear;
// LEVEL_DEPARTMENT_CODE	NUMBER (1) not null, --	Код
// LEVEL_DEPARTMENT_NAME	VARCHAR2(50) not null --	Наименование 	 Заполняется разработчиками
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


// продолжение форм шоу
  PC.ActivePage := TabMessage;
  PCDetails.ActivePage := TabDetailsMessage;

//  cdsSSOKDepartment_SET.DisableControls;
//  LoadData(cdsSSOKDepartment_SET,             SQL_SSOKDepartment_SET);

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

  if bosslevel='0'
  then begin
    sql_:=sql_SSOKPost_SET;
  end else begin
    sql_ := sql_SSOKPost_SET+' and d.level_department_code in('+BossLevel+',4) ' ;
  end;

  actRefreshRefExecute(nil);
    
  if not cdsSSOKPost_SET.Active then LoadData(cdsSSOKPost_SET, sql_);
  if not cdsNostraSET.Active then LoadData(cdsNostraSET, 'select ''1'' nostra, ''Есть'' nostra_name from dual '+
    ' union all select ''2'' nostra, ''Нет'' nostra_name from dual');

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

// загрузка  датасета OK_PERSONAL
  cdsOKPersonal.DisableControls;
  if bosslevel='0'
  then
  w := ' where status_code=2'
  else
  w := ' where p.branch = '+''''+curBranch +''' and status_code=2';

  LoadData(cdsOKPersonal,      SQL_OKPersonal + w);
  cdsOKPersonal.Close;

  loaddata(cdsSS_OK_GOSUBMIT,'select * from SS_OK_GOSUBMIT');
// добавление смотрящих-выше-полей
  addLookUpField_OkPersonal;
// END добавление смотрящих-выше-полей

  cdsOKPersonal.Open;
  cdsOKPersonal.EnableControls;

  if (HeadBranch_ <>'09006')
  then begin
    dblcbGOsubmit.visible := false;
    lbgosubmit.visible := false;
    cdbgok_personal.columns[46].visible := false;
    bbGOsubmit.visible := false;
    bbGOChangeStatus.visible:=false;
  end;

  if ( (HeadBranch_ ='09004') or (HeadBranch_ ='00394') )
  then begin
    // в пахтабанке не показывать некоторые поля
    // панель Форма
    lbFormRegPlace.visible := false;
    dblcbFormSS_OK_REGPLACE.visible := false;
    dbedFormPASS_REG.visible := false;

    lbDistrRO2.visible := false;
    lbDistrRO2_.visible := false;
    edRegion_RO2.visible := false;
    dblcbRegion_RO2.visible := false;
    edDistrRO_2.visible := false;
    dblcbDistrRO_2.visible := false;
    dbedHOME_ADDRESSFACT.visible := false;

    lbRegionForm.visible := false;
    DBEd_Region.visible := false;
    DBLCB_SRegion.visible := false;
    lbFormBirthPlace.visible := false;
    DBEdBirthPlace.visible := false;
    lbFormDistr.visible := false;
    DBEd_Distr.visible := false;
    DBLCBdistr.visible := false;

  end else begin
    lbFormRegPlace.visible:=true;
    dblcbFormSS_OK_REGPLACE.visible:=true;
    dbedFormPASS_REG.visible:=true;

    lbDistrRO2.visible:=true;
    lbDistrRO2_.visible:=true;
    edRegion_RO2.visible:=true;
    dblcbRegion_RO2.visible:=true;
    edDistrRO_2.visible:=true;
    dblcbDistrRO_2.visible:=true;
    dbedHOME_ADDRESSFACT.visible:=true;

    lbRegionForm.visible:=true;
    DBEd_Region.visible:=true;
    DBLCB_SRegion.visible:=true;
    lbFormBirthPlace.visible:=true;
    DBEdBirthPlace.visible:=true;
    lbFormDistr.visible:=true;
    DBEd_Distr.visible:=true;
    DBLCBdistr.visible:=true;
  end;

  actTableExecute(nil);
    pcmainok.ActivePage := TablePanel_;

// это капитал банк или нет
  show_bank_ := getsqlresult('select header_id from s_mfo where bank_id=info.getbranch');
  if (show_bank_='09049') or (show_bank_='00974')
  then begin
    kapital_bank := TRUE;
    lbShowBank.Caption := ' ОАТБ "Капиталбанк" '+branch;
  end else begin
    kapital_bank := FALSE;
    lbShowBank.Caption := ' "'+branch+'" ';
  end;

  BitBtn141Click(nil); // показать дни в табеле 28,29,30 или 31

end;

procedure TBOKForm.actSSOKPostExecute(Sender: TObject);
begin
  ViewRef(0);
{  RefExec;
  PC.ActivePage:=TabSSOKPost;

  If cdsSSOKPost_SET.Active Then Exit;
  cdsSSOKPost_SET.DisableControls;
  LoadData(cdsSSOKPost_SET, SQL_SSOKPost_SET);
//  cdsSSOKPost_SET.IndexFieldNames := 'post_code';
  cdsSSOKPost_SET.EnableControls;
}
end;

procedure TBOKForm.actSSOKEducationExecute(Sender: TObject);
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
  cdsSSOKInstitution_Set.IndexFieldNames := 'EDUCATION_CODE';   // поле в детейл таблице =
  cdsSSOKInstitution_Set.MasterFields    := 'EDUCATION_CODE';    // поле в мастер таблице

  cdsSSOKEducation_SET.EnableControls;
  cdsSSOKInstitution_SET.EnableControls;
}
end;

procedure TBOKForm.actSSOKNationalityExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKPartyExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKDegreeExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKAcademicExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKLanguageExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKLevelLanguageExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKTypePeriodExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKRelationExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKQualificationExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKLeaveExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKMotiveDismissialExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKYouthExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKDepartmentTypeExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKDepartmentExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKArticleExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKCommandTypeExecute(Sender: TObject);
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

procedure TBOKForm.actSSOKTemplateCommandExecute(Sender: TObject);
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

procedure TBOKForm.ActPrevExecute(Sender: TObject);
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
   else if PC.ActivePage =  TabdetailsMessage        then begin ShowMessage('Пожалуйста, Выберите Данные!');
   end; // энд последнего ифа


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
 // энд САМОГО ПОСЛЕДНЕГО ИФА

end;

procedure TBOKForm.GetRefCDBG(cdbgSSOK: TClientDBGrid);
var i,k :  Integer;
    s :  String ;
begin

  s := '| пп |';
  // формирование шапки для текстового файла
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
  // формирование данных для текстового файла
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

procedure TBOKForm.GetRef(cdbgSSOK: TClientDBGrid);
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
    showmessage('Не удалось сохранить данные в файл "C:\NCI Bank\OK\Temp\report_ok.txt"');
    raise;
  end;

  try
    WinExec('notepad C:\NCI Bank\OK\Temp\report_ok.txt', SW_MAXIMIZE);
  except
    showmessage('Не удалось открыть в блокноте "notepad C:\NCI Bank\OK\Temp\report_ok.txt"');
  end;

end;

procedure TBOKForm.cdsSSOKDepartment_SETAfterPost(DataSet: TDataSet);
var ErMessage : string;
begin

  ErMessage := '';

  if DataSet.Fields.FieldByName('department_name').Asstring='БАНК'
    then ErMessage := 'Ошибка !!!'+#13+'Нельзя назвать отдел общим словом БАНК.'
  else if DataSet.Fields.FieldByName('department_type_code').IsNull
    then ErMessage := 'Ошибка при сохранении.'+#13+'Укажите тип отдела.'
  else if DataSet.Fields[1].IsNull
    then ErMessage := 'Ошибка при сохранении.'+#13+'Укажите уникальный код отдела.';

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
            ShowMessage('Ошибка при сохранении.'+#13+E.Message);
            Abort;
      End;
    End;
  end;
end;

procedure TBOKForm.actTableExecute(Sender: TObject);
begin
{  if LastPanel = 'OpenPanel' then
    If Application.MessageBox(PChar(s), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes

      ;
}
  LastPanel := 'TablePanel';
  pcmainok.ActivePage := TablePanel_;

  actREPORTS.Checked     := False ;
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

procedure TBOKForm.actFormExecute(Sender: TObject);
begin

  LastPanel := 'FormPanel';
  pcmainok.ActivePage := FormPanel_;
  actForm.Checked := True;

  actREPORTS.Checked     := False ;
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

procedure TBOKForm.actNewExecute(Sender: TObject);
//var v: variant;
begin

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

  actREPORTS.Checked     := False ;
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
 end;

end;

procedure TBOKForm.actSaveNewExecute(Sender: TObject);
var z,i    : integer;
    id_  : integer;
    v    : variant;
    sql_, ErMessage : string;
const
  ERROR_NO = 'ORA-20000: ';
begin

  ErMessage := '';

  for i := 0 to cdbgOKPersonal_NEW.Columns.Count-1 do
  begin
    if cdbgOKPersonal_NEW.Columns.Items[i].Visible  then
    begin
      if (cdsOKPersonal_NEW.Fields.FieldByName(cdbgOKPersonal_NEW.Columns.Items[i].FieldName).AsString='')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'Отчество')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'N')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'За рубежом')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'N приказа')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'Дата приказа')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<>'Причина увольнения')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> 'За рубежом')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> 'Место рождения')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> 'Место выдачи паспорта')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> 'Место регистрации')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> 'Место жительства')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> 'Где прописан')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> 'Пенсионный ИН')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> 'Отдел')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> 'Должность')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '(обл)Место рождения')
      and (cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption<> '(район)Место рождения')

      then
      begin
        ErMessage := ErMessage+' "'+cdbgOKPersonal_NEW.Columns.Items[i].Title.Caption+'" ';
      end;
    end;
  end;

{
  if (cdsOKPersonal_new.FieldByName('PASS_REG').AsString='')
  then begin
    if ( cdsOKPersonal_new.FieldByName('regplace_code').AsString='')
    Then ErMessage := ErMessage+' "Место регистрации" ';
  end;

  if (cdsOKPersonal_new.FieldByName('HOME_ADDRESSFACT').AsString='')
  then begin
    if ( cdsOKPersonal_new.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString='')
    Then ErMessage := ErMessage+' "Место жительства (область)" ';
    If ( cdsOKPersonal_new.FieldByName('HOME_ADDRESSFACT_DISTR').AsString=''    )
    Then ErMessage := ErMessage+' "Место жительства (район/город)" ';
  end;
}

  if (cdsOKPersonal_new.FieldByName('Home_Address').AsString='')
  then begin
    if ( cdsOKPersonal_new.FieldByName('HOME_ADDRESS_REGION_ID').AsString='')
    Then ErMessage := ErMessage+' "Где прописан (область)" ';
    If ( cdsOKPersonal_new.FieldByName('HOME_ADDRESS_DISTR').AsString=''    )
    Then ErMessage := ErMessage+' "Где прописан (район/город)" ';
  end;

  if (cdsOKPersonal_new.FieldByName('birthplace').AsString='')
  then begin

    if ( cdsOKPersonal_new.FieldByName('region_id').AsString='')
    Then ErMessage := ErMessage+' "Место рождения сотрудника (область)" ';
    If ( cdsOKPersonal_new.FieldByName('distr').AsString=''    )
    Then ErMessage := ErMessage+' "Место рождения сотрудника (район/город)" ';

  end;

      if length(cdsOKPERSONAL_NEW.FieldByName('pass_seriya').AsString)<>2
      then begin
        showmessage('Серия документа (Паспорта) должна быть 2 символа, а не '+IntToStr(length( cdsOKPERSONAL_NEW.FieldByName('pass_seriya').AsString )) );
        exit;
      end;

      if length(cdsOKPERSONAL_NEW.FieldByName('pass_num').AsString)<>7
      then begin
        showmessage('Номер документа (Паспорта) должен быть 7 цифр, а не '+IntToStr(length( cdsOKPERSONAL_NEW.FieldByName('pass_num').AsString )) );
        exit;
      end;

  If ( cdsOKPERSONAL_NEW.FieldByName('Education_Title_CODE').AsString='')
  Then ErMessage := ErMessage+' "Образование сотрудника" ';

  If ( cdsOKPERSONAL_NEW.FieldByName('tabno').AsString='')
  Then ErMessage := ErMessage+' "Табельный номер" ';

    sql_ := 'select count(id) from ok_personal '+
      ' where branch='''+branch+''''+
        ' and tabno=' +cdsOKPERSONAL_new.FieldByName('tabno').AsString;

    try
      z:=getSQLresult(sql_);
      if (z<>0)
      then begin
        Showmessage('Табельный номер '+cdsOKPERSONAL_new.FieldByName('tabno').AsString+' уже используется!'+#13+
          ' Измените табельный номер и сохраните данные.');
        exit;
      end;
    except
//      showmessage(sql_);
//      exit;
    end;


    ///////

    if cdsOKPERSONAL_new.FieldByName('nps_id').AsString <> ''
    then begin
      sql_ := 'select count(id) from ok_personal'+
        ' where nps_id='+cdsOKPERSONAL_new.FieldByName('nps_id').AsString;
      try
        z:=getSQLresult(sql_);
        if (z<>0)
        then begin
          Showmessage('Пенсионный ИН '+cdsOKPERSONAL_new.FieldByName('nps_id').AsString+
            ' уже используется!'+#13+' Измените Пенсионный ИН и сохраните данные.');
          exit;
        end;
      except
        showmessage(sql_);
        exit;
      end;


      z := length(cdsOKPERSONAL_new.FieldByName('nps_id').AsString);
      if (z<>14) and (z<>0)
      then begin
        showmessage('поле Пенсионный ИН должно содержать 14 цифр'+#13+
          'вы ввели ИН='+cdsOKPERSONAL_new.FieldByName('nps_id').AsString+#13+
          'только '+IntToStr(z)+' символов');
        exit;
      end;
    end;



  if ErMessage <> '' then
  begin
    ShowMessage('Пожалуйста, Укажите данные сотрудника:'+ ErMessage);
    exit;
  end;

  try
//    execSQL('begin Param.SaveParam(1); end;');
    execSQL('begin param.ClearParam; end;');

    If cdsOKPERSONAL_NEW.FieldByName('PERSONAL_CODE').IsNull Then   execSQL('begin Param.SetParam(''PERSONAL_CODE'',''0''); end;')
    Else   execSQL('begin Param.SetParam(''PERSONAL_CODE'','+ cdsOKPERSONAL_NEW.FieldByName('PERSONAL_CODE').AsString +'); end;');

    execSQL('begin Param.SetParam(''BRANCH'',info.getbranch); end;');

    execSQL('begin Param.SetParam(''FAMILY'',            '''+ cdsOKPERSONAL_NEW.FieldByName('FAMILY').AsString +            '''); end;');
    execSQL('begin Param.SetParam(''FIRST_NAME'',        '''+ cdsOKPERSONAL_NEW.FieldByName('FIRST_NAME').AsString +        '''); end;');
    execSQL('begin Param.SetParam(''PATRONYMIC'',        '''+ cdsOKPERSONAL_NEW.FieldByName('PATRONYMIC').AsString +        '''); end;');
    execSQL('begin Param.SetParam(''GENDER_CODE'',       '''+ cdsOKPERSONAL_NEW.FieldByName('GENDER_CODE').AsString +       '''); end;');
    execSQL('begin Param.SetParam(''BIRTHDAY'',          '''+ cdsOKPERSONAL_NEW.FieldByName('BIRTHDAY').AsString +          '''); end;');
    execSQL('begin Param.SetParam(''NATIONALITY_CODE'',  '''+ cdsOKPERSONAL_NEW.FieldByName('NATIONALITY_CODE').AsString +  '''); end;');
    execSQL('begin Param.SetParam(''FAMILY_STATUS_CODE'','''+ cdsOKPERSONAL_NEW.FieldByName('FAMILY_STATUS_CODE').AsString +'''); end;');
    execSQL('begin Param.SetParam(''REG_TYPE_CODE'',     '''+ cdsOKPERSONAL_NEW.FieldByName('REG_TYPE_CODE').AsString +     '''); end;');

    execSQL('begin Param.SetParam(''HOME_ADDRESS'',      '''+ cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESS').AsString +      '''); end;');
    execSQL('begin Param.SetParam(''HOME_ADDRESS_REGION_ID'',      '''+ cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESS_REGION_ID').AsString +      '''); end;');
    execSQL('begin Param.SetParam(''HOME_ADDRESS_DISTR'',      '''+ cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESS_DISTR').AsString +      '''); end;');

    execSQL('begin Param.SetParam(''HOME_ADDRESSFACT'',  '''+ cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESSFACT').AsString +  '''); end;');
    execSQL('begin Param.SetParam(''HOME_ADDRESSFACT_REGION_ID'',  '''+ cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString +  '''); end;');
    execSQL('begin Param.SetParam(''HOME_ADDRESSFACT_DISTR'',  '''+ cdsOKPERSONAL_NEW.FieldByName('HOME_ADDRESSFACT_DISTR').AsString +  '''); end;');

    execSQL('begin Param.SetParam(''REGPLACE_CODE'',  '''+ cdsOKPERSONAL_NEW.FieldByName('REGPLACE_CODE').AsString +  '''); end;');

    execSQL('begin Param.SetParam(''PASS_SERIYA'',       '''+ cdsOKPERSONAL_NEW.FieldByName('PASS_SERIYA').AsString +       '''); end;');
    execSQL('begin Param.SetParam(''PASS_NUM'',          '''+ cdsOKPERSONAL_NEW.FieldByName('PASS_NUM').AsString  +         '''); end;');
    execSQL('begin Param.SetParam(''PASS_DATE'',         '''+ cdsOKPERSONAL_NEW.FieldByName('PASS_DATE').AsString +         '''); end;');
    execSQL('begin Param.SetParam(''PASS_REG'',          '''+ cdsOKPERSONAL_NEW.FieldByName('PASS_REG').AsString  +         '''); end;');
    execSQL('begin Param.SetParam(''RECORD_BOOK_NUMBER'','''+ cdsOKPERSONAL_NEW.FieldByName('RECORD_BOOK_NUMBER').AsString +'''); end;');
    execSQL('begin Param.SetParam(''RECORD_BOOK_SERIES'','''+ cdsOKPERSONAL_NEW.FieldByName('RECORD_BOOK_SERIES').AsString +'''); end;');
    execSQL('begin Param.SetParam(''TELEFON'',           '''+ cdsOKPERSONAL_NEW.FieldByName('TELEFON').AsString +           '''); end;');
    execSQL('begin Param.SetParam(''STATUS_CODE'',       '''+ cdsOKPERSONAL_NEW.FieldByName('STATUS_CODE').AsString +       '''); end;');
    execSQL('begin Param.SetParam(''TABNO'',           '''+ cdsOKPERSONAL_NEW.FieldByName('TABNO').AsString +           '''); end;');
    execSQL('begin Param.SetParam(''EDUCATION_TITLE_CODE'',           '''+ cdsOKPERSONAL_NEW.FieldByName('EDUCATION_TITLE_CODE').AsString +           '''); end;');

    execSQL('begin Param.SetParam(''NPS_ID'',           '''+ cdsOKPERSONAL_NEW.FieldByName('NPS_ID').AsString +           '''); end;');

//    if chbBirthPlaceNew.Checked
//    then begin
//      execSQL('begin Param.SetParam(''REGION_ID'','''     + '00' +         '''); end;');
//      execSQL('begin Param.SetParam(''DISTR'','''         + '000' +             '''); end;');
      execSQL('begin Param.SetParam(''BIRTHPLACE'',    '''+ cdsOKPERSONAL_NEW.FieldByName('birthplace').AsString +           '''); end;');
//    end else begin
      execSQL('begin Param.SetParam(''REGION_ID'','''     + cdsOKPERSONAL_NEW.FieldByName('REGION_ID').AsString +         '''); end;');
      execSQL('begin Param.SetParam(''DISTR'','''         + cdsOKPERSONAL_NEW.FieldByName('DISTR').AsString +             '''); end;');
//      execSQL('begin Param.SetParam(''BIRTHPLACE'',    '''+ '0' +           '''); end;');
//    end;

    execSQL('begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;');
    execSQL('begin Param.SetParam(''NN'',           '''+ cdsOKPERSONAL_NEW.FieldByName('NN').AsString +           '''); end;');
    execSQL('begin Param.SetParam(''OK_INN'',           '''+ cdsOKPERSONAL_NEW.FieldByName('INN').AsString +           '''); end;');

    execSQL('begin OK_SERVICE.NEW_COLLEAGUE; end;');
    v := GetSqlResult('select Param.GetParam(''ID'') from dual');
    id_ := v;
    execSQL('begin Param.ClearParam; end;');
//    execSQL('begin Param.LoadParam(1); end;');

    ExecSQL('COMMIT');
    cdsOKPERSONAL_NEW.cancel;

//    showmessage('id_='+intTostr(id_) );
    cdsOKPersonal.BeforePost := nil;
    cdsOKPersonal.DisableControls;

//showmessage('cdsOKPersonal '  +SQL_OKPersonal + w);
    LoadData(cdsOKPersonal,  SQL_OKPersonal + ' where p.branch = '+''''+curBranch +''' and id='+intTostr(id_));
    cdsOKPersonal.Close;

  loaddata(cdsSS_OK_GOSUBMIT,'select * from SS_OK_GOSUBMIT');
// добавление смотрящих-выше-полей
  addLookUpField_OkPersonal;


    cdsOKPersonal.Open;
    cdsOKPersonal.EnableControls;

    cdsOKPersonal.BeforePost := cdsOK_BeforePost;

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

procedure TBOKForm.dbeOKFamilyStatusChange(Sender: TObject);
begin

  if  dbeOKFamilyStatus.Text = ''
  then begin
    cdsSSOKGender_SET.Filtered := False;
  end
  else begin
    cdsSSOKGender_SET.Filtered := False;
    cdsSSOKGender_SET.Filter := 'gender_code='+ cdsSSOKFamilyStatus_SET.FieldByName('gender_code').AsString;
    if BOKForm.cdsOKPersonal_NEW.State in [dsEdit, dsInsert]
    then cdsOKPersonal_NEW.FieldByName('gender_code').AsString := cdsSSOKFamilyStatus_SET.FieldByName('gender_code').AsString;
    cdsSSOKGender_SET.Filtered := True;
  end;

end;

procedure TBOKForm.cdsOKPersonal_NEWAfterOpen(DataSet: TDataSet);
begin

  cdsOKPersonal_NEW.FieldByName('birthday').EditMask  := '!09/09/0099;1;_';
  cdsOKPersonal_NEW.FieldByName('pass_date').EditMask := '!09/09/0099;1;_';

end;

procedure TBOKForm.actUndoChangesExecute(Sender: TObject);
begin
//showmessage(LastPanel);
  if LastPanel = 'OpenPanel' then
  begin
    If not cdsOKPersonal_NEW.IsEmpty Then cdsOKPERsonal_NEW.Cancel;
    if bosslevel<>'0' then actNew.Enabled         := True ;
    actTable.Enabled   := True;
    actForm.Enabled    := True;
    actRef.Enabled     := True;
    actDetails.Enabled := True;
    actReAccept.Enabled   := True;
    actFilter.Enabled  := True;
    actUndoChanges.Checked := True;
    TBTable.Click;
    actUndoChanges.Checked := False;
    actUndoChanges.Enabled := False;
    actiias.enabled := true;
  end;

  if LastPanel = 'FormPanel' then
  begin
    cdsOKPERsonal.Cancel;
  end;

  if LastPanel = 'DetailsPanel' then
  begin
    ActDetailUndoExecute(nil);
  end;

end;

procedure TBOKForm.actRefExecute(Sender: TObject);
var D: tdata;
 sql_ : string;
begin

  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actREPORTS.Checked     := False ;
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

// штатное расписание
  if not cdsOKStat.Active then
  Begin
  cdsOKStat.DisableControls;
//  cdsOKStatSalary.DisableControls;

  LoadData(cdsOKStat,       SQL_OKStat+' where branch = '+''''+curBranch +'''');
  cdsOKStat.Filtered:=false;
  cdsOKStat.Filter := 'department_code=0';
  cdsOKStat.Filtered:=true;

  cdsOKStat.Close;
  if bosslevel='0'
  then
    if not cdsSSokPost_Set.Active
    then loadData(cdsSSokPost_Set, SQL_ssokPost_set+'  ')
  else
    if not cdsSSokPost_Set.Active
    then loadData(cdsSSokPost_Set, SQL_ssokPost_set+' and d.level_department_code in('+BossLevel+',4) ');

  if not cdsSSOKDepartment_RO.Active then loadData(cdsSSokDepartment_RO, SQL_ssokDepartment_set);
  if not cdsSSOKSpecial_RO.Active then loadData(cdsSSokSpecial_RO, SQL_ssokSpecial_set);
  addLookUpField(cdsOKStat, cdsSSokPost_Set, 'post_code_show', 'post_code', 'post_code', 'post_name', True);
  addLookUpField(cdsOKStat, cdsSSOKDepartment_RO, 'department_code_show', 'department_code', 'department_code', 'department_name', False);
  addLookUpField(cdsOKStat, cdsSSOKSpecial_RO, 'special_show', 'special_code', 'special_code', 'special_name', False);
  cdsOKStat.Open;

//  cdsOKStatSalary.MasterSource    := dsOKStat;
//  cdsOKStatSalary.IndexFieldNames := 'STAT_CODE';   // поле в детейл таблице =
//  cdsOKStatSalary.MasterFields    := 'STAT_CODE';    // поле в мастер таблице

  cdsOKStat.EnableControls;
//  cdsOKStatSalary.EnableControls;


{
    LoadData(cdsOKEducation, SQL_OKEducation+' where branch = '+''''+curBranch +'''');
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

  cdsOKEducation.Open;
  cdsOKEducation.EnableControls;
}
  End;

  PC.ActivePage := TabOKStat;
  if bosslevel='0'
  then
  sql_ :=    'select a.department_code id, a.department_code||'') ''||a.department_name name '+
    ' from ss_ok_department a where'+
    ' a.state_notes=''A'' '+
    ' order by a.department_code'
  else
  sql_ :=    'select a.department_code id, a.department_code||'') ''||a.department_name name '+
    ' from ss_ok_department a where'+
    ' a.state_notes=''A'' and level_department_code in('+BossLevel+')'+
    ' order by a.department_code';

  LoadData(BOKForm.Source, sql_ ,True);
  CBDep.Clear;
//showmessage('BossLevel '+BossLevel);
  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBDep.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
//showmessage(BOKForm.Source.FieldByName('name').AsString);
      BOKForm.Source.Next;
  end;

////////////

  LoadData(BOKForm.Source,'SELECT special_code id,'+
                     ' special_code||'') ''||special_name name'+
                     ' FROM ss_ok_special'+
                     ' WHERE state_notes = ''A'''+
                     ' order by special_code',True);
  cbspecial.Clear;

  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      cbspecial.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

/////////////////
  if bosslevel='0'
  then
  sql_:='SELECT post_code id,'+
                     ' post_code||'') ''||post_name name'+
                     ' FROM ss_ok_post'+
                     ' WHERE state_notes = ''A'''+
                     ' order by post_code'
  else
  sql_:='SELECT post_code id,'+
                     ' post_code||'') ''||post_name name'+
                     ' FROM ss_ok_post'+
                     ' WHERE state_notes = ''A'''+
                     ' and level_department_code in('+BossLevel+',4)'+
                     ' order by post_code';

  LoadData(BOKForm.Source,sql_,True);
  DBLCBpost.Clear;

  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      DBLCBpost.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

///////////////////

  ActDetailUndoExecute(nil);

end;

procedure TBOKForm.actDetailsExecute(Sender: TObject);
begin
  LastPanel := 'DetailsPanel';
  pcmainok.ActivePage := DetailsPanel_;

  actDetails.Checked := True ;

  actREPORTS.Checked     := False ;
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

procedure TBOKForm.actOrderExecute(Sender: TObject);
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

procedure TBOKForm.dbeOK_HOME_ADDRESSFACTChange(Sender: TObject);
begin

  if (BOKForm.cdsOKPersonal_NEW.State in [dsEdit, dsInsert])
  and (chbGluk.checked)
  then begin
     cdsOKPersonal_NEW.FieldByName('home_address').AsString := dbeOK_HOME_ADDRESSFACT.Text ;
     cdsOKPersonal_NEW.FieldByName('HOME_ADDRESS_REGION_ID').AsString :=
       cdsOKPersonal_NEW.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString ;
     cdsOKPersonal_NEW.FieldByName('HOME_ADDRESS_DISTR').AsString :=
       cdsOKPersonal_NEW.FieldByName('HOME_ADDRESSFACT_DISTR').AsString ;
  end;

end;

procedure TBOKForm.actFilterExecute(Sender: TObject);
var w,ErMessage:  String;
    i: integer;
begin
  ActDetailUndoExecute(nil);

  erMessage := '';
  // загрузка справочников
  if not cdsSRegion.Active then LoadData(cdsSRegion, SQL_SRegion);
  if not cdsSDistr_RO.Active then LoadData(cdsSDistr_RO, SQL_SDistr);
  if not cdsSDistrRO2.Active then LoadData(cdsSDistrRO2, SQL_SDistr);
  if not cdsSregionRO2.Active then LoadData(cdsSregionRO2, SQL_Sregion);

  if not cdsSSokStatus_SET.Active then LoadData(cdsSSokStatus_SET,     SQL_ssokStatus_SET);
  if not cdsSSokgender_SET.Active then LoadData(cdsSSokgender_SET,     SQL_ssokgender_SET);
  if not cdsSSokNATIONALITY_SET.Active then   LoadData(cdsSSOKNATIONALITY_SET,     SQL_SSOKNATIONALITY_SET);
  if not cdsSSokFAMILYSTATUS_SET.Active then  LoadData(cdsSSOKFAMILYSTATUS_SET,    SQL_SSOKFAMILYSTATUS_SET);
  if not cdsSSokREGTYPE_SET.Active then   LoadData(cdsSSOKREGTYPE_SET,     SQL_SSOKREGTYPE_SET);

  try
  if not cdsSSOKProfmember_SET.Active then LoadData(cdsSSOKProfmember_SET, SQL_SSOKProfmember_SET);
  except on e:exception
    do begin
      showmessage(e.message+#13+SQL_SSOKProfmember_SET);
    end;
  end;
//  if not cdsSSOKLeave_SET.Active then LoadData(cdsSSOKLeave_SET, SQL_SSOKLeave_SET);

  If fmOKFilter = nil Then fmOKFilter := TfmFilterPersonal.Create(Self);
  With fmOkFilter do
    Begin
      Caption := actFilter.Caption;
      edBranchFilter.text:=branch;
//showmessage('>'+edBranchFilter.text+'<');
      If ShowModal = mrOk Then
      Begin
          curBranch:=edBranchFilter.text;
          erMessage := '';
          w := ' where p.branch like '+''''+edBranchFilter.text+'''';
          if not chbFamilyStatus.Checked then cdsOKPersonal_NEW.FieldByName('family_status_code').AsString := '';
          if not chbNationality.Checked  then cdsOKPersonal_NEW.FieldByName('nationality_code').AsString   := '';
          if not chbRegType.Checked      then cdsOKPersonal_NEW.FieldByName('reg_type_code').AsString      := '';
          if not chbGender.Checked       then cdsOKPersonal_NEW.FieldByName('gender_code').AsString        := '';
          if not chbStatus.Checked       then cdsOKPersonal_NEW.FieldByName('status_code').AsString        := '';

          if not chbProfmember.Checked   then cdsOKPersonal_NEW.FieldByName('profmember').AsString        := '';
//          if not chbLeave.Checked        then cdsOKPersonal_NEW.FieldByName('leave_code').AsString        := '';

          for i := 0 to cdbgOKPersonal_NEW.Columns.Count-1 do
          begin
            if not cdsOKPersonal_NEW.FieldByName(cdbgOKPersonal_NEW.Columns.Items[i].FieldName).IsNull then
            begin

                If pos('%', cdsOKPersonal_NEW.FieldByName(cdbgOKPersonal_NEW.Columns.Items[i].FieldName).AsString ) > 0
                Then w := w + ' and upper(p.'+cdbgOKPersonal_NEW.Columns.Items[i].FieldName+') like upper('''+  cdsOKPersonal_NEW.FieldByName(cdbgOKPersonal_NEW.Columns.Items[i].FieldName).AsString +''')'
                Else w := w + ' and upper(p.'+cdbgOKPersonal_NEW.Columns.Items[i].FieldName+')=upper('''+  cdsOKPersonal_NEW.FieldByName(cdbgOKPersonal_NEW.Columns.Items[i].FieldName).AsString+''')';

            end;
          end;

          if medOK_Birthday.EditText<>'__.__.____'
          then w := w + ' AND to_char(p.birthday,''dd.mm.yyyy'') LIKE '''+medOK_Birthday.EditText+'''';

          if medOK_pass_date.EditText<>'__.__.____'
          then w := w + ' AND to_char(p.pass_date,''dd.mm.yyyy'') LIKE '''+medOK_pass_date.EditText+'''';

          if medOKDateBegin.EditText<>'__.__.____'
          then w := w + ' AND p.personal_code in (select a.personal_code from ok_period a where'+
                                                 ' to_char(a.in_office_date,''dd.mm.yyyy'') LIKE '''+medOKDateBegin.EditText+''')';

          if medOKDateEnd.EditText<>'__.__.____'
          then w := w + ' AND p.personal_code in (select b.personal_code from ok_period b where'+
                                                 ' to_char(b.out_office_date,''dd.mm.yyyy'') LIKE '''+medOKdateEnd.EditText+''')';
          if   (edDepartment.Text<>'')
          then begin
            try
              StrToInt(edDepartment.Text);

              if chbHighDepCode.Checked
              then begin
                w := w+ ' AND (p.department_code='+edDepartment.Text;
                w := w+ ' OR p.department_code in '+
                  '(select d.department_code from ss_ok_department d'+
                  ' connect by d.high_dep_code = prior d.department_code'+
                  ' start with d.high_dep_code='+ edDepartment.Text+') )';
              end else begin
                w := w+ ' AND p.department_code='+edDepartment.Text;
              end;

            except
              edDepartment.Text := '';
              ErMessage:= 'При поиске по подразделению пожалуйста используйте клавишу [F9], либо подставьте код по памяти.'
            end;
          end;

          if   (edPost.Text<>'')
          then begin
            try
              StrToInt(edPost.Text);
              w := w+ ' AND p.post_code='+edPost.Text;
            except
              edpost.Text := '';
              ErMessage:= 'При поиске по должности пожалуйста используйте клавишу [F9], либо подставьте код по памяти.'
            end;
          end;
///////////////////////////////////
          if   (edtabno.Text<>'')
          then begin
            try
              w := w+ ' AND p.tabno='''+ edtabno.Text+'''';
            except
              ErMessage:= 'табельный номер - ошибка.'
            end;
          end;

          if   (ednps_id.Text<>'')
          then begin
            try
              w := w+ ' AND p.nps_id='''+ ednps_id.Text+'''';
            except
              ErMessage:= 'Пенсионный - ошибка.'
            end;
          end;

///////////////////////////////////
          if   (edSpecial.Text<>'')
          then begin
            try
              StrToInt(edSpecial.Text);
              w := w+ ' AND p.special_code='+edSpecial.Text;
            except
              edpost.Text := '';
              ErMessage:= 'При поиске по специализации пожалуйста используйте клавишу [F9], либо подставьте код по памяти.'
            end;
          end;

          if  (edBasis.Text<>'')
          then begin
            try
              StrToInt(edBasis.Text);
              w := w+ ' AND p.personal_code in (select e.personal_code from ok_education e'+
                                             ' where e.branch like '+''''+curBranch+''''+
                                             ' and e.basis_code='+edBasis.Text+')';
            except
              edBasis.Text := '';
              ErMessage:= 'При поиске по признаку образования пожалуйста используйте клавишу [F9], либо подставьте код по памяти.'
            end;
          end;

          if   (edEducation.Text<>'')
          then begin
            try
              StrToInt(edEducation.Text);
              w := w+ ' AND p.personal_code in (select f.personal_code from ok_education f'+
                                             ' where f.branch like '+''''+curBranch+''''+
                                             ' and f.education_code='+edEducation.Text+')';
            except
              edEducation.Text := '';
              ErMessage:= 'При поиске по образованию пожалуйста используйте клавишу [F9], либо подставьте код по памяти.'
            end;
          end;

        if erMessage = ''
        then begin
          cdsOKPersonal.BeforePost := nil;
          cdsOKPersonal.DisableControls;
//showmessage(SQL_OKPersonal+w);
          LoadData(cdsOKPersonal,  SQL_OKPersonal+w);
          cdsOKPersonal.Close;

  loaddata(cdsSS_OK_GOSUBMIT,'select * from SS_OK_GOSUBMIT');
// добавление смотрящих-выше-полей
  addLookUpField_OkPersonal;
// END добавление смотрящих-выше-полей

          cdsOKPersonal.Open;
          cdsOKPersonal.EnableControls;

          cdsOKPersonal.BeforePost := cdsOK_BeforePost;
        end else begin
          showmessage(ErMessage);
        end;
      End;
    End;


  if ErMessage = ''
  then begin
    fmOKFilter.Close;
    fmOKFilter := nil;
//    fmOKFilter.Destroy;
  end;

  if BOKForm.cdsOKPersonal_NEW.State in [dsEdit, dsInsert] then BOKForm.cdsOKPersonal_NEW.Cancel;
  ActTable.Execute;
//  ActDetailUndoExecute(nil);

end;

procedure TBOKForm.FormKeyDown(Sender: TObject; var Key: Word;
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
          tdbedit(sender).text:='';
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
              showmessage('Введите "Дату завершения отзыва"');
              dbed_date_recall_end.setfocus;
              exit;
            end;
            if  (dbed_date_recall_begin.text='  .  .    ') or
            (dbed_date_recall_begin.text='')
            then begin
              showmessage('Введите "Дату начала отзыва"');
              dbed_date_recall_begin.SetFocus;
              exit;
            end;

            if not (cdsOKLeave.State in [dsEdit, dsInsert])
            then begin
              cdsOKLeave.edit;
            end;
{
              s_:='отзыв календарные дни';
              count_days:= 0;
              day_date_ := strtodate(dbed_date_recall_begin.text) ;
              while (cdsOKLeave.FieldByName('date_recall_end').asDateTime<>
                 day_date_)
              do begin
//  s_:= s_+  '((date_recall_end='+cdsOKLeave.FieldByName('date_recall_end').asstring+'=='+ datetostr(day_date_)+'))';
//  showmessage(s_);
                     count_days:=count_days+1;
                     s_:=s_+'   '+ copy( datetostr(day_date_) ,1,2);
                     day_date_:=day_date_+1;
              end;
}
             cdsOKLeave.FieldByName('period_leave_recall').asInteger:=
               1 + getsqlresult('select to_date('''+cdsOKLeave.FieldByName('date_recall_end').asString+''',''dd.mm.yyyy'')-'+
               'to_date('''+cdsOKLeave.FieldByName('date_recall_begin').asString+''',''dd.mm.yyyy'')'+
               ' from dual');

             edDay.text := s_ ;



          end else
          if tdbedit(sender).name = 'DBEDdate_in_leave'
          then begin
            if  (DBEDdate_in_leave.text='  .  .    ') or
            (DBEDdate_in_leave.text='')
            then begin
              showmessage('Введите "Дату выхода в отпуск"');
              DBEDdate_in_leave.setfocus;
              exit;
            end;
            if  (cdsOKLeave.FieldByName('period_leave').asString='')
            then begin
              showmessage('Введите "Кол-во дней отпуска"');
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
                if (dayofweek(day_date_) <> 1) // dayofweek(day_date_) <> 7) and суббота входит в количество
                then begin
                  number_day_:=0;
                  try
                    sql_:='select count(*) from Z_DN where pr=0 '+
                      ' and dn= to_date('''+datetostr(day_date_) +''',''dd.mm.yyyy'')';
//                      ' and to_char(dn,''D'') not in (7,1)';
                    number_day_:=(getsqlresult( sql_ ));
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
              s_:='календарные дни';
              count_days:=0;
              day_date_ := strtodate (DBEDdate_in_leave.text);
              while (cdsOKLeave.FieldByName('period_leave').asinteger<>
                 count_days)
              do begin
                     count_days:=count_days+1;
                     s_:=s_+'   '+ copy( datetostr(day_date_) ,1,2);
                     day_date_:=day_date_+1;
              end;
             // все остальные отпуска календарные дни
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
            then bOKform.ViewRef( TCombobox(Sender).Tag );
            if (TCombobox(Sender).Tag = 21)
            then bOKform.ViewRef( 0 );
          end;

          If (Sender.ClassType = TDBCombobox) Then
          begin
            if (TDBCombobox(Sender).Tag <> 0) and (TDBCombobox(Sender).Tag <> 21)
            then bOKform.ViewRef( TDBCombobox(Sender).Tag );
            if (TDBCombobox(Sender).Tag = 21)
            then bOKform.ViewRef( 0 );
          end;

          If (Sender.ClassType = TDBLookUpCombobox) Then
          begin
            if (TDBLookUpCombobox(Sender).Tag <> 0) and (TDBLookUpCombobox(Sender).Tag <> 21)
            then bOKform.ViewRef( TDBLookUpCombobox(Sender).Tag );
            if (TDBLookUpCombobox(Sender).Tag = 21)
            then bOKform.ViewRef( 0 );
          end;
       end;
    VK_F9:
      begin
///////////
      if (bokmain.BossLevel='0')
      and (sender<>cbdep)
      then begin
        showmessage('Нельзя изменить: Данные доступны Только для чтения!!!');
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
///// загрузка списка в датасет source ///////
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
        if   (Sender = DBEd_Distr) or (Sender = DBLCBdistr)
          or (Sender = dbeOKdistr) or (Sender = DBLCBokdistr)
          or (Sender= ed_iias_birth_distr) or (Sender= dblcb_iias_birth_distr)
          or (sender= ed_iias_live_distr)  or (sender= dblcb_iias_live_distr)
          or (sender= ed_iias_live_distr)  or (sender= dblcb_iias_live_distr)
          or (sender= ed_iias_uvd_distr)  or (sender= dblcb_iias_uvd_distr)
        then
                   BOKForm.LoadData(Source,SQL_Sdistr_source,True)
        else
                 if (Sender = DBEDnationality) or (Sender = DBLCBnationality)
                 or (Sender = dbeOKNationality) or (Sender =  dblcbOKNationality)
                 then
                   BOKForm.LoadData(Source,SQL_SSOKNationality_source,True)
        else
                 if (Sender = DBEd_Region) or (Sender = DBLCB_SRegion)
                 or (Sender = dbeokRegion) or (Sender = DBLCBokregion)
                 or (Sender = ed_iias_birth_region) or (Sender = dblcb_iias_birth_region)
                 or (sender=ed_iias_live_region) or (sender=dblcb_iias_live_region)
                 then
                   BOKForm.LoadData(Source,SQL_SRegion_source,True)
        else
                 If (Sender = CBDep) or (Sender = edDep)
                 or (Sender = DBEd_depstring)
                 or (Sender = DBEd_depstring2)
                 or (Sender = DBlcb_depstring3)
                 Then
                   if bosslevel='0'
                   then
                     BOKForm.LoadData(Source,'SELECT to_char(department_code) id, department_name name'+
                     ' FROM ss_ok_department'+
                     ' WHERE state_notes = ''A'''+
                     ' order by department_code',True)
                   else
                     BOKForm.LoadData(Source,'SELECT to_char(department_code) id, department_name name'+
                     ' FROM ss_ok_department'+
                     ' WHERE level_department_code in('+BossLevel+')'+
                     ' AND state_notes = ''A'''+
                     ' order by department_code',True)
                 
        else
                 If (Sender = CBSpecial) or (Sender = edSpecial)
                 Then BOKForm.LoadData(Source,'SELECT to_char(special_code) id, special_name name'+
                     ' FROM ss_ok_special'+
                     ' WHERE state_notes = ''A'''+
                     ' order by special_code',True)
        else
        If (Sender = DBLCBpost) or (Sender = DBEdPost)
        or (Sender = DBEd_poststring) or (Sender = DBEd_poststring2)
        or (sender=DBlcb_poststring3)
        Then BOKForm.LoadData(BOKForm.Source,'SELECT to_char(post_code) id,'+
                     ' post_name name'+
                     ' FROM ss_ok_post'+
                     ' WHERE state_notes = ''A'''+
                     ' and level_department_code in('+BossLevel+',4)'+
                     ' order by post_code',True);

//// чтобы на любом поле не срабатывал F9 с предидущим загруженным Source /////
/////////
        IF (sender = dblcbS_STR)
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
                 or (Sender = DBEd_Distr) or (Sender = DBLCBdistr)
                 or (Sender = DBEDnationality) or (Sender = DBLCBnationality)
                 or (Sender = dbeOKNationality) or (Sender =  dblcbOKNationality)
                 or (Sender = dbeokRegion) or (Sender = DBLCBokregion)
        or (Sender = DBEd_Region) or (Sender = DBLCB_SRegion)
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
              If (Sender = edSpecial) or (Sender = cbSpecial)
              Then begin
                if not (cdsOKStat.State in dsEditModes)
                then begin
                  showmessage('Не указан отдел'+#13+' или'+#13+'вы не включили кнопку "Новый"!');
                            edSpecial.OnChange := nil;
                            edSpecial.text :='';
                            edSpecial.OnChange := edSpecialChange;
                            exit;
                end;
                        edSpecial.text:= Source.FieldByName('id').AsString;
                        edSpecialChange(Sender);
              End;
///////////
              If (Sender = DBLCBpost) or (Sender = DBEdPost)
              Then begin
                if not (cdsOKStat.State in dsEditModes)
                then begin
                            showmessage('Не указан отдел'+#13+' или'+#13+'вы не включили кнопку "Новый"!');
                            DBEdPost.OnChange := nil;
                            DBEdPost.text :='';
                            DBEdPost.OnChange := DBEdPostChange;
                            exit;
                end;
                        DBEdPost.text:= Source.FieldByName('id').AsString;
                        DBEdPostChange(Sender);
              End;


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
              if (Sender = DBEd_Distr) or (Sender = DBLCBdistr)
                 or (sender=ed_iias_birth_distr) or (sender=dblcb_iias_birth_distr)
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

              if (Sender = DBEd_Region) or (Sender = DBLCB_SRegion)
              or (Sender = ed_iias_birth_region) or (Sender = dblcb_iias_birth_region)
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

procedure TBOKForm.dbeDetailsPCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var w,code_ : string;
//    v:       Variant;
begin
  Case Key of
    VK_RETURN:
      begin
        code_ := dbeDetailsPCode.Text;
        // +' where branch = '+''''+curBranch +''''
        w := ' where p.branch='+''''+curBranch+''' and tabno=' + code_;
        cdsOKPersonal.Cancel;
        try
          StrToInt(code_);
        except
          ShowMessage('Сотрудник с табельным номером ''' + code_ + ''' по отделению '''+Branch+'''  не может быть найден!');
          exit;
        end;

        if not cdsSSokStatus_SET.Active then LoadData(cdsSSokStatus_SET,     SQL_ssokStatus_SET);
        if not cdsSSokgender_SET.Active then LoadData(cdsSSokgender_SET,     SQL_ssokgender_SET);
        if not cdsSSokNATIONALITY_SET.Active then   LoadData(cdsSSOKNATIONALITY_SET,     SQL_SSOKNATIONALITY_SET);
        if not cdsSSokFAMILYSTATUS_SET.Active then  LoadData(cdsSSOKFAMILYSTATUS_SET,    SQL_SSOKFAMILYSTATUS_SET);
        if not cdsSSokREGTYPE_SET.Active then   LoadData(cdsSSOKREGTYPE_SET,     SQL_SSOKREGTYPE_SET);

        cdsOKPersonal.DisableControls;
        LoadData(cdsOKPersonal,      SQL_OKPersonal + w);
        cdsOKPersonal.Close;

  loaddata(cdsSS_OK_GOSUBMIT,'select * from SS_OK_GOSUBMIT');
// добавление смотрящих-выше-полей
  addLookUpField_OkPersonal;
// END добавление смотрящих-выше-полей

        cdsOKPersonal.Open;
        cdsOKPersonal.EnableControls;
        If cdsOKPersonal.IsEmpty Then
        Begin
//          v := GetSqlResult('SELECT OK_SERVICE.FIND('''+Branch+''','''+code_+''') FROM dual');
//          If VarToStr(v) <> '' Then ShowMessage('Сотрудник с кодом ' + code_ + ' по отделению '''+Branch+''' находится в состоянии '+v);
//          Else
          ShowMessage('Сотрудник с табельным номером ' + code_ + ' по отделению '''+Branch+'''  не найден!');
        End;

      end;

  End;
end;

procedure TBOKForm.dbeDetailsPCodeExit(Sender: TObject);
begin
  cdsOKPersonal.Cancel;
end;

procedure TBOKForm.cdsOK_BeforePost(DataSet: TDataSet);
begin


// предупреждение: ИСПОЛЬЗУЕТСЯ ДЛЯ МНОГИХ ДАТАСЕТОВ справочников!!!
//  DataSet.Fields.FieldByName('personal_code').AsInteger := cdsOKPersonal.Fields.FieldByName('personal_code').AsInteger;
  if bosslevel='0'
  then begin
    ShowMessage('Ошибка.'+#13+'В единой базе данные только для чтения!');
    abort;
  end;

  if DataSet.Fields.FieldByName('personal_code').IsNull
  then begin
    ShowMessage('Ошибка.'+#13+'Не выбран сотрудник!');
    abort;
  end;

   DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
   DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
   DataSet.Fields.FieldByName('branch').AsString := Branch;

end;

procedure TBOKForm.cdsOK_AfterPost(DataSet: TDataSet);
//var ErMessage : string;
begin
// предупреждение: ИСПОЛЬЗУЕТСЯ ДЛЯ МНОГИХ ДАТАСЕТОВ !!!

      Try
        SaveData(DataSet);
        ExecSQL('COMMIT');
        DataSet.Refresh;
      Except
        on E: Exception do
          Begin
            ExecSQL('ROLLBACK');
            TCLientDataSet(DataSet).UndoLastChange(True);
            ShowMessage('Ошибка при сохранении.'+#13+E.Message);
            Abort;
          End;
      End;

end;

procedure TBOKForm.TabOKEducation_0Show(Sender: TObject);
begin

  if cdsOKEducation.Active then
  Begin
//    ShowMessage('1:'+IntToStr(cdsOKEducation.RecordCount));
    Exit;
  End;

  LoadData(cdsOKEducation, SQL_OKEducation+' where branch = '+''''+curBranch +'''');
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

  cdsOKEducation.Open;
  cdsOKEducation.EnableControls;
//  ShowMessage('2:'+IntToStr(cdsOKEducation.RecordCount));
end;

procedure TBOKForm.ActDetailNewExecute(Sender: TObject);
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
    // фото по-другому
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

procedure TBOKForm.ActDetailSaveExecute(Sender: TObject);
var sql_,check_date_message_: string;
begin
//showmessage(inttostr(PCDetails.ActivePageIndex));

 Case PCDetails.ActivePageIndex of
  0: If (cdsOKEducation.State in dsEditModes) and (cdbgOKEducation.CanFocus)
     Then begin
// образование
//
       if cdsOKEducation.FieldByName('EDUCATION_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Образование');
         dblcbSSOKEducation.SetFocus;
         exit;
       end;
//
       if cdsOKEducation.FieldByName('BASIS_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Признак образования');
         dblcbSSOKBasis.SetFocus;
         exit;
       end;
//
       if cdsOKEducation.FieldByName('INSTITUTION_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Учебное заведение');
         lbInstitution.SetFocus;
         exit;
       end;
//
       if cdsOKEducation.FieldByName('BEGIN_DATE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Поступление (год)');
         medOK_beginDAte.SetFocus;
         exit;
       end;
//
       if not cdsOKEducation.FieldByName('END_DATE').IsNull
       then begin
         if cdsOKEducation.FieldByName('BEGIN_DATE').AsInteger>
            cdsOKEducation.FieldByName('END_DATE').AsInteger
         then begin
           showmessage('Ошибка: год поступления '+
             cdsOKEducation.FieldByName('BEGIN_DATE').asstring+#13+
             ' не должен быть больше года окончания учебного заведения '+
             cdsOKEducation.FieldByName('END_DATE').asstring);

             cdsOKEducation.FieldByName('END_DATE').asstring:='';
             cdsOKEducation.FieldByName('BEGIN_DATE').asstring :='';
           exit;
         end;
       end;
//
       if cdsOKEducation.FieldByName('PROFESSION_PERSONAL').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Специальность');
         dbedProfession.setFocus;
         exit;
       end;
//
       if cdsOKEducation.FieldByName('QUALIFICATION_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Квалификация');
         dblcbSSOKQualification.SetFocus;
         exit;
       end;
//
//       if cdsOKEducation.FieldByName('DIPLOM_NUM').IsNull
//       then begin
//         showmessage('Не заполнено поле '+'Номер диплома');
//         exit;
//       end;
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
         cdsOKEducation.FieldByName('BEGIN_DATE_dd').AsString);

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         medOK_beginDAte.SetFocus;
         exit;
       end;

       check_date_message_:= check_date_yyyymmdd(cdsOKEducation.FieldByName('END_DATE').AsString,
         cdsOKEducation.FieldByName('END_DATE_mm').AsString,
         cdsOKEducation.FieldByName('END_DATE_dd').AsString);

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         medOK_endDAte.SetFocus;
         exit;
       end;

       cdsOKEducation.Post;

     End;
  1: If (cdsOKacademic.State in dsEditModes) and (cdbgOKacademic.CanFocus)
     Then begin
// ученые звания
//
       if cdsOKacademic.FieldByName('ACADEMIC_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Ученое звание');
         dblcbSSOKAcademic.SetFocus;
         exit;
       end;
//
       if cdsOKacademic.FieldByName('ACADEMIC_DATE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Дата присвоения (ученого звания)');
         dbedAcademicDate.SetFocus;
         exit;
       end;

       try
         if (cdsOKacademic.FieldByName('ACADEMIC_DATE').AsInteger<1917)
         then begin
           showmessage('Не заполнено поле '+'Дата присвоения (ученого звания)='+
             cdsOKacademic.FieldByName('ACADEMIC_DATE').AsString);
           dbedAcademicDate.SetFocus;
           exit;
         end;
       except on e:exception
         do begin
           showmessage('Не заполнено поле '+'Дата присвоения (ученого звания)'+
             cdsOKacademic.FieldByName('ACADEMIC_DATE').AsString);
           dbedAcademicDate.SetFocus;
           exit;
         end;
       end;
//
       cdsOKacademic.Post;
     End;
  2: If (cdsOKDegree.State in dsEditModes) and (cdbgOKDegree.CanFocus)
     Then begin
// ученые степени
//
       if cdsOKDegree.FieldByName('DEGREE_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Ученая степень');
         dblcbSSOKdegree.SetFocus;
         exit;
       end;
//
       if (cdsOKDegree.FieldByName('DEGREE_DATE').AsString='')
       then begin
         showmessage('Не заполнено поле '+'Дата присвоения (ученой степени)');
         dbedDegreeDate.SetFocus;
         exit;
       end;

       try
         if (cdsOKDegree.FieldByName('DEGREE_DATE').AsInteger<1917)
         then begin
           showmessage('Не заполнено поле '+'Дата присвоения (ученой степени)='+cdsOKDegree.FieldByName('DEGREE_DATE').AsString);
           dbedDegreeDate.SetFocus;
           exit;
         end;
       except on e:exception
         do begin
           showmessage('Не заполнено поле '+'Дата присвоения (ученой степени)'+cdsOKDegree.FieldByName('DEGREE_DATE').AsString);
           dbedDegreeDate.SetFocus;
           exit;
         end;
       end;

//
       cdsOKDegree.Post;
     End;
  3: If (cdsOKaward.State in dsEditModes) and (cdbgOKaward.CanFocus)
     Then begin
// награды
//
       if cdsOKaward.FieldByName('AWARD_INFO').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Сведения о награде');
         dbedAwardInfo.SetFocus;
         exit;
       end;
//
       if cdsOKaward.FieldByName('AWARD_DATE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Год получения (награды)');
         dbedAwardDate.SetFocus;
         exit;
       end;
//
       check_date_message_:= check_date_yyyymmdd(cdsOKaward.FieldByName('AWARD_DATE').AsString,
         cdsOKaward.FieldByName('AWARD_DATE_mm').AsString,cdsOKaward.FieldByName('AWARD_DATE_dd').AsString);

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         dbedAwardDate.SetFocus;
         exit;
       end;

       cdsOKaward.Post;
     End;
  4: If (cdsOKScientific.State in dsEditModes) and (cdbgOKScientific.CanFocus)
     Then begin
// научные работы
//
       if cdsOKScientific.FieldByName('SCIENTIFIC_INFO').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Сведения о научной работе');
         dbedScientificInfo.SetFocus;
         exit;
       end;
//
       if cdsOKScientific.FieldByName('SCIENTIFIC_DATE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Год написания (научной работы)');
         dbedScientificDate.SetFocus;
         exit;
       end;
//
       cdsOKScientific.Post;
     End;
  5: If (cdsOKVoyage.State in dsEditModes) and (cdbgOKVoyage.CanFocus)
     Then begin
// зарубежные поездки
//
       if cdsOKVoyage.FieldByName('voyage_str').AsString<>''
       then begin
         cdsOKVoyage.FieldByName('VOYAGE_LAND').AsString:=
           cdsOKVoyage.FieldByName('voyage_str_show').AsString;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_STR').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Страна по справочнику ЦБ:');
         DBEdit3.SetFocus;
         exit;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_INFO').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Сведения о зарубежной поездке');
         DBEdit3.SetFocus;
         exit;
       end;
//
       if cdsOKVoyage.FieldByName('VOYAGE_DATE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Год зарубежной поездки');
         DBEdit1.SetFocus;
         exit;
       end;
//
       if (cdsOKVoyage.FieldByName('VOYAGE_DATE').Asinteger<1917)
       or (cdsOKVoyage.FieldByName('VOYAGE_DATE').Asinteger> strtoint(copy(bankdate,7,4)) )
       then begin
         showmessage('Не верно поле '+cdsOKVoyage.FieldByName('VOYAGE_DATE').AsString+' Год зарубежной поездки');
         DBEdit1.SetFocus;
         exit;
       end;
//
       check_date_message_:= check_date_yyyymmdd(cdsOKVoyage.FieldByName('VOYAGE_DATE').AsString,
         cdsOKVoyage.FieldByName('VOYAGE_DATE_mm').AsString,
         cdsOKVoyage.FieldByName('VOYAGE_DATE_dd').AsString);

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         DBEdit1.SetFocus;
         exit;
       end;

       check_date_message_:= check_date_yyyymmdd(cdsOKVoyage.FieldByName('DATA_IN').AsString,
         cdsOKVoyage.FieldByName('DATA_IN_mm').AsString,
         cdsOKVoyage.FieldByName('DATA_IN_dd').AsString);

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         DBEdit57.SetFocus;
         exit;
       end;

       cdsOKVoyage.Post;
     End;
  6: If (cdsOKLanguage.State in dsEditModes) and (cdbgOKLanguage.CanFocus)
     Then begin
// языки
//
       if cdsOKLanguage.FieldByName('language_code').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Иностранный язык');
         DBLcbLang.SetFocus;
         exit;
       end;

       if cdsOKLanguage.FieldByName('cod_lang_prim').AsString=''
       then begin
         cdsOKLanguage.FieldByName('cod_lang_prim').AsString:=
           cdsOKLanguage.FieldByName('language_code_show').AsString;
       end;
//
       if cdsOKLanguage.FieldByName('level_code').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Уровень владения (иностранным языком)');
         DBLCBlanglevel.SetFocus;
         exit;
       end;
//
       cdsOKLanguage.Post;
     End;
  7: If (cdsOKRelation.State in dsEditModes) and (cdbgOKRelation.CanFocus)
     Then begin
// родственные отношения
//
       if cdsOKRelation.FieldByName('RELATION_FAMILY').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Фамилия (родственник)');
         DBEdit701.SetFocus;
         exit;
       end;
//
//
       if cdsOKRelation.FieldByName('RELATION_NAME').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Имя (родственник)');
         DBEdit702.SetFocus;
         exit;
       end;
//
//
//       if cdsOKRelation.FieldByName('RELATION_PATRONYMIC').IsNull
//       then begin
//         showmessage('Не заполнено поле '+'Отчество (родственник)');
//         DBEdit703.SetFocus;
//         exit;
//       end;
//
//
//       if cdsOKRelation.FieldByName('RELATION_HOME_ADDRESS').IsNull
//       then begin
//         showmessage('Не заполнено поле '+'Место жительства (родственник)');
//         DBEdit704.SetFocus;
//         exit;
//       end;
//
//
//       if cdsOKRelation.FieldByName('RELATION_OFFICE').IsNull
//       then begin
//         showmessage('Не заполнено поле '+'Место работы (родственник)');
//         DBEdit705.SetFocus;
//         exit;
//       end;
//
//
//       if cdsOKRelation.FieldByName('RELATION_POST').IsNull
//       then begin
//         showmessage('Не заполнено поле '+'Должность (родственник)');
//         DBEdit706.SetFocus;
//         exit;
//       end;
//
//
       if cdsOKRelation.FieldByName('RELATION_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Родственное отношение (родственник)');
         DBLcbRelation.SetFocus;
         exit;
       end;
//
//
//       if cdsOKRelation.FieldByName('RELATION_BIRTHPLACE').IsNull
//       then begin
//         showmessage('Не заполнено поле '+'Место рождения (родственник)');
//         DBEdit708.SetFocus;
//         exit;
//       end;
//

       if cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Год рождения (родственник)');
         DBEdit709.SetFocus;
         exit;
       end;


       if (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString<>'')
          and (cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsInteger <
               cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger)
       then begin
         showmessage('Проверьте дату рождения '+cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsString+
           ' и дату сметри '+
            cdsOKRelation.FieldByName('RELATION_DEATHDAY').AsString);
         exit;
       end else begin

         if cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsInteger<1800
         then begin
           showmessage('Проверьте год рождения '+
             cdsOKRelation.FieldByName('RELATION_BIRTHDAY').AsString);
           exit;
         end else begin
           cdsOKRelation.Post;
         end;

       end;

     End;
  8: If (cdsOKPeriod.State in dsEditModes) and (cdbgOKPeriod.CanFocus)
     Then begin
// сведения о работе
//
//
       if cdsOKPeriod.FieldByName('OFFICE_NAME').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Наименование организации');
         DBEdit801.SetFocus;
         exit;
       end;
//
//
       if cdsOKPeriod.FieldByName('OFFICE_ADDRESS').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Адрес организации');
         DBEdit802.SetFocus;
         exit;
       end;
//
//
       if cdsOKPeriod.FieldByName('ESTABLISHED_POST').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Занимаемая должность');
         DBEd_poststring.SetFocus;
         exit;
       end;
//
//
//       if cdsOKPeriod.FieldByName('ESTABLISHED_DEPARTMENT').AsString=''
//       then begin
//         showmessage('Не заполнено поле '+'Отдел');
//         DBEd_depstring.SetFocus;
//         exit;
//       end;
//
//
//       if cdsOKPeriod.FieldByName('BASE_MOVE_CODE').AsString=''
//       then begin
//         showmessage('Не заполнено поле '+'Основание перемещения');
//         DBLcbBaseMove.SetFocus;
//         exit;
//       end;
//
//
       if cdsOKPeriod.FieldByName('IN_OFFICE_DATE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Дата поступления');
         DBEdit806.SetFocus;
         exit;
       end;
//
//
//       if cdsOKPeriod.FieldByName('OUT_OFFICE_DATE').AsString=''
//       then begin
//         showmessage('Не заполнено поле '+'Дата увольнения');
//         DBEdit807.SetFocus;
//         exit;
//       end;
//
//
       if cdsOKPeriod.FieldByName('BASIS_DATE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Дата приказа/основания');
         DBEdit808.SetFocus;
         exit;
       end;
//
//
       if cdsOKPeriod.FieldByName('TYPE_PERIOD_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Код типа стажа');
         DBLcbTypePeriod.SetFocus;
         exit;
       end;
//
//
//       if cdsOKPeriod.FieldByName('ARTICLE_CODE').AsString=''
//       then begin
//         showmessage('Не заполнено поле '+'Описание статьи');
//         DBLcbArticle.SetFocus;
//         exit;
//       end;
//
//
       if cdsOKPeriod.FieldByName('BASIS_NUM').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Номер приказа/основания');
         DBEdit811.SetFocus;
         exit;
       end;
//
       if not ChbArticle.Checked then cdsOKPeriod.FieldByName('article_code').AsString:='';

       cdsOKPeriod.Post;
     End;
  9: If (cdsOKRise.State in dsEditModes) and (cdbgOKRise.CanFocus)
     Then begin
// квалификация
//
       if cdsOKRise.FieldByName('rise_info').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Сведения о повышении (квалификации)');
         DBEdit12.SetFocus;
         exit;
       end;
//
//
       if cdsOKRise.FieldByName('rise_date_year').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Год прохождения (квалификации)');
         DBEdit46.SetFocus;
         exit;
       end;
//
       check_date_message_:= check_date_yyyymmdd(cdsOKRise.FieldByName('rise_date_year').AsString,
         cdsOKRise.FieldByName('rise_date_mm').AsString,cdsOKRise.FieldByName('rise_date_dd').AsString);

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         DBEdit46.SetFocus;
         exit;
       end;


       cdsOKRise.Post;
     End;
 10: If (cdsOKElection.State in dsEditModes) and (cdbgOKElection.CanFocus)
     Then begin
// избрание
//
       if cdsOKElection.FieldByName('election_post').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Должность');
         DBEdit48.SetFocus;
         exit;
       end;
//
//
       if cdsOKElection.FieldByName('election_date_begin').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Начало(год)');
         DBEdit47.SetFocus;
         exit;
       end;
//
//
       if cdsOKElection.FieldByName('election_date_end').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Завершение(год)');
         DBEdit14.SetFocus;
         exit;
       end;
//
//
       if cdsOKElection.FieldByName('election_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Исполнительный орган');
         DBLCBelection.SetFocus;
         exit;
       end;
//
       check_date_message_:= check_date_yyyymmdd(cdsOKElection.FieldByName('election_date_begin').AsString,
         cdsOKElection.FieldByName('election_date_begin_mm').AsString,cdsOKElection.FieldByName('election_date_begin_dd').AsString);

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         DBEdit47.SetFocus;
         exit;
       end;

       check_date_message_:= check_date_yyyymmdd(cdsOKElection.FieldByName('election_date_end').AsString,
         cdsOKElection.FieldByName('election_date_end_mm').AsString,
         cdsOKElection.FieldByName('election_date_end_dd').AsString);

       if check_date_message_<>'1'
       then begin
         showmessage(check_date_message_);
         DBEdit14.SetFocus;
         exit;
       end;

       cdsOKElection.Post;
     End;
 11: If (cdsOKPremium.State in dsEditModes) and (cdbgOKPremium.CanFocus)
     Then begin
// гос премии
//
       if cdsOKPremium.FieldByName('premium_name').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Наименование');
         dbedit15.SetFocus;
         exit;
       end;
//
//
       if cdsOKPremium.FieldByName('premium_date').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Год получения');
         dbedit16.SetFocus;
         exit;
       end;
//
       cdsOKPremium.Post;
     End;
 12: If (cdsOKArmy.State in dsEditModes) and (cdbgOKArmy.CanFocus)
     Then begin
// воинская служба
//
       if cdsOKArmy.FieldByName('army_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Отношение');
         DBLookupComboBox7.SetFocus;
         exit;
       end;
//
     if cdsOKArmy.Fields.FieldByName('army_code').AsString='1'
     then begin
//
       if cdsOKArmy.FieldByName('fitness_army_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Годность');
         DBLookupComboBox6.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('staff_code').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Вид состава');
         DBLcbStaff.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('type_force_code').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Род войск');
         DBLCBtypeforce.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('army_group_code').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Группа учета');
         DBLCBtypeforce.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('category_army_code').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Категория учета');
         DBLCBcategoryarmy.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('special_army').AsString=''
       then begin
         showmessage('Не заполнено поле '+'В/Специальность');
         dbedit52.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('number_vus').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Номер ВУС');
         dbedit50.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('military_rank_code').AsString=''
       then begin
         showmessage('Не заполнено поле '+'В/Звание');
         DBLCBmilitaryrank.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('code_army_post').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Код должности и особые признаки в/службы');
         dbedit18.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('name_army_office').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Военкомат');
         dbedit55.SetFocus;
         exit;
       end;
//
//
       if cdsOKArmy.FieldByName('specreg_number').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Спец.учет N');
         dbedit53.SetFocus;
         exit;
       end;
//

      end;

       cdsOKArmy.Post;

     End;
 13: If (cdsOKParty.State in dsEditModes) and (cdbgOKParty.CanFocus)
     Then begin
// партии
//
       if cdsOKParty.FieldByName('party_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Партия');
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
       if cdsOKParty.FieldByName('party_date').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Год вступления в партию');
         dbedit73.SetFocus;
         exit;
       end;
//
       if (cdsOKParty.FieldByName('party_date').AsInteger<1917)
       or (cdsOKParty.FieldByName('party_date').AsInteger>strtoint(copy(bankdate,7,4) ) )
       then begin
         showmessage('Неправильный='+cdsOKParty.FieldByName('party_date').AsString+' Год вступления в партию');
         dbedit73.SetFocus;
         exit;
       end;
//
//
       if cdsOKParty.FieldByName('punishment_motive').AsString<>''
       then begin
         if cdsOKParty.FieldByName('punishment_date').AsString=''
         then begin
           showmessage('Вы ввели Причину партийного наказания,'+#13+
             cdsOKParty.FieldByName('punishment_motive').AsString+#13+
             'но Не заполнили поле '+#13+
             'Год парт.наказания');
           dbed_gpn.SetFocus;
           exit;
         end;
       end;

       if  cdsOKParty.FieldByName('punishment_date').AsString<>''
       then begin
         if cdsOKParty.FieldByName('punishment_motive').AsString=''
         then begin
           showmessage('Вы ввели Год парт.наказания,'+#13+
             cdsOKParty.FieldByName('punishment_date').AsString+#13+
             'но Не заполнили поле '+#13+
             'Причина парт.наказания');
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
           showmessage('Вы ввели Причину выхода из партии,'+#13+
             cdsOKParty.FieldByName('out_party').AsString+#13+
             'но Не заполнили поле '+#13+
             'Год выхода из партии');
           dbed_gvp.SetFocus;
           exit;
         end;
       end;
//
       if cdsOKParty.FieldByName('party_outdate').AsString<>''
       then begin
         if cdsOKParty.FieldByName('out_party').AsString=''
         then begin
           showmessage('Вы ввели Год выхода из партии,'+#13+
             cdsOKParty.FieldByName('party_outdate').ASstring +#13+
             'но Не заполнили поле '+#13+
             'Причина выхода из партии');
           dbed_pvp.SetFocus;
           exit;
         end;
       end;
//

       cdsOKParty.Post;
     End;
 14: If (cdsOKYouth.State in dsEditModes) and (cdbgOKYouth.CanFocus)
     Then begin
// молодежные организации
//
       if cdsOKYouth.FieldByName('youth_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Наименование:');
         DBLCByouth.SetFocus;
         exit;
       end;
//
//
       if cdsOKYouth.FieldByName('in_date').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Дата вступления:');
         dbedit21.SetFocus;
         exit;
       end;
//
//
//       if cdsOKYouth.FieldByName('out_date').IsNull
//       then begin
//         showmessage('Не заполнено поле '+'Дата выхода:');
//         dbedit22.SetFocus;
//         exit;
//       end;
//



       cdsOKYouth.Post;
     End;

 15: If (cdsOKLeave.State in dsEditModes) and (cdbgOKLeave.CanFocus)
     Then begin
// отпуска
//
       if cdsOKLeave.FieldByName('leave_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Вид отпуска');
         DBLookupComboBox13.SetFocus;
         exit;
       end;
//
//
       if cdsOKLeave.FieldByName('period_leave').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Кол-во дней отпуска');
         dbedit63.SetFocus;
         exit;
       end;
//
//
       if cdsOKLeave.FieldByName('num_basis').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Номер приказа');
         dbedit62.SetFocus;
         exit;
       end;
//
//
//       if cdsOKLeave.FieldByName('motive_leave').AsString=''
//       then begin
//         showmessage('Не заполнено поле '+'Причина (не обязательно)');
//         dbedit64.SetFocus;
//         exit;
//       end;
//
//
       if cdsOKLeave.FieldByName('begin_year').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Рабочий год- начало');
         dbedit60.SetFocus;
         exit;
       end;
//
//
       if cdsOKLeave.FieldByName('end_year').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Р/ год- окончание');
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
             showmessage('Не заполнено поле '+'Дата выхода в отпуск');
             DBEDdate_in_leave.SetFocus;
             exit;
           end;
           if cdsOKLeave.FieldByName('date_out_leave').AsString=''
           then begin
             showmessage('Не заполнено поле '+'Дата выхода из отпуска');
             dbedit26.SetFocus;
             exit;
           end;
       end;
//


       cdsOKLeave.Post;
     End;
 16: If (cdsOKConvictions.State in dsEditModes) and (cdbgOKConvictions.CanFocus)
     Then begin
// судимости
//
       if cdsOKConvictions.FieldByName('convictions_motive').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Причина');
         dbedit27.SetFocus;
         exit;
       end;
//
//
       if cdsOKConvictions.FieldByName('convictions_date').AsString=''
       then begin
         showmessage('Не заполнено поле '+'год');
         dbedit28.SetFocus;
         exit;
       end;
//
//

       cdsOKConvictions.Post;
     end;
 17: If (cdsOKAddInform.State in dsEditModes) and (cdbgOKAddInform.CanFocus)
     Then begin
// дополнительные сведения
//
       if cdsOKAddInform.FieldByName('character_addinform').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Сведения');
         dbedit29.SetFocus;
         exit;
       end;
//
//
       if cdsOKAddInform.FieldByName('addinform_date').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Дата');
         dbedit30.SetFocus;
         exit;
       end;
//

       cdsOKAddInform.Post;
     end;
 18: If (cdsOKPenalty.State in dsEditModes) and (cdbgOKPenalty.CanFocus)
     Then begin
// сведения о взыскании
//
       if cdsOKPenalty.FieldByName('penalty_CODE').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Вид наказания');
         DBLCBpenalty.SetFocus;
         exit;
       end;
//
//
       if cdsOKPenalty.FieldByName('penalty_motive').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Причина');
         dbedit65.SetFocus;
         exit;
       end;
//
//
       if cdsOKPenalty.FieldByName('penalty_date').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Дата протокола/приказа');
         dbedit34.SetFocus;
         exit;
       end;
//
//
       if cdsOKPenalty.FieldByName('penalty_num').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Номер протокола/приказа');
         dbedit33.SetFocus;
         exit;
       end;
//

       cdsOKPenalty.Post;
     End;
 19: If (cdsOKChangeFIO.State in dsEditModes) and (cdbgOKChangeFIO.CanFocus)
     Then begin
// сведения об изменении фио
//
       if cdsOKChangeFIO.FieldByName('family').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Фамилия');
         dbedit66.SetFocus;
         exit;
       end;
//
//
       if cdsOKChangeFIO.FieldByName('first_name').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Имя');
         dbedit67.SetFocus;
         exit;
       end;
//
//       if cdsOKChangeFIO.FieldByName('patronymic').AsString=''
//       then begin
//         showmessage('Не заполнено поле '+'Отчество');
//         dbedit35.SetFocus;
//         exit;
//       end;
//
       if cdsOKChangeFIO.FieldByName('change_date').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Дата изменения');
         dbedit36.SetFocus;
         exit;
       end;
//
//
       if cdsOKChangeFIO.FieldByName('change_motive').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Причина изменения');
         dbedit68.SetFocus;
         exit;
       end;
//

       cdsOKChangeFIO.Post;
     End;
 20: begin
 // фото по-другому
     end;
 21: If (cdsOKhospital.State in dsEditModes) and (cdbgOKhospital.CanFocus)
     Then begin
//
{       if cdsOK.FieldByName('').AsString=''
       then begin
         showmessage('Не заполнено поле '+'Причина');
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
         showmessage('Не заполнено поле '+'Причина');
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
//-- сапдейтить старую запись, если zp_rate_date_end is null
       sql_:='update ok_zp_rate '+
        ' set zp_rate_date_end=to_date('''+cdsok_zp_rate.fieldbyname('zp_rate_date').asstring+''',''dd.mm.yyyy'') '+
        ' where branch='''+ cdsok_zp_rate.fieldbyname('branch').asstring+''''+
        ' and personal_code='+ cdsok_zp_rate.fieldbyname('personal_code').asstring +
        ' and zp_rate_date_end is null '+
        ' and zp_rate_date < to_date('''+cdsok_zp_rate.fieldbyname('zp_rate_date').asstring+''',''dd.mm.yyyy'') ';
       try
         execsql(sql_);
         execsql('commit');
       except
         on e:exception
         do begin
           showmessage('не верная дата в ставке рабочего времени'+#13+sql_+#13+e.message);
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

procedure TBOKForm.ActDetailDeleteExecute(Sender: TObject);
begin

 If Application.MessageBox(PChar( '('+inttostr(PCDetails.ActivePageIndex)+') Удалить запись?'), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes
 Then Begin
   Case PCDetails.ActivePageIndex of
     0: If (cdbgOKEducation.CanFocus) and (not cdsOKEducation.IsEmpty) Then
         Begin
           cdbgOKEducation.Focused;
           cdsOKEducation.Delete;
           cdsOK_AfterPost(dsOKEducation.DataSet);
         end;
    1: If (cdbgOKacademic.CanFocus) and (not cdsOKacademic.IsEmpty) Then
         Begin
           cdbgOKacademic.Focused;
           cdsOKacademic.Delete;
           cdsOK_AfterPost(dsOKacademic.DataSet);
         end;
    2: If (cdbgOKDegree.CanFocus) and (not cdsOKDegree.IsEmpty) Then
         Begin
           cdbgOKdegree.Focused;
           cdsOKdegree.Delete;
           cdsOK_AfterPost(dsOKdegree.DataSet);
         end;
    3: If (cdbgOKaward.CanFocus) and (not cdsOKaward.IsEmpty) Then
         Begin
           cdbgOKaward.Focused;
           cdsOKaward.Delete;
           cdsOK_AfterPost(dsOKaward.DataSet);
         end;
    4: If (cdbgOKScientific.CanFocus) and (not cdsOKScientific.IsEmpty) Then
         Begin
           cdbgOKscientific.Focused;
           cdsOKscientific.Delete;
           cdsOK_AfterPost(dsOKscientific.DataSet);
         end;
    5: If (cdbgOKVoyage.CanFocus) and (not cdsOKvoyage.IsEmpty) Then
         Begin
           cdbgOKvoyage.Focused;
           cdsOKvoyage.Delete;
           cdsOK_AfterPost(dsOKvoyage.DataSet);
         end;
    6: If (cdbgOKLanguage.CanFocus) and (not cdsOKlanguage.IsEmpty) Then
         Begin
           cdbgOKlanguage.Focused;
           cdsOKlanguage.Delete;
           cdsOK_AfterPost(dsOKlanguage.DataSet);
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
         end;
    10: If (cdbgOKElection.CanFocus) and (not cdsOKelection.IsEmpty) Then
         Begin
           cdbgOKelection.Focused;
           cdsOKelection.Delete;
           cdsOK_AfterPost(dsOKelection.DataSet);
         end;
    11: If (cdbgOKPremium.CanFocus) and (not cdsOKpremium.IsEmpty) Then
         Begin
           cdbgOKpremium.Focused;
           cdsOKpremium.Delete;
           cdsOK_AfterPost(dsOKpremium.DataSet);
         end;
    12: If (cdbgOKArmy.CanFocus) and (not cdsOKarmy.IsEmpty) Then
         Begin
           cdbgOKarmy.Focused;
           cdsOKarmy.Delete;
           cdsOK_AfterPost(dsOKarmy.DataSet);
         end;
    13: If (cdbgOKParty.CanFocus) and (not cdsOKparty.IsEmpty) Then
         Begin
           cdbgOKparty.Focused;
           cdsOKparty.Delete;
           cdsOK_AfterPost(dsOKparty.DataSet);
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
           cdbgOKconvictions.Focused;
           cdsOKconvictions.Delete;
           cdsOK_AfterPost(dsOKconvictions.DataSet);
         end;
    17: If (cdbgOKAddInform.CanFocus) and (not cdsOKAddInform.IsEmpty) Then
         Begin
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
    // фото удаляется по-другому
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

procedure TBOKForm.cdsOKEducationAfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.ActDetailUndoExecute(Sender: TObject);
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

procedure TBOKForm.cdsOKAcademicAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKAcademic.FieldByName('academic_date').EditMask  := '!09/09/0099;1;_';
    cdsOKAcademic.MasterSource    := dsOKPersonal;
    cdsOKAcademic.IndexFieldNames := 'branch;personal_code';
    cdsOKAcademic.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabSheet_1Show(Sender: TObject);
begin
  if cdsOKAcademic.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKAcademic, SQL_OKAcademic+' where branch = '+''''+curBranch +'''');
  cdsOKAcademic.Close;
  cdsOKAcademic.DisableControls;
  if not cdsSSOKAcademic_Set.Active then LoadData(cdsSSOKAcademic_Set, SQL_SSOKAcademic_Set);

  addLookUpField(cdsOKAcademic, cdsSSokAcademic_Set, 'academic_code_show', 'academic_code', 'academic_code', 'academic_name', True);
  addLookUpField(cdsOKacademic, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsOKAcademic.Open;
  cdsOKAcademic.EnableControls;

end;

procedure TBOKForm.cdsOKDegreeAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKDegree.FieldByName('degree_date').EditMask  := '!09/09/0099;1;_';
    cdsOKDegree.MasterSource    := dsOKPersonal;
    cdsOKDegree.IndexFieldNames := 'branch;personal_code';
    cdsOKDegree.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.cdsOKAwardAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKAward.FieldByName('award_date').EditMask  := '!09/09/0099;1;_';
    cdsOKAward.MasterSource    := dsOKPersonal;
    cdsOKAward.IndexFieldNames := 'branch;personal_code';
    cdsOKAward.MasterFields    := 'branch;personal_code';
  End;
end;

procedure TBOKForm.TabDegree_2Show(Sender: TObject);
begin
  if cdsOKDegree.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKDegree, SQL_OKDegree+' where branch = '+''''+curBranch +'''');
  cdsOKDegree.Close;
  cdsOKDegree.DisableControls;
  if not cdsSSOKDegree_Set.Active then LoadData(cdsSSOKDegree_Set, SQL_SSOKDegree_Set);

  addLookUpField(cdsOKDegree, cdsSSokDegree_Set, 'degree_code_show', 'degree_code', 'degree_code', 'degree_name', True);
  addLookUpField(cdsOKdegree, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsOKDegree.Open;
  cdsOKDegree.EnableControls;

end;

procedure TBOKForm.TabSheet_3Show(Sender: TObject);
begin

  if cdsOKAward.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKAward, SQL_OKAward+' where branch = '+''''+curBranch +'''');
  cdsOKAward.Close;
  cdsOKAward.DisableControls;

  addLookUpField(cdsOKAward, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', True);

  cdsOKAward.Open;
  cdsOKAward.EnableControls;

end;

procedure TBOKForm.cdsOKScientificAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKScientific.FieldByName('scientific_date').EditMask  := '!09/09/0099;1;_';
    cdsOKScientific.MasterSource    := dsOKPersonal;
    cdsOKScientific.IndexFieldNames := 'branch;personal_code';
    cdsOKScientific.MasterFields    := 'branch;personal_code';
  End;
end;

procedure TBOKForm.TabOKScientific_4Show(Sender: TObject);
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

procedure TBOKForm.TabSheet_5Show(Sender: TObject);
begin
  if cdsOKVoyage.Active then
  Begin
    Exit;
  End;

  if (not cdsS_STR.Active) then
  Begin
    LoadData(cdsS_STR, SQL_S_STR);
  End;

  LoadData(cdsOKVoyage, SQL_OKVoyage+' where branch = '+''''+curBranch +'''');
  cdsOKVoyage.Close;
  cdsOKVoyage.DisableControls;

  addLookUpField(cdsOKVoyage, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);
  addLookUpField(cdsOKVoyage, cdsS_STR, 'voyage_str_show','voyage_str', 'code_str','name',   false);

  cdsOKVoyage.Open;
  cdsOKVoyage.EnableControls;
end;

procedure TBOKForm.cdsOkLanguageAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKLanguage.FieldByName('Language_date').EditMask  := '!09/09/0099;1;_';
    cdsOKLanguage.MasterSource    := dsOKPersonal;
    cdsOKLanguage.IndexFieldNames := 'branch;personal_code';
    cdsOKLanguage.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabSheet_6Show(Sender: TObject);
begin
  if cdsOKLanguage.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKLanguage, SQL_OKLanguage+' where branch = '+''''+curBranch +'''');
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

procedure TBOKForm.cdsOkRelationAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
//    cdsOKRelation.FieldByName('relation_birthday').EditMask  := '!09/09/0099;1;_';
    cdsOKRelation.MasterSource    := dsOKPersonal;
    cdsOKRelation.IndexFieldNames := 'branch;personal_code';
    cdsOKRelation.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabSheet_7Show(Sender: TObject);
begin
  if cdsOKRelation.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKRelation, SQL_OKRelation+' where branch = '+''''+curBranch +'''');
  cdsOKRelation.Close;
  cdsOKRelation.DisableControls;

  if not cds_Str.Active then LoadData(cds_Str, SQL_str);
  if not cds_Region.Active then LoadData(cds_Region, SQL_Sregion);
  if not cds_distr.Active then LoadData(cds_distr, SQL_Sdistr);

  if not cdsSSOKRelation_Set.Active then LoadData(cdsSSOKRelation_Set, SQL_SSOKRelation_Set);
 //     (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
 // ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',' имя поля с показываемыми данными в cds-справочнике ')
  addLookUpField(cdsOKRelation, cdsSSokRelation_Set, 'relation_code_show', 'relation_code', 'relation_code', 'relation_name', True);
  addLookUpField(cdsOKRelation, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsOKRelation.Open;
  cdsOKRelation.EnableControls;

end;

procedure TBOKForm.cdsOKPeriodAfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.TabSheet_8Show(Sender: TObject);
var sql_ :string;
  k:integer;
begin
  if cdsOKPeriod.Active then
  Begin
    Exit;
  End;
  k:=0;
  TRY
    sql_ := SQL_OKPeriod+' where branch = '+''''+curBranch +'''';
    k:=k+1;
    LoadData(cdsOKPeriod, SQL_);

  // lookup поля - если есть :)
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
    cdsOKPeriod.Open;
    k:=k+1;
    cdsOKPeriod.EnableControls;
  Except on e:exception
    do begin
      showmessage(inttostr(k)+') '+sql_+#13+e.Message);
    end;
  End;

end;

procedure TBOKForm.cdsOKRiseAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
    cdsOKRise.MasterSource    := dsOKPersonal;
    cdsOKRise.IndexFieldNames := 'branch;personal_code';
    cdsOKRise.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabOKRise_9Show(Sender: TObject);
begin
  if cdsOKRise.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKRise, SQL_OKRise+' where branch = '+''''+curBranch +'''');

  cdsOKrise.Close;
  cdsOKrise.DisableControls;

  addLookUpField(cdsOKrise, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  cdsOKrise.Open;
  cdsOKrise.EnableControls;

{
// lookup поля - если есть :)
  cdsOKPeriod.Close;
  cdsOKPeriod.DisableControls;

  if not cdsSSOKTypePeriod_Set.Active then LoadData(cdsSSOKTypePeriod_Set, SQL_SSOKTypePeriod_Set);
  if not cdsSSOKArticle_Set.Active then LoadData(cdsSSOKArticle_Set, SQL_SSOKArticle_Set);

  addLookUpField(cdsOKTypePeriod_Set, cdsSSokTypePeriod_Set_Set, 'type_period_code_show', 'type_period_code', 'type_period_code', 'type_period_name', True);
  addLookUpField(cdsOKArticle, cdsSSokArticle_Set, 'article_code_show', 'article_code', 'article_code', 'article_num', False);

  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKPeriod.Open;
  cdsOKPeriod.EnableControls;
}
end;

procedure TBOKForm.cdsOKElectionAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
//    cdsOKElection.FieldByName('election_date_begin').EditMask  := '!09/09/0099;1;_';
//    cdsOKElection.FieldByName('election_date_end').EditMask  := '!09/09/0099;1;_';
    cdsOKElection.MasterSource    := dsOKPersonal;
    cdsOKElection.IndexFieldNames := 'branch;personal_code';
    cdsOKElection.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabSheet_10Show(Sender: TObject);
begin
  if cdsOKElection.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKElection, SQL_OKElection+' where branch = '+''''+curBranch +'''');

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
// lookup поля - если есть :)
  cdsOKPeriod.Close;
  cdsOKPeriod.DisableControls;

  if not cdsSSOKTypePeriod_Set.Active then LoadData(cdsSSOKTypePeriod_Set, SQL_SSOKTypePeriod_Set);
  if not cdsSSOKArticle_Set.Active then LoadData(cdsSSOKArticle_Set, SQL_SSOKArticle_Set);

  addLookUpField(cdsOKTypePeriod_Set, cdsSSokTypePeriod_Set_Set, 'type_period_code_show', 'type_period_code', 'type_period_code', 'type_period_name', True);
  addLookUpField(cdsOKArticle, cdsSSokArticle_Set, 'article_code_show', 'article_code', 'article_code', 'article_num', False);

  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKPeriod.Open;
  cdsOKPeriod.EnableControls;
}

end;

procedure TBOKForm.cdsOKPremiumAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
//    cdsOKPremium.FieldByName('premium_date').EditMask  := '!09/09/0099;1;_';
    cdsOKPremium.MasterSource    := dsOKPersonal;
    cdsOKPremium.IndexFieldNames := 'branch;personal_code';
    cdsOKPremium.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabSheet_11Show(Sender: TObject);
begin
  if cdsOKPremium.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKPremium, SQL_OKPremium+' where branch = '+''''+curBranch +'''');
  cdsOKPremium.Close;
  cdsOKPremium.DisableControls;

  addLookUpField(cdsOKPremium, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  cdsOKPremium.Open;
  cdsOKPremium.EnableControls;

end;

procedure TBOKForm.cdsOKArmyAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
//    cdsOKArmy.FieldByName('relation_birthday').EditMask  := '!09/09/0099;1;_';
    cdsOKArmy.MasterSource    := dsOKPersonal;
    cdsOKArmy.IndexFieldNames := 'branch;personal_code';
    cdsOKArmy.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabSheet_12Show(Sender: TObject);
begin
  if cdsOKArmy.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKArmy, SQL_OKArmy+' where branch = '+''''+curBranch +'''');

// lookup поля - если есть :)
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
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKArmy.Open;
  cdsOKArmy.EnableControls;

end;

procedure TBOKForm.cdsOKPartyAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
//    cdsOKParty.FieldByName('party_outdate').EditMask  := '!09/09/0099;1;_';
//    cdsOKParty.FieldByName('punishment_date').EditMask  := '!09/09/0099;1;_';
    cdsOKParty.MasterSource    := dsOKPersonal;
    cdsOKParty.IndexFieldNames := 'branch;personal_code';
    cdsOKParty.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabSheet_13Show(Sender: TObject);
begin
  if cdsOKParty.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKParty, SQL_OKParty+' where branch = '+''''+curBranch +'''');

// 1. lookup поля - если есть :)
  cdsOKParty.Close;
  cdsOKParty.DisableControls;

// 2. проверка датасетов-списков
  if not cdsSSOKParty_Set.Active then LoadData(cdsSSOKParty_Set, SQL_SSOKParty_Set);

// 3. Добавление lookup полей
  addLookUpField(cdsOKParty, cdsSSokParty_Set, 'party_code_show', 'party_code', 'party_code', 'party_name', True);
  addLookUpField(cdsOKparty, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKparty.Open;
  cdsOKparty.EnableControls;

end;

procedure TBOKForm.cdsOKYouthAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
    cdsOKYouth.FieldByName('in_date').EditMask  := '!09/09/0099;1;_';
    cdsOKYouth.FieldByName('out_date').EditMask  := '!09/09/0099;1;_';
    cdsOKYouth.MasterSource    := dsOKPersonal;
    cdsOKYouth.IndexFieldNames := 'branch;personal_code';
    cdsOKYouth.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabSheet_14Show(Sender: TObject);
begin
  if cdsOKYouth.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKYouth, SQL_OKYouth+' where branch = '+''''+curBranch +'''');

// 1. lookup поля - если есть :)
  cdsOKYouth.Close;
  cdsOKYouth.DisableControls;

// 2. проверка датасетов-списков
  if not cdsSSOKYouth_Set.Active then LoadData(cdsSSOKYouth_Set, SQL_SSOKYouth_Set);

// 3. Добавление lookup полей
  addLookUpField(cdsOKYouth, cdsSSokYouth_Set, 'youth_code_show', 'youth_code', 'youth_code', 'youth_name', True);
  addLookUpField(cdsOKyouth, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKyouth.Open;
  cdsOKyouth.EnableControls;

end;

procedure TBOKForm.cdsOKLeaveAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
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

procedure TBOKForm.cdsOKConvictionsAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
//    cdsOKConvictions.FieldByName('convictions_date').EditMask  := '!09/09/0099;1;_';
    cdsOKConvictions.MasterSource    := dsOKPersonal;
    cdsOKConvictions.IndexFieldNames := 'branch;personal_code';
    cdsOKConvictions.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.cdsOKAddInformAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
    cdsOKAddInform.FieldByName('addInform_date').EditMask  := '!09/09/0099;1;_';
    cdsOKAddInform.MasterSource    := dsOKPersonal;
    cdsOKAddInform.IndexFieldNames := 'branch;personal_code';
    cdsOKAddInform.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.cdsOKPenaltyAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата

    cdsOKPenalty.FieldByName('penalty_date').EditMask  := '!09/09/0099;1;_';
    cdsOKPenalty.MasterSource    := dsOKPersonal;
    cdsOKPenalty.IndexFieldNames := 'branch;personal_code';
    cdsOKPenalty.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.cdsOKChangeFIOAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
    cdsOKChangeFIO.FieldByName('change_date').EditMask  := '!09/09/0099;1;_';
    cdsOKChangeFIO.MasterSource    := dsOKPersonal;
    cdsOKChangeFIO.IndexFieldNames := 'branch;personal_code';
    cdsOKChangeFIO.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.TabSheet_16Show(Sender: TObject);
begin

  if cdsOKLeave.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKLeave, SQL_OKLeave+' where branch = '+''''+curBranch +'''');

// 1. lookup поля - если есть :)
  cdsOKLeave.Close;
  cdsOKLeave.DisableControls;

// 2. проверка датасетов-списков
  if not cdsSSOKLeave_Set.Active then LoadData(cdsSSOKLeave_Set, SQL_SSOKLeave_Set);

// 3. Добавление lookup полей
  addLookUpField(cdsOKLeave, cdsSSokLeave_Set, 'leave_code_show', 'leave_code', 'leave_code', 'leave_name', True);
  addLookUpField(cdsOKLeave, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKLeave.Open;
  cdsOKLeave.EnableControls;

end;

procedure TBOKForm.TabSheet_17Show(Sender: TObject);
begin
  if cdsOKConvictions.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKConvictions, SQL_OKConvictions+' where branch = '+''''+curBranch +'''');

  cdsOKConvictions.Close;
  cdsOKConvictions.DisableControls;

  addLookUpField(cdsOKConvictions, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  cdsOKConvictions.Open;
  cdsOKConvictions.EnableControls;

end;

procedure TBOKForm.TabSheet_18Show(Sender: TObject);
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

procedure TBOKForm.TabSheet_19Show(Sender: TObject);
begin

//showmessage('TBOKForm.TabSheet_19Show');

  if cdsOKPenalty.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKPenalty, SQL_OKPenalty+' where branch = '+''''+curBranch +'''');

// 1. lookup поля - если есть :)
  cdsOKPenalty.Close;
  cdsOKPenalty.DisableControls;

// 2. проверка датасетов-списков
  if not cdsSSOKPenalty_Set.Active then LoadData(cdsSSOKPenalty_Set, SQL_SSOKPenalty_Set);

// 3. Добавление lookup полей
  addLookUpField(cdsOKPenalty, cdsSSokPenalty_Set, 'penalty_code_show', 'penalty_code', 'penalty_code', 'penalty_name', True);
  addLookUpField(cdsOKpenalty, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

  cdsOKPenalty.Open;
  cdsOKPenalty.EnableControls;

end;

procedure TBOKForm.TabSheet_20Show(Sender: TObject);
begin
  if cdsOKChangeFIO.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKChangeFIO, SQL_OKChangeFIO+' where branch = '+''''+curBranch +'''');

  cdsOKChangeFIO.Close;
  cdsOKChangeFIO.DisableControls;

  addLookUpField(cdsOKChangeFIO, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  cdsOKChangeFIO.Open;
  cdsOKChangeFIO.EnableControls;

end;

procedure TBOKForm.cdsOKPostAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
// поставить маску полям типа дата
    cdsOKPost.FieldByName('basis_date').EditMask  := '!09/09/0099;1;_';
    cdsOKPost.FieldByName('appointment_date').EditMask  := '!09/09/0099;1;_';
    cdsOKPost.MasterSource    := dsOKPersonal;
    cdsOKPost.IndexFieldNames := 'branch;personal_code;appointment_date';
    cdsOKPost.MasterFields    := 'branch;personal_code';
  End;
end;

procedure TBOKForm.TabOKPost_15Show(Sender: TObject);
begin
{
  if cdsOKPost.Active then
  Begin
    Exit;
  End;

  LoadData(cdsOKPost, SQL_OKPost+' where branch = '+''''+curBranch +'''');
//  LoadData(cdsOKPost, SQL_OKPost +' order by e.appointment_date');

// 1. lookup поля - если есть :)
  cdsOKPost.Close;
  cdsOKPost.DisableControls;

// 2. проверка датасетов-списков
  if not cdsSSOKPost_Set.Active then LoadData(cdsSSOKPost_Set, SQL_SSOKPost_Set+' and d.level_department_code>='+BossLevel+' ');
  if not cdsSSOKDepartment_RO.Active then LoadData(cdsSSOKDepartment_RO, SQL_SSOKDepartment_Set);
//  if not cdsSSOKBaseMove_RO.Active then LoadData(cdsSSOKBaseMove_RO, SQL_SSOKBaseMove_Set);

// 3. Добавление lookup полей
  addLookUpField(cdsOKPost, cdsSSokPost_Set, 'post_code_show', 'post_code', 'post_code', 'post_name', True);
  addLookUpField(cdsOKPost, cdsSSokDepartment_RO, 'department_code_show', 'department_code', 'department_code', 'department_name', False);
  addLookUpField(cdsOKpost, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);
//  addLookUpField(cdsOKpost, cdsSSOKBaseMove_RO, 'base_move_show', 'base_move_code', 'base_move_code', 'base_move_NAME', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsOKPost.Open;
  cdsOKPost.EnableControls;
}
end;

procedure TBOKForm.cdsOKPostAfterPost(DataSet: TDataSet);
//var
//    ErMessage : string;
//const
//  ERROR_NO = 'ORA-20000: ';
begin

  cdsOK_AfterPost(DataSet);
{
  try
//    execSQL('begin Param.SaveParam(1); end;');
    execSQL('begin param.ClearParam; end;');

    execSQL('begin Param.SetParam(''BRANCH'',info.getbranch); end;');
    execSQL('begin Param.SetParam(''PERSONAL_CODE'',  '''+ cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString +  '''); end;');

    execSQL('begin OK_SERVICE.SETPOSTSTATE; end;');

    execSQL('begin Param.ClearParam; end;');
//    execSQL('begin Param.LoadParam(1); end;');

    ExecSQL('COMMIT');
//    showmessage('id_='+intTostr(id_) );

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
}

end;

procedure TBOKForm.actStatSalaryExecute(Sender: TObject);
var V_Mquantity, Hire_v_quantity: variant;
    I_Mquantity, Hire_quantity: integer;
    from_okp : string;
begin
    I_Mquantity:=0;
    Hire_quantity:=0;

  try
    if curBranch=''
    then curBranch:=Branch;
  except
  end;

  try
  V_Mquantity := GetSqlResult('select quantity_post from ok_stat '+
    ' where branch like '''+curBranch+''' '+
    ' and department_code=' +cdsOKStat.FieldByName('department_code').AsString+
    ' and post_code=' +cdsOKStat.FieldByName('post_code').AsString+
    ' and special_code=' +cdsOKStat.FieldByName('special_code').AsString);

  from_okp :=  ' from ok_personal '+
    ' where branch like '''+curBranch+''' '+
    ' and department_code=' +cdsOKStat.FieldByName('department_code').AsString+
    ' and post_code=' +cdsOKStat.FieldByName('post_code').AsString+
    ' and special_code=' +cdsOKStat.FieldByName('special_code').AsString+
    ' and status_code=2';

  Hire_v_quantity := GetSqlResult('select count(personal_code) '+
     from_okp);

  LoadData(cdsOKStatSalary,'select FAMILY||'' ''||FIRST_NAME||'' ''||PATRONYMIC fio '+
     from_okp);
 except
   showmessage('Сначала необходимо ввести данные!');
   exit;
 end;

  if VarIsNull(V_Mquantity)
  then begin
    ShowMessage('Ошибка: нет данных в штатном расписании или вы не сохранили данные!');
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

end;

procedure TBOKForm.actStatSaveExecute(Sender: TObject);
var sql_,errMes:string;
begin

  errMes:='';
  if (cdsOKStat.State in dsEditModes)
  then begin

    if cdsOKStat.fieldbyname('quantity_post').IsNull
    then begin
      errMes:=errMes+'Общее количество сотрудников в данной должности'+#13;
    end;

    if cdsOKStat.fieldbyname('department_code').IsNull
    then begin
      errMes:=errMes+'Отдел'+#13;
    end;

    if cdsOKStat.fieldbyname('post_code').IsNull
    then begin
      errMes:=errMes+'Должность'+#13;
    end;

    if cdsOKStat.fieldbyname('special_code').IsNull
    then begin
      errMes:=errMes+'Специализация'+#13;
    end;

    if cdsOKStat.fieldbyname('salary_fact').IsNull
    then begin
      cdsOKStat.fieldbyname('salary_fact').AsString:='0';
    end;

    if errMes<>''
    then begin
      showmessage('Чтобы сохранить, укажите сначала '+#13#13+ErrMes);
      exit;
    end;

    cdsOKStat.Post;
    sql_ := 'update ok_personal set special_code='+cdsOKStat.fieldbyname('special_code').AsString+
      ' where department_code='+cdsOKStat.fieldbyname('department_code').asstring +
      ' and post_code='+cdsOKStat.fieldbyname('post_code').asstring+
      ' and special_code<>'+cdsOKStat.fieldbyname('special_code').AsString;
    try
      ExecSQL(sql_);
    except
      showmessage('ошибка изменения специализации сотрудников'+#13+sql_);
    end;
  end;

  cdsOKPersonal.Refresh;

end;

procedure TBOKForm.actStatDeleteExecute(Sender: TObject);
begin

  if (cdsOKStat.isEmpty)
  then begin
    showmessage('Нет данных для удаления!');
    exit;
  end;

  If Application.MessageBox(PChar('Удалить запись из штатного расписания?'), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes
  Then Begin
    cdbgOKStat.Focused;
    cdsOKStat.Delete;
    cdsOK_AfterPost(dsOKStat.DataSet);
  End;

end;

procedure TBOKForm.actStatUndoExecute(Sender: TObject);
begin
  cdsOKStat.Cancel;
end;


procedure TBOKForm.actStatNewExecute(Sender: TObject);
//var i:integer;
begin

  if CBDep.ItemIndex=-1
  then begin
    showmessage('Выберите отдел!');
    exit;
  end;

  cdbgOKStat.Focused;
  cdsOKStat.Insert;

  cdsOKStat.FieldByName('department_code').AsString :=
          TData(CBDep.Items.Objects[CBDep.ItemIndex]).Id;
          
  cdsOKStat.FieldByName('salary_fact').AsString :='0';

end;

procedure TBOKForm.cdsOKStatBeforePost(DataSet: TDataSet);
var V : variant;
    I : integer;
//    Sal,Num : Double;
begin

  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  DataSet.Fields.FieldByName('branch').AsString := Branch;

  if cdsOKStat.State in [dsInsert]
  then begin
    V := GetSqlResult('select max(stat_code) from ok_stat where branch= '''+Branch+'''' );

    if VarIsNull(V)
    then I:= 0
    else I:= V;

    cdsOKStat.FieldByName('stat_code').AsString := IntToStr(I+1);
  end else begin


  end;


end;

procedure TBOKForm.cdsOKStatSalaryBeforePost(DataSet: TDataSet);
//var V, V_Mquantity, V_Dquantity: variant;
//    I, I_Mquantity, I_Dquantity: integer;
begin
{
  if cdsOKStatSalary.State in [dsInsert]
  then begin
    V_Mquantity := GetSqlResult('select quantity_post from ok_stat where branch= '''+Branch+''' and stat_code=' +cdsOKStat.FieldByName('stat_code').AsString);
    V_Dquantity := GetSqlResult('select count(salary_code) from ok_stat_salary where branch= '''+Branch+''' and stat_code=' +cdsOKStat.FieldByName('stat_code').AsString );

    if VarIsNull(V_Mquantity)
    then begin
      ShowMessage('Ошибка: нет данных в штатном расписании!');
      Abort;
    end else begin
      if not VarIsNull(V_Dquantity)
      then begin
        I_Mquantity := V_Mquantity;
        I_Dquantity := V_Dquantity;
        if I_Mquantity <= I_Dquantity
        then begin
          ShowMessage('Ошибка: в штатном расписании указано рабочих мест в количестве '+IntToStr(I_Mquantity)+'. Уже назначено '+IntToStr(I_Dquantity)+'.');
          Abort;
        end;

      end;

    end;

    V := GetSqlResult('select max(salary_code) from ok_stat_salary where branch= '''+Branch+'''' );

    if VarIsNull(v)
    then I := 0
    else I := v;

    cdsOKStatSalary.FieldByName('salary_code').AsString := IntToStr(I + 1);
  end;

  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  DataSet.Fields.FieldByName('branch').AsString := Branch;
}
end;

procedure TBOKForm.cdsOKStatBeforeDelete(DataSet: TDataSet);
//var V_Mquantity, V_Dquantity: variant;
//    I_Mquantity, I_Dquantity: integer;
begin
{
    V_Mquantity := GetSqlResult('select quantity_post from ok_stat where branch= '''+Branch+''' and stat_code=' +cdsOKStat.FieldByName('stat_code').AsString);
    V_Dquantity := GetSqlResult('select count(salary_code) from ok_stat_salary where branch= '''+Branch+''' and stat_code=' +cdsOKStat.FieldByName('stat_code').AsString );

    if VarIsNull(V_Mquantity)
    then begin
      ShowMessage('Ошибка: нет данных в штатном расписании!');
      Abort;
    end else begin
      if not VarIsNull(V_Dquantity)
      then begin
        I_Mquantity := V_Mquantity;
        I_Dquantity := V_Dquantity;
        if I_Dquantity > 0
        then begin
          ShowMessage('Ошибка: в штатном расписании указано рабочих мест в количестве '+IntToStr(I_Mquantity)+'. Из них занято '+IntToStr(I_Dquantity)+'.');
          Abort;
        end;

      end;

    end;
}
end;

procedure TBOKForm.actChangeFIOExecute(Sender: TObject);
var erMessage : string;
const
  ERROR_NO = 'ORA-20000: ';
begin

  ErMessage := '';

  If fmSaveOKChangeFIO = nil Then fmSaveOKChangeFIO := TfmOKChangeFIO.Create(Self);
  With fmSaveOKChangeFIO do
    Begin
      Caption := ' Изменение ФИО: ';
      gbChangeFIO.Caption  := 'Код сотрудника: '+cdsOKPersonal.FieldByName('personal_code').AsString;
      lbFamily.Caption     := cdsOKPERSONAL.FieldByName('family').AsString;
      lbName.Caption       := cdsOKPERSONAL.FieldByName('first_name').AsString;
      lbPatronymic.Caption := cdsOKPERSONAL.FieldByName('patronymic').AsString;

//      if (LastPanel = 'DetailsPanel') and (cdsOKChangeFIO.Active) then
//      begin
//        medFamily.Text := cdsOKChangeFIO.FieldByName('family').asString;
//        medName.Text := cdsOKChangeFIO.FieldByName('first_name').asString;
//        medPatronymic.Text := cdsOKChangeFIO.FieldByName('patronymic').asString;
//        medChangeDate.Text := cdsOKChangeFIO.FieldByName('change_date').asString;
//        medChangeMotive.Text := cdsOKChangeFIO.FieldByName('change_motive').asString;
//        If cdsOKChangeFIO.State in [dsEdit, dsInsert] then cdsOKChangeFIO.Cancel;
//      end;

      If ShowModal = mrOk Then
      Begin

      End;

    End;

  if ErMessage = ''
  then begin
    fmSaveOKChangeFIO.Close;
    fmSaveOKChangeFIO := nil;
    if (LastPanel = 'DetailsPanel') and (cdsOKChangeFIO.Active) then
      begin
        cdsOKChangeFIO.Refresh;
      end;
//    cdsOKPersonal.Refresh;

//    fmSaveOKChangeFIO.Destroy;
  end;

end;

procedure TBOKForm.actDismissExecute(Sender: TObject);
var erMessage   : string;
    sql_, DepartmentCode, PostCode : string;
    v : variant;
// motive_dismissial_code,  ArticleCode
const
  ERROR_NO = 'ORA-20000: ';
begin
  if cdsOKPersonal.FieldByName('status_code').AsString<>'2'
  then begin
    showmessage('Можно уволить только принятого сотрудника!');
    exit;
  end;

  If fmSaveOKDismiss = nil Then fmSaveOKDismiss := TfmOKDismiss.Create(Self);
  With fmSaveOKDismiss do
    Begin
      Caption := ' Увольнение сотрудника: ';
      gbDismiss.Caption  := ' Код сотрудника: '+cdsOKPersonal.FieldByName('personal_code').AsString;
      lbFamily.Caption     := cdsOKPERSONAL.FieldByName('family').AsString;
      lbName.Caption       := cdsOKPERSONAL.FieldByName('first_name').AsString;
      lbPatronymic.Caption := cdsOKPERSONAL.FieldByName('patronymic').AsString;

      DepartmentCode := '';
      sql_ :='select department_name from ss_ok_department '+
                ' where department_code='+cdsOKPERSONAL.FieldByName('Department_Code').AsString+
                ' and state_notes=''A'' ';
      try
          v := GetSQLResult(sql_);
          If not VarIsNull(v) then begin
            DepartmentCode := v;
            lbDepartment.Caption := DepartmentCode;
          end else begin
            //
          end;
      except
//            showmessage('*1'+sql_);
      end;


      PostCode := '';
      sql_:= 'select post_name from ss_ok_post '+
                ' where post_code='+cdsOKPERSONAL.FieldByName('Post_Code').AsString+
                ' and state_notes=''A'' ';
      try
          v := GetSQLResult(sql_);
          If not VarIsNull(v) then begin
            PostCode := v;
            lbPost.Caption := PostCode;
          end else begin
            //
          end;
      except
//            showmessage('*2'+sql_);
      end;

      if cdsOKPost.Active then
      begin
        If cdsOKPost.State in [dsEdit, dsInsert] then cdsOKPost.Cancel;
      end;
      if cdsOKPersonal.Active then
      begin
        If cdsOKPersonal.State in [dsEdit, dsInsert] then cdsOKPersonal.Cancel;
      end;

      If ShowModal = mrOk Then
      Begin

      End;
    End;

  if ErMessage = ''
  then begin
    fmSaveOKDismiss.Close;
    fmSaveOKDismiss := nil;
//    if (LastPanel = 'DetailsPanel') and (cdsOKPost.Active) then
//      begin
//
//      end;

  end;

  cdsOKPersonal.Refresh;

  if cdsOKPost.Active
  then cdsOKPost.Refresh;

end;

procedure TBOKForm.actAppointExecute(Sender: TObject);
//var d: tdata;
begin
  if cdsOKPersonal.FieldByName('status_code').AsString<>'2'
  then begin
    showmessage('Можно переместить только принятого сотрудника!');
    exit;
  end;

  If fmSaveOKAppoint = nil Then fmSaveOKAppoint := TfmOKAppoint.Create(Self);
  With fmSaveOKAppoint do
    Begin
      Caption:='Перемещение';
      If ShowModal = mrOk Then
      Begin
//        cdsOKPersonal.Refresh;
      End;
  End;
  fmSaveOKAppoint.Close;
  fmSaveOKAppoint := nil;

  cdsOKPersonal.Refresh;

  if cdsOKPost.Active
  then cdsOKPost.Refresh;


end;

procedure TBOKForm.actSaveExistExecute(Sender: TObject);
var z,i: integer;
 sql_,ErMessage: string;
 QuantityPost_ , QuantityPostReal_ : integer;
begin

  if not (cdsOKPersonal.State in dseditmodes)
  then exit;

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
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'Отчество')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'N')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'За рубежом')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'N приказа')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'Дата приказа')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<>'Причина увольнения')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'За рубежом')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Место рождения')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Место жительства')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Место выдачи паспорта')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Пенсионный ИН')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Отдел')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Должность')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Специализация')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Работник ОК')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Дата ввода')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '(обл)Место рождения')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> '(район)Место рождения')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Место прописки Область')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Место прописки Район')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Место прописки')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Место жительства Область')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Место жительства Район')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'Место жительства')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'За рубежом')
      and (cdbgOK_Personal.Columns.Items[i].Title.Caption<> 'состояние в ГО')

      then
      begin
        ErMessage := ErMessage+' "'+cdbgOK_Personal.Columns.Items[i].Title.Caption+'" ';
      end;
    end;
  end;

  If ( cdsOKPersonal.FieldByName('Education_Title_CODE').AsString='')
  Then ErMessage := ErMessage+' "Образование сотрудника" ';

{  
  if (cdsOKPersonal.FieldByName('birthplace').AsString='')
  then begin

    if ( cdsOKPersonal.FieldByName('region_id').AsString='')
    Then ErMessage := ErMessage+' "Место рождения сотрудника (область)" ';
    If ( cdsOKPersonal.FieldByName('distr').AsString=''    )
    Then ErMessage := ErMessage+' "Место рождения сотрудника (район/город)" ';

  end;
}
// проверка cdsOKPERSONAL.FieldByName('status_code').AsString
// нельзя ставить статус 4-уволен
    if (OldStatus<>'4') and (cdsOKPERSONAL.FieldByName('status_code').AsString='4')
    then begin
        ErMessage := ErMessage+#13+#13+'Чтобы перевести статус сотрудника в состояние "Уволен" используйте кнопку "Увольнение".';
        Showmessage(ErMessage);
      exit;
    end;
// END проверка cdsOKPERSONAL.FieldByName('status_code').AsString
///////

// проверка cdsOKPERSONAL.FieldByName('TABNO').AsString
    sql_ := 'select count(id) from ok_personal where branch='+cdsOKPERSONAL.FieldByName('branch').AsString+
        ' and tabno='+cdsOKPERSONAL.FieldByName('tabno').AsString+
        ' and personal_code<>'+cdsOKPERSONAL.FieldByName('personal_code').AsString;
    try
      z := getSQLresult(sql_);
      if (z<>0)
      then begin
        ErMessage := ErMessage+#13+#13+'Табельный номер '+cdsOKPERSONAL.FieldByName('tabno').AsString+' уже используется!'+#13+' Измените табельный номер и сохраните данные.';
        Showmessage(ErMessage);
        exit;
      end;
    except
      showmessage('Для ввода нового сотрудника перейдите в режим "Таблица" и нажмите кнопку "Новый". ');
      cdsOKPERSONAL.cancel;
      exit;
    end;


    ///////


    if cdsOKPERSONAL.FieldByName('nps_id').AsString <> ''
    then begin
      sql_ := 'select count(id) from ok_personal'+
        ' where nps_id='+cdsOKPERSONAL.FieldByName('nps_id').AsString+
        ' and personal_code<>'+cdsOKPERSONAL.FieldByName('personal_code').AsString;
      try
        z:=getSQLresult(sql_);
        if (z<>0)
        then begin
          ErMessage:=ErMessage+#13+#13+'Пенсионный ИН '+cdsOKPERSONAL.FieldByName('nps_id').AsString+' уже используется!'+#13+' Измените Пенсионный ИН и сохраните данные.';
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
        ErMessage:=ErMessage+#13+#13+'поле ИНН должно содержать 9 цифр'+#13+
          'вы ввели ИНН='+cdsOKPERSONAL.FieldByName('inn').AsString+#13+
          'только '+IntToStr(z)+' символов';
        Showmessage(ErMessage);
        exit;
      end;

      z := length(cdsOKPERSONAL.FieldByName('nps_id').AsString);
      if (z<>14) and (z<>0)
      then begin
        ErMessage:=ErMessage+#13+#13+'поле Пенсионный ИН должно содержать 14 цифр'+#13+
          'вы ввели ИН='+cdsOKPERSONAL.FieldByName('nps_id').AsString+#13+
          'только '+IntToStr(z)+' символов';
        Showmessage(ErMessage);
        exit;
      end;
    end;

  if ErMessage <> '' then
  begin
    ShowMessage('Пожалуйста, Укажите данные сотрудника:'+ ErMessage);
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
    sql_ :=  'select ok_service.get_QuantityPost('+
      ''''+cdsOKPERSONAL.FieldByName('branch').AsString +''','+
      cdsOKPERSONAL.FieldByName('department_code').AsString +','+
      cdsOKPERSONAL.FieldByName('post_code').AsString +','+
      cdsOKPERSONAL.FieldByName('special_code').AsString +
      ') from dual'   ;
    QuantityPost_ := GetSQLResult(sql_);

    sql_ := 'select ok_service.get_QuantityPostReal('+
      ''''+cdsOKPERSONAL.FieldByName('branch').AsString +''','+
      cdsOKPERSONAL.FieldByName('department_code').AsString +','+
      cdsOKPERSONAL.FieldByName('post_code').AsString +','+
      cdsOKPERSONAL.FieldByName('special_code').AsString +
      ') from dual'     ;
//    showmessage(sql_);
    QuantityPostReal_ := GetSQLResult(sql_);

    except
      ErMessage:= 'Указанная специализация не найдена. Операция прервана!'+#13+sql_;
    end;

    if QuantityPost_ =-1 then
      ErMessage:= 'Указанная специализация не найдена. Операция прервана!';

    if (QuantityPostReal_ >=QuantityPost_)
    and (OldSpecial<>cdsOKPERSONAL.FieldByName('special_code').AsString)
    then
      ErMessage := 'В штатном расписании указано '+inttostr(QuantityPost_)+
        ' рабочих мест по указанной специализации. Фактически назначено '+
          inttostr(QuantityPostReal_)+' сотрудников. Операция прервана!';

  end;

  if ErMessage <> '' then
  begin
    ShowMessage( ErMessage);
    exit;
  end;

   cdsOKPersonal.Post;



end;

procedure TBOKForm.actEditExecute(Sender: TObject);
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

procedure TBOKForm.actUnactiveExecute(Sender: TObject);
begin
  if LastPanel = 'FormPanel' then
  begin
    actDismissExecute(Sender);
  end;

end;

procedure TBOKForm.DBEd_RegionChange(Sender: TObject);
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

procedure TBOKForm.actDetailsFirstExecute(Sender: TObject);
begin
//showmessage(Branch);
  PCDetails.ActivePageIndex := 0;
  CBDetails.ItemIndex := 0;
end;

procedure TBOKForm.actDetailsLastExecute(Sender: TObject);
begin
  PCDetails.ActivePageIndex := PCDetails.PageCount-2;
  CBDetails.ItemIndex := PCDetails.PageCount-2;
end;

procedure TBOKForm.actDetailsPrevExecute(Sender: TObject);
var k : integer;
begin
  if PCDetails.ActivePageIndex = 0
  then k := PCDetails.PageCount-2
  else k := PCDetails.ActivePageIndex-1;

  PCDetails.ActivePageIndex := k;
  CBDetails.ItemIndex := k;

end;

procedure TBOKForm.actDetailsNextExecute(Sender: TObject);
var k : integer;
begin

  k := PCDetails.ActivePageIndex+1;     
  if k >= PCDetails.PageCount-2 then k := 0;
  PCDetails.ActivePageIndex := k;
  CBDetails.ItemIndex := k;
//  showmessage(intToStr(k));

end;

procedure TBOKForm.CBDetailsChange(Sender: TObject);
begin
//   
    PCDetails.ActivePageIndex := StrToInt( TData(CBDetails.Items.Objects[CBDetails.ItemIndex]).Id );

end;

procedure TBOKForm.ViewRef(NumberRef : Integer);
begin

 Params.Clear;
 Params.Add('NUMBERREF='+intToStr(NumberRef));

 (Owner as TBaseForm).RunModule('TBOKRefForm',Params);

end;


procedure TBOKForm.actSSOKPenaltyExecute(Sender: TObject);
begin
  ViewRef(19);

end;

procedure TBOKForm.TabPhotoShow(Sender: TObject);
begin

  actShowPhotoExecute(sender);

end;

procedure TBOKForm.cdsOKPhotoAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsOKPhoto.MasterSource    := dsOKPersonal;
    cdsOKPhoto.IndexFieldNames := 'branch;personal_code';
    cdsOKPhoto.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.cdsOKPhotoBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  OwnerData := 'WithoutBlobs';

end;

procedure TBOKForm.actPhotoInsertExecute(Sender: TObject);
begin
  cdsOKPhoto.Insert;

end;

procedure TBOKForm.actPhotoRemoveExecute(Sender: TObject);
begin

  If Application.MessageBox(PChar('Удалить фото?'), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes
  Then Begin
    cdsOKPhoto.Delete;
  End;

end;

procedure TBOKForm.actPhotoAttachExecute(Sender: TObject);
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

procedure TBOKForm.actPhotoActualSizeExecute(Sender: TObject);
begin
  actPhotoActualSize.Checked := not actPhotoActualSize.Checked;

end;

procedure TBOKForm.actPhotoSaveExecute(Sender: TObject);
begin
  cdsOKPhoto.Post;
  imgPreview.picture.Graphic := nil;

end;

procedure TBOKForm.dsOKPhotoDataChange(Sender: TObject; Field: TField);
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

procedure TBOKForm.actAnketaExecute(Sender: TObject);
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
                                   // час стекла - песочные часы
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
    showmessage('Приложение ''Word'' не может открыть файл C:\NCI Bank\Ok\Templates\'+file_name_+
      #10#13+ ' и не найден файл '+GetCurrentDir_templates+'\'+file_name_+
      #10#13+'Пожалуйста проверьте наличие этого файла.' );
    Exit;
  end;

  try
// ЭТО РАБОТАЕТ !!!!

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

    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    TRY
    sql_ := SQL_OKPhoto+where_pers;

    try
      LoadData(cdsOKPhoto, sql_);

      if fileexists('C:\NCI Bank\Ok\Temp\photo.jpg')
      then deletefile('C:\NCI Bank\Ok\Temp\photo.jpg');

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

//text2
  text2 := '';
  sql_:= 'SELECT change_date,change_motive '+
                         ' FROM ok_change_fio'+
                           where_pers+' order by change_date' ;
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text2 = ''
    then Text2:= cdsTempSource.fieldbyname('change_date').asstring+' йил '+cdsTempSource.fieldbyname('change_motive').asstring
    else Text2:= text2+#13+cdsTempSource.fieldbyname('change_date').asstring+' йил '+cdsTempSource.fieldbyname('change_motive').asstring;

    cdsTempSource.next;

  End;
  if text2 = '' then text2 := 'узгармаган';
  App.Selection.Find.Execute('<TEXT2>', false, false, false, false, false,
           true, 1, false, text2, 2);

//text3
//  text3 := cdsOKPersonal.FieldByName('birthday').AsString;
  text3 := cdsOKPersonal.FieldByName('birthday').AsString+' йил ';

  if cdsOKPersonal.FieldByName('region_id').IsNull
  then begin
    text3 := text3 +' '+cdsOKPersonal.FieldByName('birthplace').AsString;
  end else begin
    sql_:='SELECT region_nam '+
                         ' FROM s_region'+
                         ' where region_id='''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
    LoadData(cdsTempSource,sql_, True);
    text3 := text3 + ' '+cdsTempSource.FieldByName('region_nam').AsString;

    sql_:='SELECT distr_name '+
                         ' FROM s_distr'+
                         ' where distr='''+cdsOKPersonal.FieldByName('distr').AsString+'''';
    LoadData(cdsTempSource,sql_, True);
    text3 := text3 + ' '+cdsTempSource.FieldByName('distr_name').AsString;
  end;

    App.Selection.Find.Execute('<TEXT3>', false, false, false, false, false,
           true, 1, false, text3, 2);


//text4
  text4 := '';
  sql_:='SELECT nationality_name '+
                         ' FROM ss_ok_nationality'+
                         ' where nationality_code='+cdsOKPersonal.FieldByName('nationality_code').AsString;
  LoadData(cdsTempSource,sql_, True);

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
  LoadData(cdsTempSource,sql_, True);
// ||'' йил ''||
  While not cdsTempSource.Eof do
  Begin
    if text5 = ''
    then Text5:= cdsTempSource.fieldbyname('party_name').asstring
    else Text5:= text5+' '+cdsTempSource.fieldbyname('party_name').asstring;

    text_:='';
    if cdsTempSource.fieldbyname('party_outdate').asstring<>''
    then
      text_:= cdsTempSource.fieldbyname('party_outdate').asstring+' йил '+
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
  then Text5:= 'партия аъзоси эмас';

  App.Selection.Find.Execute('<TEXT5>', false, false, false, false, false,
           true, 1, false, text5, 2);

  App.Selection.Find.Execute('<TEXT17>', false, false, false, false, false,
           true, 1, false, text17, 2);

  App.Selection.Find.Execute('<TEXT18>', false, false, false, false, false,
           true, 1, false, text18, 2);


//text6
  text6 := '';
  sql_:='select substr(a.end_date||'' йил ''|| b.institution_name||'',  № ''|| a.diplom_num||'', ''||'+
                ' c.qualification_name||'', ''|| a.profession_personal,1,250) all_data'+
                ' from ok_education a, ss_ok_institution b, ss_ok_qualification c'+
                  where_pers_a +
                ' and a.institution_code = b.institution_code'+
                ' and a.qualification_code = c.qualification_code'+
                ' order by a.end_date';
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

{
  While not cdsTempSource.Eof do
  Begin

    for i:=0 to 3
    do begin
      Text12 := cdsTempSource.fields[i].asstring;
      App.Selection.Find.Execute('<TEXT12'+IntToStr(k)+'>', false, false, false, false, false,
            true, 1, false, text12, 2);
      inc(k);
    end;
    cdsTempSource.next;

  End;

  for i:= k to 94
  do begin
      App.Selection.Find.Execute('<TEXT12'+IntToStr(i)+'>', false, false, false, false, false,
            true, 1, false, ' ', 2);

  end;

}
//text7
  text7 := '';
// награды
  sql_:='select award_date||'' йил ''||award_info all_data'+
                ' from ok_award '+
                  where_pers +
                ' order by award_date';
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text7 = ''
    then Text7:= cdsTempSource.fieldbyname('all_data').asstring
    else Text7:= text7+' ; '+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

// ученые степени
   sql_:='select a.degree_date||'' йил ''||b.degree_name all_data'+
                ' from ok_degree a, ss_ok_degree b'+
                  where_pers_a +
                ' and a.degree_code= b.degree_code'+
                ' order by a.degree_date';
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
    then Text7:= 'илмий даражаси йук';
  App.Selection.Find.Execute('<TEXT7>', false, false, false, false, false,
           true, 1, false, text7, 2);

//text8
  text8 := '';
//OK_SCIENTIFIC
  sql_:='select scientific_date||'' йил ''||scientific_info all_data'+
                ' from ok_scientific'+
                  where_pers +
                ' order by scientific_date';
  LoadData(cdsTempSource,sql_, True);


  While not cdsTempSource.Eof do
  Begin
    if text8 = ''
    then Text8:= cdsTempSource.fieldbyname('all_data').asstring
    else Text8:= text8+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

    if text8 = ''
    then Text8:= 'илмий ишлари йук';
  App.Selection.Find.Execute('<TEXT8>', false, false, false, false, false,
           true, 1, false, text8, 2);

//text9
  text9 := '';
  sql_:='select voyage_date, voyage_land, voyage_info'+
                ' from ok_voyage'+
                  where_pers +
                ' order by voyage_date';
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    text_:='';
    if cdsTempSource.fieldbyname('voyage_date').asstring<>''
    then text_:= cdsTempSource.fieldbyname('voyage_date').asstring+' йил '+
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
                ' a.RELATION_PATRONYMIC,a.RELATION_BIRTHDAY||'' йил ''||a.RELATION_BIRTHPLACE ,'+
                ' a.RELATION_OFFICE||'' ''||a.RELATION_POST ,'+
                ' a.RELATION_HOME_ADDRESS'+
                ' from ok_relation a, ss_ok_relation b'+
                  where_pers_a +
                ' and a.relation_code=b.relation_code'+
                ' order by a.relation_code';
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
  sql_:='select IN_OFFICE_DATE ||'' й.'' IN_OFFICE_DATE_,'+
        ' OUT_OFFICE_DATE ||'' й.'' OUT_OFFICE_DATE_,'+
        ' substr(OFFICE_NAME,1,250) OFFICE_NAME_,'+
        ' substr(ESTABLISHED_DEPARTMENT,1,250) ESTABLISHED_DEPARTMENT_,'+
        ' substr(ESTABLISHED_POST,1,250) ESTABLISHED_POST_, OFFICE_ADDRESS'+
        ' from ok_period '+
        where_pers+' order by in_office_date';
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
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    text_:='';

    if cdsTempSource.fieldbyname('RISE_DATE_YEAR').asstring<>''
    then text_:= cdsTempSource.fieldbyname('RISE_DATE_YEAR').asstring+' йил '+
                 cdsTempSource.fieldbyname('RISE_INFO').asstring;

    cdsTempSource.next;

  End;
  // только последнее повышение квалификации
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
            true, 1, false, 'катнашмаган', 2);
  end else begin
      App.Selection.Find.Execute('<TEXT14>', false, false, false, false, false,
            true, 1, false, ' ', 2);
  end;


//text15
  text15 := ''; // Гос премии ok_premium
//PREMIUM_DATE 	DATE not null, --Дата получения премии	Вводится с клавиатуры, невидимое поле, обязательное для заполнения
//PREMIUM_NAME	VARCHAR2(200) not null, --Наименование премии	Вводится с клавиатуры, невидимое поле, обязательное для заполнения
  sql_:='select premium_date, premium_name '+
                ' from ok_premium'+
                  where_pers +
                ' order by premium_date';
  LoadData(cdsTempSource,sql_, True);


  While not cdsTempSource.Eof do
  Begin
    text_:='';
    if cdsTempSource.fieldbyname('premium_date').asstring<>''
    then text_ := cdsTempSource.fieldbyname('premium_date').asstring+' йил '+
                  cdsTempSource.fieldbyname('premium_name').asstring;

    if text15 = ''
    then Text15:= text_
    else Text15:= text15+' ; '+text_;

    cdsTempSource.next;
  End;

  if text15 = ''
  then Text15:= 'мукофотломнаган';

  App.Selection.Find.Execute('<TEXT15>', false, false, false, false, false,
           true, 1, false, text15, 2);


///////////////////////////
//text
{

ARMY_CODE 	NUMBER(1) not null, --	'Отношение к военной службе 	Выбирается из справочника SS_OK_ARMY  поле ARMY_CODE  обязательное для заполнения'
FITNESS_ARMY_CODE	NUMBER (1) not null, --	'Годность к службе	Выбирается из справочника SS_OK_Fitness_ARMY  поле fitness_ARMY_Code'
STAFF 	VARCHAR2(50) , --,--	'Вид состава	Вводится с клавиатуры, идимое поле, обязательное для заполнения'
TYPE_FORCE	VARCHAR2(50) , --,--	'Род войск	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
ARMY_GROUP	VARCHAR2(50) , --,--	'Группа учета	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
CATEGORY_ARMY	VARCHAR2(50) , --,--	'Категория учета	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
SPECIAL_ARMY 	VARCHAR2(50) , --,--	'Воинская Специальность	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
MILITARY_RANK	VARCHAR2      (50),--	'Воинское звание	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
NUMBER_VUS	VARCHAR2(50),	--'Номер военной учетной специальности (ВУС)	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
CODE_ARMY_POST	VARCHAR2(50),--	'Код должности и особые признаки военной службы	Вводится с клавиатуры, видимое поле, обязательное для заполнния'
NAME_ARMY_OFFICE	VARCHAR2(50) not null,--	'Военкомат	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
SPECREG_NUMBER	VARCHAR2      (50),--	'Состоит на спецучете N	Вводится с клавиатуры, видимое поле, обязательное для заполнения'

Сведения о воинском учете: воинское звание…<TEXT12>
Группа учета…<TEXT12A>…Состав…<TEXT12B>
Категория учета…<TEXT12C>….Специальный учет…<TEXT12D>
ВУС…<TEXT12E>…Годность…<TEXT12F>
Рай.военкомат…<TEXT12G>
}
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
  // группа учета, категория учета,
//ARMY_GROUP_CODE
//CATEGORY_ARMY_CODE
//MILITARY_RANK_CODE
//STAFF_CODE
//TYPE_FORCE_CODE

  if text16=''
  then begin
    text16 :='муносабати йук';
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

//text17 см пункт 5 партийность
//text18 см пункт 5 партийность

//text19
  text19 := '';
//CONVICTIONS_DATE 	DATE not null, --Дата привлечения	Вводится с клавиатуры, видимое поле, обязательное для заполнения
//CONVICTIONS_MOTIVE	VARCHAR2(200) not null, --Причина привлечения	Вводится с клавиатуры, видимое поле, обязательное для заполнения
  sql_:='select CONVICTIONS_date||'' ''||CONVICTIONS_MOTIVE all_data'+
                ' from ok_convictions'+
                  where_pers +
                ' order by CONVICTIONS_date';
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text19 = ''
    then Text19:= cdsTempSource.fieldbyname('all_data').asstring
    else Text19:= text19+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text19 = ''
  then Text19:= 'судланмаган';

  App.Selection.Find.Execute('<TEXT19>', false, false, false, false, false,
           true, 1, false, text19, 2);


//text20
  text20 := ''; // ss_ok_FAMILY_STATUS.FAMILY_STATUS_CODE
  sql_:='select family_status_name all_data'+
                ' from ss_ok_FAMILY_STATUS'+
                ' where FAMILY_STATUS_CODE='+ cdsOKPersonal.FieldByName('FAMILY_STATUS_CODE').AsString;
  LoadData(cdsTempSource,sql_, True);
  EXCEPT
    showmessage(sql_);
    raise;
  END;
  Text20:= cdsTempSource.fieldbyname('all_data').asstring;

//showmessage('text20 '+text20);
  App.Selection.Find.Execute('<TEXT20>', false, false, false, false, false,
           true, 1, false, text20, 2);


//text21 см text1 (где ФИО)

// до этой команды приложение word работает в фоновом режиме
  App.Visible:=true;

//  App.Application.Quit; -- выход из ворда совсем
 except
  App.Application.Quit(false); // выход из ворда совсем без сохранения
/////
  raise;
//  App.Application.Quit(true); // выход из ворда с сохранением
 end;

  App:=unassigned;
 FINALLY
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

function TBOKForm.PrepareOle(FileName: String; TypeApp: String): Variant;
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
      errmsg_ := 'Не найден файл '+curdir+'\'+FileName;
      curdir:=GetCurrentDir_templates;
      If not FileExists(curdir+'\'+FileName) Then
        Begin
          curdir:=GetCurrentDir_templates;
          ShowMessage(errmsg_+#13+'Не найден файл '+curdir+'\'+FileName);
          errmsg_ := 'Не найден файл '+curdir+'\'+FileName;
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
          Showmessage('Ошибка при создании файла '+fname);
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
            Showmessage('Ошибка при создании OLE-объекта('+TypeApp+')!');
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
                Showmessage('Ошибка при открытии '+TypeApp+'!'+#13#10+E.Message);
                If not VarIsNull(App) Then Begin App.Save;App.Workbooks.Close; End;
                App := null;
              end;
          End;
        End;
    End;
  Result := App;
end;

procedure TBOKForm.actLichKartaAExecute(Sender: TObject);
var App:      Variant;
  text_,Text2, Text3, Text4, Text5, Text6, Text6a, Text6b, Text6c : string;
  Text7, Text17,Text7a, Text7b, Text8, Text8a, Text9, Text9a : string;
  Text10,  Text11, Text11a, Text11b, Text11c  : string;
// Text10a,  
  Text12, Text12a, Text12b, Text12c, Text12d, Text12e, Text12f,  Text12g : string;
  text16a,text16b,  text16c,  text16d,  text16e,  text16f,  text16g,  Text13 : string;
//   Text14, Text15 : string;
  file_name_, sql_,where_pers, where_pers_a,BIRTHPLACE_,stag_ : string;
  Save_Cursor:TCursor;
  k,i : integer;
  enter_,s_ ,s2_:string;
begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;

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
    showmessage('Приложение ''Word'' не может открыть файл C:\NCI Bank\Ok\Templates\'+file_name_ +#10#13+
           ' и не найден файл '+GetCurrentDir_templates+'\'+file_name_+#10#13+
    'Пожалуйста проверьте наличие этого файла.' );
    Exit;
  end;

  try
// ЭТО РАБОТАЕТ !!!!
    enter_:=#13;
//////////
// родственники
    sql_:= 'select ok_service.get_relationname(a.relation_code)||'': ''||RELATION_FAMILY||'' ''||RELATION_NAME||'' ''||RELATION_PATRONYMIC||'' ''||RELATION_BIRTHDAY rel '+
                ' from ok_relation a'+
                  where_pers_a +
                ' order by a.relation_code'  ;
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
// образование
    sql_:= 'select ok_service.get_EDUCATIONTITLEname('+cdsOKPersonal.FieldByName('EDUCATION_TITLE_code').asstring +') rel '+
                ' from dual ' ;
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


// Стаж работы по - текущий день bankdate
        sql_:='select ok_service.get_work_period('''+branch+''','+
            cdsokpersonal.fieldbyname('personal_code').asstring+','+
            'to_date('''+bankdate+''',''dd.mm.yyyy'') ) from dual';
        try
          stag_:= getsqlresult(sql_);
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
    sql_:='SELECT region_nam '+
                         ' FROM s_region'+
                         ' where region_id='''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
    LoadData(cdsTempSource,sql_, True);
    BIRTHPLACE_:= BIRTHPLACE_+ ' '+cdsTempSource.FieldByName('region_nam').AsString;

    sql_:='SELECT distr_name '+
                         ' FROM s_distr'+
                         ' where distr='''+cdsOKPersonal.FieldByName('distr').AsString+'''';
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
  LoadData(cdsTempSource,sql_, True);
// ||'' йил ''||
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
  then Text5:= 'партия аъзоси эмас';

  App.Selection.Find.Execute('<R5>', false, false, false, false, false,
           true, 1, false, text5, 2);

  App.Selection.Find.Execute('<R17>', false, false, false, false, false,
           true, 1, false, text17, 2);




    try
      LoadData(cdsOKPhoto, SQL_OKPhoto+where_pers);
// фото
//    App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', 2,0 ,15,30, 90,120);
// пусть сами подбирают размер фото !!!
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

    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;

{
//text
  text := '';
  App.Selection.Find.Execute('<TEXT>', false, false, false, false, false,
           true, 1, false, text, 2);
}

//text2 пол
  sql_:= 'SELECT gender_name '+
                         ' FROM ss_ok_gender'+
                         ' where gender_code='+
                         cdsOKPersonal.FieldByName('gender_code').AsString;
  LoadData(cdsTempSource, sql_, True);

  Text2:= cdsTempSource.fieldbyname('gender_name').asstring;

  App.Selection.Find.Execute('<TEXT2>', false, false, false, false, false,
           true, 1, false, text2, 2);

//text3 день рождения
  text3 := cdsOKPersonal.FieldByName('birthday').AsString;
  App.Selection.Find.Execute('<TEXT3>', false, false, false, false, false,
           true, 1, false, text3, 2);

//text4 место рождения

  if cdsOKPersonal.FieldByName('region_id').IsNull
  then begin
    text4 := cdsOKPersonal.FieldByName('birthplace').AsString;
  end else begin
    sql_:='SELECT region_nam '+
                         ' FROM s_region'+
                         ' where region_id='''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
    LoadData(cdsTempSource,sql_, True);
    text4 := cdsTempSource.FieldByName('region_nam').AsString;

    sql_:='SELECT distr_name '+
                         ' FROM s_distr'+
                         ' where distr='''+cdsOKPersonal.FieldByName('distr').AsString+'''';
    LoadData(cdsTempSource,sql_, True);
    text4 := text4 + ' '+cdsTempSource.FieldByName('distr_name').AsString;
  end;

  App.Selection.Find.Execute('<TEXT4>', false, false, false, false, false,
           true, 1, false, text4, 2);

//text5 национальность
  sql_:='SELECT nationality_name '+
                         ' FROM ss_ok_nationality'+
                         ' where nationality_code='+cdsOKPersonal.FieldByName('nationality_code').AsString;
  LoadData(cdsTempSource,sql_, True);

  text5 := cdsTempSource.FieldByName('nationality_name').AsString;

  App.Selection.Find.Execute('<TEXT5>', false, false, false, false, false,
           true, 1, false, text5, 2);

//text6
//Паспорт:… <TEXT6>..№…<TEXT6A>… Дата выдачи…<TEXT6B>   выдан…<TEXT6C>
//PASS_SERIYA 	VARCHAR2(9) not null,	-- 'Серия паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
//PASS_NUM	VARCHAR2(9) not null,	-- 'Номер паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
//PASS_DATE	DATE not null,	-- 'Дата выдачи паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
//PASS_REG	VARCHAR2(200) not null,	-- 'Место выдачи паспорта	Вводится с клавиатуры, видимое поле, обязательное для заполнения'

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
// Домашний адрес…<TEXT7>  Телефон…<TEXT7A>…     Табельный номер…<TEXT7B>
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
// Стаж работы с:… <TEXT8> первая дата приема на работу min(IN_OFFICE_DATE) ok_period
  LoadData(cdsTempSource,'select min(in_office_date) all_data'+
                ' from ok_period'+
                  where_pers , True);
  text8 := '';
  Text8:= cdsTempSource.fieldbyname('all_data').asstring;

//…Стаж в предприятии с …<TEXT8A>  text8 := ''; текущая дата приема max(IN_OFFICE_DATE) ok_period
// select min(appointment_date) from ok_post
// where appointment_date >= max(out_office_date) from ok_period
// первый прием после последнего увольнения)
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
  LoadData(cdsTempSource, sql_, True);

  Text8:= cdsTempSource.fieldbyname('all_data').asstring;
{
11.Последнее место работы…<TEXT11>
Должность…<TEXT11A>…дата увольнения…<TEXT11B>
Причина увольнения…<TEXT11C>
}
  if text8 <> ''
  then begin
    sql_:='select office_name, established_post'+
//        ' ok_service.get_motivname(motive_) motive_out'+
                ' from ok_period'+
                  where_pers +
                ' and TYPE_PERIOD_CODE<>3' +
                ' and out_office_date<=to_date('''+text8+''',''dd.mm.yyyy'')';
    LoadData(cdsTempSource, sql_ , True);
    Text11:= cdsTempSource.fieldbyname('office_name').asstring;
    Text11a:= cdsTempSource.fieldbyname('established_post').asstring;
    text11b := text8;
//    Text11c:= cdsTempSource.fieldbyname('motive_out').asstring;
// в пахте сказали убрать причину увольнения
// хотя в личной карточке есть это поле!!!!!!!!!!
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
                ' and IN_OFFICE_DATE >= to_date('''+text8+''',''dd.mm.yyyy'' )';
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
  LoadData(cdsTempSource, sql_ , True);
{
Наименование учебного заведения и его местонахождение
 b.institution_name||'' ''||b.institution_place||'' ''||
Год поступления
' to_char(a.begin_date,''yyyy'')||'' ''||'+
Год окончания или ухода
' to_char(a.end_date,''yyyy'')||'' ''||'+
Какую специальность получил в результате окончания учебного заведения
' a.profession_personal'+
№ диплома или удостоверения
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
                ' where FAMILY_STATUS_CODE='+
                 cdsOKPersonal.FieldByName('FAMILY_STATUS_CODE').AsString;
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




//text11 см text8

//text12
{

ARMY_CODE 	NUMBER(1) not null, --	'Отношение к военной службе 	Выбирается из справочника SS_OK_ARMY  поле ARMY_CODE  обязательное для заполнения'
FITNESS_ARMY_CODE	NUMBER (1) not null, --	'Годность к службе	Выбирается из справочника SS_OK_Fitness_ARMY  поле fitness_ARMY_Code'
STAFF 	VARCHAR2(50) , --,--	'Вид состава	Вводится с клавиатуры, идимое поле, обязательное для заполнения'
TYPE_FORCE	VARCHAR2(50) , --,--	'Род войск	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
ARMY_GROUP	VARCHAR2(50) , --,--	'Группа учета	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
CATEGORY_ARMY	VARCHAR2(50) , --,--	'Категория учета	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
SPECIAL_ARMY 	VARCHAR2(50) , --,--	'Воинская Специальность	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
MILITARY_RANK	VARCHAR2      (50),--	'Воинское звание	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
NUMBER_VUS	VARCHAR2(50),	--'Номер военной учетной специальности (ВУС)	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
CODE_ARMY_POST	VARCHAR2(50),--	'Код должности и особые признаки военной службы	Вводится с клавиатуры, видимое поле, обязательное для заполнния'
NAME_ARMY_OFFICE	VARCHAR2(50) not null,--	'Военкомат	Вводится с клавиатуры, видимое поле, обязательное для заполнения'
SPECREG_NUMBER	VARCHAR2      (50),--	'Состоит на спецучете N	Вводится с клавиатуры, видимое поле, обязательное для заполнения'

12.Сведения о воинском учете: воинское звание…<TEXT12>
Группа учета…<TEXT12A>…Состав…<TEXT12B>
Категория учета…<TEXT12C>….Специальный учет…<TEXT12D>
ВУС…<TEXT12E>…Годность…<TEXT12F>
Рай.военкомат…<TEXT12G>
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

APPOINTMENT_DATE 	DATE not null, -- 'Дата с какого числа перемещен в должности	Вводится с клавиатуры, видимое поле, обязательное для заполнения
APPOINTMENT_MOTIVE	VARCHAR2(100) not null, -- 'Причина перемещения	Вводится с клавиатуры, видимое поле, обязательное для заполнения
DEPARTMENT_CODE 	NUMBER (2) not null, -- 'Наименование отдела куда перемещен	Выбирается из справочника SS_OK_DEPARTAMENT поле DEPARTAMENT_CODE  в зависимости от типа отдела . видимое поле, обязательное для заполнения
POST_CODE	NUMBER (3) not null, -- 'На какую должность перемещен	Выбирается из справочника SS_OK_POST поле POST_CODE, видимое поле, обязательное для заполнения
GRADE 	NUMBER (2) not null, -- 'Разряд 	Вводится с клавиатуры, невидимое поле, необязательное для заполнения
SALARY_FACT  	NUMBER(10,2)  not null, -- 'Должностной оклад	Вводится с клавиатуры, видимое поле, обязательное для заполнения
RAISE_PERSONAL	NUMBER(10,2) not null, -- 'Персональная надбавка 	Вводится с клавиатуры, видимое поле, обязательное для заполнения
RAISE_ADD 	NUMBER(10,2) not null, -- 'Другая надбавка	Вводится с клавиатуры, видимое поле, обязательное для заполнения
BASIS_NUM 	NUMBER (3) not null, -- 'Номер приказа/основания	Вводится с клавиатуры, видимое поле, обязательное для заполнения
BASIS_DATE	DATE not null, -- 'Дата приказа/основания	Вводится с клавиатуры, видимое поле, обязательное для заполнения
N Основание   BASIS_NUM
Подразделение    DEPARTMENT_CODE
Должность    POST_CODE
Дата       BASIS_DATE
Причина перемещения   APPOINTMENT_MOTIVE
Разряд GRADE
Надбавка (две) RAISE_PERSONAL+RAISE_ADD
Оклад   SALARY_FACT
}
//
{
  LoadData(cdsTempSource,'select a.BASIS_NUM||'' ''||b.DEPARTMENT_name||'' ''||'+
        ' c.post_NAME||'' ''||a.basis_date||'' ''||a.APPOINTMENT_MOTIVE||'' ''||'+
        ' a.grade||'' ''||a.RAISE_PERSONAL+a.RAISE_ADD||'' ''||a.SALARY_FACT'+
        ' as all_data'+
        ' from ok_post a, ss_ok_department b, ss_ok_post c'+
          where_pers_a+
        ' and a.department_code= b.department_code'+
        ' and a.post_code= c.post_code'+
        ' order by a.basis_date', True);

  While not cdsTempSource.Eof do
  Begin
    if text14 = ''
    then Text14:= cdsTempSource.fieldbyname('all_data').asstring
    else Text14:= text14+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;

  End;

  App.Selection.Find.Execute('<TEXT14>', false, false, false, false, false,
           true, 1, false, text14, 2);

//text15
  text15 := '';

  LoadData(cdsTempSource,'select b.leave_name||'' ''||a.BEGIN_YEAR||''-''||'+
        ' a.END_YEAR||'' ''||a.DATE_IN_LEAVE||''-''||a.DATE_OUT_LEAVE||'' ''||'+
        ' a.PERIOD_LEAVE||'' ''||a.MOTIVE_LEAVE'+
        ' as all_data'+
        ' from ok_leave a, ss_ok_leave b'+
          where_pers_a+
        ' and a.leave_code= b.leave_code'+
        ' order by a.date_in_leave', True);

  App.Selection.Find.Execute('<TEXT15>', false, false, false, false, false,
           true, 1, false, text15, 2);

//text16 Отчет сформирован: …<TEXT16>
  App.Selection.Find.Execute('<TEXT16>', false, false, false, false, false,
           true, 1, false, DateToStr(Date), 2);
}
// до этой команды приложение word работает в фоновом режиме
  App.Visible:=true;

//  App.Application.Quit; -- выход из ворда совсем
 except
  App.Application.Quit(false); // выход из ворда совсем без сохранения
//  App.Application.Quit(true); // выход из ворда с сохранением
showmessage(sql_);
   raise;
 end;

  App:=unassigned;
 FINALLY
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKForm.dbeokRegionChange(Sender: TObject);
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

procedure TBOKForm.cdbgOKEducationEditButtonClick(Sender: TObject);
begin

  if bokmain.BossLevel='0'
  then begin
        showmessage('Нельзя изменить: Данные доступны Только для чтения!!!');
    exit;
  end;

  If cdsOKEducation.State in dsEditModes
  Then //
  Else cdsOKEducation.Edit;

  try
//,RPad(institution_name,25,'' '') name2
    BOKForm.LoadData(cdsTempSource,'SELECT to_char(institution_code) id, institution_name name'+
                                              ' FROM ss_ok_institution'+
                                              ' WHERE education_code='+cdsOKEducation.FieldByName('education_code').AsString+
                                              ' AND state_notes = ''A''',True);
  except
    Showmessage('Пожалуйста, укажите Образование и только затем Учебное заведение!');
    exit;
  end;

  cdsTempSource.Edit;
  With TSelectDialog.CreateEx(Self, cdsTempSource, cdsTempSource, cdsTempSource.FindField('id').Index) do
    Try
      If ShowModal = mrOk
      Then begin
        cdsOKEducation.FieldByName('institution_code').AsString  := cdsTempSource.FieldByName('ID').AsString;
        cdsOKEducation.FieldByName('cod_vuz_prim').AsString  := cdsTempSource.FieldByName('NAME').AsString;

      end;
//      lbInstitution.Caption := cdsTempSource.FieldByName('NAME2').AsString+'*';
    Finally
      Destination.Filtered:=false;
      Free;
    End;

{пример:
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


{
  LoadData(cdsRefTemp,
    'select a.DEPARTMENT_TYPE_CODE id, '+
    ' a. DEPARTMENT_TYPE_CODE||'') ''||a. DEPARTMENT_TYPE_name name '+
    ' from ss_ok_department_type a where'+
    ' a.state_notes=''A'' '+
    ' order by a.department_type_code',True);
  cbDepType.clear;
  cbDepTypeNew.clear;

  while not cdsRefTemp.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := cdsRefTemp.FieldByName('id').AsString;
        Name := cdsRefTemp.FieldByName('name').AsString;
      end;
      cbDepType.Items.AddObject(cdsRefTemp.FieldByName('name').AsString, D);
      cbDepTypeNew.Items.AddObject(cdsRefTemp.FieldByName('name').AsString, D);
      cdsRefTemp.Next;
  end;

//  If not cdsSSOKLevelDepartment_RO.Active Then
//  Begin
    cdsSSOKLevelDepartment_RO.DisableControls;
    LoadData(cdsSSOKLevelDepartment_RO, SQL_SSOKLevelDepartment_SET);
    cdsSSOKLevelDepartment_RO.EnableControls;
//  end;
//  If not cdsSSOKDepartmentType_SET.Active Then begin
    cdsSSOKDepartmentType_SET.DisableControls;
    LoadData(cdsSSOKDepartmentType_SET,      SQL_SSOKDepartmentType_SET);
    cdsSSOKDepartmentType_SET.EnableControls;
//  end;

    cdsSSOKDepartment_RO.DisableControls;
    LoadData(cdsSSOKDepartment_RO,      SQL_SSOKDepartment_SET+
      ' where d.level_department_code='+FiltrLevel);
    cdsSSOKDepartment_RO.EnableControls;


//  If cdsSSOKDepartment_SET.Active Then Exit;
  cdsSSOKDepartment_SET.DisableControls;
  LoadData(cdsSSOKDepartment_SET,             SQL_SSOKDepartment_SET+
      ' where d.level_department_code='+FiltrLevel);

  cdsSSOKDepartment_SET.Close;
  addLookUpField(cdsSSOKDepartment_SET, cdsSSOKDepartmentType_SET,
                'department_type_code_show', 'department_type_code',
                'department_type_code', 'department_type_name', True);
  addLookUpField(cdsSSOKDepartment_SET, cdsSSOKDepartment_RO,
                'high_dep_code_show', 'high_dep_code',
                'department_code', 'department_name', False);
  addLookUpField(cdsSSOKDepartment_SET, cdsSSOKLevelDepartment_RO,
                'level_dep_code_show', 'level_department_code',
                'level_department_code', 'level_department_name', False);
  cdsSSOKDepartment_SET.Open;
  cdsSSOKDepartment_SET.EnableControls;

}


procedure TBOKForm.actRef2Execute(Sender: TObject);
var
// n_TreeNode : TTreeNode;
  ParentNode0, ParentNode1, ParentNode2, ParentNode3, ParentNode4, ParentNode5: TTreeNode;
  i : integer;
//  q:integer;
//  key_txt,
  sql_ :string;
//  D : tdata;
begin

  actREPORTS.Checked     := False ;
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

// здесь растет дерево BEGIN
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
  if bosslevel='0'
  then
    sql_:=SQL_Derevo+
        ' where state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null'
  else
    sql_:=SQL_Derevo+
        ' where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null';

  loaddata( cdsDerevo, sql_);


except
showmessage(sql_);
end;

// ветки дерева BEGIN
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

// ветки дерева END

// здесь растет дерево END


  PC.ActivePage := TabOKPersonal;
  ActDetailUndoExecute(nil);
//showmessage('!!'+INIT_KEY + 'TBOKForm\TfmFilterPersonal');
  if BOKForm.chbsavefiltr.checked
  then begin

    With BOKForm.Registry do
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

    With BOKForm.Registry do
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

procedure TBOKForm.actObiektivkaExecute(Sender: TObject);
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
    erMes := erMes+'В данных сотрудника не указано Наименование образования сотрудника!'+#13;
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
    showmessage('Приложение ''Word'' не может открыть файл C:\NCI Bank\Ok\Templates\ '+file_name_ +#10#13+
           ' и не найден файл '+GetCurrentDir_templates+'\'+file_name_+#10#13+
    'Пожалуйста проверьте наличие этого файла.' );
    Exit;
  end;
//App.Visible:=true;
  try
    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;

    sql_:='select to_char(a.in_office_date,''yyyy'') column0,'+
                         ' to_char(a.in_office_date,''mm'') column1,'+
                         '  ESTABLISHED_POST column3'+
                         ' FROM ok_period a '+
                           where_pers_a+
                         ' and a.in_office_date='+
                         ' (select max(in_office_date) from ok_period '+
                         where_pers+')';
    ErMes:='не удалось получить сведения о работе';
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
        ' start with d.department_code='+cdsOKPersonal.FieldByName('department_code').AsString;
//    ErMes:='не удалось получить об отделе';

    texth3:='';

  try
    LoadData(cdsTempSource,sql_, True);
    While not cdsTempSource.Eof do
    Begin
      texth3:= cdsTempSource.FieldByName('name_').AsString+' '+texth3;
      cdsTempSource.next;
    End;
  except
      texth3:=' не указано в данных сотрудника!';
  end;


    App.Selection.Find.Execute('<TEXTH3>', false, false, false, false, false,
           true, 1, false, texth3, 2);

// ЭТО РАБОТАЕТ !!!!

    App.Selection.Find.Execute('<FAMILY1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('family').AsString, 2);

    App.Selection.Find.Execute('<NAME1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('First_Name').AsString, 2);

    App.Selection.Find.Execute('<PATRONYMIC1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('Patronymic').AsString, 2);

    try
      LoadData(cdsOKPhoto, SQL_OKPhoto+where_pers);

      if not cdsOKPhoto.IsEmpty
      then begin
        (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
        App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', 2,0 ,15,30);
        cdsOKPhoto.Close;
      end;
    except
    end;
//text1a

    DateTimeToString(TextDD, 'dd', cdsOKPersonal.FieldByName('birthday').AsDateTime);
    DateTimeToString(TextMM, 'mm', cdsOKPersonal.FieldByName('birthday').AsDateTime);
    DateTimeToString(TextYYYY, 'yyyy', cdsOKPersonal.FieldByName('birthday').AsDateTime);
    Text1a := TextDD+' '+ToMonthName(TextMM)+' '+TextYYYY+' йил';

    App.Selection.Find.Execute('<TEXT1A>', false, false, false, false, false,
           true, 1, false, Text1a, 2);

//DateTimeToString(var Result: string; const Format: string; DateTime: TDateTime);


//text2a
  text2a := '';
  sql_:='SELECT nationality_name '+
                         ' FROM ss_ok_nationality'+
                         ' where nationality_code='+cdsOKPersonal.FieldByName('nationality_code').AsString+
                         ' and state_notes='+#39+'A'+#39;
  ErMes:='не удалось получить сведения о национальности';
  LoadData(cdsTempSource,sql_, True);

  text2a := cdsTempSource.FieldByName('nationality_name').AsString;

  App.Selection.Find.Execute('<TEXT2A>', false, false, false, false, false,
           true, 1, false, text2a, 2);

//text3a
  sql_:='SELECT education_title_name '+
                         ' FROM ss_ok_education_title'+
                         ' where education_title_code='+cdsOKPersonal.FieldByName('education_title_code').AsString+
                         ' and state_notes='+#39+'A'+#39;
  try
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
    ErMes:='не удалось получить сведения о месте рождения';
    sql_:='SELECT region_nam '+
                         ' FROM s_region'+
                         ' where region_id='''+cdsOKPersonal.FieldByName('region_id').AsString+'''';
    LoadData(cdsTempSource,sql_, True);
    text4a := cdsTempSource.FieldByName('region_nam').AsString;

    sql_:='SELECT distr_name '+
                         ' FROM s_distr'+
                         ' where distr='''+cdsOKPersonal.FieldByName('distr').AsString+'''';
    LoadData(cdsTempSource,sql_, True);
    text4a := text4a + ' '+cdsTempSource.FieldByName('distr_name').AsString;
  end;

    App.Selection.Find.Execute('<TEXT4A>', false, false, false, false, false,
           true, 1, false, text4a, 2);
//text5a
  ErMes:='не удалось получить сведения о партии';
  sql_:='select b.party_name'+
                ' from ok_party a, ss_ok_party b'+
                  where_pers_a +
                ' and a.party_code = b.party_code'+
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.party_date';
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text5a = ''
    then Text5a:= cdsTempSource.fieldbyname('party_name').asstring
    else Text5a:= text5a+','+cdsTempSource.fieldbyname('party_name').asstring;
    cdsTempSource.next;
  End;

  if text5a='' then text5a:='партиясиз';
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
  // народный банк
    sql_:='select b.institution_name||'' ''||to_char(a.END_DATE)||'' йил.'' all_data0,'+
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
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.end_date';
  end;
  ErMes:='не удалось получить сведения об учебном заведении';
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
// ученые степени
  sql_:='select b.degree_name all_data'+
                ' from ok_degree a, ss_ok_degree b'+
                  where_pers_a +
                ' and a.degree_code= b.degree_code'+
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.degree_date';
  ErMes:='не удалось получить сведения об ученой степени';
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text8a = ''
    then Text8a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text8a:= text8a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

//
  if text8a='' then text8a:='йук';
  App.Selection.Find.Execute('<TEXT8A>', false, false, false, false, false,
           true, 1, false, text8a, 2);

//text9a
  text9a := ''; //
  ErMes:='не удалось получить сведения об ученом звании';
  LoadData(cdsTempSource,'select b.academic_name all_data'+
                ' from ok_academic a,ss_ok_academic b '+
                  where_pers_a +
                ' and a.academic_code=b.academic_code'+
                ' and b.state_notes='+#39+'A'+#39+
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
  ErMes:='не удалось получить сведения об иностранных языках';

  LoadData(cdsTempSource,'select b.language_name||'' тили (''|| c.LEVEL_LANGUAGE_NAME ||'')'' all_data'+
                ' from ok_language a, ss_ok_language b, ss_ok_level_language c'+
                  where_pers_a +
                ' and a.language_code= b.language_code'+
                ' and a.level_code=c.level_language_code'+
                ' and c.state_notes='+#39+'A'+#39+
                ' and b.state_notes='+#39+'A'+#39+
                ' order by a.language_code', True);

  While not cdsTempSource.Eof do
  Begin
    if text10a = ''
    then Text10a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text10a:= text10a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;
  End;

  if text10a='' then text10a:='билмайди';
  App.Selection.Find.Execute('<TEXT10A>', false, false, false, false, false,
           true, 1, false, text10a, 2);

//text11a
  text11a := '';
  ErMes:='не удалось получить сведения о зарубежных поездках';
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

  if text11a='' then text11a:='булмаган';

  App.Selection.Find.Execute('<TEXT11A>', false, false, false, false, false,
           true, 1, false, text11a, 2);

//text12a
  text12a := ''; // Гос премии ok_premium

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

  if text12a='' then text12a:='йук';

  App.Selection.Find.Execute('<TEXT12A>', false, false, false, false, false,
           true, 1, false, text12a, 2);

//text13a
  text13a := '';

  ErMes:='не удалось получить сведения об избрании';
  sql_:='select b.ELECTION_name all_data'+
        ' from ok_election a, ss_ok_election b '+
        where_pers+
                ' and a.election_code= b.election_code'+
                ' and b.state_notes='+#39+'A'+#39+
        ' order by a.election_date_begin';
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text13a = ''
    then Text13a:= cdsTempSource.fieldbyname('all_data').asstring
    else Text13a:= text13a+','+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;

  End;

  if text13a='' then text13a:='сайланмаган';
  App.Selection.Find.Execute('<TEXT13A>', false, false, false, false, false,
           true, 1, false, text13a, 2);

//text14a
// Отчет сформирован: (убрал)
//  App.Selection.Find.Execute('<TEXT14A>', false, false, false, false, false,
//           true, 1, false, DateToStr(Date), 2);


  text_i := '';
  text_iB := '';
  ErMes:='сведения о работе (Мехнат фаолияти)';

  if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
  then begin
// капитал-банку дату показывать день-месяц-год
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
//                                         true, 1, false, 'Мехнат фаолияти', 1);

//   sql_ := 'App.Selection.InsertRowsBelow;';
//      App.Selection.InsertRowsBelow;
//   sql_ := 'App.Selection.Paste';
//      App.Selection.Paste;



//   sql_ := 'App.Selection.PasteSpecial;'; сообщает об ошибке
//      App.Selection.PasteSpecial;

  While not cdsTempSource.eOF do
    begin
      cdsTempSource.Next;
    end;

  While not cdsTempSource.bOF do
    begin
      if cdsTempSource.Fields[1].AsString <> ''
      then begin
        text21 := cdsTempSource.Fields[0].AsString+' - '+cdsTempSource.Fields[1].AsString+ ' й.';
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
        text21 := cdsTempSource.Fields[0].AsString+' йилдан хозирги ваутгача';
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
                                         true, 1, false, 'Мехнат фаолияти', 1);

// до этой команды приложение word работает в фоновом режиме

//  App.Visible:=true;

//  V.Visible:=true;


   if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
   then begin
//text11
  text11 := '';
  k:=11;
  sql_:='select b.relation_name,a.RELATION_FAMILY	||'' ''||a.RELATION_NAME ||'' ''||'+
                ' a.RELATION_PATRONYMIC,a.RELATION_BIRTHDAY||'' йил ''||a.RELATION_BIRTHPLACE ,'+
                ' a.RELATION_OFFICE||'' ''||a.RELATION_POST ,'+
                ' a.RELATION_HOME_ADDRESS'+
                ' from ok_relation a, ss_ok_relation b'+
                  where_pers_a +
                ' and a.relation_code=b.relation_code'+
                ' order by a.relation_code';
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
  App.Application.Quit(false); // выход из ворда совсем без сохранения
  showmessage(ermes+#13+sql_);
//  App.Application.Quit(true); // выход из ворда с сохранением
//  V.Quit(false); // выход из ексцеля совсем без сохранения
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

procedure TBOKForm.actOptionsExecute(Sender: TObject);
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

procedure TBOKForm.edFilialExit(Sender: TObject);
//var i: Integer;
begin
  inherited;

  If not edFilial.Modified Then Exit;
  With Registry do
    Try
      OpenKey(INIT_KEY + Self.ClassName, True);
      WriteString('edFilial', edFilial.Text);
    Finally
      CloseKey;
    End;

end;

procedure TBOKForm.edOfficeAddressExit(Sender: TObject);
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

procedure TBOKForm.ChbArticleClick(Sender: TObject);
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

procedure TBOKForm.actRezervSetExecute(Sender: TObject);
begin

  LastPanel := 'RezervSetPanel';
// такой нет  pcmainok.ActivePage := RezervSetPanel_;
  ActDetailUndoExecute(nil);

  If fmSaveOKRezerv = nil Then fmSaveOKRezerv := TfmOKRezerv.Create(Self);

  With fmSaveOKRezerv do
  Begin
      If ShowModal = mrOk Then
      Begin
//        showmessage('OK');
      End;
  End;

  fmSaveOKRezerv.Close;
  fmSaveOKRezerv := nil;
end;

procedure TBOKForm.actToExcelExecute(Sender: TObject);
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
//    NumFormat := '# ##0.00_р_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_р_.';

//    V.Cells[7,2].
    DateFormat := 'ДД.ММ.ГГГГ';

  end;
  nn:=cdbgOK_PERSONAL.Columns.Count-1;
  i:=1;
  // формирование шапки для текстового файла
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
  V.Visible := True; //так быстрее
  cdbgOK_PERSONAL.DataSource.Dataset.ENableControls;
 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKForm.actDeleteExecute(Sender: TObject);
begin

  if LastPanel = 'DetailsPanel'
  then begin
    ActDetailDeleteExecute(nil);
  end;

  if LastPanel = 'FormPanel'
  then begin

    if cdsOKPersonal.FieldByName('status_code').AsInteger >1
    then begin
      showmessage('Нельзя удалить. Только нового сотрудника можно удалить.');
    end else begin
      If Application.MessageBox(PChar('Удалить ВСЕ данные о сотруднике?'), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes
      Then Begin
        Try

          ExecSQL('delete from ok_personal where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          try
          ExecSQL('delete from OK_ACADEMIC where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_ADDINFORM where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_ARMY where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_ATTESTATION where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_AWARD where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_CHANGE_FIO where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_CONVICTIONS where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_DEGREE where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_EDUCATION where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_ELECTION where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_LANGUAGE where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_LEAVE where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_PARTY where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_PENALTY where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_PERIOD where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_POST where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_PREMIUM where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_RELATION where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_RISE where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_SCIENTIFIC where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
    //      ExecSQL('delete from OK_STAT where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
    //                        ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
    //      ExecSQL('delete from OK_STAT_SALARY where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
    //                        ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_VOYAGE where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          ExecSQL('delete from OK_YOUTH where personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString+
                            ' and branch='+#39+cdsOKPersonal.FieldByName('branch').AsString+#39);
          except
          end;
          ExecSQL('COMMIT');

        Except on E: Exception do
          Begin
            ExecSQL('ROLLBACK');
            ShowMessage('Ошибка при удалении.'+#13+E.Message);
          End;
        End;

        cdsOKPersonal.Refresh;
      end;
    end;

// end else begin
//   showmessage('чтобы удалить данные о сотруднике,'+
//     ' перейдите на вкладку "Форма-Информация по сотруднику"!');
  end;

end;

procedure TBOKForm.cdsSSOKDepartment_SETBeforePost(DataSet: TDataSet);
begin
  DataSet.Fields.FieldByName('branch').AsString := Branch;
  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  if DataSet.Fields.FieldByName('state_notes').AsVariant<>'P'
  then DataSet.Fields.FieldByName('state_notes').AsVariant:='A';

end;

procedure TBOKForm.cdsOKPersonalBeforeEdit(DataSet: TDataSet);
begin
  OldStatus := cdsOKPERSONAL.FieldByName('status_code').AsString;
  OldSpecial := cdsOKPERSONAL.FieldByName('special_code').AsString;
end;

procedure TBOKForm.cdsOKPersonalAfterOpen(DataSet: TDataSet);
begin
    cdsOKPersonal.FieldByName('birthday').EditMask  := '!09/09/0099;1;_';
    cdsOKPersonal.FieldByName('pass_date').EditMask := '!09/09/0099;1;_';
    cdsOKPersonal.FieldByName('pass_date_end').EditMask := '!09/09/0099;1;_';

    cdsOKPersonal.FieldByName('srok_date').EditMask := '!09/09/0099;1;_';

end;
{
procedure TBOKForm.BitBtn99Click(Sender: TObject);
var ErMessage : string;
const
  ERROR_NO = 'ORA-20000: ';
begin
  try

    execSQL('update ok_personal'+
       ' set LEAVE_CODE=null,'+
       ' EMP_CODE='+UserId+','+
       ' INS_DATE=sysdate'+
       ' where BRANCH='''+cdsOKPersonal.FieldByName('branch').asstring+''''+
       ' and PERSONAL_CODE='+cdsOKPersonal.FieldByName('PERSONAL_CODE').asstring );

    ExecSQL('COMMIT');

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
      Else If pos('ORA-01400', E.Message) > 0 Then ShowMessage('Ошибка при сохранении. Пожалуйста, заполните пустые поля!')
           else ShowMessage(e.Message);
              exit;
    End;
  end;

//  Refresh('ALL');
  cdsOKPersonal.RefreshRecord;

end;
}
{
procedure TBOKForm.BitBtn100Click(Sender: TObject);
var ErMessage : string;
const
  ERROR_NO = 'ORA-20000: ';
begin

  try

    execSQL('update ok_personal'+
       ' set LEAVE_CODE='+cdsOKLeave.FieldByName('leave_code').asstring+','+
       ' EMP_CODE='+UserId+','+
       ' INS_DATE=sysdate'+
       ' where BRANCH='''+cdsOKPersonal.FieldByName('branch').asstring+''''+
       ' and PERSONAL_CODE='+cdsOKPersonal.FieldByName('PERSONAL_CODE').asstring );

    ExecSQL('COMMIT');

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
      Else If pos('ORA-01400', E.Message) > 0 Then ShowMessage('Ошибка при сохранении. Пожалуйста, заполните пустые поля!')
           else ShowMessage(e.Message);
              exit;
    End;
  end;

  cdsOKPersonal.RefreshRecord;

end;
}
procedure TBOKForm.dsOKPersonalDataChange(Sender: TObject; Field: TField);
begin
  StatusBar.Panels[0].Text := Format('Всего: %d', [cdsOKPersonal.RecordCount]);

end;

procedure TBOKForm.chbTabVisibleClick(Sender: TObject);
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

procedure TBOKForm.actLichKartaBExecute(Sender: TObject);
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
    showmessage('Приложение ''Word'' не может открыть файл C:\NCI Bank\Ok\Templates\pril02b.doc .' +#10#13+
               ' и не найден файл '+GetCurrentDir_templates+'\'+file_name_+#10#13+
    'Пожалуйста проверьте наличие этого файла.' );
    Exit;
  end;

  try
// ЭТО РАБОТАЕТ !!!!
}
{
    App.Selection.Find.Execute('<FAMILY1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('family').AsString, 2);

    App.Selection.Find.Execute('<NAME1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('First_Name').AsString, 2);

    App.Selection.Find.Execute('<PATRONYMIC1>', false, false, false, false, false,
           true, 1, false, cdsOKPersonal.FieldByName('Patronymic').AsString, 2);

    try
      LoadData(cdsOKPhoto, SQL_OKPhoto+where_pers);

// фото
      (cdsOKPhoto.FieldByName('photo') as TBlobField).SaveToFile('C:\NCI Bank\Ok\Temp\photo.jpg');
      cdsOKPhoto.Close;

//    App.ActiveDocument.Shapes.AddPicture('C:\NCI Bank\Ok\Temp\photo.jpg', 2,0 ,15,30, 90,120);
// пусть сами подбирают размер фото !!!
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

  sql_:='select a.BASIS_NUM||'' ''||b.DEPARTMENT_name||'' ''||'+
        ' c.post_NAME||'' ''||to_char(a.basis_date,''dd.mm.yyyy'')||'' ''||a.APPOINTMENT_MOTIVE||'' ''||'+
        ' to_char(a.grade)||'' ''||to_char(a.RAISE_PERSONAL+a.RAISE_ADD)||'' ''||to_char(a.SALARY_FACT)'+
        ' as all_data'+
        ' from ok_post a, ss_ok_department b, ss_ok_post c'+
          where_pers_a+
        ' and a.department_code= b.department_code'+
        ' and a.post_code= c.post_code'+
        ' and b.state_notes='+#39+'A'+#39+
        ' and c.state_notes='+#39+'A'+#39+
        ' order by a.basis_date';
//try
  LoadData(cdsTempSource,sql_, True);
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
  LoadData(cdsTempSource,sql_, True);

  While not cdsTempSource.Eof do
  Begin
    if text15 = ''
    then Text15 := cdsTempSource.fieldbyname('all_data').asstring
    else Text15 := text15+#13+cdsTempSource.fieldbyname('all_data').asstring;

    cdsTempSource.next;

  End;

  App.Selection.Find.Execute('<TEXT15>', false, false, false, false, false,
           true, 1, false, text15, 2);

//text16 Отчет сформирован: …<TEXT16>
  text16 := DateToStr(Date);
  App.Selection.Find.Execute('<TEXT16>', false, false, false, false, false,
           true, 1, false, text16, 2);

// до этой команды приложение word работает в фоновом режиме
  App.Visible:=true;

//  App.Application.Quit; -- выход из ворда совсем
 except
  App.Application.Quit(false); // выход из ворда совсем без сохранения
//  App.Application.Quit(true); // выход из ворда с сохранением
   raise;
 end;

  App:=unassigned;
 FINALLY
    Screen.Cursor := Save_Cursor;
 END;
}
end;

procedure TBOKForm.Button8Click(Sender: TObject);
//var
//s: string;
//tf:textFile;
begin

//  try
//    AssignFile(tf,'C:\NCI Bank\OK\Temp\rep_ok.rtf');
//    Rewrite(tf);
//    s:='{\rtf1\ansi\ansicpg1251\deff0\deflang1049{\fonttbl{\f0\fswiss\fcharset204{\*\fname Arial;}Arial CYR;}}'+#13#10+
{    '\viewkind4\uc1\pard\qc\b\f0\fs20 План-Отчет о проделанной работе\par '+#13#10+
    '\pard\b0\par '+#13#10+
    '\par '+#13#10+
    '\qc Исполнитель  '+cdsOKPersonal.FieldByName('family').AsString+'.\par '+#13#10+
    'Руководитель \par '+#13#10+
    '\par '+#13#10+
    '\par '+#13#10+
    '\trowd\trbrdrt\brdrdb\brdrw20 '+#13#10+
    '\trbrdrb\brdrdb\brdrw20 '+#13#10+
    '\cellx850\cellx1300\cellx4800\cellx8000\cellx8668\pard '+#13#10+
    '\intbl\qc Дата\cell Вр.\cell План\cell Фактически выполнено\cell % выпол-нения\cell\pard\row';
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
      '\viewkind4\uc1\pard\qc\b\f0\fs20 Исполнитель                                 Руководитель\par'+#13#10+
      '\pard\b0\par'+#13#10+
}//      '}';
{    WriteLn(tf,s);
  finally
    CloseFile(tf);
  end;

  try
    WinExec('C:\NCI Bank\OK\wordpad.exe "C:\NCI Bank\OK\Temp\rep_ok.rtf"', SW_MAXIMIZE);
  except
    showmessage('Не удалось открыть  "C:\NCI Bank\OK\wordpad.exe C:\NCI Bank\OK\Temp\rep_ok.rtf"');
  end;
}
{
  try
    App := PrepareOle( 'temp.doc' ,'WordPad.Application');
    App.Visible:=true;
  except
    App.Application.Quit(false); // выход из ворда совсем без сохранения
    raise;
//  App.Application.Quit(true); // выход из ворда с сохранением
    showmessage('Не удалось открыть "temp.doc"');
  end;
  App:=unassigned;
}

end;

procedure TBOKForm.actObiektivkaRTFExecute(Sender: TObject);
var
s: string;
tf:textFile;
//app: variant;
begin

  try
    AssignFile(tf,'C:\NCI Bank\OK\Temp\rep_ok.rtf');
    Rewrite(tf);
    s:='{\rtf1\ansi\ansicpg1251\deff0\deflang1049{\fonttbl{\f0\fswiss\fcharset204{\*\fname Arial;}Arial CYR;}}'+#13#10+
    '\viewkind4\uc1\pard\qc\b\f0\fs20 План-Отчет о проделанной работе\par '+#13#10+
    '\pard\b0\par '+#13#10+
    '\par '+#13#10+
    '\qc Исполнитель  '+cdsOKPersonal.FieldByName('family').AsString+'.\par '+#13#10+
    'Руководитель \par '+#13#10+
    '\par '+#13#10+
    '\par '+#13#10+
    '\trowd\trbrdrt\brdrdb\brdrw20 '+#13#10+
    '\trbrdrb\brdrdb\brdrw20 '+#13#10+
    '\cellx850\cellx1300\cellx4800\cellx8000\cellx8668\pard '+#13#10+
    '\intbl\qc Дата\cell Вр.\cell План\cell Фактически выполнено\cell % выпол-нения\cell\pard\row';
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
      '\viewkind4\uc1\pard\qc\b\f0\fs20 Исполнитель                                 Руководитель\par'+#13#10+
      '\pard\b0\par'+#13#10+
      '}';
    WriteLn(tf,s);
  finally
    CloseFile(tf);
  end;

  try
    WinExec('C:\NCI Bank\OK\wordpad.exe "C:\NCI Bank\OK\Temp\rep_ok.rtf"', SW_MAXIMIZE);
  except
    showmessage('Не удалось открыть  "C:\NCI Bank\OK\wordpad.exe C:\NCI Bank\OK\Temp\rep_ok.rtf"');
  end;

end;

procedure TBOKForm.actLichKartaB_rtfExecute(Sender: TObject);
var
  sql_,text11,s: string;
  tf:textFile;
  app: variant;
  where_pers, where_pers_a :string;
  i,k:integer;
begin

    where_pers := ' WHERE branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                  ' AND personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;
    where_pers_a := ' WHERE a.branch = '''+cdsOKPersonal.FieldByName('branch').AsString+''''+
                    ' AND a.personal_code='+cdsOKPersonal.FieldByName('personal_code').AsString;

  try
    AssignFile(tf,'C:\NCI Bank\OK\Templates\rep_ok.rtf');
    Rewrite(tf);

    s:='{\rtf1\ansi\ansicpg1251\deff0\deflang1049{\fonttbl{\f0\froman\fprq2\'+
      'fcharset204{\*\fname Times New Roman;}Times New Roman CYR;}'+
      '{\f1\fswiss\fcharset204{\*\fname Arial;}Arial CYR;}}';
    WriteLn(tf,s);

    s:='{\stylesheet{ Normal;}{\s1 heading 1;}}';
    WriteLn(tf,s);

    s:='\viewkind4\uc1\pard\keepn\nowidctlpar\s1\qc\lang1033\b\f0\fs24 НАЗНАЧЕНИЕ, ПЕРЕМЕЩЕНИЯ ПО РАБОТЕ, ОПЛАТА \par ';
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



    s:='\intbl\b0 N Приказа Основания\cell Подразделение\cell Должность\cell Дата\cell Причина перемещения\cell Разряд\cell Надбавка\cell Оклад\cell Подпись\cell\b\row';
    WriteLn(tf,s);

  sql_:='select a.BASIS_NUM, a.ESTABLISHED_DEPARTMENT,'+
        ' a.ESTABLISHED_POST, to_char(a.basis_date,''dd.mm.yyyy'') b_date,'+
        ' b.BASE_MOVE_NAME,'+
        ' 0, 0, 0'+
        ' from ok_period a, ss_ok_BASE_MOVE b'+
          where_pers_a+
        ' and a.BASE_MOVE_CODE= b.BASE_MOVE_CODE'+
//        ' and a.post_code= b.post_code'+
        ' and b.state_notes='+#39+'A'+#39+
        ' order by a.basis_date';

try
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
      ' СВЕДЕНИЯ ОБ ОТПУСКАХ \par ';
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

    s:='\intbl\b0 Вид отпуска\cell Рабочий год\cell Предоставлен отпуск\cell Продолжительность отпуска\cell Основание\cell ОТМЕТКА ОБ УВОЛЬНЕНИИ\cell\b\row';
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

    s:='\intbl\b0  \cell начало\cell окончание\cell начало\cell окончание\cell  \cell  \cell ..............................\cell\b\row';
    WriteLn(tf,s);










  sql_:='select b.leave_name,a.BEGIN_YEAR,'+
        ' a.END_YEAR,a.DATE_IN_LEAVE,a.DATE_OUT_LEAVE,'+
        ' a.PERIOD_LEAVE,a.MOTIVE_LEAVE'+
        ' from ok_leave a, ss_ok_leave b'+
          where_pers_a+
        ' and a.leave_code= b.leave_code'+
        ' and b.state_notes='+#39+'A'+#39+
        ' order by a.date_in_leave';

try
  LoadData(cdsTempSource,sql_, True);
except
//memo3.Clear;
//memo3.lines.add(sql_);
showmessage(sql_);
raise;
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
    App.Application.Quit(false); // выход из ворда совсем без сохранения
    raise;
//  App.Application.Quit(true); // выход из ворда с сохранением
    showmessage('Не удалось открыть "rep_ok.rtf"');
  end;
  App:=unassigned;


end;

procedure TBOKForm.actStatExecute(Sender: TObject);
begin
//
end;

procedure TBOKForm.Button9Click(Sender: TObject);
//var
//  App : OleVariant;
begin
{
   App := CreateOleObject('Word.Application');
   App.visible:=true;
   App.Documents.Add('c:\tst.doc');

   App.Selection.Find.Execute('@SHORT_NAME', false, false, false, false, false,
                                         true, 1, false, 'TEST_SHORT_NAME1', 1);

   App.Selection.HomeKey(6);
   App.Selection.Find.ClearFormatting;


   App.Selection.Find.Execute('@PREV_DATE', false, false, false, false, false,
                                         true, 1, false, 'TEST_PREV_DATE', 1);


   App.Selection.GoTo(2, 1, 1, '');
   App.Selection.SelectRow;
   App.Selection.Copy;
   App.Selection.Find.Execute('@1', false, false, false, false, false,
                                         true, 1, false, 'TEST1', 1);

   App.Selection.PasteAppendTable;

   App.Selection.Find.Execute('@1', false, false, false, false, false,
                                         true, 1, false, 'TEST2', 1);

   App.Selection.Find.Execute('@SHORT_NAME', false, false, false, false, false,
                                         true, 1, false, 'TEST_SHORT_NAME2', 1);

   App.Selection.GoTo(2, 1, 2, '');
   App.Selection.Move(10,1);
   App.Selection.SelectRow;
   App.Selection.Copy;
             App.Selection.Find.Execute('@bank_id', false, false, false, false, false,
                                         true, 1, false, 'За оборону севастополя 1', 1);

   App.Selection.PasteAppendTable;
             App.Selection.Find.Execute('@bank_id', false, false, false, false, false,
                                         true, 1, false, 'За оборону севастополя 2', 1);

   App.Selection.Find.Execute('@SHORT_NAME', false, false, false, false, false,
                                         true, 1, false, 'TEST_SHORT_NAME3', 1);

//showmessage('*1');
//try
   App.Selection.GoTo(2, 1, 3, '');
//except
//showmessage('*2');
//end;
   App.Selection.Move(10,1);
   App.Selection.SelectRow;
   App.Selection.Copy;

   App.Selection.Find.Execute('@bd', false, false, false, false, false,
                                         true, 1, false, 'TEST3', 1);
   App.Selection.PasteAppendTable;
   App.Selection.Find.Execute('@bd', false, false, false, false, false,
                                         true, 1, false, 'TEST4', 1);

   App.Selection.Find.Execute('@SHORT_NAME', false, false, false, false, false,
                                         true, 1, false, 'TEST_SHORT_NAME4', 1);
   App.ActiveDocument.SaveAs('c:\res.doc');
}
end;

procedure TBOKForm.cdbgOK_PERSONALDblClick(Sender: TObject);
begin

  if actForm.Enabled
  then begin
    actFormExecute(nil);
  end;

end;

procedure TBOKForm.actChangePassportExecute(Sender: TObject);
var erMessage : string;
const
  ERROR_NO = 'ORA-20000: ';
begin

  if (cdsOKPERSONAL.state in dseditmodes)
  then   cdsOKPERSONAL.post;
  
    If fmSaveOKChangePasport = nil Then fmSaveOKChangePasport := TfmOKChangePasport.Create(Self);
    With fmSaveOKChangePasport do
      Begin
  //      Caption := ' Изменение ФИО: ';
        Caption  := 'Код сотрудника: '+cdsOKPersonal.FieldByName('personal_code').AsString;
        lbFamily.Caption     := cdsOKPERSONAL.FieldByName('family').AsString;
        lbName.Caption       := cdsOKPERSONAL.FieldByName('first_name').AsString;
        lbPatronymic.Caption := cdsOKPERSONAL.FieldByName('patronymic').AsString;

        medSeriya.Text := cdsOKPERSONAL.FieldByName('PASS_SERIYA').AsString;
        medNum.Text := cdsOKPERSONAL.FieldByName('PASS_NUM').asString;

        If ShowModal = mrOk Then
        Begin
        end;
      End;

    if ErMessage = ''
    then begin
      fmSaveOKChangePasport.Close;
      fmSaveOKChangePasport := nil;
      cdsOKPersonal.Refresh;

  //    fmSaveOKChangeFIO.Destroy;
    end;


end;

procedure TBOKForm.dbeOK_PASS_NUMKeyPress(Sender: TObject; var Key: Char);
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

procedure TBOKForm.dbeOK_PASS_SERIYAKeyPress(Sender: TObject;
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
        Str_Key:= upperCase( Str_Key ); //  UpperCase не работает для Char
        Key := Str_Key[1];
      end;

      if Key in ['A'..'Z']
      then begin
        is_good_:=true;
      end else begin
        showmessage('Серия паспорта должна быть введена латинскими буквами!');
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

procedure TBOKForm.actAppointNewExecute(Sender: TObject);
begin
  if cdsOKPersonal.FieldByName('status_code').AsString<>'1'
  then begin
    showmessage('Можно принять только нового сотрудника!');
    exit;
  end;

  If fmSaveOKAppoint = nil Then fmSaveOKAppoint := TfmOKAppoint.Create(Self);
  With fmSaveOKAppoint do
    Begin
      Caption:='Назначение';
//      CBArticle.Visible := false;
//      lBArticle.Visible := false;
//      edArticle.Visible := false;

      If ShowModal = mrOk Then
      Begin
//
      End;
  End;
  fmSaveOKAppoint.Close;
  fmSaveOKAppoint := nil;
  cdsOKPersonal.Refresh;


end;

procedure TBOKForm.edDepChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  DBEdPost.Text:='';
  DBLCBpost.ItemIndex:=-1;
  is_found := false;

  if (cdsOKStat.State in dsEditModes)
  then cdsOKStat.cancel;

  for i:=1 to CBDep.Items.Count
  do begin

    if edDep.text = TData(CBDep.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CBDep.ItemIndex := i-1;
      cdsOKStat.Filtered := False;
      cdsOKStat.Filter := 'department_code='+
      TData(CBDep.Items.Objects[CBDep.ItemIndex]).Id;
      cdsOKStat.Filtered := True;
    end;

  end;

  if not is_found
  then begin
    CBDep.ItemIndex := -1;
  end;


end;

procedure TBOKForm.DBEdPostChange(Sender: TObject);
var i : integer;
    is_found : boolean;
    SQLParams:TParams;
    sql_ : string;
    salary_ : double;
begin


  if (not (cdsOKStat.State in dsEditModes))
  and (DBEdPost.text <>'')
  then begin
    showmessage('Не указан отдел'+#13+' или'+#13+'вы не включили кнопку "Новый"!');
    DBEdPost.OnChange := nil;
    DBEdPost.text :='';
    DBEdPost.OnChange := DBEdPostChange;
    exit;
  end;

  is_found := false;

  for i:=1 to DBLCBpost.Items.Count
  do begin
//showmessage(edDep.text +' == '+ TData(DBLCBpost.Items.Objects[ i-1 ]).Id);
    if DBEdPost.text = TData(DBLCBpost.Items.Objects[ i-1 ]).Id
    then begin
      is_found := true;
      DBLCBpost.ItemIndex := i-1;
      cdsOKStat.FieldByName('post_code').AsString :=
        TData(DBLCBpost.Items.Objects[DBLCBpost.ItemIndex]).Id;
  // взять у должности разряд и по разряду подставить оклад
///////
      sql_ := 'select ok_service.GET_POST_Salary( :P_POST_CODE ) from dual';
      SQLParams:=TParams.Create;
      with SQLParams do
        begin
           clear;
           CreateParam(ftInteger,'P_POST_CODE',ptInput);
           ParamByName('P_POST_CODE').Value := cdsOKStat.FieldByName('post_code').asinteger;
        end;
      salary_ :=0;
      try
        salary_ := GetSqlResult(sql_,sqlParams);  // :P
      except on e:exception
        do begin
          showmessage('ошибка запроса'+#13+sql_+#13+e.Message);
        end;
      end;
      cdsOKStat.FieldByName('salary_fact').AsFloat := salary_;

      if salary_=0
      then LbOklad.caption :='(не введен)'
      else LbOklad.caption :='           ';

////////

    end;

  end;

  if not is_found
  then begin
    DBLCBpost.ItemIndex := -1;
  end;

end;

procedure TBOKForm.DBLCBpostChange(Sender: TObject);
var
    SQLParams:TParams;
    sql_ : string;
    salary_ : double;
begin


  if DBLCBpost.itemIndex = -1
  then begin
    exit;
  end else begin

    if not (cdsOKStat.State in dsEditModes)
    then begin
      showmessage('Чтобы начать ввод штатного расписания, нажмите кнопку "Новый"!');
      DBLCBpost.itemIndex := -1;
      exit;
    end;

    cdsOKStat.FieldByName('post_code').AsString :=
      TData(DBLCBpost.Items.Objects[DBLCBpost.ItemIndex]).Id;
    DBEdPost.OnChange := nil;
    DBEdPost.text  := TData( DBLCBpost.Items.Objects[ DBLCBpost.ItemIndex]).Id;
  // взять у должности разряд и по разряду подставить оклад
///////
      sql_ := 'select ok_service.GET_POST_Salary( :P_POST_CODE ) from dual';
      SQLParams:=TParams.Create;
      with SQLParams do
        begin
           clear;
           CreateParam(ftInteger,'P_POST_CODE',ptInput);
           ParamByName('P_POST_CODE').Value := cdsOKStat.FieldByName('post_code').asinteger;
        end;
      salary_ :=0;
      try
        salary_ := GetSqlResult(sql_,sqlParams);  // :P
      except on e:exception
        do begin
          showmessage('ошибка запроса'+#13+sql_+#13+e.Message);
        end;
      end;
      cdsOKStat.FieldByName('salary_fact').AsFloat := salary_;
      if salary_=0
      then LbOklad.caption :='(не введен)'
      else LbOklad.caption :='           ';

////////

    DBEdPost.OnChange := DBEdPostChange  ;

  end;

end;

procedure TBOKForm.CBdepChange(Sender: TObject);
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

procedure TBOKForm.TreeVKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TreeVClick(Sender);

end;

procedure TBOKForm.TreeVClick(Sender: TObject);
var
// is_found : boolean;
//  i : integer;
  w : string;
begin

//  showmessage('TreeV.Selected.Text ='+TreeV.Selected.Text+#13+
//              'TreeV.Selected.data ='+ IntToStr(integer(TreeV.Selected.data))
//  );
  if TreeV.Selected=nil
  then exit;

  if integer(TreeV.Selected.data)<>0
  then begin
    cdsDerevo.Locate('id', Integer(TreeV.Selected.data), []);
    lbDepcode.Caption := cdsDerevo.FieldByname('department_code').AsString;
    LbDepname.Caption := cdsDerevo.FieldByname('department_name').AsString;

//    is_found := false;

//    for i:=1 to cbDepType.Items.Count
//    do begin
//      if cdsDerevo.FieldByname('department_type_code').AsString = TData(cbDepType.Items.Objects[ i-1 ]).Id
//      then begin
//        is_found := true;
//        cbDepType.ItemIndex := i-1;
//      end;
//    end;

//    if not is_found
//    then begin
//      cbDepType.ItemIndex := -1;
//    end;

          cdsOKPersonal.BeforePost := nil;
          cdsOKPersonal.DisableControls;
         if bosslevel='0'
         then
          w := ' where p.branch like '+''''+curBranch+''''+
            ' and (p.department_code='+lbDepcode.Caption+
            ' or p.department_code in '+
                  '(select d.department_code from ss_ok_department d'+
                  ' connect by d.high_dep_code = prior d.department_code'+
                  ' start with d.high_dep_code='+ lbDepcode.Caption+') )'
         else
          w := ' where p.branch='+''''+curBranch+''''+
            ' and (p.department_code='+lbDepcode.Caption+
            ' or p.department_code in '+
                  '(select d.department_code from ss_ok_department d'+
                  ' connect by d.high_dep_code = prior d.department_code'+
                  ' start with d.high_dep_code='+ lbDepcode.Caption+') )';

          LoadData(cdsOKPersonal,  SQL_OKPersonal+w);
          cdsOKPersonal.Close;

  loaddata(cdsSS_OK_GOSUBMIT,'select * from SS_OK_GOSUBMIT');
// добавление смотрящих-выше-полей
  addLookUpField_OkPersonal;
// END добавление смотрящих-выше-полей

          cdsOKPersonal.Open;
          cdsOKPersonal.EnableControls;

          cdsOKPersonal.BeforePost := cdsOK_BeforePost;



  end else begin
// выбран корень дерева
//    edDepartmentcode.text  := '';
//    edDepartmentName.text:= '';
//    edDEPARTMENTNUM.text := '';
//    LbDepname.caption := FiltrLevelName;
//    cbDepType.ItemIndex := -1;
  end;

end;

procedure TBOKForm.actDekretExecute(Sender: TObject);
var erMessage   : string;
    sql_, DepartmentCode, PostCode : string;
    v : variant;
// motive_dismissial_code,  ArticleCode
const
  ERROR_NO = 'ORA-20000: ';
begin

//  if cdsOKPersonal.FieldByName('gender_code').AsString<>'2'
//  then begin
//    showmessage('Не могу отправить в декрет сотрудника!');
//    exit;
//  end;

  if cdsOKPersonal.FieldByName('status_code').AsString<>'2'
  then begin
    showmessage('Можно отправить в отпуск только принятого сотрудника!');
    exit;
  end;

  If fmSaveOKDekret = nil Then fmSaveOKDekret := TfmOKDekret.Create(Self);
  With fmSaveOKDekret do
    Begin
      Caption := ' Декретный отпуск ';
      gbDismiss.Caption  := ' Код сотрудника: '+cdsOKPersonal.FieldByName('personal_code').AsString;
      lbFamily.Caption     := cdsOKPERSONAL.FieldByName('family').AsString;
      lbName.Caption       := cdsOKPERSONAL.FieldByName('first_name').AsString;
      lbPatronymic.Caption := cdsOKPERSONAL.FieldByName('patronymic').AsString;

      DepartmentCode := '';
      sql_ :='select department_name from ss_ok_department '+
                ' where department_code='+cdsOKPERSONAL.FieldByName('Department_Code').AsString+
                ' and state_notes=''A'' ';
      try
          v := GetSQLResult(sql_);
          If not VarIsNull(v) then begin
            DepartmentCode := v;
            lbDepartment.Caption := DepartmentCode;
          end else begin
            //
          end;
      except
//            showmessage('*1'+sql_);
      end;


      PostCode := '';
      sql_:= 'select post_name from ss_ok_post '+
                ' where post_code='+cdsOKPERSONAL.FieldByName('Post_Code').AsString+
                ' and state_notes=''A'' ';
      try
          v := GetSQLResult(sql_);
          If not VarIsNull(v) then begin
            PostCode := v;
            lbPost.Caption := PostCode;
          end else begin
            //
          end;
      except
//            showmessage('*2'+sql_);
      end;

      if cdsOKPost.Active then
      begin
        If cdsOKPost.State in [dsEdit, dsInsert] then cdsOKPost.Cancel;
      end;
      if cdsOKPersonal.Active then
      begin
        If cdsOKPersonal.State in [dsEdit, dsInsert] then cdsOKPersonal.Cancel;
      end;

      If ShowModal = mrOk Then
      Begin

      End;
    End;

  if ErMessage = ''
  then begin
    fmSaveOKDekret.Close;
    fmSaveOKDekret := nil;
//    if (LastPanel = 'DetailsPanel') and (cdsOKPost.Active) then
//      begin
//
//      end;

//    fmSaveOKChangeFIO.Destroy;
  end;
  
end;

procedure TBOKForm.actDekretOutExecute(Sender: TObject);
var erMessage,sql_   : string;
//var  motive_dismissial_code, ArticleCode   : string;
//    sql_, DepartmentCode, PostCode : string;
//    v : variant;
  lbFamily_Caption,lbName_Caption,lbPatronymic_Caption : string;
//  YesOrNo : boolean;
  YourChoice_ : integer;
const
  ERROR_NO = 'ORA-20000: ';
begin

  if cdsOKPersonal.FieldByName('status_code').AsString<>'5'
  then begin
    showmessage('СОТРУДНИК не в декретном отпуске!!!');
    exit;
  end;

//  If Application.MessageBox(PChar('Вы действительно хотите вывести'+
//    ' сотрудника из декретного отпуска?'),
//    PChar('Выход из декрета'), MB_YESNO or MB_ICONQUESTION) = mrNo
//    then exit;


  YourChoice_:= Application.MessageBox(PChar('YES - Переместить на другую должность при выходе из декрета,'+#13+
    'NO - Восстановить в той же должности.'+#13+'CANCEL - Отмена.'),
    PChar('Выход из декрета'), MB_YESNOCANCEL or MB_ICONQUESTION);
  If YourChoice_=mrYes
  Then Begin

  If fmSaveOKAppoint = nil Then fmSaveOKAppoint := TfmOKAppoint.Create(Self);
  With fmSaveOKAppoint do
    Begin
      Caption:='Перемещение при выходе из декрета';
      If ShowModal = mrOk Then
      Begin
//        cdsOKPersonal.Refresh;
      End;
  End;
  fmSaveOKAppoint.Close;
  fmSaveOKAppoint := nil;
//  bCancel.click;
  end;

  If YourChoice_=mrNo
  Then Begin

//  ErMessage:='';
//  lbFamily_Caption     := cdsOKPERSONAL.FieldByName('family').AsString;
//  lbName_Caption       := cdsOKPERSONAL.FieldByName('first_name').AsString;
//  lbPatronymic_Caption := cdsOKPERSONAL.FieldByName('patronymic').AsString;
  try
    sql_:= 'begin param.ClearParam; end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin Param.SetParam(''PERSONAL_CODE'','+
      BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString +'); end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin Param.SetParam(''BRANCH'',info.getbranch); end;';
    BOKForm.execSQL(sql_);
    sql_:= 'begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin OK_SERVICE.DekretOut; end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin Param.ClearParam; end;';
    BOKForm.execSQL(sql_);

    sql_:= 'COMMIT';
    BOKForm.execSQL(sql_);

    BOKForm.cdsOKPersonal.Refresh;
          if     BOKForm.cdsOKPost.Active
          then begin
                BOKForm.cdsOKPost.Refresh;
          end;

        except
          on E: Exception do
            Begin
              ExecSQL('ROLLBACK');
//showmessage(sql_);
              If Pos(ERROR_NO, E.Message) <> 0 Then
                Begin
                  erMessage := Copy(E.Message, Pos(ERROR_NO, E.Message) + Length(ERROR_NO), Length(E.Message));
                  erMessage := Copy(erMessage, 1, Pos(#10, erMessage) - 1);
                  E.Message := StringReplace(E.Message, #13, '', [rfReplaceAll]);
                  E.Message := StringReplace(E.Message, #10, #13#10, [rfReplaceAll]);
                  ShowErrorBox(erMessage,E.Message,Self.Caption);
                End
              Else If pos('ORA-01400', E.Message) > 0 Then ShowMessage('Ошибка при сохранении. Пожалуйста, заполните пустые поля!')
                   else ShowMessage(e.Message);
              exit;
            End;
          end;

  showmessage(lbFamily_Caption+' '+
    lbName_Caption+' '+lbPatronymic_Caption+'. Декретный отпуск закончен.');


  end;
  cdsOKPersonal.Refresh;

end;

procedure TBOKForm.actShuBankdaExecute(Sender: TObject);
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

procedure TBOKForm.PCDetailsChange(Sender: TObject);
begin
    ActDetailUndoExecute(nil);

end;

procedure TBOKForm.dbedHOME_ADDRESSFACTChange(Sender: TObject);
begin
  if (BOKForm.cdsOKPersonal.State in [dsEdit, dsInsert])
  and (chbGluk.checked)
  then begin
    cdsOKPersonal.FieldByName('home_address').AsString := dbedHOME_ADDRESSFACT.Text ;
    cdsOKPersonal.FieldByName('HOME_ADDRESS_REGION_ID').AsString :=
       cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_REGION_ID').AsString ;
    cdsOKPersonal.FieldByName('HOME_ADDRESS_DISTR').AsString :=
       cdsOKPersonal.FieldByName('HOME_ADDRESSFACT_DISTR').AsString ;

  end;

end;

procedure TBOKForm.cdsOKRezervDetailAfterOpen(DataSet: TDataSet);
begin
  If dsOKRezerv.DataSet.Active Then
  Begin
// поставить маску полям типа дата
//    cdsOKRelation.FieldByName('relation_birthday').EditMask  := '!09/09/0099;1;_';
    cdsOKRezervDetail.MasterSource    := dsOKRezerv;
    cdsOKRezervDetail.IndexFieldNames := 'branch;master_id';
    cdsOKRezervDetail.MasterFields    := 'branch;master_id';
  End;

end;

procedure TBOKForm.cdsOKRezervBeforePost(DataSet: TDataSet);
begin

  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  DataSet.Fields.FieldByName('branch').AsString := Branch;

end;

procedure TBOKForm.bbSaveOptionsClick(Sender: TObject);
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

procedure TBOKForm.FormClose(Sender: TObject; var Action: TCloseAction);
var cSql : string;
begin
  inherited;
  if branch <> old_branch
  then begin
        cSql:='alter session set current_schema='+old_schema;
        ExecSQL(cSql);
        ExecSQL('begin info.init; end;');
        branch := old_branch;
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

procedure TBOKForm.edSpecialChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  if (not (cdsOKStat.State in dsEditModes))
  and (edSpecial.text <>'')
  and (cdsOKStat.FieldByName('department_code').AsString='')
  then begin
    showmessage('Не указан отдел'+#13+' или'+#13+'вы не включили кнопку "Новый"!');
    edSpecial.OnChange := nil;
    edSpecial.text :='';
    edSpecial.OnChange := edSpecialChange;
    exit;
  end;

  is_found := false;

  for i:=1 to cbSpecial.Items.Count
  do begin
//showmessage(edDep.text +' == '+ TData(DBLCBpost.Items.Objects[ i-1 ]).Id);
    if edSpecial.text = TData(cbSpecial.Items.Objects[ i-1 ]).Id
    then begin
      is_found := true;
      cbSpecial.ItemIndex := i-1;

      if (not (cdsOKStat.State in dsEditModes))
      then cdsOKStat.Edit;

      cdsOKStat.FieldByName('special_code').AsString :=
        TData(cbSpecial.Items.Objects[cbSpecial.ItemIndex]).Id;
    end;

  end;

  if not is_found
  then begin
    cbSpecial.ItemIndex := -1;
  end;

end;

procedure TBOKForm.cbSpecialChange(Sender: TObject);
begin
  if cbSpecial.itemIndex = -1
  then begin
    exit;
  end else begin

    if not (cdsOKStat.State in dsEditModes)
    and (cdsOKStat.FieldByName('department_code').AsString='')
    then begin
      showmessage('Чтобы начать ввод штатного расписания, нажмите кнопку "Новый"!');
      cbSpecial.itemIndex := -1;
      exit;
    end;

    if (not (cdsOKStat.State in dsEditModes))
    then cdsOKStat.Edit;

    cdsOKStat.FieldByName('special_code').AsString :=
      TData(cbSpecial.Items.Objects[cbSpecial.ItemIndex]).Id;
    edSpecial.OnChange := nil;
    edSpecial.text  := TData( cbSpecial.Items.Objects[ cbSpecial.ItemIndex]).Id;
    edSpecial.OnChange := edSpecialChange  ;
  end;

end;

procedure TBOKForm.actReAcceptExecute(Sender: TObject);
var s : string;
begin

  if ((cdsOKPersonal.FieldByName('status_code').AsString='3') or
      (cdsOKPersonal.FieldByName('status_code').AsString='4') )
  then begin
// FAMILY FIRST_NAME PATRONYMIC
  //  ok_personal.status_code=1
    s:='Перевести сотрудника '+
      cdsOKPersonal.FieldByName('family').AsString+' '+
      cdsOKPersonal.FieldByName('first_name').AsString+' '+
      cdsOKPersonal.FieldByName('patronymic').AsString+' '+
      ' в состояние "Введен"?';

    If Application.MessageBox(PChar(s), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes
    then begin
      cdsOKPersonal.readonly:=false;
      cdsOKPersonal.edit;
      cdsOKPersonal.FieldByName('status_code').AsString:='1';
      cdsOKPersonal.post;
      cdsOKPersonal.readonly:=true;
    end;
  end else begin
    showmessage('Данное действие доступно только для сотрудников со статусом "Уволен" или "Не принят".');
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

procedure TBOKForm.actFindDepExecute(Sender: TObject);
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
    showmessage('Не найдено отдела, для которого'+#13+
      'код отдела '+edDepartmentcodeNew.Text+#13+
      'или наименование отдела '+edDepartmentNameNew.Text+#13+
      'или номер отдела '+edDEPARTMENTNUMnew.TEXT +#13 );

   end else begin
    if BOKForm.chbsavefiltr.checked
    then begin
    With BOKForm.Registry do
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

procedure TBOKForm.edDepFindKeyDown(Sender: TObject;
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

procedure TBOKForm.actIIASExecute(Sender: TObject);
begin
  LastPanel := 'IIASPanel';
  pcmainok.ActivePage := IIASPanel_;

  actiias.Checked := true;

  actREPORTS.Checked     := False ;
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

procedure TBOKForm.dblcbS_STRCloseUp(Sender: TObject);
begin

         cdsOKVoyage.FieldByName('VOYAGE_LAND').AsString:=
           cdsOKVoyage.FieldByName('voyage_str_show').AsString;

end;

procedure TBOKForm.actShowPhotoExecute(Sender: TObject);
var sql_ : string;
begin
  if cdsOKPhoto.Active then
  Begin
    cdsOKPhoto.close;
  End;
  sql_:=  SQL_OKPhoto+' where e.branch='''+cdsOKPersonal.fieldbyname('branch').asstring+''''+
    ' and e.personal_code='+cdsOKPersonal.fieldbyname('personal_code').asstring ;

  try
    LoadData(cdsOKPhoto, sql_);
  Except
   on E: Exception do
     begin
       ShowMessage(SQL_+#13+' Ошибка '+#13+E.Message);
     end;
  End;

  if ( cdsOKPhoto.recordcount<1 ) and (sender=actShowPhoto)
  then showmessage('Фото отсутствует.');

end;

procedure TBOKForm.BitBtn116Click(Sender: TObject);
var bmp:  TBitmap;
begin
  memobmp.clear;
  loaddata(cdsTemp,'select * from ok_personal '+
   ' where branch = '+''''+curBranch +''''+
   ' and status_code in (2,5) order by branch,nn');
  cdsTemp.First;
  while not  cdsTemp.Eof
  do begin
  loaddata(cdsokphotobmp,'SELECT /*+ INDEX (e OK_PHOTO_PK)*/ a.*,  e.PHOTO, '+
    ' lpad(to_char(nvl(a.nn,99)),2,''0'') pers '+
    ' FROM ok_personal a,ok_photo e '+
    ' where a.branch=e.branch and a.personal_code=e.personal_code '+
    ' and a.branch= '+ cdsTemp.fieldbyname('branch').asstring+
    ' and a.personal_code='+cdsTemp.fieldbyname('personal_code').asstring);

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
                memobmp.lines.add('нет фото '+ cdstemp.fieldbyname('branch').asstring+'_'+
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

procedure TBOKForm.cdsokhospitalAfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.TabSheet_21Show(Sender: TObject);
begin
  if cdsokhospital.Active then
  Begin
    Exit;
  End;

  LoadData(cdsokhospital, SQL_okhospital+' where branch = '+''''+curBranch +'''');

// 1. lookup поля - если есть :)
  cdsokhospital.Close;
  cdsokhospital.DisableControls;

// 2. проверка датасетов-списков
  if not cdsSSokhospital_Set.Active
  then LoadData(cdsSSokhospital_Set, SQL_SSokhospital_Set);

// 3. Добавление lookup полей
  addLookUpField(cdsokhospital, cdsSSokhospital_Set, 'hospital_code_show', 'hospital_code', 'hospital_code', 'hospital_name', True);
  addLookUpField(cdsokhospital, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsokhospital.Open;
  cdsokhospital.EnableControls;

end;

procedure TBOKForm.cdsOkvoyageAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsOkvoyage.MasterSource    := dsOKPersonal;
    cdsOkvoyage.IndexFieldNames := 'branch;personal_code';
    cdsOkvoyage.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.EnterKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Case Key of
    VK_RETURN:
      begin
        SelectNext(ActiveControl, True, True);
      end;
  end;

end;

procedure TBOKForm.dbedHospitalDateOpenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var sql_:string;
begin
  Case Key of
    VK_RETURN:
      begin
// подсчитать стаж
        SelectNext(ActiveControl, True, True);
        sql_:='select ok_service.get_work_period('''+branch+''','+
            cdsokpersonal.fieldbyname('personal_code').asstring+','+
            'to_date('''+cdsokhospital.fieldbyname('date_open').asstring+''',''dd.mm.yyyy'') ) from dual';
        if not (cdsokhospital.state in [dsEdit])
        then cdsokhospital.edit;
        try
          cdsokhospital.fieldbyname('work_period').asstring:=
            getsqlresult(sql_);
        except on e:exception
          do begin
            showmessage(sql_+#13+e.message);
            SelectNext(ActiveControl, FALSe, True);

          end;
        end;
      end;
  end;

end;

procedure TBOKForm.dbedHospitalDateCloseKeyDown(Sender: TObject; var Key: Word;
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

// подсчитать поле 5   . "Фактическое кол-во дней"  - рассчитать от даты открытия до даты закрытия в днях
        if cdsokhospital.fieldbyname('date_open').asdatetime>
           strtodate(dbedHospitalDateClose.text)
        then begin
          showmessage('дата закрытия '+dbedHospitalDateClose.text +
             'должна быть больше даты открытия'+ cdsokhospital.fieldbyname('date_open').asstring);
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
          sql_:='select count(*) from Z_DN where pr=0 '+
            ' and dn>= to_date('''+cdsokhospital.fieldbyname('date_open').asstring+''',''dd.mm.yyyy'')'+
            ' and dn<= to_date('''+dbedHospitalDateClose.text+''',''dd.mm.yyyy'')'+
            ' and to_char(dn,''D'') not in (7,1)';
          number_day_:=number_day_- (getsqlresult( sql_ ));
        except on e:exception
          do begin
            showmessage(e.Message+#13+sql_);
          end
        end;
//showmessage(floattostr(number_day_));
        cdsokhospital.fieldbyname('number_day').asstring :=floattostr(number_day_);

// подсчитать поле 7 из справочника в зависимости от стажа или от больничного
        if cdsokhospital.fieldbyname('work_period').asstring=''
        then begin
// подсчитать стаж
          sql_:='select ok_service.get_work_period('''+branch+''','+
              cdsokpersonal.fieldbyname('personal_code').asstring+','+
              'to_date('''+cdsokhospital.fieldbyname('date_open').asstring+''',''dd.mm.yyyy'') ) from dual';
          if not (cdsokhospital.state in [dsEdit])
          then cdsokhospital.edit;
          try
            cdsokhospital.fieldbyname('work_period').asstring:=
              getsqlresult(sql_);
          except on e:exception
            do begin
              showmessage(sql_+#13+e.message);
            end;
          end;
        end;
        sql_:='select percentage from ss_ok_hospital '+
          ' where hospital_code='+cdsokhospital.fieldbyname('hospital_code').asstring+
          ' and work_period_from<= '+copy( cdsokhospital.fieldbyname('work_period').asstring ,1,2)+
          ' and work_period_to> '+copy( cdsokhospital.fieldbyname('work_period').asstring ,1,2);
        try
          cdsokhospital.fieldbyname('percentage').asstring:=
            getsqlresult(sql_);
        except on e:exception
          do begin
            showmessage(sql_+#13+e.message);
            SelectNext(ActiveControl, FALSe, True);
          end;
        end;
      end;
  end;

end;

procedure TBOKForm.cdsokprivilegeAfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.TabSheet_22Show(Sender: TObject);
begin
  if cdsokprivilege.Active then
  Begin
    Exit;
  End;

  LoadData(cdsokprivilege, SQL_okprivilege+' where branch = '+''''+curBranch +'''');
  LoadData(cdsSSokprivilege_SET, SQL_SSokprivilege_SET);

// 1. lookup поля - если есть :)
  cdsokprivilege.Close;
  cdsokprivilege.DisableControls;

// 2. проверка датасетов-списков

// 3. Добавление lookup полей
  addLookUpField(cdsokprivilege, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);
  addLookUpField(cdsokprivilege, cdsSSokprivilege_SET, 'privilege_view', 'privilege_code', 'privilege_code', 'privilege_name', False);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsokprivilege.Open;
  cdsokprivilege.EnableControls;

end;

procedure TBOKForm.TabSheet_23Show(Sender: TObject);
begin
  if cdsokincrease.Active then
  Begin
    Exit;
  End;

  LoadData(cdsssokincrease_set, SQL_ssokincrease_SET);
  LoadData(cdsokincrease, SQL_okincrease+' where branch = '+''''+curBranch +'''');

// 1. lookup поля - если есть :)
  cdsokincrease.Close;
  cdsokincrease.DisableControls;

// 2. проверка датасетов-списков

// 3. Добавление lookup полей
  addLookUpField(cdsokincrease, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);
  addLookUpField(cdsokincrease, cdsSSokincrease_Set, 'increase_code_show', 'increase_code', 'increase_code', 'increase_name', false);

//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsokincrease.Open;
  cdsokincrease.EnableControls;

//  SQL_ssokincrease_SET

end;

procedure TBOKForm.cdsokincreaseAfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.actTabelExecute(Sender: TObject);
begin
  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actREPORTS.Checked     := False ;
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

  pc.ActivePage:=TabTabel;
  ActDetailUndoExecute(nil);

  loaddata(cdsTabel,'select a.* from ok_tabel a where branch='''+curbranch+''' and tabel_month='+copy(medbankdate.text,4,2)+' and tabel_year='+copy(medbankdate.text,7,4)+' order by department_code,nn' );

end;

procedure TBOKForm.addLookUpField_OkPersonal;
begin
// добавление смотрящих-выше-полей
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

//  GENDER_CODE 	NUMBER (1) not null,	-- 'Пол сотрудника	Выбирается  из системного справочника SS_OK_GENDER, поле GENDER_CODE В отчетную форму выводится наименование пола, видимое поле, обязательное для заполнения'
  addLookUpField(cdsOKPersonal, cdsSSokgender_Set, 'GENDER_SHOW', 'GENDER_CODE', 'GENDER_CODE', 'GENDER_NAME', False);

// здесь distr
//  ShowMessage(cdsSDistrRO2.Fields[0].Value+' '+cdsSDistrRO2.Fields[1].Value+' '+IntToStr(cdsSDistrRO2.RecordCount));
  addLookUpField(cdsOKPersonal, cdsSDistrRO2, 'DISTR_SHOW', 'DISTR', 'DISTR', 'DISTR_NAME', False);
  addLookUpField(cdsOKPersonal, cdsSRegionRO2, 'REGION_SHOW', 'REGION_ID', 'REGION_ID', 'REGION_NAM', False);

  if not cds_Region.Active then LoadData(cds_Region, SQL_Sregion);
  if not cds_distr.Active then LoadData(cds_distr, SQL_Sdistr);
  addLookUpField(cdsOKPersonal, cds_Region, 'HOME_ADDRESSFACT_REGION_ID_SHOW', 'HOME_ADDRESSFACT_REGION_ID', 'REGION_ID', 'REGION_NAM', False);
  addLookUpField(cdsOKPersonal, cds_Region, 'HOME_ADDRESS_REGION_ID_SHOW', 'HOME_ADDRESS_REGION_ID', 'REGION_ID', 'REGION_NAM', False);

  addLookUpField(cdsOKPersonal, cds_distr, 'HOME_ADDRESS_DISTR_SHOW', 'HOME_ADDRESS_DISTR', 'DISTR', 'DISTR_NAME', False);
  addLookUpField(cdsOKPersonal, cds_distr, 'HOME_ADDRESSFACT_DISTR_SHOW', 'HOME_ADDRESSFACT_DISTR', 'DISTR', 'DISTR_NAME', False);

//NATIONALITY_CODE	NUMBER(3) not null, 	-- 'Код национальности 	Выбирается из справочника SS_OK_NATIONALITY  поле NATIONALITY_CODE, видимое поле, обязательное для заполнения'
  addLookUpField(cdsOKPersonal, cdsSSOkNationality_Set, 'NATIONALITY_SHOW', 'NATIONALITY_CODE', 'NATIONALITY_CODE', 'NATIONALITY_NAME', False);

//FAMILIY_STATUS_CODE	NUMBER(1) not null, -- 'Код семейного положения	Выбирается из справочникаSS_OK_FAMILY_STATUSполе FAMILY_STATUS_CODE, видимое поле, обязательное для заполнения'
  addLookUpField(cdsOKPersonal, cdsSSOkFamilyStatus_Set, 'FAMILY_STATUS_SHOW', 'FAMILY_STATUS_CODE', 'FAMILY_STATUS_CODE', 'FAMILY_STATUS_NAME', False);

//REG_TYPE_CODE	NUMBER(1) not null,	-- 'Код типа прописки	Выбирается из справочника SS_OK_REGISTRATION_TYPE, видимое поле, обязательное для заполнения'
  addLookUpField(cdsOKPersonal, cdsSSOkRegType_Set, 'REG_TYPE_SHOW', 'REG_TYPE_CODE', 'REG_TYPE_CODE', 'REG_TYPE_NAME', False);

// статус сотрудника SS_OK_STATUS
  addLookUpField(cdsOKPersonal, cdsSSOkSTATUS_Set, 'STATUS_SHOW', 'STATUS_CODE', 'STATUS_CODE', 'STATUS_NAME', False);

// профсоюз
  addLookUpField(cdsOKPersonal, cdsSSOkProfmember_Set, 'Profmember_SHOW', 'Profmember', 'Profmember', 'Profmember_NAME', False);
//  addLookUpField(cdsOKPersonal, cdsSSOkLeave_Set, 'Leave_SHOW', 'leave_code', 'leave_code', 'leave_NAME', False);

  addLookUpField(cdsOKPersonal, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', False);
// END добавление смотрящих-выше-полей
end;

procedure TBOKForm.BitBtn129Click(Sender: TObject);
begin
  showmessage('distr='+cdsokpersonal.fieldbyname('distr').asstring+#13+
    'region_id='+cdsokpersonal.fieldbyname('region_id').asstring );
//  if cdsokpersonal.State in [dsedit]
//  then showmessage('да')
//  else  showmessage('нет');
end;

procedure TBOKForm.Button19Click(Sender: TObject);
var App:      OLEVariant;
  Text_i, Text_iB: string;
//  Text1a,Text2a,Text3a,Text4a,Text5a,Text6a,Text7a,Text8a,Text9a,Text10a: string;
//  Text11a, Text12a, Text13a: string;
  ErMes, Text1,Text2, Text22: string;
  texth3, sql_,where_pers, where_pers_a : string;
  TextDD,TextMM,TextYYYY :string;
  DaysInAMonth_,i,k:integer;
    Save_Cursor:TCursor;
  text1_1,text2_1,text1_3,text2_3, S_,old_department_name, tabelDate :string;
begin
// в ворд
    tabelDate:=medbankdate.Text;
    DaysInAMonth_:=DaysInAMonth(strtoint(copy(tabelDate,7,4)),strtoint(copy(tabelDate,4,2)));
  sql_:='select tabel_name,department_name, rpad(fio,22,'' '') fio, lpad(tabno,5,'' '') tabno,'+
    ' lpad( trim(to_char(salary,''999.99'')),9,'' '') salary, rpad(post_name,20,'' '') post_name,'+
    'day01,day02,day03,day04,day05,day06,day07,day08,day09,day10,'+
    'day11,day12,day13,day14,day15,day16,day17,day18,day19,day20,'+
    'day21,day22,day23,day24,day25,day26,day27,day28,day29,day30,day31,'+
    'lpad( work_days||''  '',7,'' '') work_days,'+
    'lpad( trim(to_char(work_hours,''999.99''))||''  '',7,'' '') work_hours,'+
    'lpad(work_holidays||''  '',7,'' '') work_holidays, lpad(dekret_days,7,'' '') dekret_days,'+
    'lpad(business_tour_days||''  '',7,'' '') business_tour_days,'+
    'lpad( ill_days||''  '',7,'' '') ill_days, lpad(vacation_days||''  '',7,'' '') vacation_days,'+
    ' lpad(educational_vacation_days||''  '',7,'' '') educational_vacation_days,'+
    ' lpad(nosalary_vacation_days||''  '',7,'' '') nosalary_vacation_days '+
    ' from ok_tabel '+
    ' where branch='''+curbranch+''' '+
    ' and tabel_month='+copy(tabelDate,4,2)+' and tabel_year='+copy(tabelDate,7,4)+
//      ' and rownum<3'+
      ' order by department_code,nn';
  try
    loaddata(cdsTabel,sql_ );
  except on e:exception
    do begin
      showmessage(sql_);
//      memo3.lines.add(sql_);
    end;
  end;


    text1_1:= '  No  Фамилия И.О.            Таб.  Оклад        Должность        ';
    text2_1:= ' п.п.                          No                                 ';
//             12345_1234567890123456789012_12345_123456789_12345678901234567890_
    text1_3:= 'Отр.    Отр.    Отр.    Дни в   Дни в   Дни по  Дни в   Дни в   Дни без';
    text2_3:= 'дней    часов   вых.дн  декр.   команд   Б/Л     отп.   уч отп  сохр.оо';
//             1234567_1234567_1234567_1234567_1234567_1234567_1234567_1234567_1234567

    case DaysInAMonth_ of
    28:begin
         text1 := text1_1+'                         Т а б е л ь                    '+text1_3;
         text2 := text2_1+'1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 '+text2_3;
            cdbgtabel.columns[39].Visible:=false;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
       end;
    29:begin
         text1:=text1_1+'                         Т а б е л ь                      '+text1_3;
         text2:=text2_1+'1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 '+text2_3;
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
       end;
    30:begin
         text1:=text1_1+'                         Т а б е л ь                        '+text1_3;
         text2:=text2_1+'1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 '+text2_3;
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=false;
       end;
    31:begin
         text1:=text1_1+'                       Т а б е л ь                            '+text1_3;
         text2:=text2_1+'1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 '+text2_3;
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=TRUE;
       end;
    end;

  ErMes := '';

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  if (not fileexists('C:\NCI Bank\Ok\Templates\pril05.doc'))
  and  (not fileexists(GetCurrentDir_templates+'\pril05.doc'))
  then showmessage('не найден файл C:\NCI Bank\Ok\Templates\pril05.doc'+#10#13+
               ' и не найден файл '+GetCurrentDir_templates+'\pril05.doc' )
  else
  TRY
    { Do some lengthy operation }

    App := PrepareOle( 'pril05.doc' ,'Word.Application');
//   App.visible:=true;


    If VarIsNull(App) Then
    begin
      showmessage('Приложение ''Word'' не может открыть файл C:\NCI Bank\Ok\Templates\pril05.doc .' +#10#13+
           ' и не найден файл '+GetCurrentDir_templates+'\pril05.doc' +#10#13+
      'Пожалуйста проверьте наличие этого файла.' );
      Exit;
    end;
//App.Visible:=true;
    try

      App.Selection.Find.Execute('<TEXTH1>', false, false, false, false, false,
             true, 1, false, cdstabel.fieldbyname('TABEL_NAME').asstring, 2);

      text_i := '';
      text_iB := '';
      ErMes:='Табель';

    //  row:=1;
      sql_ := 'App.Selection.GoTo(2, 1, 4, '''');';
    //  App.Selection.GoTo(2, 1, 4, '');
    //showmessage('1') ;
      App.Selection.GoTo(2, 1, 4, '');

      sql_:='App.Selection.SelectRow;';
    //showmessage('2') ;
      App.Selection.SelectRow;

      sql_:='App.Selection.Copy;';
    //showmessage('3') ;
      App.Selection.Copy;

      k:=cdstabel.RecordCount;
      cdsTabel.DisableControls;
      cdstabel.Last;
    //  While not cdstabel.eOF do
    //    begin
    //      cdstabel.Next;
    //    end;
      S_ :=uppercase('*fio*'+'*tabno*'+'*salary*'+'*post_name*'
            +'*day01*'+'*day02*'+'*day03*'+'*day04*'+'*day05*'+'*day06*'+'*day07*'+'*day08*'+'*day09*'+'*day10*'
            +'*day11*'+'*day12*'+'*day13*'+'*day14*'+'*day15*'+'*day16*'+'*day17*'+'*day18*'+'*day19*'+'*day20*'
            +'*day21*'+'*day22*'+'*day23*'+'*day24*'+'*day25*'+'*day26*'+'*day27*'+'*day28*'+'*day29*'+'*day30*'+'*day31*'
            +'*work_days*'+'*work_hours*'+'*work_holidays*'+'*dekret_days*'+'*business_tour_days*'
            +'*ill_days*'+'*vacation_days*'+'*educational_vacation_days*'+'*nosalary_vacation_days*');

      While not cdstabel.bOF
      do begin
          text22:= rightstr('   '+inttostr(k)+'.',5);
          k:=k-1;
          for i:=0 to cdbgtabel.Columns.Count-1
          do begin
//              text22 := text22+' '+cdbgtabel.Columns[i].FieldName;
            if cdbgtabel.Columns[i].visible
            then begin
              if Pos( uppercase('*'+cdbgtabel.Columns[i].FieldName+'*')  ,S_)>0
              then
              text22 := text22+' '+cdbgtabel.fields[i].AsString;
//              text22 := text22+' '+uppercase('*'+cdbgtabel.Columns[i].FieldName+'*')+cdbgtabel.fields[i].AsString;
            end;
          end;
          if length(text22)>250 then text22:=copy(text22,1,255);
  //        showmessage(text22) ;
          sql_ :=inttostr(length(text22));
          App.Selection.Find.Execute('<TEXT22>', false, false, false, false, false,
                                           true, 1, false, text22, 1);
  //        sql_ := 'App.Selection.InsertRows(1);';
  //        App.Selection.InsertRows(1);
          sql_ := 'App.Selection.paste;';
          App.Selection.Paste;

          old_department_name:= cdstabel.FieldByName('department_name').asstring;
          cdstabel.prior;
          if  old_department_name<> cdstabel.FieldByName('department_name').asstring
          then begin
            App.Selection.Find.Execute('<TEXT22>', false, false, false, false, false,
                                             true, 1, false, old_department_name, 1);
            sql_ := 'App.Selection.paste;';
            App.Selection.Paste;

          end;

      end;
          old_department_name:= '                                                                      '+
                     cdstabel.FieldByName('department_name').asstring;
          App.Selection.Find.Execute('<TEXT22>', false, false, false, false, false,
                                           true, 1, false, old_department_name, 1);
  //        sql_ := 'App.Selection.InsertRows(1);';
  //        App.Selection.InsertRows(1);
          sql_ := 'App.Selection.paste;';
          App.Selection.Paste;

// 2 Строка таблицы
      App.Selection.Find.Execute('<TEXT22>', false, false, false, false, false,
                                         true, 1, false, text2, 1);
        sql_ := 'App.Selection.paste;';
        App.Selection.Paste;
// 1 Строка таблицы
      App.Selection.Find.Execute('<TEXT22>', false, false, false, false, false,
                                         true, 1, false, text1, 1);

// до этой команды приложение word работает в фоновом режиме
      App.visible:=true;
      App.ActiveDocument.SaveAs('"C:\NCI Bank\Ok\Templates\temp.doc"');

    except on e:exception
    do
      begin
//  App.ActiveDocument.SaveAs('"C:\NCI Bank\Ok\Templates\temp.doc"');
        App.Application.Quit(false); // выход из ворда совсем без сохранения
        showmessage(e.Message+#13+ermes+#13+sql_);
//  App.Application.Quit(true); // выход из ворда с сохранением
//  V.Quit(false); // выход из ексцеля совсем без сохранения

        raise;
      end;
    end;

    App := unassigned;
//  V := unassigned;
//        App.Selection.EndKey(6);
//    App.ActiveDocument.Range.InsertAfter('one' +#9+ 'two' +#9+ 'three'+#10);
//    App.ActiveDocument.Range.ConvertToTable(Separator:=Chr(9), NumRows:=1, NumColumns:=3);

  FINALLY
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    cdsTabel.ENableControls;
  END;

end;

procedure TBOKForm.Button17Click(Sender: TObject);
var curr_m, next_m, curr_y, next_y, sql_ ,otpusk_char: string;
  I, Day, Time, Bd, Ed,DaysInAMonth_ : Word;
  DatTmp : TdateTime;
  //HolDay,
  D, SqlT, T, Tmp, Clock : String;
  TabelDate : string;
begin
//showmessage(inttostr(Dayofweek(now)));
  TabelDate:=medBankDate.text;
  GB_tabel_date.caption := ' Табель '+TabelDate;

    if not(cdsTabel.Active)
    then   loaddata(cdsTabel,'select a.* from ok_tabel a where branch='''+curbranch+''' and tabel_month='+copy(TabelDate,4,2)+' and tabel_year='+copy(TabelDate,7,4)+' order by department_code,nn' );
    curr_m:= copy(TabelDate,4,2)  ;
    curr_y:= copy(TabelDate,7,4)  ;
    if curr_m='12'
    then begin
      next_m:='01';
      next_y:= inttostr(strtoint(curr_y)+1);
    end else begin
      next_m:= inttostr(strtoint(curr_m)+1);
      next_y:=  curr_y;
    end;

//    DaysInAMonth_:=DaysInAMonth(strtoint(curr_y),strtoint(curr_m));
    DaysInAMonth_:=DaysInAMonth(strtoint(curr_y),strtoint(curr_m));
{
    case DaysInAMonth_ of
      28: begin
            cdbgtabel.columns[39].Visible:=false;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      29: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      30: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=false;
          end;
      31: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=TRUE;
          end;
    end;
}
// СТАВКА рабочего времени, менять всем где не цифра 8
    sql_:='select * from ok_zp_rate where branch='''+curbranch+''''+
      ' and ZP_RATE_CODE <>8'+
      ' AND ( (ZP_RATE_DATE <=TO_DATE(''01.'+COPY(TABELDATE,4,7)+''',''DD.MM.YYYY'')'+
             ' and (ZP_RATE_DATE_END is null or ZP_RATE_DATE_END >= TO_DATE(''01.'+COPY(TABELDATE,4,7)+''',''DD.MM.YYYY'') ) )'+
         ' or (ZP_RATE_DATE >TO_DATE(''01.'+COPY(TABELDATE,4,7)+''',''DD.MM.YYYY'')'+
             ' and (ZP_RATE_DATE_END is null or ZP_RATE_DATE_END >= TO_DATE(''01.'+COPY(TABELDATE,4,7)+''',''DD.MM.YYYY'') ) )'+
           ')';
memo3.lines.add(sql_);
    try
      loaddata(cdsTabelLeave,sql_);
    Except on e:exception
      do begin
        execsql('rollback');
        ShowMessage(sql_+#13+e.message);
      end;
    End;

    cdsTabelLeave.first;
    while not cdsTabelLeave.eof
    do begin
memo3.lines.add('personal_code='+cdsTabelLeave.fieldbyname('personal_code').asstring) ;
      otpusk_char:=cdsTabelLeave.fieldbyname('zp_rate_code').asstring;

        DatTmp := StrToDate('01.'+copy(TabelDate,4,7));
//        D := Copy('01.'+copy(TabelDate,4,7),4,2);
        D := '01.'+copy(TabelDate,4,7) ;
        Day := 0;
        Time := 0;
        SqlT := 'Update ok_Tabel Set ';
        T := '';
        Bd := 0;
        Ed := DaysInAMonth_-1;
        If Copy(cdsTabelLeave.FieldByName('ZP_RATE_DATE').AsString,4,7) = D Then
          Bd := StrToInt(Copy(cdsTabelLeave.FieldByName('ZP_RATE_DATE').AsString,1,2)) - 1;
        If Copy(cdsTabelLeave.FieldByName('ZP_RATE_DATE_END').AsString,4,7) = D Then
          Ed := StrToInt(Copy(cdsTabelLeave.FieldByName('ZP_RATE_DATE_END').AsString,1,2)) - 1;

        For I := Bd to Ed do
        Begin
//          If Copy(DateToStr(DatTmp + I),4,7) = D Then
            If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
            Then begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''*''';   // выходной
                SqlT := SqlT + T + Tmp;
                T := ',';
            end Else begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = '''+otpusk_char+'''';  // отпуск
                SqlT := SqlT + T + Tmp;
                T := ',';
            end;
//          Else
//              Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''?''';
        End;


        sql_:=SqlT + ' Where branch='''+branch+''' '+
        ' and personal_Code = ' + cdsTabelLeave.FieldByName('personal_CODE').AsString+
        ' and TABEL_MONTH='+curr_m+' and TABEL_YEAR='+curr_y ;
memo3.lines.add(sql_);
        try
          if SqlT <> 'Update ok_Tabel Set '
          then execsql(sql_);
        Except on e:exception
          do begin
            execsql('rollback');
            ShowMessage('ставка рабочего времени'+#13+sql_+#13+e.message);
          end;
        End;

      cdsTabelLeave.next;
    end;

    try
      execSql('commit');
    except on e:exception
      do begin
        execSql('rollback');
        showmessage(e.message);
      end;
    end;

// end СТАВКА рабочего времени, менять всем где не цифра 8

// ОТПУСК
    sql_:='select * from ok_leave where branch='''+curbranch+''''+
      ' and LEAVE_CODE <>4'+
      ' and LEAVE_CODE <>7'+
      ' and ((DATE_IN_LEAVE>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
          ' and DATE_IN_LEAVE<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )'+
      ' or (DATE_OUT_LEAVE>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'') '+
          ' and (DATE_OUT_LEAVE is null or DATE_OUT_LEAVE<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'')) )'+
      ' or (DATE_IN_LEAVE<to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'') '+
          ' and (DATE_OUT_LEAVE is null or DATE_OUT_LEAVE>=to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'')) ) )'+
          ' order by personal_code,DATE_IN_LEAVE';
    try
      loaddata(cdsTabelLeave,sql_);
//memo3.lines.add(sql_);
    Except on e:exception
      do begin
//memotest.lines.add(sql_);
        execsql('rollback');
        ShowMessage('отпуск'+#13+sql_+#13+e.message);
//exit;
      end;
    End;

    cdsTabelLeave.first;

    while not cdsTabelLeave.eof
    do begin
//memo3.lines.add('personal_code='+cdsTabelLeave.fieldbyname('personal_code').asstring) ;

//--1	Мехнат таътили рабочий
//--2	Ўкув таътили учебный
//--3	Иш хаки сакланмаган неоплач
//--4	Ижтимоий таътил ?
//--5	Декрет декретный
      otpusk_char:='?';
        case cdsTabelLeave.fieldbyname('leave_code').asinteger of
         1:otpusk_char:='О';
         2:otpusk_char:='У';
         3:otpusk_char:='#';
         4:otpusk_char:='#';
         5:otpusk_char:='Д';
         6:otpusk_char:='#';
         8:otpusk_char:='#';
        end;

        DatTmp := StrToDate('01.'+copy(TabelDate,4,7));
//        D := Copy('01.'+copy(TabelDate,4,7),4,2);
        D := copy(TabelDate,4,7); // месяц.год
// ?        HolDay := SelOneCol('Select Prim From Pers_Setup Where Id Like ''600%''');
        Day := 0;
        Time := 0;
        SqlT := 'Update ok_Tabel Set ';
        T := '';
        Bd := 0;
        Ed := DaysInAMonth_-1;
        If Copy(cdsTabelLeave.FieldByName('DATE_IN_LEAVE').AsString,4,7) = D Then
          Bd := StrToInt(Copy(cdsTabelLeave.FieldByName('DATE_IN_LEAVE').AsString,1,2)) - 1;
        If Copy(cdsTabelLeave.FieldByName('DATE_OUT_LEAVE').AsString,4,7) = D Then
          Ed := StrToInt(Copy(cdsTabelLeave.FieldByName('DATE_OUT_LEAVE').AsString,1,2)) - 1;
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add('Bd='+inttostr(Bd)+'   ed='+inttostr(ed));

        For I := Bd to Ed do
        Begin
//memo3.lines.add('bd='+inttostr(bd)+'   '+'ed='+inttostr(ed)+'   '+'i='+inttostr(i)) ;
//memo3.lines.add('Copy(DateToStr(DatTmp + I),4,2)='+Copy(DateToStr(DatTmp + I),4,2) +'   '+' D='+ D) ;

// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add('Copy(DateToStr(DatTmp + I),4,2)='+Copy(DateToStr(DatTmp + I),4,2));
          If Copy(DateToStr(DatTmp + I),4,7) = D Then
//            If  (DayOfWeek(DatTmp + I) = 7) Then
            If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
            Then begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''*''';   // выходной
                SqlT := SqlT + T + Tmp;
                T := ',';
            end Else begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = '''+otpusk_char+'''' ; // отпуск
                SqlT := SqlT + T + Tmp;
                T := ',';
            end;
//          Else
//              Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''8''';
        End;


        sql_:=SqlT + ' Where branch='''+branch+''' '+
        ' and personal_Code = ' + cdsTabelLeave.FieldByName('personal_CODE').AsString+
        ' and TABEL_MONTH='+curr_m+' and TABEL_YEAR='+curr_y ;
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add(sql_);
        try
//memo3.lines.add('SqlT='+SqlT) ;
//memo3.lines.add('Sql_='+sql_) ;
          if SqlT <> 'Update ok_Tabel Set '
          then execsql(sql_);
        Except on e:exception
          do begin
//memotest.lines.add(sql_);
            execsql('rollback');
          loaddata(cdsTemp,'select * from ok_personal Where branch='''+branch+''' '+
        ' and personal_Code = ' + cdsTabelLeave.FieldByName('personal_CODE').AsString);
           ShowMessage('сотрудник '+
           cdsTemp.fieldbyname('FAMILY').asstring+' '+
           cdsTemp.fieldbyname('FIRST_NAME').asstring+' '+
           cdsTemp.fieldbyname('PATRONYMIC').asstring+#13+
                otpusk_char+'=буква отпуска  '+
                ' в отпуск '+cdsTabelLeave.FieldByName('DATE_IN_LEAVE').AsString+
                ' из отпуска '+cdsTabelLeave.FieldByName('DATE_OUT_LEAVE').AsString+
                ' в текущем периоде (месяц.год)=('+D+') с '+inttostr(bd)+' по '+inttostr(ed)+#13+
                sql_+#13+e.message);
//exit;
          end;
        End;

      cdsTabelLeave.next;
    end;

    try
//      execSql(sql_);
      execSql('commit');
    except on e:exception
      do begin
        execSql('rollback');
        showmessage(e.message);
      end;
    end;
// end ОТПУСК

/////////////// отзыв

    sql_:='select * from ok_leave where branch='''+curbranch+''''+
      ' and (date_recall_begin>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
          ' and date_recall_begin<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )'+
      ' or (date_recall_end>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'') '+
          ' and date_recall_end<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )'+
      ' or (date_recall_begin<to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'') '+
          ' and date_recall_end>=to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )';
    try
      loaddata(cdsTabelLeave,sql_);
    Except on e:exception
      do begin
//memotest.lines.add(sql_);
        execsql('rollback');
        ShowMessage('отзыв'+#13+sql_+#13+e.message);
//exit;
      end;
    End;

    cdsTabelLeave.first;

    while not cdsTabelLeave.eof
    do begin
//--1	Мехнат таътили рабочий
//--2	Ўкув таътили учебный
//--3	Иш хаки сакланмаган неоплач
//--4	Ижтимоий таътил ?
//--5	Декрет декретный
      otpusk_char:='8';

        DatTmp := StrToDate('01.'+copy(TabelDate,4,7));
        D := Copy('01.'+copy(TabelDate,4,7),4,2);
// ?        HolDay := SelOneCol('Select Prim From Pers_Setup Where Id Like ''600%''');
        Day := 0;
        Time := 0;
        SqlT := 'Update ok_Tabel Set ';
        T := '';
        Bd := 0;
        Ed := DaysInAMonth_-1;
        If Copy(cdsTabelLeave.FieldByName('date_recall_begin').AsString,4,2) = D Then
          Bd := StrToInt(Copy(cdsTabelLeave.FieldByName('date_recall_begin').AsString,1,2)) - 1;
        If Copy(cdsTabelLeave.FieldByName('date_recall_end').AsString,4,2) = D Then
          Ed := StrToInt(Copy(cdsTabelLeave.FieldByName('date_recall_end').AsString,1,2)) - 1;

        For I := Bd to Ed do
        Begin
          If Copy(DateToStr(DatTmp + I),4,2) = D Then
            If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
            Then begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''*''' ;  // выходной
                SqlT := SqlT + T + Tmp;
                T := ',';
            end Else begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = OLDDay' + LPad(IntToStr(I+1),2,'0'); // отпуск
                SqlT := SqlT + T + Tmp;
                T := ',';
            end;
//          Else
//              Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = OLDDay' + LPad(IntToStr(I+1),2,'0');
        End;


        sql_:=SqlT + ' Where branch='''+branch+''' '+
        ' and personal_Code = ' + cdsTabelLeave.FieldByName('personal_CODE').AsString+
        ' and TABEL_MONTH='+curr_m+' and TABEL_YEAR='+curr_y ;
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add(sql_);
        try
          if SqlT <> 'Update ok_Tabel Set '
          then          execsql(sql_);
        Except on e:exception
          do begin
//memotest.lines.add(sql_);
            execsql('rollback');
            ShowMessage('(2)отзыв'+#13+sql_+#13+e.message);
//exit;
          end;
        End;

      cdsTabelLeave.next;
    end;

    try
//      execSql(sql_);
      execSql('commit');
    except on e:exception
      do begin
        execSql('rollback');
        showmessage(e.message);
      end;
    end;

/////////////// END отзыв

// БОЛЬНИЧНЫЕ
    sql_:='select * from ok_hospital where branch='''+curbranch+''''+
      ' and (date_open>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
          ' and date_open<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )'+
      ' or (date_close>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'') '+
          ' and date_close<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )'+
      ' or (date_open<to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'') '+
          ' and date_close>=to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )';
    try
      loaddata(cdsTabelLeave,sql_);
    Except on e:exception
      do begin
//memotest.lines.add(sql_);
        execsql('rollback');
        ShowMessage('больничные'+#13+sql_+#13+e.message);
//exit;
      end;
    End;

    cdsTabelLeave.first;

    while not cdsTabelLeave.eof
    do begin
      otpusk_char:='?';
        case cdsTabelLeave.fieldbyname('hospital_code').asinteger of
         1001:otpusk_char:='Б';
         1002:otpusk_char:='Д';
        end;

        DatTmp := StrToDate('01.'+copy(TabelDate,4,7));
        D := Copy('01.'+copy(TabelDate,4,7),4,2);
// ?        HolDay := SelOneCol('Select Prim From Pers_Setup Where Id Like ''600%''');
        Day := 0;
        Time := 0;
        SqlT := 'Update ok_Tabel Set ';
        T := '';
        Bd := 0;
        Ed := DaysInAMonth_-1;
        If Copy(cdsTabelLeave.FieldByName('date_open').AsString,4,2) = D Then
          Bd := StrToInt(Copy(cdsTabelLeave.FieldByName('date_open').AsString,1,2)) - 1;
        If Copy(cdsTabelLeave.FieldByName('date_close').AsString,4,2) = D Then
          Ed := StrToInt(Copy(cdsTabelLeave.FieldByName('date_close').AsString,1,2)) - 1;
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add('Bd='+inttostr(Bd)+'   ed='+inttostr(ed));

        For I := Bd to Ed do
        Begin
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add('Copy(DateToStr(DatTmp + I),4,2)='+Copy(DateToStr(DatTmp + I),4,2));
          If Copy(DateToStr(DatTmp + I),4,2) = D Then
            If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
            Then begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''*''' ;  // выходной
                SqlT := SqlT + T + Tmp;
                T := ',';
            end Else begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = '''+otpusk_char+''''; // отпуск
                SqlT := SqlT + T + Tmp;
                T := ',';
            end;
//          Else
//              Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''8''';
        End;


        sql_:=SqlT + ' Where branch='''+branch+''' '+
        ' and personal_Code = ' + cdsTabelLeave.FieldByName('personal_CODE').AsString+
        ' and TABEL_MONTH='+curr_m+' and TABEL_YEAR='+curr_y ;
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add(sql_);
        try
          if SqlT <> 'Update ok_Tabel Set '
          then          execsql(sql_);
        Except on e:exception
          do begin
//memotest.lines.add(sql_);
            execsql('rollback');
            ShowMessage('(2)больничные'+#13+sql_+#13+e.message);
//exit;
          end;
        End;

      cdsTabelLeave.next;
    end;

    try
//      execSql(sql_);
      execSql('commit');
    except on e:exception
      do begin
        execSql('rollback');
        showmessage(e.message);
      end;
    end;
// end БОЛЬНИЧНЫЕ

// КОМАНДИРОВКИ
    sql_:='select * from ok_business_voyage where branch='''+curbranch+''''+
      ' and (date_open>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
          ' and date_open<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )'+
      ' or (date_close>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'') '+
          ' and date_close<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )'+
      ' or (date_open<to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'') '+
          ' and date_close>=to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )';
    try
      loaddata(cdsTabelLeave,sql_);
    Except on e:exception
      do begin
//memotest.lines.add(sql_);
        execsql('rollback');
        ShowMessage('командировки'+#13+sql_+#13+e.message);
//exit;
      end;
    End;

    cdsTabelLeave.first;

    while not cdsTabelLeave.eof
    do begin
      otpusk_char:='К';

        DatTmp := StrToDate('01.'+copy(TabelDate,4,7));
        D := Copy('01.'+copy(TabelDate,4,7),4,2);
// ?        HolDay := SelOneCol('Select Prim From Pers_Setup Where Id Like ''600%''');
        Day := 0;
        Time := 0;
        SqlT := 'Update ok_Tabel Set ';
        T := '';
        Bd := 0;
        Ed := DaysInAMonth_-1;
        If Copy(cdsTabelLeave.FieldByName('date_open').AsString,4,2) = D Then
          Bd := StrToInt(Copy(cdsTabelLeave.FieldByName('date_open').AsString,1,2)) - 1;
        If Copy(cdsTabelLeave.FieldByName('date_close').AsString,4,2) = D Then
          Ed := StrToInt(Copy(cdsTabelLeave.FieldByName('date_close').AsString,1,2)) - 1;
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add('Bd='+inttostr(Bd)+'   ed='+inttostr(ed));

        For I := Bd to Ed do
        Begin
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add('Copy(DateToStr(DatTmp + I),4,2)='+Copy(DateToStr(DatTmp + I),4,2));
          If Copy(DateToStr(DatTmp + I),4,2) = D Then
//            If  (DayOfWeek(DatTmp + I) = 7) Then
            If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
            Then begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''*''' ;  // выходной
                SqlT := SqlT + T + Tmp;
                T := ',';
            end Else begin
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = '''+otpusk_char+'''';  // отпуск
                SqlT := SqlT + T + Tmp;
                T := ',';
            end;
//          Else
//              Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''8''';
        End;


        sql_:=SqlT + ' Where branch='''+branch+''' '+
        ' and personal_Code = ' + cdsTabelLeave.FieldByName('personal_CODE').AsString+
        ' and TABEL_MONTH='+curr_m+' and TABEL_YEAR='+curr_y ;
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add(sql_);
        try
          if SqlT <> 'Update ok_Tabel Set '
          then          execsql(sql_);
        Except on e:exception
          do begin
//memotest.lines.add(sql_);
            execsql('rollback');
            ShowMessage('(2)командировки'+#13+sql_+#13+e.message);
//exit;
          end;
        End;

      cdsTabelLeave.next;
    end;

    try
//      execSql(sql_);
      execSql('commit');
    except on e:exception
      do begin
        execSql('rollback');
        showmessage(e.message);
      end;
    end;

// end КОМАНДИРОВКИ
// РАБОЧИЕ-ВЫХОДНЫЕ-ПРАЗДНИЧНЫЕ
// day_status 0-РАБОЧИЕ--1-ВЫХОДНЫЕ--2-ПРАЗДНИЧНЫЕ

          sql_:='select * from OFF_DAYS '+
          ' where (off_day>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
          ' and off_day<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') )';
    try
      loaddata(cdsTabelLeave,sql_);
    Except on e:exception
      do begin
//memotest.lines.add(sql_);
        execsql('rollback');
        ShowMessage(sql_+#13+e.message);
//exit;
      end;
    End;

    cdsTabelLeave.first;
    SqlT := 'Update ok_Tabel Set ';
    T:='';
    I:=0;
    while not cdsTabelLeave.eof
    do begin
// day_status 1-РАБОЧИЕ--0-ВЫХОДНЫЕ--2-ПРАЗДНИЧНЫЕ
      otpusk_char:='?';
      If (DayOfWeek(cdsTabelLeave.fieldbyname('OFF_DAY').asdatetime) = 7)
      or (DayOfWeek(cdsTabelLeave.fieldbyname('OFF_DAY').asdatetime) = 1)
      Then begin
        otpusk_char:='*';
        Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = '''+otpusk_char+'''';  // проставить day_status 0-РАБОЧИЕ--1-ВЫХОДНЫЕ--2-ПРАЗДНИЧНЫЕ
        SqlT := SqlT + T + Tmp;
        T := ',';
      end;
      I:=I+1;
      cdsTabelLeave.next;
    end;

        sql_:=SqlT+ ' Where branch='''+branch+''' and TABEL_MONTH='+curr_m+' and TABEL_YEAR='+curr_y ;
//memotest.lines.add(sql_);
        try
          if SqlT <> 'Update ok_Tabel Set '
          then           execsql(sql_);
          execsql('commit');
        Except on e:exception
          do begin
//memotest.lines.add(sql_);
            execsql('rollback');
            ShowMessage('дни'+#13+sql_+#13+e.message);
//exit;
          end;
        End;

// end РАБОЧИЕ-ВЫХОДНЫЕ-ПРАЗДНИЧНЫЕ

// УВОЛЕННЫЕ
        sql_:= 'select * from ok_period where branch='''+curbranch+''' '+
//        ' and OUT_OFFICE_DATE>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
// дата увольнения рабочий день
        ' and OUT_OFFICE_DATE>to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
        ' and OUT_OFFICE_DATE<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') '+
        ' and (branch,personal_code) in ( select branch,personal_code from '+
        ' ok_personal Where branch='''+branch+''' and status_code=4)';

    try
//memotest.lines.add(sql_);
      loaddata(cdsTabelLeave,sql_);
    Except on e:exception
      do begin
//memotest.lines.add(sql_);
        execsql('rollback');
        ShowMessage('уволенные'+#13+sql_+#13+e.message);
//exit;
      end;
    End;

    cdsTabelLeave.first;

    while not cdsTabelLeave.eof
    do begin
      otpusk_char:='·';

        DatTmp := StrToDate('01.'+copy(TabelDate,4,7));
        D := Copy('01.'+copy(TabelDate,4,7),4,2);
// ?        HolDay := SelOneCol('Select Prim From Pers_Setup Where Id Like ''600%''');
        Day := 0;
        Time := 0;
        SqlT := 'Update ok_Tabel Set ';
        T := '';
        Bd := 0;
        Ed := DaysInAMonth_-1;
        If Copy(cdsTabelLeave.FieldByName('OUT_OFFICE_DATE').AsString,4,2) = D Then
          Bd := StrToInt(Copy(cdsTabelLeave.FieldByName('OUT_OFFICE_DATE').AsString,1,2)) ;
          // дату увольнения считать последним рабочим днем а было -1

        For I := Bd to Ed do
        Begin
          If Copy(DateToStr(DatTmp + I),4,2) = D Then
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = '''+otpusk_char+'''';
//          Else
//              Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = ''8''';
          SqlT := SqlT + T + Tmp;
          T := ',';
        End;


        sql_:=SqlT + ' Where branch='''+branch+''' '+
        ' and personal_Code = ' + cdsTabelLeave.FieldByName('personal_CODE').AsString+
        ' and TABEL_MONTH='+curr_m+' and TABEL_YEAR='+curr_y ;
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add(sql_);
        try
//memotest.lines.add(sql_);
          if SqlT <> 'Update ok_Tabel Set '
          then          execsql(sql_);
        Except on e:exception
          do begin
//memotest.lines.add(sql_);
            execsql('rollback');
            ShowMessage('(2)уволенные'+#13+sql_+#13+e.message);
//exit;
          end;
        End;

      cdsTabelLeave.next;
    end;

    try
//      execSql(sql_);
      execSql('commit');
    except on e:exception
      do begin
        execSql('rollback');
        showmessage(e.message);
      end;
    end;

// end Уволенные

// принятые в этом месяце
        sql_:= 'select * from ok_period where branch='''+curbranch+''' '+
//        ' and IN_OFFICE_DATE>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
// дата увольнения рабочий день
        ' and IN_OFFICE_DATE>to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
        ' and IN_OFFICE_DATE<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') '+
        ' and (branch,personal_code) in ( select branch,personal_code from '+
        ' ok_personal Where branch='''+branch+''' and status_code=2)';

    try
//memotest.lines.add(sql_);
      loaddata(cdsTabelLeave,sql_);
    Except on e:exception
      do begin
//memotest.lines.add(sql_);
        execsql('rollback');
        ShowMessage('уволенные'+#13+sql_+#13+e.message);
//exit;
      end;
    End;

    cdsTabelLeave.first;

    while not cdsTabelLeave.eof
    do begin
      otpusk_char:='·';

        DatTmp := StrToDate('01.'+copy(TabelDate,4,7));
        D := Copy('01.'+copy(TabelDate,4,7),4,2);
// ?        HolDay := SelOneCol('Select Prim From Pers_Setup Where Id Like ''600%''');
        Day := 0;
        Time := 0;
        SqlT := 'Update ok_Tabel Set ';
        T := '';
        Bd := 0;
//        Ed := DaysInAMonth_-1;
        Ed := StrToInt(Copy(cdsTabelLeave.FieldByName('IN_OFFICE_DATE').AsString,1,2))-1-1;
//        If Copy(cdsTabelLeave.FieldByName('IN_OFFICE_DATE').AsString,4,2) = D Then
//          Bd := StrToInt(Copy(cdsTabelLeave.FieldByName('IN_OFFICE_DATE').AsString,1,2)) ;
          // дату увольнения считать последним рабочим днем а было -1

        For I := Bd to Ed do
        Begin
          If Copy(DateToStr(DatTmp + I),4,2) = D Then
                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = '''+otpusk_char+'''';
//          Else
//                Tmp := 'Day' + LPad(IntToStr(I+1),2,'0') + ' = '''+otpusk_char+'''';
          SqlT := SqlT + T + Tmp;
          T := ',';
        End;


        sql_:=SqlT + ' Where branch='''+branch+''' '+
        ' and personal_Code = ' + cdsTabelLeave.FieldByName('personal_CODE').AsString+
        ' and TABEL_MONTH='+curr_m+' and TABEL_YEAR='+curr_y ;
// if cdsTabelLeave.FieldByName('personal_CODE').AsString='356'
// then memotest.lines.add(sql_);
        try
memo3.lines.add(sql_);
          if SqlT <> 'Update ok_Tabel Set '
          then          execsql(sql_);
        Except on e:exception
          do begin
//memotest.lines.add(sql_);
            execsql('rollback');
            ShowMessage('(2)уволенные'+#13+sql_+#13+e.message);
//exit;
          end;
        End;

      cdsTabelLeave.next;
    end;

    try
//      execSql(sql_);
      execSql('commit');
    except on e:exception
      do begin
        execSql('rollback');
        showmessage(e.message);
      end;
    end;

// end принятые в этом месяце



//    if not(cdsTabel.Active)
//    then loaddata(cdsTabel,'select a.* from ok_tabel a where branch='''+curbranch+''' and tabel_month='+copy(TabelDate,4,2)+' and tabel_year='+copy(TabelDate,7,4)+' order by department_code,nn' )
//    else cdsTabel.Refresh;

end;

procedure TBOKForm.Button18Click(Sender: TObject);
var
  I, J  : Word;
  Flag : Boolean;
  sql_,SqlT : String;
  WORK_DAYS, WORK_HOURS, WORK_HOLIDAYS, DEKRET_DAYS, BUSINESS_TOUR_DAYS: Word;
  ILL_DAYS, VACATION_DAYS, EDUCATIONAL_VACATION_DAYS, NOSALARY_VACATION_DAYS: Word;
  WORK_DAYS15, WORK_HOURS15, WORK_HOLIDAYS15, DEKRET_DAYS15, BUSINESS_TOUR_DAYS15: Word;
  ILL_DAYS15, VACATION_DAYS15, EDUCATIONAL_VACATION_DAYS15, NOSALARY_VACATION_DAYS15: Word;
  curr_m, curr_y      : String;
  DaysInAMonth_ :word;
  TabelDate : string;
begin
//showmessage(inttostr(Dayofweek(now)));
  TabelDate:=medBankDate.text;
  GB_tabel_date.caption := ' Табель '+TabelDate;
// WORK_DAYS                 NUMBER(3)     Y                отр.дней
// WORK_HOURS                NUMBER(5,2)   Y                отр.часов
// WORK_HOLIDAYS             NUMBER(3)     Y                отр.вых.дн
// DEKRET_DAYS               NUMBER(3)     Y                Дни в декр.
// BUSINESS_TOUR_DAYS        NUMBER(3)     Y                Дни в команд
// ILL_DAYS                  NUMBER(3)     Y                Дни по Б/Л
// VACATION_DAYS             NUMBER(3)     Y                Дни в отп.
// EDUCATIONAL_VACATION_DAYS NUMBER(3)     Y                Дни в уч отп
// NOSALARY_VACATION_DAYS    NUMBER(3)     Y                Дни без сохр.со
    curr_m:= copy(TabelDate,4,2)  ;
    curr_y:= copy(TabelDate,7,4)  ;
    DaysInAMonth_:=DaysInAMonth(strtoint(curr_y),strtoint(curr_m));

    if RG_avans.itemindex=0 then
    case DaysInAMonth_ of
      28: begin
            cdbgtabel.columns[39].Visible:=false;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      29: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      30: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=false;
          end;
      31: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=TRUE;
          end;
    end;

   cdsTabel.DisableControls;

  if Application.MessageBox('Перерасчитать итоговые данные?', 'Расчет',MB_OKCANCEL) = IDOK then
  Begin
    if not(cdsTabel.Active)
    then   loaddata(cdsTabel,'select a.* from ok_tabel a where branch='''+curbranch+''' and tabel_month='+copy(TabelDate,4,2)+' and tabel_year='+copy(TabelDate,7,4)+' order by department_code,nn' );

   cdsTabel.First;
   try
    While Not cdsTabel.Eof Do
    Begin
      WORK_DAYS := 0;  WORK_HOURS := 0;  WORK_HOLIDAYS := 0;  DEKRET_DAYS := 0;  BUSINESS_TOUR_DAYS := 0;
      ILL_DAYS := 0;  VACATION_DAYS := 0;  EDUCATIONAL_VACATION_DAYS := 0;  NOSALARY_VACATION_DAYS := 0;

      WORK_DAYS15 := 0;  WORK_HOURS15 := 0;  WORK_HOLIDAYS15 := 0;  DEKRET_DAYS15 := 0;  BUSINESS_TOUR_DAYS15 := 0;
      ILL_DAYS15 := 0;  VACATION_DAYS15 := 0;  EDUCATIONAL_VACATION_DAYS15 := 0;  NOSALARY_VACATION_DAYS15 := 0;

      For I := 1 to DaysInAMonth_ do
      Begin
        SqlT := Trim(cdsTabel.FieldByName('DAY' + LPad(IntToStr(I),2,'0')).AsString);
        Flag := True;

        If SqlT = '' Then           Flag := False;
        If SqlT = '#' Then          Inc(NOSALARY_VACATION_DAYS);
        If SqlT = 'Д' Then          Inc(DEKRET_DAYS);
        If SqlT = 'Б' Then          Inc(ILL_DAYS);
        If SqlT = 'В' Then          Inc(WORK_HOLIDAYS);
        If SqlT = 'О' Then          Inc(VACATION_DAYS);
        If SqlT = 'У' Then          Inc(EDUCATIONAL_VACATION_DAYS);

        if i < 16
        then begin
          If SqlT = '#' Then          Inc(NOSALARY_VACATION_DAYS15);
          If SqlT = 'Д' Then          Inc(DEKRET_DAYS15);
          If SqlT = 'Б' Then          Inc(ILL_DAYS15);
          If SqlT = 'В' Then          Inc(WORK_HOLIDAYS15);
          If SqlT = 'О' Then          Inc(VACATION_DAYS15);
          If SqlT = 'У' Then          Inc(EDUCATIONAL_VACATION_DAYS15);
        end;

        If SqlT = 'К'
        Then begin
          Inc(BUSINESS_TOUR_DAYS);
          WORK_HOURS := WORK_HOURS + 8; // командировки добавляются в рабочие дни
          Inc(WORK_DAYS);
          if i<16 then begin
            Inc(BUSINESS_TOUR_DAYS15);
            WORK_HOURS := WORK_HOURS15 + 8; // командировки добавляются в рабочие дни
            Inc(WORK_DAYS15);
          end;
        end;
        For J := 1 to Length(SqlT) do
           If not (SqlT[J] In ['0'..'9']) Then Flag := False;
        If Flag Then
        Begin
          WORK_HOURS := WORK_HOURS + StrToInt(SqlT);
          Inc(WORK_DAYS);
          if i<16 then begin
            WORK_HOURS15 := WORK_HOURS15 + StrToInt(SqlT);
            Inc(WORK_DAYS15);
          end;
        End;


      End;
        sql_:='Update ok_Tabel Set '+
          'WORK_DAYS = ' + IntToStr(WORK_DAYS) + ',' +
          'WORK_HOURS = ' + IntToStr(WORK_HOURS) + ',' +
          'WORK_HOLIDAYS = ' + IntToStr(WORK_HOLIDAYS) + ',' +
          'DEKRET_DAYS = ' + IntToStr(DEKRET_DAYS) + ',' +
          'BUSINESS_TOUR_DAYS = ' + IntToStr(BUSINESS_TOUR_DAYS) + ',' +
          'ILL_DAYS = ' + IntToStr(ILL_DAYS) + ',' +
          'VACATION_DAYS = ' + IntToStr(VACATION_DAYS) + ',' +
          'EDUCATIONAL_VACATION_DAYS = ' + IntToStr(EDUCATIONAL_VACATION_DAYS) + ',' +
          'NOSALARY_VACATION_DAYS = ' + IntToStr(NOSALARY_VACATION_DAYS)  + ',' +
          'WORK_DAYS15 = ' + IntToStr(WORK_DAYS15) + ',' +
          'WORK_HOURS15 = ' + IntToStr(WORK_HOURS15) + ',' +
          'WORK_HOLIDAYS15 = ' + IntToStr(WORK_HOLIDAYS15) + ',' +
          'DEKRET_DAYS15 = ' + IntToStr(DEKRET_DAYS15) + ',' +
          'BUSINESS_TOUR_DAYS15 = ' + IntToStr(BUSINESS_TOUR_DAYS15) + ',' +
          'ILL_DAYS15 = ' + IntToStr(ILL_DAYS15) + ',' +
          'VACATION_DAYS15 = ' + IntToStr(VACATION_DAYS15) + ',' +
          'EDUCATIONAL_VACATION_DAYS15 = ' + IntToStr(EDUCATIONAL_VACATION_DAYS15) + ',' +
          'NOSALARY_VACATION_DAYS15 = ' + IntToStr(NOSALARY_VACATION_DAYS15)  +
        ' Where branch='''+branch+''' '+
        ' and personal_Code = ' + cdsTabel.FieldByName('personal_CODE').AsString+
        ' and TABEL_MONTH='+curr_m+' and TABEL_YEAR='+curr_y ;
        execSql(sql_);


              cdsTabel.Next;
    End;

        execsql('Commit');
    Except on e:exception
      do begin
        execsql('Rollback');
        ShowMessage('Ошибка!'+#13+sql_+#13+e.message);
      end;
    End;

  end;

  cdsTabel.EnableControls;
  cdsTabel.refresh;

end;

procedure TBOKForm.Button16Click(Sender: TObject);
var curr_m, next_m, curr_y, next_y, sql_ , day_lines, ch_lines: string;
  DaysInAMonth_ : word;
  TabelDate : string;
  TabelExisits : integer;
  sqlparams : tparams;
begin
  sqlparams := tparams.create;
//showmessage(inttostr(Dayofweek(now)));
  TabelDate:=medBankDate.text;
  GB_tabel_date.caption := ' Табель '+TabelDate;
    curr_m:= copy(TabelDate,4,2)  ;
    curr_y:= copy(TabelDate,7,4)  ;

  with sqlparams
  do begin
    clear;
    CreateParam(ftString,'P_B',ptInput);
    ParamByName('P_B').Value := branch;
    CreateParam(ftInteger,'P_M',ptInput);
    ParamByName('P_M').Value := strtoint(curr_m);
    CreateParam(ftInteger,'P_Y',ptInput);
    ParamByName('P_Y').Value := strtoint(curr_y);

  end;
  TabelExisits:= GETsqlRESULT('select count(*) From ok_Tabel where branch=:P_B and tabel_month=:P_M and tabel_year=:P_Y',sqlparams);

 if TabelExisits>0
 then begin
    showmessage('Табель за указанный месяц уже существует.');
 end else begin

  if Application.MessageBox(pchar('Сформировать новый табель ('+TabelDate+') ?'), 'Формирование',MB_OKCANCEL) = IDOK
  then Begin
    if curr_m='12'
    then begin
      next_m:='01';
      next_y:= inttostr(strtoint(curr_y)+1);
    end else begin
      next_m:= inttostr(strtoint(curr_m)+1);
      next_y:=  curr_y;
    end;

    DaysInAMonth_:=DaysInAMonth(strtoint(curr_y),strtoint(curr_m));

    if RG_avans.itemindex=0 then
    case DaysInAMonth_ of
      28: begin
            cdbgtabel.columns[39].Visible:=false;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      29: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      30: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=false;
          end;
      31: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=TRUE;
          end;
    end;

    case DaysInAMonth_ of
      28: begin
            day_lines:='DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,'+
                'DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,'+
                'DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,'+
                'DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28';
            day_lines:= day_lines+','+
            'OLDDAY01,OLDDAY02,OLDDAY03,OLDDAY04,OLDDAY05,OLDDAY06,OLDDAY07,'+
                'OLDDAY08,OLDDAY09,OLDDAY10,OLDDAY11,OLDDAY12,OLDDAY13,OLDDAY14,'+
                'OLDDAY15,OLDDAY16,OLDDAY17,OLDDAY18,OLDDAY19,OLDDAY20,OLDDAY21,'+
                'OLDDAY22,OLDDAY23,OLDDAY24,OLDDAY25,OLDDAY26,OLDDAY27,OLDDAY28';


            ch_lines:= '8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8 ' ;
            ch_lines:= ch_lines+','+ch_lines ;
          end;
      29: begin
            day_lines:='DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,'+
                'DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,'+
                'DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,'+
                'DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28,'+
                'DAY29 ';
            day_lines:= day_lines+','+
            'OLDDAY01,OLDDAY02,OLDDAY03,OLDDAY04,OLDDAY05,OLDDAY06,OLDDAY07,'+
                'OLDDAY08,OLDDAY09,OLDDAY10,OLDDAY11,OLDDAY12,OLDDAY13,OLDDAY14,'+
                'OLDDAY15,OLDDAY16,OLDDAY17,OLDDAY18,OLDDAY19,OLDDAY20,OLDDAY21,'+
                'OLDDAY22,OLDDAY23,OLDDAY24,OLDDAY25,OLDDAY26,OLDDAY27,OLDDAY28,'+
                'OLDDAY29 ';

            ch_lines:= '8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8 ' ;
            ch_lines:= ch_lines+','+ch_lines ;
          end;
      30: begin
            day_lines:='DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,'+
                'DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,'+
                'DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,'+
                'DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28,'+
                'DAY29,DAY30 ';
            day_lines:= day_lines+','+
            'OLDDAY01,OLDDAY02,OLDDAY03,OLDDAY04,OLDDAY05,OLDDAY06,OLDDAY07,'+
                'OLDDAY08,OLDDAY09,OLDDAY10,OLDDAY11,OLDDAY12,OLDDAY13,OLDDAY14,'+
                'OLDDAY15,OLDDAY16,OLDDAY17,OLDDAY18,OLDDAY19,OLDDAY20,OLDDAY21,'+
                'OLDDAY22,OLDDAY23,OLDDAY24,OLDDAY25,OLDDAY26,OLDDAY27,OLDDAY28,'+
                'OLDDAY29,OLDDAY30 ';
            ch_lines:= '8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8 ' ;
            ch_lines:= ch_lines+','+ch_lines ;
          end;
      31: begin
            day_lines:='DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,'+
                'DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,'+
                'DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,'+
                'DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28,'+
                'DAY29,DAY30,DAY31';
            day_lines:= day_lines+','+
            'OLDDAY01,OLDDAY02,OLDDAY03,OLDDAY04,OLDDAY05,OLDDAY06,OLDDAY07,'+
                'OLDDAY08,OLDDAY09,OLDDAY10,OLDDAY11,OLDDAY12,OLDDAY13,OLDDAY14,'+
                'OLDDAY15,OLDDAY16,OLDDAY17,OLDDAY18,OLDDAY19,OLDDAY20,OLDDAY21,'+
                'OLDDAY22,OLDDAY23,OLDDAY24,OLDDAY25,OLDDAY26,OLDDAY27,OLDDAY28,'+
                'OLDDAY29,OLDDAY30,OLDDAY31 ';
            ch_lines:= '8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8,  8' ;
            ch_lines:= ch_lines+','+ch_lines ;
          end;
    end;

    Try
// @}->-- ]:->
// брать список из сведения о работе
      sql_:='Insert Into ok_Tabel(category_code,branch,tabel_month,tabel_year,'+
        ' tabel_name,'+
        'PERSONAL_CODE,nn,department_nn,department_code, fio,tabno,salary,'+
        'post_code, post_name , DEPARTMENT_NAME ,'+day_lines+') '+
        ' Select ok_service.get_category_code(okpd.post_code),okpd.branch, '+curr_m+',' +curr_y+',' +
        ' ''За '+curr_m+' месяц '+curr_y+' года'','+
        'okpd.PERSONAL_CODE,okp.nn,okpd.department_code department_nn,okpd.department_code,'+
        'okp.FAMILY||'' ''||substr(okp.FIRST_NAME,1,1)||''.''||substr(okp.PATRONYMIC,1,1)||''.'','+
        'okp.tabno, ok_service.GET_POST_Salary(okpd.post_code) ,okp.post_code, okpd.ESTABLISHED_POST, okpd.ESTABLISHED_DEPARTMENT '+
         ','+ch_lines+ ' From ok_personal okp, ok_period okpd Where okp.branch='''+branch+''' '+
//         ' and okp.status_code in (2,4)' +
         ' and okp.branch=okpd.branch and okp.personal_code=okpd.personal_code '+
        ' and okpd.IN_OFFICE_DATE < to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') '+
        ' and (okpd.OUT_OFFICE_DATE >= to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') '+
              ' or okpd.OUT_OFFICE_DATE is null )'+
//' and tabno=8'+
        ' order by department_code,nn';
//showmessage(sql_);
      execsql(sql_);

      sql_:='Insert Into ok_Tabel(category_code,branch,tabel_month,tabel_year,'+
        ' tabel_name,'+
        'PERSONAL_CODE,nn,department_nn,department_code, fio,tabno,salary,'+
        'post_code, post_name , DEPARTMENT_NAME ,'+day_lines+') '+
        ' Select ok_service.get_category_code(okpd.post_code),okpd.branch, '+curr_m+',' +curr_y+',' +
        ' ''За '+curr_m+' месяц '+curr_y+' года'','+
//или работ
                 'okpd.PERSONAL_CODE,okp.nn,okpd.department_code department_nn,okpd.department_code,'+
//или декрет       'PERSONAL_CODE,nn+10000,10000,10000,'+
//или уволен       'PERSONAL_CODE,nn+10000000,10000000,10000000,'+
        'okp.FAMILY||'' ''||substr(okp.FIRST_NAME,1,1)||''.''||substr(okp.PATRONYMIC,1,1)||''.'','+
        'okp.tabno, ok_service.GET_POST_Salary(okpd.post_code) ,okp.post_code, okpd.ESTABLISHED_POST, okpd.ESTABLISHED_DEPARTMENT '+
         ','+ch_lines+ ' From ok_personal okp, ok_period okpd Where okp.branch='''+branch+''' '+
//         ' and okp.status_code in (2,4)' +
         ' and okp.branch=okpd.branch and okp.personal_code=okpd.personal_code '+
        ' and okpd.IN_OFFICE_DATE >= to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') '+
        ' and (okpd.OUT_OFFICE_DATE >= to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') '+
              ' or okpd.OUT_OFFICE_DATE is null )'+
//' and tabno=8'+
        ' order by department_code,nn';
//showmessage(sql_);
      execsql(sql_);

// декретницы-кредитницы
      sql_:='Insert Into ok_Tabel(category_code,branch,tabel_month,tabel_year,'+
        ' tabel_name,'+
        'PERSONAL_CODE,nn,department_nn,department_code, fio,tabno,salary,'+
        'post_code, post_name , DEPARTMENT_NAME ,'+day_lines+') '+
        ' Select ok_service.get_category_code(post_code),branch, '+curr_m+',' +curr_y+',' +
        ' ''За '+curr_m+' месяц '+curr_y+' года'','+
        'PERSONAL_CODE,nn+10000,10000,10000,'+
        'FAMILY||'' ''||FIRST_NAME||'' ''||PATRONYMIC,'+
        'tabno, ok_service.GET_POST_Salary(post_code) ,post_code, ok_service.GET_POSTNAME(post_code), ''ДЕКРЕТНИЦЫ'' '+
         ','+ch_lines+ ' From ok_personal Where branch='''+branch+''' and status_code =5'+
//' and tabno=8'+
        ' order by department_code,nn';
      execsql(sql_);

// Уволенные
      sql_:='Insert Into ok_Tabel(category_code,branch,tabel_month,tabel_year,'+
        ' tabel_name,'+
        'PERSONAL_CODE,nn,department_nn,department_code, fio,tabno,salary,'+
        'post_code, post_name , DEPARTMENT_NAME ,'+day_lines+') '+
        ' Select ok_service.get_category_code(post_code),branch, '+curr_m+',' +curr_y+',' +
        ' ''За '+curr_m+' месяц '+curr_y+' года'','+
        'PERSONAL_CODE,nn+10000000,10000000,10000000,'+
        'FAMILY||'' ''||FIRST_NAME||'' ''||PATRONYMIC,'+
        'tabno, ok_service.GET_POST_Salary(post_code) ,post_code, ok_service.GET_POSTNAME(post_code), ''УВОЛЕННЫЕ'' '+
         ','+ch_lines+ ' From ok_personal Where branch='''+branch+''' and (  '+
        ' (status_code=4) and ((branch,personal_code) in '+
        '(select distinct branch,personal_code from ok_period where branch='''+branch+''' '+
        ' and OUT_OFFICE_DATE>=to_date(''01.'+copy(TabelDate,4,7)+''',''dd.mm.yyyy'')'+
        ' and OUT_OFFICE_DATE<to_date(''01.'+next_m+'.'+next_y+''',''dd.mm.yyyy'') ) ) )'+
//' and tabno=8'+
        ' order by department_code,nn';
      execsql(sql_);

      execsql('commit');
    Except on e:exception
      do begin
//memotest.lines.add(sql_);
        execsql('rollback');
        ShowMessage(sql_+#13+e.message);
      end;
    End;

    Button17Click(nil); // график по умолчанию

  End;

 end;
  
    if not(cdsTabel.Active)
    then begin
      loaddata(cdsTabel,'select a.* from ok_tabel a where branch='''+curbranch+''' and tabel_month='+copy(TabelDate,4,2)+' and tabel_year='+copy(TabelDate,7,4)+' order by department_code,nn' );
    end else begin
      cdstabel.refresh;
    end;


end;

procedure TBOKForm.BitBtn134Click(Sender: TObject);
begin

  showmessage('Вы уверены что хотите сохранить данные?');
  try
      cdsOKPersonal.Post;
  except on e:exception
    do begin
      execsql('rollback');
      showmessage(e.Message);
    end;
  end;

end;

procedure TBOKForm.TabSheet10Show(Sender: TObject);
begin

  if cdsok_business_voyage.Active then
  Begin
    Exit;
  End;

  LoadData(cdsok_business_voyage, SQL_ok_business_voyage+' where branch = '+''''+curBranch +'''');
  LoadData(cdsStr_SET, SQL_S_STR);
  LoadData(CDSss_ok_org_business_voyage, SQL_ss_ok_org_business_voyage);
  LoadData(CDSss_ok_theme_business_voyage, SQL_ss_ok_theme_business_voyage);

// 1. lookup поля - если есть :)
  cdsok_business_voyage.Close;
  cdsok_business_voyage.DisableControls;

// 2. проверка датасетов-списков

// 3. Добавление lookup полей
  addLookUpField(cdsok_business_voyage, cdsUsers, 'emp_name', 'emp_code', 'emp_code', 'emp_NAME', true);

  addLookUpField(cdsok_business_voyage, cdsStr_SET, 'CODE_STR_show', 'CODE_STR', 'CODE_STR', 'name', false);
  addLookUpField(cdsok_business_voyage, CDSss_ok_org_business_voyage, 'org_business_voyage_code_show', 'org_business_voyage_code', 'org_business_voyage_code', 'org_business_voyage_name', false);
  addLookUpField(cdsok_business_voyage, CDSss_ok_theme_business_voyage, 'theme_business_voyage_code_show', 'theme_business_voyage_code', 'theme_business_voyage_code', 'theme_business_voyage_name', false);
  addLookUpField(cdsok_business_voyage, cdsss_ok_city, 'city_code_show', 'city_code', 'city_code', 'city_name', false);


//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', True);
// (cds-главный, cds-справочник, 'имя получаемого поля в cds-главном',
// ' имя ключевого поля в cds-главном ',' имя ключевого поля в cds-справочнике ',
// ' имя поля с показываемыми данными в cds-справочнике ')

//все последующие FALSE addLookUpField(cdsOKEducation, cdsSSOkInstitution_Set, 'institution_code_show', 'institution_code', 'institution_code', 'institution_name', False);
//  addLookUpField(cdsOK, cdsSSok_Set, '_code_show', '_code', '_code', '_name', False);

  cdsok_business_voyage.Open;
  cdsok_business_voyage.EnableControls;

//  SQL_ssokincrease_SET

end;

procedure TBOKForm.cdsok_business_voyageAfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.DBEdit137KeyDown(Sender: TObject; var Key: Word;
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

// подсчитать поле 5   . "Фактическое кол-во дней"  - рассчитать от даты открытия до даты закрытия в днях
        if cdsok_business_voyage.fieldbyname('date_open').asdatetime>
           cdsok_business_voyage.fieldbyname('date_close').Asdatetime
        then begin
          showmessage('дата закрытия '+cdsok_business_voyage.fieldbyname('date_close').asstring+
             'должна быть больше даты открытия'+ cdsok_business_voyage.fieldbyname('date_open').asstring);
          exit;
        end;
        cdsok_business_voyage.fieldbyname('number_day').asstring:=floattostr(
          1+ cdsok_business_voyage.fieldbyname('date_close').Asdatetime-
             cdsok_business_voyage.fieldbyname('date_open').asdatetime );


      end;
  end;

end;

procedure TBOKForm.BitBtn136Click(Sender: TObject);
var
  sell,   App,WorkBook,Sheet: Variant;
  cur_line, cur_col, DaysInAMonth_, IntRezult,j,i,k, m:integer;
  footer1, footer2, sql_, tabelDate, rez, col,sell_address, s_, old_department_name:String;
begin

    tabelDate:=medbankdate.Text;
    DaysInAMonth_:=DaysInAMonth(strtoint(copy(tabelDate,7,4)),strtoint(copy(tabelDate,4,2)));

  sql_:='select tabel_name,category_code,department_name, fio, tabno,'+
    '  trim(to_char(salary,''9999999.99'')) salary, post_name,'+
    'day01,day02,day03,day04,day05,day06,day07,day08,day09,day10,'+
    'day11,day12,day13,day14,day15,day16,day17,day18,day19,day20,'+
    'day21,day22,day23,day24,day25,day26,day27,day28,day29,day30,day31,'+
    ' work_days,'+
    ' trim(to_char(work_hours,''999.99'')) work_hours,'+
    ' work_holidays, dekret_days,'+
    'business_tour_days,'+
    'ill_days, vacation_days,'+
    ' educational_vacation_days,'+
    ' nosalary_vacation_days,department_code '+
    ' from ok_tabel '+
    ' where branch='''+curbranch+''' '+
    ' and tabel_month='+copy(tabelDate,4,2)+' and tabel_year='+copy(tabelDate,7,4)+
      ' order by department_code,category_code,fio';
  try
    loaddata(cdsTabel,sql_ );
  except on e:exception
    do begin
      showmessage(sql_);
//      memo3.lines.add(sql_);
    end;
  end;


      cdsTabel.DisableControls;
      cdstabel.first;

{      S_ :=uppercase('*fio*'+'*tabno*'+'*salary*'+'*post_name*'
            +'*day01*'+'*day02*'+'*day03*'+'*day04*'+'*day05*'+'*day06*'+'*day07*'+'*day08*'+'*day09*'+'*day10*'
            +'*day11*'+'*day12*'+'*day13*'+'*day14*'+'*day15*'+'*day16*'+'*day17*'+'*day18*'+'*day19*'+'*day20*'
            +'*day21*'+'*day22*'+'*day23*'+'*day24*'+'*day25*'+'*day26*'+'*day27*'+'*day28*'+'*day29*'+'*day30*'+'*day31*'
            +'*work_days*'+'*work_hours*'+'*work_holidays*'+'*dekret_days*'+'*business_tour_days*'
            +'*ill_days*'+'*vacation_days*'+'*educational_vacation_days*'+'*nosalary_vacation_days*');
}
// убрано '*tabno*'+'*salary*'+
      S_ :=uppercase('*fio*'+'*category_code*'+'*post_name*'
            +'*day01*'+'*day02*'+'*day03*'+'*day04*'+'*day05*'+'*day06*'+'*day07*'+'*day08*'+'*day09*'+'*day10*'
            +'*day11*'+'*day12*'+'*day13*'+'*day14*'+'*day15*'+'*day16*'+'*day17*'+'*day18*'+'*day19*'+'*day20*'
            +'*day21*'+'*day22*'+'*day23*'+'*day24*'+'*day25*'+'*day26*'+'*day27*'+'*day28*'+'*day29*'+'*day30*'+'*day31*'
            +'*work_days*'+'*work_hours*'+'*work_holidays*'+'*dekret_days*'+'*business_tour_days*'
            +'*ill_days*'+'*vacation_days*'+'*educational_vacation_days*'+'*nosalary_vacation_days*');


  App := CreateOLEObject('Excel.Application');
  if fileexists('C:\NCI Bank\Ok\Templates\Tabel.xls')
  then begin
    WorkBook:=App.Workbooks.Open('C:\NCI Bank\Ok\Templates\Tabel.xls');
  end else begin
    if fileexists(GetCurrentDir_templates+'\Tabel.xls')
    then begin
      WorkBook:=App.Workbooks.Open(GetCurrentDir_templates+'\Tabel.xls');
    end else begin
      showmessage('не найден файл C:\NCI Bank\Ok\Templates\Tabel.xls '+#10#13+
         ' также не найден '+   GetCurrentDir_templates+'\Tabel.xls'
      );
      exit;
    end;
  end;
   App.Visible := false;


   for i:=1 to WorkBook.Sheets.Count do
   Begin  //1
     Application.ProcessMessages;
     Sheet:=WorkBook.WorkSheets[i];
     Sheet.Activate;
     // строка столбец
     Sheet.Cells[4,1].value:='                                                                            учета использования рабочего времени работников '+cdsTabel.fieldbyname('TABEL_NAME').asstring ;
     footer1 :=Sheet.Cells[6,1].value;
     Sheet.Cells[6,1].value:='';
     footer2 :=Sheet.Cells[8,1].value;
     Sheet.Cells[8,1].value:='';

    case DaysInAMonth_ of
    28:begin
    // дни месяца с 4 по 35
         Sheet.Cells[11,33].value:='';
         Sheet.Cells[11,34].value:='';
         Sheet.Cells[11,35].value:='';
       end;
    29:begin
         Sheet.Cells[11,34].value:='';
         Sheet.Cells[11,35].value:='';
       end;
    30:begin
         Sheet.Cells[11,35].value:='';
       end;
    end;

    old_department_name:='***';
    cur_line:=11;
    k:=1;
      While not cdstabel.EOF
      do begin
//        memo3.lines.add(old_department_name+' >>> '+cdstabel.FieldByName('department_name').asstring);
          if  old_department_name<> cdstabel.FieldByName('department_name').asstring
          then begin
            cur_line:=  cur_line+1;
            Sheet.Cells[cur_line, 2].value:= cdstabel.FieldByName('department_name').asstring;

          end;

          cur_line:=  cur_line+1;
          cur_col:= 1;
          Sheet.Cells[cur_line,cur_col].value:= inttostr(k);
          k:=k+1;
          for m:=0 to cdbgtabel.Columns.Count-1
          do begin
//              text22 := text22+' '+cdbgtabel.Columns[i].FieldName;
              if Pos( uppercase('*'+cdbgtabel.Columns[m].FieldName+'*')  ,S_)>0
              then begin
                cur_col:=  cur_col+1;
                Sheet.Cells[cur_line,cur_col].value:= cdbgtabel.fields[m].AsString;
              end;

          end;

          old_department_name:= cdstabel.FieldByName('department_name').asstring;
          cdstabel.next;

      end;

     Sheet.Cells[cur_line+5,1].value:= footer1 ;
     Sheet.Cells[cur_line+8,1].value:= footer2 ;
   end; //1


  WorkBook.WorkSheets[1].Select;
  App.Visible:=true;
  App:=unassigned;

end;

procedure TBOKForm.BitBtn137Click(Sender: TObject);
begin
  if cdsTabel.State in [dsedit]
  then cdsTabel.post;

end;

procedure TBOKForm.BitBtn135Click(Sender: TObject);
begin
  gbTabelWork.visible:=false;
  if gbTabel.Visible
  then gbTabel.Visible:=false
  else begin
         gbTabel.Visible:=true;
         mcTabel.date:=strtodate(bankdate);
       end;

end;

procedure TBOKForm.MCTabelClick(Sender: TObject);
begin
  memotabel.lines.add(datetostr(mctabel.date));
end;

procedure TBOKForm.bbGotovoGbTabelClick(Sender: TObject);
var i:integer;
 sql_,s, day_char:string;
  TabelDate : string;
  sqlparams_ : tparams;
  sqlparams2_ : tparams;
begin

        If Application.MessageBox(PChar( 'Внести изменения?'), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes
        Then Begin
          if memotabel.lines.count=0
          then begin
            showmessage('список пуст! не указана ни одна дата.');
          end else
          try
  sqlparams_ := tparams.Create;
  sqlparams2_ := tparams.Create;
//showmessage(inttostr(Dayofweek(now)));
  TabelDate:=medBankDate.text;
  s:=' ';
{
   : day_char:='(П) - Праздничный день
   : day_char:='(В) - Рабочий Выходной
   : day_char:='(2) - 0.25 ставки
   : day_char:='(4) - полставки
   : day_char:='(6) - 0.75 ставки
   : day_char:='(8) - Рабочий
   : day_char:='(*) - Выходной
   : day_char:='(С) - Субботник
   : day_char:='(V) - Открытый баланс
   : day_char:='(S) - Мед. справка
   : day_char:='(#) - Отпуск без сохранения
   : day_char:='(.) - Не входящий в расчет
   : day_char:='(О)- Трудовой отпуск
   : day_char:='(Б) - Больничный
   : day_char:='(К) - командировка
   : day_char:='(Д) - Декретный отпуск
   : day_char:='(У) - Ученический отпуск
}
  case rgTabel.ItemIndex of
  0 : day_char:='П';
  1 : day_char:='В';
  2 : day_char:='2';
  3 : day_char:='4';
  4 : day_char:='6';
  5 : day_char:='8';
  6 : day_char:='*';
  7 : day_char:='С';
  8 : day_char:='V';
  9 : day_char:='S';
  10 : day_char:='#';
  11 : day_char:='.';
  12 : day_char:='О';
  13 : day_char:='Б';
  14 : day_char:='К';
  15 : day_char:='Д';
  16 : day_char:='У';
  end;

  if edPrimFreeDays1.text ='' then edPrimFreeDays1.text:=' ';


  for i:=0 to memotabel.lines.count-1
  do begin
    if memotabel.Lines.Strings[i]<>''
    then begin
      sqlparams_.Clear;
  //    sqlparams_.CreateParam(ftDate,'P_DAY'+copy(memotabel.Lines.Strings[i],1,2),ptInput);
  //    sqlparams_.ParamByName('P_DAY'+copy(memotabel.Lines.Strings[i],1,2)).Value := strtodate(memotabel.Lines.Strings[i]);
      sqlparams_.CreateParam(ftDate,'P_DAY',ptInput);
      sqlparams_.ParamByName('P_DAY').Value := strtodate(memotabel.Lines.Strings[i]);
      execSql('delete from ok_freedays where branch=info.getday '+
       ' and v_date=:P_DAY',sqlparams_);

      sqlparams2_.Clear;
      sqlparams2_.CreateParam(ftDate,'P_DAY',ptInput);
      sqlparams2_.ParamByName('P_DAY').Value := strtodate(memotabel.Lines.Strings[i]);
      sqlparams2_.CreateParam(ftString,'P_SIMBOL',ptInput);
      sqlparams2_.ParamByName('P_SIMBOL').Value := day_char;
      sqlparams2_.CreateParam(ftString,'P_COMMENTS',ptInput);
      sqlparams2_.ParamByName('P_COMMENTS').Value := edPrimFreeDays1.text;
      sqlparams2_.CreateParam(ftInteger,'P_USERID',ptInput);
      sqlparams2_.ParamByName('P_USERID').Value := userid;

      execSql('insert into ok_freedays (BRANCH,PERSONAL_CODE,V_DATE,SIMBOL,COMMENTS,EMP_CODE,INS_DATE)'+
        ' select distinct branch,personal_code,:P_DAY,:P_SIMBOL,:P_COMMENTS,:P_USERID,sysdate'+
        ' from ok_tabel'+
        ' where branch='''+branch+''' and tabel_month='+copy(TabelDate,4,2)+
        ' and tabel_year='+copy(TabelDate,7,4) ,sqlparams2_);



      if s=' '
      then s := ' day'+copy(memotabel.Lines.Strings[i],1,2)+'='''+day_char+''''
      else begin
        if pos(copy(memotabel.lines.Strings[i],1,2),s)=0
        then s := s+ ',day'+copy(memotabel.lines.Strings[i],1,2)+'='''+day_char+'''';
      end;
    end;
  end;

  sql_:='update ok_tabel set '+s+
    ' where branch='''+branch+''' and tabel_month='+copy(TabelDate,4,2)+' and tabel_year='+copy(TabelDate,7,4)  ;

            execsql(sql_);
            execsql('commit');
      //memotabel.Lines.add(sql_);
          Except on e:exception
            do begin
      //memotest.lines.add(sql_);
              execsql('rollback');
              ShowMessage(sql_+#13+e.message);
            end;
          End;
        end;

   cdstabel.refresh;

end;

procedure TBOKForm.bbClearGbTabelClick(Sender: TObject);
begin
  memotabel.clear;
end;

procedure TBOKForm.bbCloseGbTabelClick(Sender: TObject);
begin
  gbtabel.visible:=false;

end;

procedure TBOKForm.ClientDBGrid4CellClick(Column: TColumn);
begin
  memotabelWorklist.lines.add(cdsTabel.fieldbyname('personal_code').asstring+')  '+
    cdsTabel.fieldbyname('fio').asstring +'        '+cdsTabel.fieldbyname('tabno').asstring);
end;

procedure TBOKForm.BitBtn145Click(Sender: TObject);
begin
  MemoTabelworkDate.clear;

end;

procedure TBOKForm.BitBtn146Click(Sender: TObject);
begin
  MemoTabelworklist.clear;
end;

procedure TBOKForm.BitBtn144Click(Sender: TObject);
begin
  gbTabelWork.visible:=false;

end;

procedure TBOKForm.BitBtn140Click(Sender: TObject);
begin
  gbTabel.Visible:=false;
  if gbTabelWork.visible
  then gbTabelWork.visible:=false
  else begin
     gbTabelWork.visible:=true;
     mcTabelwork.date:=strtodate(bankdate);
  end;

end;

procedure TBOKForm.mcTabelworkClick(Sender: TObject);
begin
  memotabelworkdate.lines.add(datetostr(mctabelwork.date));
end;

procedure TBOKForm.BitBtn139Click(Sender: TObject);
var i,j, pos_pp:integer;
 sql_,s,pp_s, day_char, pers_code:string;
  TabelDate,oneline : string;
   Day, Time, Bd, Ed,DaysInAMonth_ : Word;
  DatTmp : TdateTime;
  //HolDay,
  D, SqlT, T, Tmp, Clock : String;
   curr_m, next_m, curr_y, next_y,  otpusk_char,er_mes: string;
     sqlparams_ : tparams;
     sqlparams2_ : tparams;
begin
//showmessage(inttostr(Dayofweek(now)));
  sqlparams_ :=tparams.Create;
  sqlparams2_ :=tparams.Create;

    if MemoTabelworkDate.lines.count=0
    then begin
      showmessage('Список пуст - ни указан ни одна дата.');
      exit;
    end;

    if MemoTabelworkList.lines.count=0
    then begin
      showmessage('Список пуст - нет сотрудников.');
      exit;
    end;

    If Application.MessageBox(PChar( 'Внести изменения?'), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes
    Then Begin

    TabelDate:=medBankDate.text;

    curr_m:= copy(TabelDate,4,2)  ;
    curr_y:= copy(TabelDate,7,4)  ;
    if curr_m='12'
    then begin
      next_m:='01';
      next_y:= inttostr(strtoint(curr_y)+1);
    end else begin
      next_m:= inttostr(strtoint(curr_m)+1);
      next_y:=  curr_y;
    end;

//    DaysInAMonth_:=DaysInAMonth(strtoint(curr_y),strtoint(curr_m));
    DaysInAMonth_:=DaysInAMonth(strtoint(curr_y),strtoint(curr_m));

    if RG_avans.itemindex=0 then
    case DaysInAMonth_ of
      28: begin
            cdbgtabel.columns[39].Visible:=false;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      29: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      30: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=false;
          end;
      31: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=TRUE;
          end;
    end;

    s:=' ';
    pp_s:=' ';
    case rgTabelwork.ItemIndex of
      0 : day_char:='П';
      1 : day_char:='В';
      2 : day_char:='2';
      3 : day_char:='4';
      4 : day_char:='6';
      5 : day_char:='8';
      6 : day_char:='*';
      7 : day_char:='С';
      8 : day_char:='V';
      9 : day_char:='S';
      10 : day_char:='#';
      11 : day_char:='.';
      12 : day_char:='О';
      13 : day_char:='Б';
      14 : day_char:='К';
      15 : day_char:='Д';
      16 : day_char:='У';
    end;

    for i:=0 to memotabelworklist.lines.count-1
    do begin
        if memotabelworklist.Lines.Strings[i]<>''
        then begin
          oneline:=  memotabelworklist.Lines.Strings[i];
          pos_pp:=pos(')',oneline);
          pers_code:= copy(oneline,1,pos_pp-1);
          if pp_s=' '
          then pp_s := pers_code
          else pp_s := pp_s+ ','+pers_code;
        end;
    end;

      for i:=0 to memotabelworkdate.lines.count-1
      do begin
        if memotabelworkdate.Lines.Strings[i]<>''
        then begin
          sqlparams_.Clear;
          sqlparams_.CreateParam(ftDate,'P_DAY',ptInput);
          sqlparams_.ParamByName('P_DAY').Value := strtodate(memotabelworkdate.Lines.Strings[i]);
          execSql('delete from ok_freedays where branch=info.getday '+
           ' and personal_code in ('+pp_s+')'+
           ' and v_date=:P_DAY ', sqlparams_);
          sqlparams2_.Clear;
          sqlparams2_.CreateParam(ftDate,'P_DAY',ptInput);
          sqlparams2_.ParamByName('P_DAY').Value := strtodate(memotabelworkdate.Lines.Strings[i]);
          sqlparams2_.CreateParam(ftString,'P_SIMBOL',ptInput);
          sqlparams2_.ParamByName('P_SIMBOL').Value := day_char;
          sqlparams2_.CreateParam(ftString,'P_COMMENTS',ptInput);
          sqlparams2_.ParamByName('P_COMMENTS').Value := edPrimFreeDays1.text;
          sqlparams2_.CreateParam(ftInteger,'P_USERID',ptInput);
          sqlparams2_.ParamByName('P_USERID').Value := userid;

          execSql('insert into ok_freedays (BRANCH,PERSONAL_CODE,V_DATE,SIMBOL,COMMENTS,EMP_CODE,INS_DATE)'+
            ' select distinct branch,personal_code,:P_DAY,:P_SIMBOL,:P_COMMENTS,:P_USERID,sysdate'+
            ' from ok_tabel'+
            ' where branch='''+branch+''' and tabel_month='+copy(TabelDate,4,2)+' and tabel_year='+copy(TabelDate,7,4)+
            ' and personal_code in ('+pp_s+')',sqlparams2_ );

          if s=' '
          then s := ' day'+copy(memotabelworkdate.Lines.Strings[i],1,2)+'='''+day_char+''''
          else begin
            if pos(copy(memotabelworkdate.lines.Strings[i],1,2),s)=0
            then s := s+ ',day'+copy(memotabelworkdate.lines.Strings[i],1,2)+'='''+day_char+'''';
          end;
        end;
      end;


        sql_:='update ok_tabel set '+s+
          ' where branch='''+branch+''' '+
          ' and personal_code in ('+pp_s+')'+
          ' and tabel_month='+copy(TabelDate,4,2)+' and tabel_year='+copy(TabelDate,7,4)  ;

          try

            execsql(sql_);

            execsql('commit');

          Except on e:exception
            do begin

              execsql('rollback');
              ShowMessage(sql_+#13+e.message);
            end;
          End;
        end;
   cdstabel.refresh;

end;

procedure TBOKForm.BitBtn141Click(Sender: TObject);
var curr_m,  curr_y  : string;
  DaysInAMonth_ : word;
  TabelDate : string;
begin
//showmessage(inttostr(Dayofweek(now)));
  TabelDate:=medBankDate.text;
  GB_tabel_date.caption := ' Табель '+TabelDate;

    curr_m:= copy(TabelDate,4,2)  ;
    curr_y:= copy(TabelDate,7,4)  ;

  medBankDate.text := '01.'+curr_m+'.'+curr_y;
  TabelDate:=medBankDate.text;
  GB_tabel_date.caption := ' Табель '+TabelDate;
    
    DaysInAMonth_:=DaysInAMonth(strtoint(curr_y),strtoint(curr_m));

    case DaysInAMonth_ of
      28: begin
            cdbgtabel.columns[39].Visible:=false;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      29: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=false;
            cdbgtabel.columns[41].Visible:=false;
          end;
      30: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=false;
          end;
      31: begin
            cdbgtabel.columns[39].Visible:=TRUE;
            cdbgtabel.columns[40].Visible:=TRUE;
            cdbgtabel.columns[41].Visible:=TRUE;
          end;
    end;

   loaddata(cdsTabel,'select a.* from ok_tabel a where branch='''+curbranch+''' and tabel_month='+copy(TabelDate,4,2)+' and tabel_year='+copy(TabelDate,7,4)+' order by department_code,nn' );

end;

procedure TBOKForm.actKursExecute(Sender: TObject);
begin
  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actREPORTS.Checked     := False ;
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

  pc.ActivePage:=TabKurs;
  ActDetailUndoExecute(nil);

  if (not cdsS_STR.Active) then
  Begin
    LoadData(cdsS_STR, SQL_S_STR);
  End;


  If cdsSSOKkv_kurs_SET.Active
  Then begin
  end else begin

  ///////////////////
  {
    If cdsok_kurs2.Active Then Exit;
    cdsok_kurs2.DisableControls;
    loaddata(cdsok_kurs2,'select a.branch,a.personal_code,b.* from ok_kurs a,ss_ok_kv_kurs b where branch='''+curbranch+''' and a.KV_KURS_CODE=b.KV_KURS_CODE');


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
  }
  ///////////////////
    cdsSSOKkv_kurs_SET.DisableControls;
    LOADDATA(CDSSSOKkv_kurs_SET,      SQL_SSOKkv_kurs_SET);
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
  end;

  if bosslevel='1'
  then begin loaddata(cdsok_kurs,'select a.branch,a.personal_code,'+
    ' p.FAMILY||'' ''||p.FIRST_NAME||'' ''||p.PATRONYMIC fio,'+
    ' substr(ok_service.GET_POSTNAME(p.post_code),1,200) post_code_show,'+
    ' substr(ok_service.GET_DEPARTMENTNAME(p.department_code),1,200) department_code_show,'+
    ' substr(ok_service.GET_HIGH_NAME(p.department_code),1,200) HIGH_NAME,'+
    ' b.* from ok_personal p,ok_kurs a,ss_ok_kv_kurs b '+
    ' where a.KV_KURS_CODE=b.KV_KURS_CODE'+
    ' and p.branch=a.branch'+
    ' and p.personal_code=a.personal_code');
  end else begin loaddata(cdsok_kurs,'select a.branch,a.personal_code,'+
    ' p.FAMILY||'' ''||p.FIRST_NAME||'' ''||p.PATRONYMIC fio,'+
    ' substr(ok_service.GET_POSTNAME(p.post_code),1,200) post_code_show,'+
    ' substr(ok_service.GET_DEPARTMENTNAME(p.department_code),1,200) department_code_show,'+
    ' substr(ok_service.GET_HIGH_NAME(p.department_code),1,200) HIGH_NAME,'+
    ' b.* from ok_personal p,ok_kurs a,ss_ok_kv_kurs b '+
    ' where p.branch='''+curbranch+''' and a.KV_KURS_CODE=b.KV_KURS_CODE'+
    ' and p.branch=a.branch'+
    ' and p.personal_code=a.personal_code');
  end;

  TabSheet11Show(nil);

end;

procedure TBOKForm.BitBtn142Click(Sender: TObject);
var sql_:string;
    k:integer;
begin

  if cdsSSOKkv_kurs_SET.fieldbyname('kv_kurs_code').asstring=''
  then begin
    showmessage('укажите Курс повышения квалификации.');
    exit;
  end;

  sql_:='select count(*) from ok_kurs '+
      ' where branch='''+ cdsokpersonal.fieldbyname('branch').asstring+''''+
      ' and personal_code='+cdsokpersonal.fieldbyname('personal_code').asstring+
      ' and kv_kurs_code='+cdsSSOKkv_kurs_SET.fieldbyname('kv_kurs_code').asstring;
  k:=getsqlresult(sql_);

  if k>0
  then begin
    showmessage('Сотрудник уже в группе.');
    exit;
  end;


  try

    if cdsSSOKkv_kurs_SET.fieldbyname('ORDER_BUSINESS_VOYAGE').asstring ='1'
    then begin

      sql_:= 'insert into ok_business_voyage (branch,PERSONAL_CODE, kv_kurs_code,'+
        'EMP_CODE,INS_DATE,'+
        'date_open,date_close,number_day,org_business_voyage_code,'+
        'theme_business_voyage_code,CODE_STR,order_num,order_date,prim,city_code'+
        ') values ('+
        ''''+cdsokpersonal.fieldbyname('branch').asstring+''','+
        cdsokpersonal.fieldbyname('personal_code').asstring+','+
//        ''''+cdsokpersonal.fieldbyname('family').asstring+' '+
//        cdsokpersonal.fieldbyname('first_name').asstring+' '+
//        cdsokpersonal.fieldbyname('patronymic').asstring+''','+
        cdsSSOKkv_kurs_SET.fieldbyname('kv_kurs_code').asstring+','+
        userid+',sysdate,'+
        'to_date('''+cdsSSOKkv_kurs_SET.fieldbyname('date_open').asstring+''',''dd.mm.yyyy''),'+
        'to_date('''+cdsSSOKkv_kurs_SET.fieldbyname('date_close').asstring+''',''dd.mm.yyyy''),'+
        cdsSSOKkv_kurs_SET.fieldbyname('number_day').asstring+','+
        cdsSSOKkv_kurs_SET.fieldbyname('org_business_voyage_code').asstring+','+
        cdsSSOKkv_kurs_SET.fieldbyname('theme_business_voyage_code').asstring+','+
        ''''+cdsSSOKkv_kurs_SET.fieldbyname('CODE_STR').asstring  +''','+
        ''''+cdsSSOKkv_kurs_SET.fieldbyname('order_num').asstring +''','+
        'to_date('''+cdsSSOKkv_kurs_SET.fieldbyname('order_date').asstring+''',''dd.mm.yyyy''),'+
        ''''+cdsSSOKkv_kurs_SET.fieldbyname('prim').asstring+''','+
        cdsSSOKkv_kurs_SET.fieldbyname('city_code').asstring+')';
    end;

      execsql( sql_ );

      sql_:= 'insert into ok_kurs (branch,PERSONAL_CODE,fio,kv_kurs_code,EMP_CODE,INS_DATE '+
        ') values ('+
        ''''+cdsokpersonal.fieldbyname('branch').asstring+''','+
        cdsokpersonal.fieldbyname('personal_code').asstring+','+
        ''''+cdsokpersonal.fieldbyname('family').asstring+' '+
        cdsokpersonal.fieldbyname('first_name').asstring+' '+
        cdsokpersonal.fieldbyname('patronymic').asstring+''','+
        cdsSSOKkv_kurs_SET.fieldbyname('kv_kurs_code').asstring+','+
        userid+',sysdate)';
      execsql( sql_ );

    execsql( 'commit' );
  except on e:exception
    do begin
      execsql( 'rollback' );

      if pos(e.message,'OK_BUSINESS_VOYAGE_PK')>0
      then begin
        cdsok_business_voyage.refresh;
        showmessage('сотрудник уже отправлен в командировку с датой начала '+
          '"'+cdsSSOKkv_kurs_SET.fieldbyname('date_open').asstring+'"'+#13+
          ' смотрите вкладку "Командировки"'+
          #13+sql_+#13+e.message);
      end else begin
        if pos(e.message,'OK_KURS_PK')>0
        then begin
          cdsOK_Kurs2.refresh;
          showmessage('сотрудник уже отправлен на эти курсы'+
            #13+sql_+#13+e.message);
        end else begin
          showmessage(sql_+#13+e.message);
        end;
      end;

    end;
  end;

  if cdsokkurs.Active
  then cdsokkurs.refresh;

  if cdskursdva.Active
  then cdskursdva.refresh;

  if cdsOK_Kurs.Active
  then cdsOK_Kurs.refresh;

  if cdsOK_Kurs2.Active
  then cdsOK_Kurs2.refresh;

  if cdsOK_Kurs3.Active
  then cdsOK_Kurs3.refresh;

  if cdsok_business_voyage.Active
  then cdsok_business_voyage.refresh;

  if cdsOK_kurs.Active
  then cdsOK_kurs.refresh;

  if cdsSSOKkv_kurs_SET.active
  then cdsSSOKkv_kurs_SET.refresh;



end;

procedure TBOKForm.cdsOKKursAfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.BitBtn143Click(Sender: TObject);
var sql_:string;
begin

  try
      sql_:= 'delete from ok_kurs '+
      ' where branch='''+ cdsOK_Kurs2.fieldbyname('branch').asstring+''''+
      ' and personal_code='+cdsOK_Kurs2.fieldbyname('personal_code').asstring+
      ' and kv_kurs_code='+cdsOK_Kurs2.fieldbyname('kv_kurs_code').asstring;
    execsql( sql_ );
      sql_:= 'delete from ok_business_voyage '+
      ' where branch='''+ cdsOK_Kurs2.fieldbyname('branch').asstring+''''+
      ' and personal_code='+cdsOK_Kurs2.fieldbyname('personal_code').asstring+
      ' and kv_kurs_code='+cdsOK_Kurs2.fieldbyname('kv_kurs_code').asstring;
    execsql( sql_ );
    execsql( 'commit' );
  except on e:exception
    do begin
      execsql( 'rollback' );
      showmessage(sql_+#13+e.message);
    end;
  end;

  if cdsokkurs.Active
  then cdsokkurs.refresh;

  if cdskursdva.Active
  then cdskursdva.refresh;

  if cdsOK_Kurs.Active
  then cdsOK_Kurs.refresh;

  if cdsOK_Kurs2.Active
  then cdsOK_Kurs2.refresh;

  if cdsOK_Kurs3.Active
  then cdsOK_Kurs3.refresh;

  if cdsok_business_voyage.Active
  then cdsok_business_voyage.refresh;

  if cdsOK_kurs.Active
  then cdsOK_kurs.refresh;

  if cdsSSOKkv_kurs_SET.active
  then cdsSSOKkv_kurs_SET.refresh;

end;

procedure TBOKForm.ListDetailClick(Sender: TObject);
begin
    PCDetails.ActivePageIndex := StrToInt( TData(ListDetail.Items.Objects[ListDetail.ItemIndex]).Id );

end;

procedure TBOKForm.cdsOK_kursAfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.TabSheet11Show(Sender: TObject);
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
  end else begin loaddata(cdsok_kurs2,'select a.branch,a.personal_code,'+
    ' p.FAMILY||'' ''||p.FIRST_NAME||'' ''||p.PATRONYMIC fio,'+
    ' substr(ok_service.GET_POSTNAME(p.post_code),1,200) post_code_show,'+
    ' substr(ok_service.GET_DEPARTMENTNAME(p.department_code),1,200) department_code_show,'+
    ' substr(ok_service.GET_HIGH_NAME(p.department_code),1,200) HIGH_NAME,'+
    ' b.* from ok_personal p,ok_kurs a,ss_ok_kv_kurs b '+
    ' where p.branch='''+curbranch+''' and a.KV_KURS_CODE=b.KV_KURS_CODE'+
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

procedure TBOKForm.cdsOK_Kurs2AfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.DBEdit134KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    VK_RETURN:
      begin
        if (strtodate(dbedHospitalDateOpen.text)) > (strtodate(DBEdit134.text))
        then begin
          showmessage('Дата выдачи больничного '+DBEdit134.text+' должна быть больше или равна дате открытия больничного '+dbedHospitalDateOpen.text);
        end else begin
          SelectNext(ActiveControl, True, True);
        end;
      end;
  end;

end;

procedure TBOKForm.CDSok_zp_rateAfterOpen(DataSet: TDataSet);
begin
    CDSok_zp_rate.MasterSource    := dsOKPersonal;
    CDSok_zp_rate.IndexFieldNames := 'branch;personal_code';
    CDSok_zp_rate.MasterFields    := 'branch;personal_code';
    CDSok_zp_rate.FieldByName('zp_rate_date').EditMask  := '!09/09/0099;1;_';
    CDSok_zp_rate.FieldByName('zp_rate_order_date').EditMask  := '!09/09/0099;1;_';

end;

procedure TBOKForm.TabSheet12Show(Sender: TObject);
begin
  if cdsok_zp_rate.Active then
  Begin
    Exit;
  End;

  LoadData(cdsok_zp_rate, SQL_ok_zp_rate+' where branch = '+''''+curBranch +'''');
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

procedure TBOKForm.DBEd_zp_rate_dateKeyDown(Sender: TObject; var Key: Word;
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

// подсчитать поле "Фактическое окладо"

//        DBEd_zp_rate_date.text
//  DBLCB_zp_rate.text


        sql_:='select round(salary*'+DBLCB_zp_rate.text+',2) from ss_ok_category sokc , ok_personal okp,'+
         ' ss_ok_post sokp'+
         ' where branch='''+branch+''''+
         ' and okp.personal_code='+cdsokpersonal.fieldbyname('personal_code').asstring+
         ' and okp.post_code=sokp.post_code'+
         ' and sokc.category_code=sokp.category_code'+
         ' and sokp.state_notes=''A'''+
         ' and sokc.state_notes=''A''';

        try
          v:= getsqlresult(sql_);
          if not varisnull(v)
          then begin
            cdsok_zp_rate.fieldbyname('zp_fakt').asstring:= v;
          end else begin
            sql_:='select ok_service.get_postname('+cdsokpersonal.fieldbyname('post_code').asstring+') from dual';
            v:=  getsqlresult(sql_);
            if not varisnull(v)
            then showmessage('для должности '+v+' не указан разряд либо не введен тариф')
            else  showmessage('для должности сотрудника не указан разряд либо не введен тариф');
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

procedure TBOKForm.dbedCOD_OBL_LIVEKeyDown(Sender: TObject; var Key: Word;
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

procedure TBOKForm.dbedCOD_OBL_birthKeyDown(Sender: TObject; var Key: Word;
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

procedure TBOKForm.DBLookupComboBox27Click(Sender: TObject);
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

procedure TBOKForm.DBLookupComboBox9Click(Sender: TObject);
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

procedure TBOKForm.ed_iias_live_regionChange(Sender: TObject);
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

procedure TBOKForm.edRegion_RO2Change(Sender: TObject);
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

procedure TBOKForm.edDistrRO2Change(Sender: TObject);
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

procedure TBOKForm.cdsOKPeriodAfterScroll(DataSet: TDataSet);
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

procedure TBOKForm.cdsOKPeriodAfterRefresh(DataSet: TDataSet);
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

procedure TBOKForm.BitBtn151Click(Sender: TObject);
begin
  cdsokleave.Edit;
  cdsokleave.FieldByName('date_recall_begin').Value:=NULL;
  cdsokleave.FieldByName('date_recall_end').Value:=NULL;
  cdsokleave.FieldByName('period_leave_recall').Value:=NULL;
  cdsokleave.FieldByName('date_order_recall').Value:=NULL;
  cdsokleave.FieldByName('num_order_recall').Value:=NULL;
  cdsokleave.post;

end;

procedure TBOKForm.actRefreshRefExecute(Sender: TObject);
begin
//

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
   LOADDATA(CDSSSOKPOST_SET, SQL_SSOKPOST_SET);
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

procedure TBOKForm.BitBtn154Click(Sender: TObject);
var
  sl_file : TStringList;

begin

 sl_file := TStringList.Create;
 sl_file.Clear;
 sl_file.LoadFromFile('C:\7.txt');
 sl_file.Sort;
 sl_file.SaveToFile('C:\7_.txt');

end;

procedure TBOKForm.dblcb_iias_birth_distrEnter(Sender: TObject);
begin
   CDS_iias_birth_distr.filtered:=false;
   CDS_iias_birth_distr.filter:='REGION_ID='+
      CDS_iias_birth_region.fieldbyname('REGION_ID').asstring;
   CDS_iias_birth_distr.filtered:=true;

end;

procedure TBOKForm.dblcb_iias_birth_distrCloseUp(Sender: TObject);
begin
   CDS_iias_birth_distr.filtered:=false;
   CDS_iias_birth_distr.filter:='';

end;

procedure TBOKForm.dblcb_iias_live_distrCloseUp(Sender: TObject);
begin
   CDS_iias_live_distr.filtered:=false;
   CDS_iias_live_distr.filter:='';

end;

procedure TBOKForm.dblcb_iias_live_distrEnter(Sender: TObject);
begin
   CDS_iias_live_distr.filtered:=false;
   CDS_iias_live_distr.filter:='REGION_ID='+
     CDS_iias_live_region.fieldbyname('REGION_ID').asstring;
   CDS_iias_live_distr.filtered:=true;

end;

procedure TBOKForm.dblcbDistrNewCloseUp(Sender: TObject);
begin
   CDSDistrNew.filtered:=false;
   CDSDistrNew.filter:='';

end;

procedure TBOKForm.dblcbDistrNewEnter(Sender: TObject);
begin
   CDSDistrNew.filtered:=false;
   CDSDistrNew.filter:='REGION_ID='+
     CDSregionnew.fieldbyname('REGION_ID').asstring;
   CDSDistrNew.filtered:=true;

end;

procedure TBOKForm.DBLCBdistrCloseUp(Sender: TObject);
begin
   CDS_DBLCBdistr.filtered:=false;
   CDS_DBLCBdistr.filter:='';

end;

procedure TBOKForm.DBLCBdistrEnter(Sender: TObject);
begin
   CDS_DBLCBdistr.filtered:=false;
   CDS_DBLCBdistr.filter:='REGION_ID='+
     cds_DBLCB_SRegion.fieldbyname('REGION_ID').asstring;
   CDS_DBLCBdistr.filtered:=true;

end;

procedure TBOKForm.dblcbDistrRO_3CloseUp(Sender: TObject);
begin
   CDS_dblcbDistrRO_3.filtered:=false;
   CDS_dblcbDistrRO_3.filter:='';

end;

procedure TBOKForm.dblcbDistrRO_2CloseUp(Sender: TObject);
begin
   CDS_dblcbDistrRO_2.filtered:=false;
   CDS_dblcbDistrRO_2.filter:='';

end;

procedure TBOKForm.dblcbDistrRO_3Enter(Sender: TObject);
begin
   CDS_dblcbDistrRO_3.filtered:=false;
   CDS_dblcbDistrRO_3.filter:='REGION_ID='+
     cds_dblcbRegion_RO3.fieldbyname('REGION_ID').asstring;
   CDS_dblcbDistrRO_3.filtered:=true;

end;

procedure TBOKForm.dblcbDistrRO_2Enter(Sender: TObject);
begin
   CDS_dblcbDistrRO_2.filtered:=false;
   CDS_dblcbDistrRO_2.filter:='REGION_ID='+
     cds_dblcbRegion_RO2.fieldbyname('REGION_ID').asstring;
   CDS_dblcbDistrRO_2.filtered:=true;

end;

procedure TBOKForm.BitBtn155Click(Sender: TObject);
var s :string;
begin

  s:='Вы уверены что хотите Рассчитать оклады по справочнику "Тарифная сетка" по всем должностям и сотрудникам?';
  If Application.MessageBox(PChar(s), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes
  then begin
    try
      execSQL('begin OK_SERVICE.CHECK_SALARY_FAKT('''+branch+'''); end;');
      execSql('commit');
    except on e:exception
      do begin
        execsql('rollback');
        showmessage(e.Message);
      end;
    end;
  end;

  if cdsOKStat.Active then cdsOKStat.refresh;
  if cdsok_zp_rate.Active then   cdsok_zp_rate.Refresh;

end;

procedure TBOKForm.actStatPersonalExecute(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant;
 i, col,row,nn:integer;
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname,oldpost: String;
  total_count:integer;
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
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat)'+
        ' and b.state_notes=''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

{  sql_ := 'select * from ('
       'select /*+ INDEX ( d SS_OK_CATEGORY_PK) */ '+
       'c.post_name field1 ,round(d.category_name) field2,d.category_rate,'+
       ' quantity_post,salary_fact, round(quantity_post*salary_fact,2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d'+
       ' where a.department_code=b.department_code'+
       ' and a.post_code=c.post_code'+
       ' and d.category_code=c.category_code'+
       ' connect by b.high_dep_code = prior b.department_code+
       ' start with b.high_dep_code is null) ss'+
       ' order by d.category_code';
}
{
select level, d.department_id id, d.DEPARTMENT_CODE ,'+
    ' d.DEPARTMENT_CODE||'') ''||d.department_name name_, d.department_code,'+
    ' d.department_name,  d.department_type_code,'+
        ' d.high_dep_code, d.level_department_code, d.department_num '+
        ' from ss_ok_department d
         where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null
}

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
//    NumFormat := '# ##0.00_р_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_р_.';

//    V.Cells[7,2].
    DateFormat := 'ДД.ММ.ГГГГ';

  end;

  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // формирование шапки
  V.Cells[row, i ].Value := 'Наименование';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := 'Тарифный';
  inc(i);
  V.Cells[row, i ].Value := 'Количество';
  inc(i);
  V.Cells[row, i ].Value := 'Размер';
  inc(i);
  V.Cells[row, i ].Value := 'Всего';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := 'отделов,';
  inc(i);
  V.Cells[row, i ].Value := 'Разряд';
  inc(i);
  V.Cells[row, i ].Value := 'Коэффициент';
  inc(i);
  V.Cells[row, i ].Value := 'рабочих';
  inc(i);
  V.Cells[row, i ].Value := 'должностного';
  inc(i);
  V.Cells[row, i ].Value := 'за';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := 'должностей';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := 'мест';
  inc(i);
  V.Cells[row, i ].Value := 'оклада';
  inc(i);
  V.Cells[row, i ].Value := 'месяц';

  total_count:=0;
  total_count2:=0;
  total_sum:=0;
  total_sum2:=0;

  olddepname:='x';
  oldpost:='x';
  While not cdsTempSource.Eof
  do begin
      sql_:='select '+
         ' c.post_name field1 ,round(d.category_name) field2,d.category_rate,'+
         ' quantity_post,salary_fact, round(quantity_post*salary_fact,2) field5,'+
         ' b.department_name,FAMILY||'' ''||FIRST_NAME||'' ''||nvl(PATRONYMIC,'' '') fio,'+
         ' ok_service.GET_STAVKA(okp.branch,okp.personal_code) stavka,'+
         ' round(to_number(ok_service.GET_STAVKA(okp.branch,okp.personal_code))*salary_fact,2) zarpl, '+
         ' to_number(ok_service.GET_STAVKA(okp.branch,okp.personal_code)) float_stavka '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp'+
         ' where okp.branch = '+''''+curBranch +''''+
         ' and a.department_code='+ cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
         ' and a.department_code=b.department_code'+
         ' and b.state_notes=''A'' '+
         ' and a.post_code=c.post_code'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and okp.status_code in (2,5)'+
         ' and d.category_code=c.category_code'+
         ' order by d.category_code';
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
          then total_count:= total_count+ cdsTemp.Fields[col].Asinteger;
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
      V.Cells[row, 1 ].Value := 'Всего по филиалу';

      sum2_:=inttostr(total_count);
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
      V.Cells[row, 1 ].Value := 'Главный бухгалтер';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := 'Директор  Департамента по работе';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := 'с персоналом';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := 'Председатель Правления';

  inc(row);
      sum2_:=inttostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := 'Всего по штату';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := 'Фонд оплаты труда';

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
      V.Cells[row, 2 ].Value := 'Штатное расписание';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' по состоянию на '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  V.Cells.Select;
  V.Columns.AutoFit;
  V.Visible := True; //так быстрее

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;
//
end;

procedure TBOKForm.actStatPersonalDepExecute(Sender: TObject);
var
 Save_Cursor:TCursor;
 V,Range: Variant;
 i, col,row,nn:integer;
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname: String;
  total_count:integer;
  total_sum:double;
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
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat)'+
        ' and b.state_notes=''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

{  sql_ := 'select * from ('
       'select /*+ INDEX ( d SS_OK_CATEGORY_PK) */ '+
       'c.post_name field1 ,round(d.category_name) field2,d.category_rate,'+
       ' quantity_post,salary_fact, round(quantity_post*salary_fact,2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d'+
       ' where a.department_code=b.department_code'+
       ' and a.post_code=c.post_code'+
       ' and d.category_code=c.category_code'+
       ' connect by b.high_dep_code = prior b.department_code+
       ' start with b.high_dep_code is null) ss'+
       ' order by d.category_code';
}
{
select level, d.department_id id, d.DEPARTMENT_CODE ,'+
    ' d.DEPARTMENT_CODE||'') ''||d.department_name name_, d.department_code,'+
    ' d.department_name,  d.department_type_code,'+
        ' d.high_dep_code, d.level_department_code, d.department_num '+
        ' from ss_ok_department d
         where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null
}

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
//    NumFormat := '# ##0.00_р_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_р_.';

//    V.Cells[7,2].
    DateFormat := 'ДД.ММ.ГГГГ';

  end;

  nn:=cdsTempSource.FieldCount-1;
  i:=1;
  // формирование шапки
  V.Cells[row, i ].Value := 'Наименование';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := 'Тарифный';
  inc(i);
  V.Cells[row, i ].Value := 'Количество';
  inc(i);
  V.Cells[row, i ].Value := 'Размер';
  inc(i);
  V.Cells[row, i ].Value := 'Всего';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := 'отделов,';

  inc(i);
  V.Cells[row, i ].Value := 'Разряд';

  inc(i);
  V.Cells[row, i ].Value := 'Коэффициент';

  inc(i);
  V.Cells[row, i ].Value := 'рабочих';

  inc(i);
  V.Cells[row, i ].Value := 'должностного';

  inc(i);
  V.Cells[row, i ].Value := 'за';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := 'должностей';

  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := 'мест';

  inc(i);
  V.Cells[row, i ].Value := 'оклада';

  inc(i);
  V.Cells[row, i ].Value := 'месяц';

  V.Range['A'+inttostr(row-3)+':'+'F'+inttostr(row)].Select;
  V.Columns.AutoFit;
//  selection.autofit;


  total_count:=0;
  total_sum:=0;

  olddepname:='x';

  While not cdsTempSource.Eof
  do begin
    sql_:='select '+
       ' c.post_name field1 ,round(d.category_name) field2,d.category_rate,'+
       ' quantity_post,salary_fact, round(quantity_post*salary_fact,2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d'+
       ' where a.branch = '+''''+curBranch +''''+
       ' and a.department_code='+ cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
       ' and a.department_code=b.department_code'+
       ' and b.state_notes=''A'' '+
       ' and a.post_code=c.post_code'+
       ' and d.category_code=c.category_code'+
       ' order by d.category_code';
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
            then total_count:= total_count+ cdsTemp.Fields[col].Asinteger;
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
      V.Cells[row, 1 ].Value := 'Всего по филиалу';

      sum2_:=inttostr(total_count);
      V.Cells[row,4].NumberFormat := NumFormat;
      V.Cells[row,4].Value:= trim(sum2_);

      sum2_:=floattostr(total_sum);
      V.Cells[row,6].NumberFormat := NumFormat;
      V.Cells[row,6].Value:= trim(sum2_);

      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := 'Главный бухгалтер';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := 'Директор  Департамента по работе';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := 'с персоналом';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := 'Председатель Правления';

  inc(row);
      sum2_:=inttostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := 'Всего по штату';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := 'Фонд оплаты труда';

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
      V.Cells[row, 2 ].Value := 'Штатное расписание';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' по состоянию на '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';


//  V.Cells.Select;
//  V.Columns.AutoFit;
  V.Visible := True; //так быстрее

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;
//
end;

procedure TBOKForm.BitBtn158Click(Sender: TObject);
var App:      OLEVariant;
//  i,j:      integer;
  Text_i, Text_iB: string;
  Text1a,Text2a,Text3a,Text4a,Text5a,Text6a,Text7a,Text8a,Text9a,Text10a: string;
  Text11a, Text12a, Text13a: string;
//  Text17,Text18,Text19,Text20,
  ErMes, Txt1,Txt2,Txt3,Txt4,Txt5,Txt6: string;
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
 total_count : integer;
 total_sum   : real;

begin

  ErMes := '';

  if cdsOKPersonal.FieldByName('education_title_code').AsString =''
  then begin
    erMes := erMes+'В данных сотрудника не указано Наименование образования сотрудника!'+#13;
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
   if (HeadBranch_='00974') or (HeadBranch_='09049') // or (1=1)
   then begin
     App := PrepareOle( 'pril06_kb.doc' ,'Word.Application');
     file_name_  := 'pril06_kb.doc';
   end else begin
     App := PrepareOle( 'pril06.doc' ,'Word.Application');
     file_name_  := 'pril06.doc';
   end;




  If VarIsNull(App) Then
  begin
    showmessage('Приложение ''Word'' не может открыть файл C:\NCI Bank\Ok\Templates\ '+file_name_ +#10#13+
           ' и не найден файл '+GetCurrentDir_templates+'\'+file_name_+#10#13+
    'Пожалуйста проверьте наличие этого файла.' );
    Exit;
  end;
//App.Visible:=true;
  try

    sql_:='select * from dual';
//    sql_:='select  '+
//      ' from '+
//      ' where ';
    loaddata(cdsTempSource,sql_);

    if text1a='' then text1a:='йук1';
    App.Selection.Find.Execute('<TEXT1A>', false, false, false, false, false,
           true, 1, false, text1a, 2);

    if text2a='' then text2a:='йук2';
    App.Selection.Find.Execute('<TEXT2A>', false, false, false, false, false,
           true, 1, false, text2a, 2);
    if text3a='' then text3a:='йук3';
    App.Selection.Find.Execute('<TEXT3A>', false, false, false, false, false,
           true, 1, false, text3a, 2);
    if text4a='' then text4a:='йук4';
    App.Selection.Find.Execute('<TEXT4A>', false, false, false, false, false,
           true, 1, false, text4a, 2);
    if text5a='' then text5a:='йук5';
    App.Selection.Find.Execute('<TEXT5A>', false, false, false, false, false,
           true, 1, false, text5a, 2);


    sql_ := 'App.Selection.GoTo(2, 1, 2, '''');';

    if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
    then begin
      App.Selection.GoTo(2, 1, 2, '');
    end else begin
      App.Selection.GoTo(2, 1, 2, '');
    end;

    sql_:='App.Selection.SelectRow;';
    App.Selection.SelectRow;

    sql_:='App.Selection.Copy;';
    App.Selection.Copy;

    total_count :=0;
    total_sum   :=0;
    While not cdsTempSource.eOF do
      begin
        total_count := total_count+cdstemp.fieldbyname('count_').asinteger;
        total_sum   := total_sum+  cdstemp.fieldbyname('sum_').asfloat;
        cdsTempSource.Next;

      end;
        txt1 := 'Всего по филиалу';
        txt2 := ' ';
        txt3 := ' ';
        txt4 := inttostr(total_count);
        txt5 := ' ';
        txt6 := floattostr(total_sum);
        App.Selection.Find.Execute('<TXT1>', false, false, false, false, false,
                                         true, 1, false, txt1, 1);
        App.Selection.Find.Execute('<TXT2>', false, false, false, false, false,
                                         true, 1, false, txt2, 1);
        App.Selection.Find.Execute('<TXT3>', false, false, false, false, false,
                                         true, 1, false, txt3, 1);
        App.Selection.Find.Execute('<TXT4>', false, false, false, false, false,
                                         true, 1, false, txt4, 1);
        App.Selection.Find.Execute('<TXT5>', false, false, false, false, false,
                                         true, 1, false, txt5, 1);
        App.Selection.Find.Execute('<TXT6>', false, false, false, false, false,
                                         true, 1, false, txt6, 1);

        sql_ := 'App.Selection.GoTo(2, 1, 2, '');';
        App.Selection.GoTo(2, 1, 2, '');
        sql_ := 'App.Selection.paste;';
        App.Selection.Paste;

    While not cdsTempSource.bOF do
    begin
      if 1<>1 // незакончено
      then begin
      end else begin
        txt1 := cdsTempSource.Fields[0].AsString;
        txt2 := cdsTempSource.Fields[1].AsString;
        txt3 := cdsTempSource.Fields[2].AsString;
        txt4 := cdsTempSource.Fields[3].AsString;
        txt5 := cdsTempSource.Fields[4].AsString;
        txt6 := cdsTempSource.Fields[5].AsString;
        App.Selection.Find.Execute('<TXT1>', false, false, false, false, false,
                                         true, 1, false, txt1, 1);
        App.Selection.Find.Execute('<TXT2>', false, false, false, false, false,
                                         true, 1, false, txt2, 1);
        App.Selection.Find.Execute('<TXT3>', false, false, false, false, false,
                                         true, 1, false, txt3, 1);
        App.Selection.Find.Execute('<TXT4>', false, false, false, false, false,
                                         true, 1, false, txt4, 1);
        App.Selection.Find.Execute('<TXT5>', false, false, false, false, false,
                                         true, 1, false, txt5, 1);
        App.Selection.Find.Execute('<TXT6>', false, false, false, false, false,
                                         true, 1, false, txt6, 1);
      end;
//        sql_ := 'App.Selection.InsertRows(1);';
//        App.Selection.InsertRows(1);
        sql_ := 'App.Selection.GoTo(2, 1, 2, '');';
        App.Selection.GoTo(2, 1, 2, '');
        sql_ := 'App.Selection.paste;';
        App.Selection.Paste;


      cdsTempSource.prior;
    end;

      App.Selection.Find.Execute('<TXT1>', false, false, false, false, false,
                                         true, 1, false, 'Наименование', 1);
      App.Selection.Find.Execute('<TXT2>', false, false, false, false, false,
                                         true, 1, false, 'Разряд', 1);
      App.Selection.Find.Execute('<TXT3>', false, false, false, false, false,
                                         true, 1, false, 'Коэффициент', 1);
      App.Selection.Find.Execute('<TXT4>', false, false, false, false, false,
                                         true, 1, false, 'Количество', 1);
      App.Selection.Find.Execute('<TXT5>', false, false, false, false, false,
                                         true, 1, false, 'Оклад', 1);
      App.Selection.Find.Execute('<TXT6>', false, false, false, false, false,
                                         true, 1, false, 'Всего', 1);


// до этой команды приложение word работает в фоновом режиме

//  App.Visible:=true;

//  V.Visible:=true;


   if (HeadBranch_ ='00974') or (HeadBranch_ ='09049') // or (1=1)
   then begin



   end;

   App.visible:=true;
   App.ActiveDocument.SaveAs('"C:\NCI Bank\Ok\Templates\temp.doc"');

 except
//  App.ActiveDocument.SaveAs('"C:\NCI Bank\Ok\Templates\temp.doc"');
  App.Application.Quit(false); // выход из ворда совсем без сохранения
  showmessage(ermes+#13+sql_);
//  App.Application.Quit(true); // выход из ворда с сохранением
//  V.Quit(false); // выход из ексцеля совсем без сохранения
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
//

end;



procedure TBOKForm.actStatStagExecute(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant;
 i, col,row,nn:integer;
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname,oldpost: String;
  total_count:integer;
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
        ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from ok_stat)'+
        ' and b.state_notes=''A'' '+
        ' connect by b.high_dep_code = prior b.department_code'+
        ' start with b.high_dep_code is null';

{  sql_ := 'select * from ('
       'select /*+ INDEX ( d SS_OK_CATEGORY_PK) */ '+
       'c.post_name field1 ,round(d.category_name) field2,d.category_rate,'+
       ' quantity_post,salary_fact, round(quantity_post*salary_fact,2) field5,'+
       ' b.department_name'+
       ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d'+
       ' where a.department_code=b.department_code'+
       ' and a.post_code=c.post_code'+
       ' and d.category_code=c.category_code'+
       ' connect by b.high_dep_code = prior b.department_code+
       ' start with b.high_dep_code is null) ss'+
       ' order by d.category_code';
}
{
select level, d.department_id id, d.DEPARTMENT_CODE ,'+
    ' d.DEPARTMENT_CODE||'') ''||d.department_name name_, d.department_code,'+
    ' d.department_name,  d.department_type_code,'+
        ' d.high_dep_code, d.level_department_code, d.department_num '+
        ' from ss_ok_department d
         where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null
}

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
//    NumFormat := '# ##0.00_р_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_р_.';

//    V.Cells[7,2].
    DateFormat := 'ДД.ММ.ГГГГ';

  end;

  nn:=cdsTempSource.FieldCount-1;
  // формирование шапки

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := 'ФИО';
  inc(i);
  V.Cells[row, i ].Value := 'Должность';
  inc(i);
  V.Cells[row, i ].Value := 'Разряд';
  inc(i);
  V.Cells[row, i ].Value := 'Общий';
  inc(i);
  V.Cells[row, i ].Value := 'Не банковский';
  inc(i);
  V.Cells[row, i ].Value := 'Внутри-системный';
  inc(i);
  V.Cells[row, i ].Value := 'Банковский';

  inc(row);
  i:=1;
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := ' ';
  inc(i);
  V.Cells[row, i ].Value := 'стаж';
  inc(i);
  V.Cells[row, i ].Value := 'стаж';
  inc(i);
  V.Cells[row, i ].Value := 'стаж';
  inc(i);
  V.Cells[row, i ].Value := 'стаж';

  total_count:=0;
  total_count2:=0;
  total_sum:=0;
  total_sum2:=0;

  olddepname:='x';
  oldpost:='x';
  While not cdsTempSource.Eof
  do begin
// сделать селект с параметрами
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
         ' c.post_name field1 ,round(d.category_name) field2,'+
         ' ok_service.GET_WORK_PERIOD(okp.branch,okp.personal_code,info.getday) "Общий стаж",'+
         ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,1) "Не банковский стаж",'+
         ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,3) "Внутри-системный стаж",'+
         ' ok_service.GET_WORK_PERIOD_BY_TYPE(okp.branch,okp.personal_code,info.getday,5) "Банковский стаж" '+
         ' from ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d, ok_personal okp'+
         ' where okp.branch = :P_BRANCH'+
         ' and a.department_code= :P_DEP'+
         ' and a.department_code=b.department_code'+
         ' and b.state_notes= :P_A'+
         ' and a.post_code=c.post_code'+
         ' and a.department_code=okp.department_code'+
         ' and a.post_code=okp.post_code'+
         ' and okp.status_code in ( :P_2 , :P_5 )'+
         ' and d.category_code=c.category_code'+
         ' order by d.category_code';
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
      V.Cells[row, 1 ].Value := 'Всего по филиалу';

      sum2_:=inttostr(total_count);
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
      V.Cells[row, 1 ].Value := 'Главный бухгалтер';
      inc(row);
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := 'Директор  Департамента по работе';
      inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := 'с персоналом';

  row:=1;
  inc(row);
      V.Cells[row, 5 ].NumberFormat := StrFormat;
      V.Cells[row, 5 ].Value := 'Председатель Правления';
{
  inc(row);
      sum2_:=inttostr(total_count);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := 'Всего по штату';


  inc(row);
      sum2_:=floattostr(total_sum);
      V.Cells[row,3].NumberFormat := NumFormat;
      V.Cells[row,3].Value:= trim(sum2_);

      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := 'Фонд оплаты труда';

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
      V.Cells[row, 2 ].Value := 'СВЕДЕНИЯ О СОТРУДНИКАХ';

  inc(row);
      V.Cells[row, 2 ].NumberFormat := StrFormat;
      V.Cells[row, 2 ].Value := ' по состоянию на '+bankdate;

  inc(row);
      V.Cells[row, 1 ].NumberFormat := StrFormat;
      V.Cells[row, 1 ].Value := ' ';

  V.Cells.Select;
  V.Columns.AutoFit;
  V.Visible := True; //так быстрее

 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;
//

end;

procedure TBOKForm.BitBtn160Click(Sender: TObject);
begin
  cdbgToExcel(cdbgOKKurs,
  'Список сотрудников участвовавших в Тренинг-обучение по теме: '+cdsSSOKkv_kurs_SET.fieldbyname('theme_business_voyage_code_show').asstring,
  '',
  'место проведения: '+cdsSSOKkv_kurs_SET.fieldbyname('kv_place').asstring,
  'тренер: '+cdsSSOKkv_kurs_SET.fieldbyname('KV_ORGANIZER').asstring
  );

end;

procedure TBOKForm.cdbgToExcel(cdbgREP: TClientDBGrid; rep1,rep2,rep3,rep4 : string);
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
//    NumFormat := '# ##0.00_р_.';

//    V.Cells[7,2].
    DateFormat := 'dd.mm.yyyy';

  except
//    NumFormat := '# ##0,00_р_.';

//    V.Cells[7,2].
    DateFormat := 'ДД.ММ.ГГГГ';

  end;
  nn:=cdbgREP.Columns.Count-1;
  i:=1;
  V.Cells[row, i ].Value:='П/п';
  inc(i);

  // формирование шапки для текстового файла
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
  V.Visible := True; //так быстрее
  cdbgREP.DataSource.Dataset.ENableControls;
 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKForm.BitBtn161Click(Sender: TObject);
begin

  cdbgToExcel(cdbgSSOKkv_kurs,
  '',
  '',
  'Курсы ',
  ''
  );

end;

procedure TBOKForm.BitBtn162Click(Sender: TObject);
begin

    cdskursdva.DisableControls;

    loaddata(cdskursdva,'select a.branch,a.personal_code,'+
    ' p.FAMILY||'' ''||p.FIRST_NAME||'' ''||p.PATRONYMIC fio,'+
    ' substr(ok_service.GET_POSTNAME(p.post_code),1,200) post_code_show,'+
    ' substr(ok_service.GET_DEPARTMENTNAME(p.department_code),1,200) department_code_show,'+
    ' substr(ok_service.GET_HIGH_NAME(p.department_code),1,200) HIGH_NAME,'+
    ' b.* from ok_personal p,ok_kurs a,ss_ok_kv_kurs b '+
    ' where a.KV_KURS_CODE=b.KV_KURS_CODE'+
    ' and p.branch=a.branch'+
    ' and p.personal_code=a.personal_code'+
    ' and b.kv_kurs_code='+cdsSSOKkv_kurs_SET.fieldbyname('kv_kurs_code').asstring);

    cdskursdva.Close;

    LOADDATA(cdsS_Str, 'select * from S_Str');
    addLookUpField(cdskursdva, cdsS_Str,
                  'CODE_STR_show', 'CODE_STR',
                  'CODE_STR', 'name', True);

    LOADDATA(cdsssok_theme_business_voyage_SET,  sql_ss_ok_theme_business_voyage_SET    );
    addLookUpField(cdskursdva, cdsssok_theme_business_voyage_SET,
                  'theme_business_voyage_code_show', 'theme_business_voyage_code',
                  'theme_business_voyage_code', 'theme_business_voyage_name', false);

    LOADDATA(cdsssok_org_business_voyage_SET, sql_ss_ok_org_business_voyage_SET);
    addLookUpField(cdskursdva, cdsssok_org_business_voyage_SET,
                  'org_business_voyage_code_show', 'org_business_voyage_code',
                  'org_business_voyage_code', 'org_business_voyage_name', false);

    LOADDATA(cdsss_ok_city, sql_ss_ok_city);
    addLookUpField(cdskursdva, cdsss_ok_city,
                  'city_code_show', 'city_code',
                  'city_code', 'city_name', false);


    cdskursdva.Open;
    cdskursdva.EnableControls;

  cdbgToExcel(cdbgkursdva,
  '',
  '',
  'Курсы ',
  ''
  );

end;

procedure TBOKForm.actReportsExecute(Sender: TObject);
begin
//
  LastPanel := 'RefPanel';
  pcmainok.ActivePage := RefPanel_;

  actREPORTS.Checked     := True ;
  actRef2.Checked     := False ;
  actRef.Checked    := False ;
  actTabel.Checked     := False ;
//  actREPORTS.Checked     := False ;
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

  pc.ActivePage:=TabREPORTS;
  ActDetailUndoExecute(nil);

end;

procedure TBOKForm.BitBtn163Click(Sender: TObject);
begin
//
end;

procedure TBOKForm.cdsOK_Kurs3AfterOpen(DataSet: TDataSet);
begin

  If dsOKPersonal.DataSet.Active Then
  Begin
    cdsOK_Kurs3.MasterSource    := dsOKPersonal;
    cdsOK_Kurs3.IndexFieldNames := 'branch;personal_code';
    cdsOK_Kurs3.MasterFields    := 'branch;personal_code';
  End;


end;

procedure TBOKForm.TabSheet15Show(Sender: TObject);
begin
  if cdsok_freedays.Active then
  Begin
    Exit;
  End;

  LoadData(cdsok_tabel, SQL_ok_tabel+' where branch = '+''''+curBranch +'''');
  cdsok_tabel.Filter := 'tabel_year='+copy(medBankDate2.text,7,4)+' and tabel_month='+copy(medBankDate2.text,4,2);
  cdsok_tabel.Filtered:=true;


  BitBtn164Click(nil);

end;

procedure TBOKForm.cdsOK_TabelAfterOpen(DataSet: TDataSet);
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

procedure TBOKForm.BitBtn164Click(Sender: TObject);
begin
//  TabelDate:=medBankDate2.text;
  medBankDate.text := medBankDate2.text;
//  BitBtn141Click(nil);

  cdsok_tabel.Filter := 'tabel_year='+copy(medBankDate2.text,7,4)+' and tabel_month='+copy(medBankDate2.text,4,2);
  cdsok_tabel.Filtered:=true;

  bbGB_PERSClick(nil);


end;

procedure TBOKForm.TextOut_(gb_: tgroupbox; X, Y: Integer; const Text: string; i : integer);
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

procedure TBOKForm.bbGB_PERSClick(Sender: TObject);
const // Настройки размеров календаря:
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
    LoadData(cdsok_freedays, SQL_ok_freedays+' where branch = '+''''+curBranch +''''+
    'and to_char(v_date,''mm.yyyy'') like '''+copy(medBankDate2.Text,4,7)+''' ');

    with GB_PERS do
      for i := ComponentCount - 1 downto 0 do
        Components[i].Free;

    // Вывод названия месяца:
    //  TextOut_(GB_PERS,(0) mod 3 * MonthDX, (0) div 3 * MonthDY,
    //    LongMonthNames[month],-1);
    GB_PERS.Caption := '   '+LongMonthNames[month]+'   ';

    // Вывод названий дней недели:
    for day := 1 to 7 do
      TextOut_(GB_PERS,(0) mod 3 * MonthDX,
        day mod 7 * DayDY + (0) div 3 * MonthDY + MonthH,
        ShortDayNames[(day + 1) mod 7 + 1],-1);

    // Определение дня недели первого числа месяца:
    day := DayOfWeek(EncodeDate(year_, month, 1)) - 2;
    if day < 0 then inc(day, 7);
    // Вывод чисел:
    for i := 1 to months_[month] do begin
      str(i: 2, s);
      TextOut_(GB_PERS,day div 7 * DayDX + (0) mod 3 * MonthDX + DayDX,
        day mod 7 * DayDY + (0) div 3 * MonthDY + MonthH, s,i);
      inc(day);
    end;

  end;

end;

procedure TBOKForm.RG_avansClick(Sender: TObject);
begin
  if RG_avans.itemindex=0
  then begin
    cdbgtabel.columns[26].Visible:=true;
    cdbgtabel.columns[27].Visible:=true;
    cdbgtabel.columns[28].Visible:=true;
    cdbgtabel.columns[29].Visible:=true;
    cdbgtabel.columns[30].Visible:=true;
    cdbgtabel.columns[31].Visible:=true;
    cdbgtabel.columns[32].Visible:=true;
    cdbgtabel.columns[33].Visible:=true;
    cdbgtabel.columns[34].Visible:=true;
    cdbgtabel.columns[35].Visible:=true;
    cdbgtabel.columns[36].Visible:=true;
    cdbgtabel.columns[37].Visible:=true;
    cdbgtabel.columns[38].Visible:=true;
//    cdbgtabel.columns[39].Visible:=true;
//    cdbgtabel.columns[40].Visible:=true;
//    cdbgtabel.columns[41].Visible:=true;

    cdbgtabel.columns[42].Visible:=true;
    cdbgtabel.columns[43].Visible:=true;
    cdbgtabel.columns[44].Visible:=true;
    cdbgtabel.columns[45].Visible:=true;
    cdbgtabel.columns[46].Visible:=true;
    cdbgtabel.columns[47].Visible:=true;
    cdbgtabel.columns[48].Visible:=true;
    cdbgtabel.columns[49].Visible:=true;
    cdbgtabel.columns[50].Visible:=true;

    cdbgtabel.columns[51].Visible:=false;
    cdbgtabel.columns[52].Visible:=false;
    cdbgtabel.columns[53].Visible:=false;
    cdbgtabel.columns[54].Visible:=false;
    cdbgtabel.columns[55].Visible:=false;
    cdbgtabel.columns[56].Visible:=false;
    cdbgtabel.columns[57].Visible:=false;
    cdbgtabel.columns[58].Visible:=false;
    cdbgtabel.columns[59].Visible:=false;

    BitBtn141Click(nil);
  end;
  if RG_avans.itemindex=1
  then begin
    cdbgtabel.columns[26].Visible:=false;
    cdbgtabel.columns[27].Visible:=false;
    cdbgtabel.columns[28].Visible:=false;
    cdbgtabel.columns[29].Visible:=false;
    cdbgtabel.columns[30].Visible:=false;
    cdbgtabel.columns[31].Visible:=false;
    cdbgtabel.columns[32].Visible:=false;
    cdbgtabel.columns[33].Visible:=false;
    cdbgtabel.columns[34].Visible:=false;
    cdbgtabel.columns[35].Visible:=false;
    cdbgtabel.columns[36].Visible:=false;
    cdbgtabel.columns[37].Visible:=false;
    cdbgtabel.columns[38].Visible:=false;
    cdbgtabel.columns[39].Visible:=false;
    cdbgtabel.columns[40].Visible:=false;
    cdbgtabel.columns[41].Visible:=false;

    cdbgtabel.columns[42].Visible:=false;
    cdbgtabel.columns[43].Visible:=false;
    cdbgtabel.columns[44].Visible:=false;
    cdbgtabel.columns[45].Visible:=false;
    cdbgtabel.columns[46].Visible:=false;
    cdbgtabel.columns[47].Visible:=false;
    cdbgtabel.columns[48].Visible:=false;
    cdbgtabel.columns[49].Visible:=false;
    cdbgtabel.columns[50].Visible:=false;

    cdbgtabel.columns[51].Visible:=true;
    cdbgtabel.columns[52].Visible:=true;
    cdbgtabel.columns[53].Visible:=true;
    cdbgtabel.columns[54].Visible:=true;
    cdbgtabel.columns[55].Visible:=true;
    cdbgtabel.columns[56].Visible:=true;
    cdbgtabel.columns[57].Visible:=true;
    cdbgtabel.columns[58].Visible:=true;
    cdbgtabel.columns[59].Visible:=true;

  end;


end;

procedure TBOKForm.GB_PERSClick(Sender: TObject);
begin
  bbGB_PERSClick(nil);
end;

procedure TBOKForm.BitBtn165Click(Sender: TObject);
var STATE_CODE_,curr_m, next_m, curr_y, next_y, sql_ , day_lines, ch_lines: string;
  DaysInAMonth_ : word;
  TabelDate : string;
  TabelExisits : integer;
  sqlparams,sqlparams2 : tparams;
 P_CURR_M_,P_CURR_Y_ : integer; //, P_PERSONAL_CODE_,
 P_NN_, P_DEPARTMENT_CODE_, P_DEPARTMENT_CODE2_:integer;
 P_FIO_,P_ESTABLISHED_POST_,P_ESTABLISHED_DEPARTMENT_ : String;
 P_TABNO_, P_POST_CODE_,P_POST_CODE2_,P_POST_CODE3_ : integer;
  P_TABEL_NAME_ : string;
  days_ : array [1..31] of string;
  days_hours_ : array [1..31] of string; // рабочие часы 2,4,8
  otpusk_char: string;
  I,  Bd, Ed ,Bd2, Ed2: Word;
  DatTmp : TdateTime;
  D, SqlT, T, Tmp, Clock : String;
begin

  sqlparams := tparams.create;
  sqlparams2 := tparams.create;
//showmessage(inttostr(Dayofweek(now)));
  TabelDate:=medBankDate.text;
  GB_tabel_date.caption := ' Табель '+TabelDate;
    curr_m:= copy(TabelDate,4,2)  ;
    curr_y:= copy(TabelDate,7,4)  ;

  medBankDate.text := '01.'+curr_m+'.'+curr_y;
  TabelDate:=medBankDate.text;
  GB_tabel_date.caption := ' Табель '+TabelDate;

  with sqlparams
  do begin
    clear;
    CreateParam(ftString,'P_B',ptInput);
    ParamByName('P_B').Value := branch;
    CreateParam(ftInteger,'P_M',ptInput);
    ParamByName('P_M').Value := strtoint(curr_m);
    CreateParam(ftInteger,'P_Y',ptInput);
    ParamByName('P_Y').Value := strtoint(curr_y);

  end;
  TabelExisits:= GETsqlRESULT('select count(*) From ok_Tabel where branch=:P_B and tabel_month=:P_M and tabel_year=:P_Y',sqlparams);

  if TabelExisits>0
  then begin
    showmessage('Табель за указанный месяц уже существует.');
  end else begin

    if Application.MessageBox(pchar('Сформировать новый табель ('+TabelDate+') ?'), 'Формирование',MB_OKCANCEL) = IDOK
    then Begin
        if curr_m='12'
        then begin
          next_m:='01';
          next_y:= inttostr(strtoint(curr_y)+1);
        end else begin
          next_m:= inttostr(strtoint(curr_m)+1);
          next_y:=  curr_y;
        end;

        DaysInAMonth_:=DaysInAMonth(strtoint(curr_y),strtoint(curr_m));

        if RG_avans.itemindex=0 then
        case DaysInAMonth_ of
          28: begin
                cdbgtabel.columns[39].Visible:=false;
                cdbgtabel.columns[40].Visible:=false;
                cdbgtabel.columns[41].Visible:=false;
              end;
          29: begin
                cdbgtabel.columns[39].Visible:=TRUE;
                cdbgtabel.columns[40].Visible:=false;
                cdbgtabel.columns[41].Visible:=false;
              end;
          30: begin
                cdbgtabel.columns[39].Visible:=TRUE;
                cdbgtabel.columns[40].Visible:=TRUE;
                cdbgtabel.columns[41].Visible:=false;
              end;
          31: begin
                cdbgtabel.columns[39].Visible:=TRUE;
                cdbgtabel.columns[40].Visible:=TRUE;
                cdbgtabel.columns[41].Visible:=TRUE;
              end;
        end;

        case DaysInAMonth_ of
          28: begin
                day_lines:='DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,'+
                    'DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,'+
                    'DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,'+
                    'DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28';
                ch_lines:=':P_D1,:P_D2,:P_D3,:P_D4,:P_D5,:P_D6,:P_D7,'+
                    ':P_D8,:P_D9,:P_D10,:P_D11,:P_D12,:P_D13,:P_D14,'+
                    ':P_D15,:P_D16,:P_D17,:P_D18,:P_D19,:P_D20,:P_D21,'+
                    ':P_D22,:P_D23,:P_D24,:P_D25,:P_D26,:P_D27,:P_D28';

              end;
          29: begin
                day_lines:='DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,'+
                    'DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,'+
                    'DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,'+
                    'DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28,'+
                    'DAY29 ';
                ch_lines:=':P_D1,:P_D2,:P_D3,:P_D4,:P_D5,:P_D6,:P_D7,'+
                    ':P_D8,:P_D9,:P_D10,:P_D11,:P_D12,:P_D13,:P_D14,'+
                    ':P_D15,:P_D16,:P_D17,:P_D18,:P_D19,:P_D20,:P_D21,'+
                    ':P_D22,:P_D23,:P_D24,:P_D25,:P_D26,:P_D27,:P_D28,'+
                    ':P_D29';
//                day_lines:= day_lines+','+
//                'OLDDAY01,OLDDAY02,OLDDAY03,OLDDAY04,OLDDAY05,OLDDAY06,OLDDAY07,'+
//                    'OLDDAY08,OLDDAY09,OLDDAY10,OLDDAY11,OLDDAY12,OLDDAY13,OLDDAY14,'+
//                    'OLDDAY15,OLDDAY16,OLDDAY17,OLDDAY18,OLDDAY19,OLDDAY20,OLDDAY21,'+
//                    'OLDDAY22,OLDDAY23,OLDDAY24,OLDDAY25,OLDDAY26,OLDDAY27,OLDDAY28,'+
//                    'OLDDAY29 ';
//                ch_lines:= '8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8 ' ;
//                ch_lines:= ch_lines+','+ch_lines ;
              end;
          30: begin
                day_lines:='DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,'+
                    'DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,'+
                    'DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,'+
                    'DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28,'+
                    'DAY29,DAY30 ';
                ch_lines:=':P_D1,:P_D2,:P_D3,:P_D4,:P_D5,:P_D6,:P_D7,'+
                    ':P_D8,:P_D9,:P_D10,:P_D11,:P_D12,:P_D13,:P_D14,'+
                    ':P_D15,:P_D16,:P_D17,:P_D18,:P_D19,:P_D20,:P_D21,'+
                    ':P_D22,:P_D23,:P_D24,:P_D25,:P_D26,:P_D27,:P_D28,'+
                    ':P_D29,:P_D30';
//                day_lines:= day_lines+','+
//                'OLDDAY01,OLDDAY02,OLDDAY03,OLDDAY04,OLDDAY05,OLDDAY06,OLDDAY07,'+
//                    'OLDDAY08,OLDDAY09,OLDDAY10,OLDDAY11,OLDDAY12,OLDDAY13,OLDDAY14,'+
//                    'OLDDAY15,OLDDAY16,OLDDAY17,OLDDAY18,OLDDAY19,OLDDAY20,OLDDAY21,'+
//                    'OLDDAY22,OLDDAY23,OLDDAY24,OLDDAY25,OLDDAY26,OLDDAY27,OLDDAY28,'+
//                    'OLDDAY29,OLDDAY30 ';
//                ch_lines:= '8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8 ' ;
//                ch_lines:= ch_lines+','+ch_lines ;
              end;
          31: begin
                day_lines:='DAY01,DAY02,DAY03,DAY04,DAY05,DAY06,DAY07,'+
                    'DAY08,DAY09,DAY10,DAY11,DAY12,DAY13,DAY14,'+
                    'DAY15,DAY16,DAY17,DAY18,DAY19,DAY20,DAY21,'+
                    'DAY22,DAY23,DAY24,DAY25,DAY26,DAY27,DAY28,'+
                    'DAY29,DAY30,DAY31';
                ch_lines:=':P_D1,:P_D2,:P_D3,:P_D4,:P_D5,:P_D6,:P_D7,'+
                    ':P_D8,:P_D9,:P_D10,:P_D11,:P_D12,:P_D13,:P_D14,'+
                    ':P_D15,:P_D16,:P_D17,:P_D18,:P_D19,:P_D20,:P_D21,'+
                    ':P_D22,:P_D23,:P_D24,:P_D25,:P_D26,:P_D27,:P_D28,'+
                    ':P_D29,:P_D30,:P_D31';
//                day_lines:= day_lines+','+
//                'OLDDAY01,OLDDAY02,OLDDAY03,OLDDAY04,OLDDAY05,OLDDAY06,OLDDAY07,'+
//                    'OLDDAY08,OLDDAY09,OLDDAY10,OLDDAY11,OLDDAY12,OLDDAY13,OLDDAY14,'+
//                    'OLDDAY15,OLDDAY16,OLDDAY17,OLDDAY18,OLDDAY19,OLDDAY20,OLDDAY21,'+
//                    'OLDDAY22,OLDDAY23,OLDDAY24,OLDDAY25,OLDDAY26,OLDDAY27,OLDDAY28,'+
//                    'OLDDAY29,OLDDAY30,OLDDAY31 ';
//                ch_lines:= '8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8,  8,8,8,8,8,8,8,8,8,8,  8' ;
//                ch_lines:= ch_lines+','+ch_lines ;
              end;
        end;

        P_TABEL_NAME_:='За '+curr_m+' месяц '+curr_y+' года';
        P_CURR_M_ := strtoint(curr_m);
        P_CURR_Y_ := strtoint(curr_y);
    // цикл по сотрудникам
        with cdsTemp.params
        do begin
          clear;
          CreateParam(ftString,'P_BRANCH' ,ptInput);
          ParamByName('P_BRANCH').Value := Branch;

          CreateParam(ftInteger,'P2' ,ptInput);
          ParamByName('P2').Value := 2;
          CreateParam(ftInteger,'P4' ,ptInput);
          ParamByName('P4').Value := 4;
          CreateParam(ftInteger,'P5' ,ptInput);
          ParamByName('P5').Value := 5;
        end;

        sql_:='select * from ok_personal where branch=:P_BRANCH '+
//          ' and tabno in ('+edblyat.Text+')'+
          ' and status_code in (:P2,:P4,:P5)';
        loaddata(cdsTemp, sql_);

        while not cdsTemp.Eof
        do begin
//          P_PERSONAL_CODE_:= cdsTemp.fieldbyname('personal_code').asinteger;
          cdsTemp2.close;
          cdsTemp2.params.Clear;
          //cdsTemp2.params.Free;

          with sqlparams
          do begin
            clear;
            CreateParam(ftString,'P_BRANCH' ,ptInput);
            ParamByName('P_BRANCH').Value := Branch;

            CreateParam(ftInteger,'P_PERSONAL_CODE' ,ptInput);
            ParamByName('P_PERSONAL_CODE').Value := cdsTemp.fieldbyname('personal_code').asinteger;

            CreateParam(ftDateTime,'P_FIRST_DAY_OF_MONTH' ,ptInput);
            ParamByName('P_FIRST_DAY_OF_MONTH').Value := strtodate ( '01.'+curr_m +'.'+curr_y );
            CreateParam(ftDateTime,'P_LAST_DAY_OF_MONTH' ,ptInput);
            ParamByName('P_LAST_DAY_OF_MONTH').Value := strtodate( inttostr(DaysInAMonth_)+'.'+curr_m +'.'+curr_y );
            CreateParam(ftDateTime,'P_FIRST_DAY_OF_NEXT_MONTH' ,ptInput);
            ParamByName('P_FIRST_DAY_OF_NEXT_MONTH').Value := strtodate ( '01.'+next_m +'.'+next_y );

            CreateParam(ftInteger,'P_GENDER_CODE' ,ptInput);
            ParamByName('P_GENDER_CODE').Value := cdsTemp.fieldbyname('GENDER_CODE').asinteger;

          end;

          STATE_CODE_ := getsqlresult('select ok_service.GET_STATUS(:P_BRANCH,:P_PERSONAL_CODE,'+
            ':P_FIRST_DAY_OF_MONTH,:P_LAST_DAY_OF_MONTH,:P_FIRST_DAY_OF_NEXT_MONTH,:P_GENDER_CODE) from dual',
            sqlparams);

          if STATE_CODE_<>'Z'
          then begin
            P_FIO_ :=  cdsTemp.fieldbyname('FAMILY').asString+' '+
              copy(cdsTemp.fieldbyname('FIRST_NAME').asString,1,1)+'. '+
              copy(cdsTemp.fieldbyname('PATRONYMIC').asString,1,1)+'.';
            P_TABNO_:= cdsTemp.fieldbyname('tabno').asinteger;


            with cdsTemp2.params
            do begin
              clear;
              CreateParam(ftString,'P_BRANCH' ,ptInput);
              ParamByName('P_BRANCH').Value := Branch;

              CreateParam(ftInteger,'P_PERSONAL_CODE' ,ptInput);
              ParamByName('P_PERSONAL_CODE').Value := cdsTemp.fieldbyname('personal_code').asinteger;

              CreateParam(ftDateTime,'P_LAST_DAY_OF_MONTH' ,ptInput);
              ParamByName('P_LAST_DAY_OF_MONTH').Value := strtodate( inttostr(DaysInAMonth_)+'.'+curr_m +'.'+curr_y );

              CreateParam(ftDateTime,'P_FIRST_DAY_OF_MONTH' ,ptInput);
              ParamByName('P_FIRST_DAY_OF_MONTH').Value := strtodate ( '01.'+curr_m +'.'+curr_y );
            end;

            loaddata(cdsTemp2,'select * from ok_period where branch=:P_BRANCH and personal_code=:P_PERSONAL_CODE '+
              ' and TYPE_PERIOD_CODE=3'+
              ' and in_office_date<=:P_LAST_DAY_OF_MONTH '+
              ' and (out_office_date>=:P_FIRST_DAY_OF_MONTH or out_office_date is null)' );

            while not cdsTemp2.Eof
            do begin
              if STATE_CODE_='D' then begin // группа декретницы
                if cdsTemp.fieldbyname('nn').asinteger>=         1000000
                then P_NN_:=                                     1000000
                else P_NN_:= cdsTemp.fieldbyname('nn').asinteger+1000000;
                P_DEPARTMENT_CODE_:=                             1000000;
                P_DEPARTMENT_CODE2_:=                            1000000;
              end;
              if STATE_CODE_='U' then begin // группа уволенные
                if cdsTemp.fieldbyname('nn').asinteger>=         100000000
                then P_NN_:=                                     100000000
                else P_NN_:= cdsTemp.fieldbyname('nn').asinteger+100000000;
                P_DEPARTMENT_CODE_:=                             100000000;
                P_DEPARTMENT_CODE2_:=                            100000000;
              end;
              if STATE_CODE_='R' then begin // группа работающие
                P_NN_:= cdsTemp.fieldbyname('nn').asinteger;
                P_DEPARTMENT_CODE_:= cdsTemp2.fieldbyname('department_code').asinteger;
                P_DEPARTMENT_CODE2_:= cdsTemp2.fieldbyname('department_code').asinteger;
              end;

              for i:=1 to 31 do begin
                days_[i]:='.';
                days_hours_[i]:='.';
  //              memo3.lines.add(inttostr(i)+')'+days_[i]);
              end;

                otpusk_char:='8';

                DatTmp := StrToDate('01.'+copy(TabelDate,4,7));
                D := copy(TabelDate,4,7) ;
                Bd := 0;
                Ed := DaysInAMonth_-1;
                If Copy(cdsTemp2.FieldByName('in_office_date').AsString,4,7) = D Then
                  Bd := StrToInt(Copy(cdsTemp2.FieldByName('in_office_date').AsString,1,2)) - 1;
                If Copy(cdsTemp2.FieldByName('out_office_date').AsString,4,7) = D Then
                  Ed := StrToInt(Copy(cdsTemp2.FieldByName('out_office_date').AsString,1,2)) - 1;

                For I := Bd to Ed do
                Begin
                    If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
                    Then begin
                        days_[i+1] := '*';
                        days_hours_[i+1] := '*';
                    end Else begin
                        days_[i+1] := otpusk_char;
                        days_hours_[i+1] := otpusk_char;
//memo3.lines.add(inttostr(i+1)+')'+days_[i+1]+' ('+otpusk_char+')');
                    end;
                End;

                P_POST_CODE_:= cdsTemp2.fieldbyname('post_code').asinteger;
                P_POST_CODE2_:= cdsTemp2.fieldbyname('post_code').asinteger;
                P_POST_CODE3_:= cdsTemp2.fieldbyname('post_code').asinteger;
                P_ESTABLISHED_POST_:= cdsTemp2.fieldbyname('ESTABLISHED_POST').asString;
                P_ESTABLISHED_DEPARTMENT_:= cdsTemp2.fieldbyname('ESTABLISHED_DEPARTMENT').asString;
                if P_NN_ >=1000000 then begin
                    P_ESTABLISHED_DEPARTMENT_ := 'ДЕКРЕТНИЦЫ';
                end;
                if P_NN_ >=10000000 then begin
                    P_ESTABLISHED_DEPARTMENT_ := 'УВОЛЕННЫЕ';
                end;
                // рабочие часы 2,4 ok_zp_rate    ZP_RATE_DATE ZP_RATE_DATE_END

                ////////
                cdsTabelLeave.close;
                cdsTabelLeave.params.Clear;
                with cdsTabelLeave.params
                do begin
                  clear;
                  CreateParam(ftString,'P_BRANCH' ,ptInput);
                  ParamByName('P_BRANCH').Value := Branch;

                  CreateParam(ftInteger,'P_PERSONAL_CODE' ,ptInput);
                  ParamByName('P_PERSONAL_CODE').Value := cdsTemp.fieldbyname('personal_code').asinteger;
//memo3.lines.add('P_PERSONAL_CODE_='+inttostr(P_PERSONAL_CODE_));
                  CreateParam(ftDateTime,'P_LAST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_LAST_DAY_OF_MONTH').Value := strtodate( inttostr(DaysInAMonth_)+'.'+curr_m +'.'+curr_y );

                  CreateParam(ftDateTime,'P_FIRST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_FIRST_DAY_OF_MONTH').Value := strtodate ( '01.'+curr_m +'.'+curr_y );
                end;
                loaddata(cdsTabelLeave,'select * from ok_zp_rate where branch=:P_BRANCH and personal_code=:P_PERSONAL_CODE '+
                   ' and ZP_RATE_CODE <>8'+
                   ' and ZP_RATE_DATE<=:P_LAST_DAY_OF_MONTH '+
                   ' and (ZP_RATE_DATE_END>=:P_FIRST_DAY_OF_MONTH or ZP_RATE_DATE_END is null)' );

                while not cdsTabelLeave.Eof
                do begin
                    otpusk_char:=cdsTabelLeave.fieldbyname('zp_rate_code').asstring;

                    Bd2 := 0;
                    Ed2 := DaysInAMonth_-1;
                    If Copy(cdsTabelLeave.FieldByName('ZP_RATE_DATE').AsString,4,7) = D Then
                      Bd2 := StrToInt(Copy(cdsTabelLeave.FieldByName('ZP_RATE_DATE').AsString,1,2)) - 1;
                    If Copy(cdsTabelLeave.FieldByName('ZP_RATE_DATE_END').AsString,4,7) = D Then
                      Ed2 := StrToInt(Copy(cdsTabelLeave.FieldByName('ZP_RATE_DATE_END').AsString,1,2)) - 1;

                    if Bd2<Bd then Bd2:= Bd;
                    if Ed2>Ed then Ed2:= Ed;
//memo3.lines.add('(ed-bd)'+inttostr(ed)+'-'+inttostr(Bd)+' (ed2-bd2)'+inttostr(Ed2)+'-'+inttostr(bd2)+')');

                    For I := Bd2 to Ed2 do
                    Begin
                        If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
                        Then begin
                          //  days_[i+1] := '*';
                          //  days_hours_[i+1] := '*';
                        end Else begin
                            days_[i+1] := otpusk_char;
                            days_hours_[i+1] := otpusk_char;
//memo3.lines.add(inttostr(i)+')'+days_[i]+' ('+otpusk_char+')');
                        end;
                    End;
                  cdsTabelLeave.next;
                end;
                ////////

                // отпуск ok_leave leave_code <>4 and <>7
                  // DATE_IN_LEAVE   DATE_OUT_LEAVE
                ////////
                cdsTabelLeave.close;
                cdsTabelLeave.params.Clear;
                with cdsTabelLeave.params
                do begin
                  clear;
                  CreateParam(ftString,'P_BRANCH' ,ptInput);
                  ParamByName('P_BRANCH').Value := Branch;

                  CreateParam(ftInteger,'P_PERSONAL_CODE' ,ptInput);
                  ParamByName('P_PERSONAL_CODE').Value := cdsTemp.fieldbyname('personal_code').asinteger;

                  CreateParam(ftDateTime,'P_LAST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_LAST_DAY_OF_MONTH').Value := strtodate( inttostr(DaysInAMonth_)+'.'+curr_m +'.'+curr_y );

                  CreateParam(ftDateTime,'P_FIRST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_FIRST_DAY_OF_MONTH').Value := strtodate ( '01.'+curr_m +'.'+curr_y );
                end;
                loaddata(cdsTabelLeave,'select * from ok_leave where branch=:P_BRANCH and personal_code=:P_PERSONAL_CODE '+
                   ' and leave_code <>4'+
                   ' and leave_code <>7'+
                   ' and DATE_IN_LEAVE<=:P_LAST_DAY_OF_MONTH '+
                   ' and (DATE_OUT_LEAVE>=:P_FIRST_DAY_OF_MONTH or DATE_OUT_LEAVE is null)' );

//memo3.lines.add('отпуск');
                while not cdsTabelLeave.Eof
                do begin
                    otpusk_char:='?';
                      case cdsTabelLeave.fieldbyname('leave_code').asinteger of
                       1:otpusk_char:='О';
                       2:otpusk_char:='У';
                       3:otpusk_char:='#';
                       4:otpusk_char:='#';
                       5:otpusk_char:='Д';
                       6:otpusk_char:='#';
                       8:otpusk_char:='#';
                      end;
//memo3.lines.add('otpusk_char='+otpusk_char);

                    Bd2 := 0;
                    Ed2 := DaysInAMonth_-1;
                    If Copy(cdsTabelLeave.FieldByName('DATE_IN_LEAVE').AsString,4,7) = D Then
                      Bd2 := StrToInt(Copy(cdsTabelLeave.FieldByName('DATE_IN_LEAVE').AsString,1,2)) - 1;
                    If Copy(cdsTabelLeave.FieldByName('DATE_OUT_LEAVE').AsString,4,7) = D Then
                      Ed2 := StrToInt(Copy(cdsTabelLeave.FieldByName('DATE_OUT_LEAVE').AsString,1,2)) - 1;

                    if Bd2<Bd then Bd2:= Bd;
                    if Ed2>Ed then Ed2:= Ed;
//memo3.lines.add('(ed-bd)'+inttostr(ed)+'-'+inttostr(Bd)+' (ed2-bd2)'+inttostr(Ed2)+'-'+inttostr(bd2)+')');

//memo3.lines.add('otpusk_char='+otpusk_char);
                    For I := Bd2 to Ed2 do
                    Begin
                        If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
                        Then begin
                          //  days_[i+1] := '*';
                          //  days_hours_[i+1] := '*';
                        end Else begin
                            days_[i+1] := otpusk_char;
//memo3.lines.add(inttostr(i+1)+')'+days_[i+1]+' ('+otpusk_char+')');
                          //  days_hours_[i+1] := otpusk_char;
                        end;
                    End;
                  cdsTabelLeave.next;
                end;
                ////////

                // отзыв - возвращает часы из массива часов  days_hours_
                  // ok_leave date_recall_begin date_recall_end
                ////////
                cdsTabelLeave.close;
                cdsTabelLeave.params.Clear;
                with cdsTabelLeave.params
                do begin
                  clear;
                  CreateParam(ftString,'P_BRANCH' ,ptInput);
                  ParamByName('P_BRANCH').Value := Branch;

                  CreateParam(ftInteger,'P_PERSONAL_CODE' ,ptInput);
                  ParamByName('P_PERSONAL_CODE').Value := cdsTemp.fieldbyname('personal_code').asinteger;

                  CreateParam(ftDateTime,'P_LAST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_LAST_DAY_OF_MONTH').Value := strtodate( inttostr(DaysInAMonth_)+'.'+curr_m +'.'+curr_y );

                  CreateParam(ftDateTime,'P_FIRST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_FIRST_DAY_OF_MONTH').Value := strtodate ( '01.'+curr_m +'.'+curr_y );
                end;
                loaddata(cdsTabelLeave,'select * from ok_leave where branch=:P_BRANCH and personal_code=:P_PERSONAL_CODE '+
                   ' and leave_code <>4'+
                   ' and leave_code <>7'+
                   ' and date_recall_begin<=:P_LAST_DAY_OF_MONTH '+
                   ' and (date_recall_end>=:P_FIRST_DAY_OF_MONTH or date_recall_end is null)' );

                while not cdsTabelLeave.Eof
                do begin
                    otpusk_char:='?';

                    Bd2 := 0;
                    Ed2 := DaysInAMonth_-1;
                    If Copy(cdsTabelLeave.FieldByName('date_recall_begin').AsString,4,7) = D Then
                      Bd2 := StrToInt(Copy(cdsTabelLeave.FieldByName('date_recall_begin').AsString,1,2)) - 1;
                    If Copy(cdsTabelLeave.FieldByName('date_recall_end').AsString,4,7) = D Then
                      Ed2 := StrToInt(Copy(cdsTabelLeave.FieldByName('date_recall_end').AsString,1,2)) - 1;

                    if Bd2<Bd then Bd2:= Bd;
                    if Ed2>Ed then Ed2:= Ed;
//memo3.lines.add('(ed-bd)'+inttostr(ed)+'-'+inttostr(Bd)+' (ed2-bd2)'+inttostr(Ed2)+'-'+inttostr(bd2)+')');

                    For I := Bd2 to Ed2 do
                    Begin
                        If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
                        Then begin
                          //  days_[i+1] := '*';
                          //  days_hours_[i+1] := '*';
                        end Else begin
                            days_[i+1] := days_hours_[i+1]; // otpusk_char;
//memo3.lines.add(inttostr(i+1)+')'+days_[i+1]+' ('+days_hours_[i+1]+')');
                          //  days_hours_[i+1] := otpusk_char;
                        end;
                    End;
                  cdsTabelLeave.next;
                end;
                ////////


                // больничные ok_hospital  date_open  date_close
                ////////
                cdsTabelLeave.close;
                cdsTabelLeave.params.Clear;
                with cdsTabelLeave.params
                do begin
                  clear;
                  CreateParam(ftString,'P_BRANCH' ,ptInput);
                  ParamByName('P_BRANCH').Value := Branch;

                  CreateParam(ftInteger,'P_PERSONAL_CODE' ,ptInput);
                  ParamByName('P_PERSONAL_CODE').Value := cdsTemp.fieldbyname('personal_code').asinteger;

                  CreateParam(ftDateTime,'P_LAST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_LAST_DAY_OF_MONTH').Value := strtodate( inttostr(DaysInAMonth_)+'.'+curr_m +'.'+curr_y );

                  CreateParam(ftDateTime,'P_FIRST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_FIRST_DAY_OF_MONTH').Value := strtodate ( '01.'+curr_m +'.'+curr_y );
                end;
                loaddata(cdsTabelLeave,'select * from ok_hospital where branch=:P_BRANCH and personal_code=:P_PERSONAL_CODE '+
                   ' and date_open<=:P_LAST_DAY_OF_MONTH '+
                   ' and (date_close>=:P_FIRST_DAY_OF_MONTH or date_close is null)' );

                while not cdsTabelLeave.Eof
                do begin
                   if cdsTabelLeave.FieldByName('hospital_code').AsString='1002'
                     then begin otpusk_char:='Д';
                     end else begin otpusk_char:='Б';
                   end;

                    Bd2 := 0;
                    Ed2 := DaysInAMonth_-1;
                    If Copy(cdsTabelLeave.FieldByName('date_open').AsString,4,7) = D Then
                      Bd2 := StrToInt(Copy(cdsTabelLeave.FieldByName('date_open').AsString,1,2)) - 1;
                    If Copy(cdsTabelLeave.FieldByName('date_close').AsString,4,7) = D Then
                      Ed2 := StrToInt(Copy(cdsTabelLeave.FieldByName('date_close').AsString,1,2)) - 1;

                    if Bd2<Bd then Bd2:= Bd;
                    if Ed2>Ed then Ed2:= Ed;
//memo3.lines.add('(ed-bd)'+inttostr(ed)+'-'+inttostr(Bd)+' (ed2-bd2)'+inttostr(Ed2)+'-'+inttostr(bd2)+')');

                    For I := Bd2 to Ed2 do
                    Begin
                        If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
                        Then begin
                          //  days_[i+1] := '*';
                          //  days_hours_[i+1] := '*';
                        end Else begin
                            days_[i+1] := otpusk_char;
//memo3.lines.add(inttostr(i+1)+')'+days_[i+1]+' ('+otpusk_char+')');
                          //  days_hours_[i+1] := otpusk_char;
                        end;
                    End;
                  cdsTabelLeave.next;
                end;
                ////////


                // командировки  ok_business_voyage   date_open date_close
                ////////
                cdsTabelLeave.close;
                cdsTabelLeave.params.Clear;
                with cdsTabelLeave.params
                do begin
                  clear;
                  CreateParam(ftString,'P_BRANCH' ,ptInput);
                  ParamByName('P_BRANCH').Value := Branch;

                  CreateParam(ftInteger,'P_PERSONAL_CODE' ,ptInput);
                  ParamByName('P_PERSONAL_CODE').Value := cdsTemp.fieldbyname('personal_code').asinteger;

                  CreateParam(ftDateTime,'P_LAST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_LAST_DAY_OF_MONTH').Value := strtodate( inttostr(DaysInAMonth_)+'.'+curr_m +'.'+curr_y );

                  CreateParam(ftDateTime,'P_FIRST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_FIRST_DAY_OF_MONTH').Value := strtodate ( '01.'+curr_m +'.'+curr_y );
                end;
                loaddata(cdsTabelLeave,'select * from ok_business_voyage where branch=:P_BRANCH and personal_code=:P_PERSONAL_CODE '+
                   ' and date_open<=:P_LAST_DAY_OF_MONTH '+
                   ' and (date_close>=:P_FIRST_DAY_OF_MONTH or date_close is null)' );

                while not cdsTabelLeave.Eof
                do begin
                   otpusk_char:='К';

                    Bd2 := 0;
                    Ed2 := DaysInAMonth_-1;
                    If Copy(cdsTabelLeave.FieldByName('date_open').AsString,4,7) = D Then
                      Bd2 := StrToInt(Copy(cdsTabelLeave.FieldByName('date_open').AsString,1,2)) - 1;
                    If Copy(cdsTabelLeave.FieldByName('date_close').AsString,4,7) = D Then
                      Ed2 := StrToInt(Copy(cdsTabelLeave.FieldByName('date_close').AsString,1,2)) - 1;

                    if Bd2<Bd then Bd2:= Bd;
                    if Ed2>Ed then Ed2:= Ed;
//memo3.lines.add('(ed-bd)'+inttostr(ed)+'-'+inttostr(Bd)+' (ed2-bd2)'+inttostr(Ed2)+'-'+inttostr(bd2)+')');

                    For I := Bd2 to Ed2 do
                    Begin
                        If  (DayOfWeek(DatTmp + I) = 7) or (DayOfWeek(DatTmp + I) = 1)
                        Then begin
                          //  days_[i+1] := '*';
                          //  days_hours_[i+1] := '*';
                        end Else begin
                            days_[i+1] := otpusk_char;
//memo3.lines.add(inttostr(i+1)+')'+days_[i+1]+' ('+otpusk_char+')');
                          //  days_hours_[i+1] := otpusk_char;
                        end;
                    End;
                  cdsTabelLeave.next;
                end;
                ////////

                // выходные  ok_freedays   v_date
                ////////
                cdsTabelLeave.close;
                cdsTabelLeave.params.Clear;
                with cdsTabelLeave.params
                do begin
                  clear;
                  CreateParam(ftString,'P_BRANCH' ,ptInput);
                  ParamByName('P_BRANCH').Value := Branch;

                  CreateParam(ftInteger,'P_PERSONAL_CODE' ,ptInput);
                  ParamByName('P_PERSONAL_CODE').Value := cdsTemp.fieldbyname('personal_code').asinteger;

                  CreateParam(ftDateTime,'P_LAST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_LAST_DAY_OF_MONTH').Value := strtodate( inttostr(DaysInAMonth_)+'.'+curr_m +'.'+curr_y );

                  CreateParam(ftDateTime,'P_FIRST_DAY_OF_MONTH' ,ptInput);
                  ParamByName('P_FIRST_DAY_OF_MONTH').Value := strtodate ( '01.'+curr_m +'.'+curr_y );
                end;
                loaddata(cdsTabelLeave,'select * from ok_freedays where branch=:P_BRANCH and personal_code=:P_PERSONAL_CODE '+
                   ' and V_date<=:P_LAST_DAY_OF_MONTH '+
                   ' and V_date>=:P_FIRST_DAY_OF_MONTH' );

                while not cdsTabelLeave.Eof
                do begin
                   otpusk_char:= cdsTabelLeave.fieldbyname('simbol').asstring;

                    Bd2 := 0;
                    Ed2 := DaysInAMonth_-1;
                    If Copy(cdsTabelLeave.FieldByName('V_date').AsString,4,7) = D Then
                      Bd2 := StrToInt(Copy(cdsTabelLeave.FieldByName('V_date').AsString,1,2)) - 1;
                    If Copy(cdsTabelLeave.FieldByName('V_date').AsString,4,7) = D Then
                      Ed2 := StrToInt(Copy(cdsTabelLeave.FieldByName('V_date').AsString,1,2)) - 1;

                    if Bd2<Bd then Bd2:= Bd;
                    if Ed2>Ed then Ed2:= Ed;

                    For I := Bd2 to Ed2 do
                    Begin
                      if Bd2=Ed2
                      then days_[i+1] := otpusk_char;
                    End;
                  cdsTabelLeave.next;
                end;
                ////////

   //////////////////////
                sql_:='Insert Into ok_Tabel(category_code,branch,tabel_month,tabel_year,'+
                        ' tabel_name,'+
                        'PERSONAL_CODE,nn,department_nn,department_code, fio,tabno,salary,'+
                        'post_code, post_name , DEPARTMENT_NAME ,'+day_lines+') '+
                        ' Select ok_service.get_category_code(:P_POST_CODE),info.getbranch, :P_CURR_M,:P_CURR_Y,' +
                        ' :P_TABEL_NAME,'+
                        ' :P_PERSONAL_CODE, :P_NN, :P_DEPARTMENT_CODE,:P_DEPARTMENT_CODE2,'+
                        'upper( :P_FIO),'+
                        ' :P_TABNO, ok_service.GET_POST_Salary(:P_POST_CODE2) ,:P_POST_CODE3, :P_ESTABLISHED_POST, :P_ESTABLISHED_DEPARTMENT '+
                         ','+ch_lines+ ' from dual';
                with sqlparams2 do begin
                  clear;

                  CreateParam(ftInteger,'P_POST_CODE' ,ptInput);
                  ParamByName('P_POST_CODE').Value := P_POST_CODE_;

                  CreateParam(ftInteger,'P_CURR_M' ,ptInput);
                  ParamByName('P_CURR_M').Value := P_CURR_M_;

                  CreateParam(ftInteger,'P_CURR_Y' ,ptInput);
                  ParamByName('P_CURR_Y').Value := P_CURR_Y_;

                  CreateParam(ftString,'P_TABEL_NAME' ,ptInput);
                  ParamByName('P_TABEL_NAME').Value := P_TABEL_NAME_;

                  CreateParam(ftInteger,'P_PERSONAL_CODE' ,ptInput);
                  ParamByName('P_PERSONAL_CODE').Value := cdsTemp.fieldbyname('personal_code').asinteger;

                  CreateParam(ftInteger,'P_NN' ,ptInput);
                  ParamByName('P_NN').Value := P_NN_;

                  CreateParam(ftInteger,'P_DEPARTMENT_CODE' ,ptInput);
                  ParamByName('P_DEPARTMENT_CODE').Value := P_DEPARTMENT_CODE_;

                  CreateParam(ftInteger,'P_DEPARTMENT_CODE2' ,ptInput);
                  ParamByName('P_DEPARTMENT_CODE2').Value := P_DEPARTMENT_CODE2_;

                  CreateParam(ftString,'P_FIO' ,ptInput);
                  ParamByName('P_FIO').Value := P_FIO_;

                  CreateParam(ftInteger,'P_TABNO' ,ptInput);
                  ParamByName('P_TABNO').Value := P_TABNO_;

                  CreateParam(ftInteger,'P_POST_CODE2' ,ptInput);
                  ParamByName('P_POST_CODE2').Value := P_POST_CODE2_;

                  CreateParam(ftInteger,'P_POST_CODE3' ,ptInput);
                  ParamByName('P_POST_CODE3').Value := P_POST_CODE3_;

                  CreateParam(ftString,'P_ESTABLISHED_POST' ,ptInput);
                  ParamByName('P_ESTABLISHED_POST').Value := P_ESTABLISHED_POST_;

                  CreateParam(ftString,'P_ESTABLISHED_DEPARTMENT' ,ptInput);
                  ParamByName('P_ESTABLISHED_DEPARTMENT').Value := P_ESTABLISHED_DEPARTMENT_;

                  for i:=1 to DaysInAMonth_ do
                  begin
                    CreateParam(ftString,'P_D'+inttostr(i) ,ptInput);
                    ParamByName('P_D'+inttostr(i)).Value := days_[i];
//memo3.lines.add(inttostr(i)+')'+days_[i]+' (параметры)');
                  end;

                end;
//            for i:=1 to 31 do begin
//              memo3.lines.add(inttostr(i)+')'+days_[i]);
//            end;
                execSql(sql_,SqlParams2);

              cdsTemp2.next;
            end;
          end;

          cdsTemp.next;
        end;
    // конец формирования табеля
    end;
  end;

  execSql('commit');
  cdsTabel.refresh;
                cdsTabelLeave.close;
                cdsTabelLeave.params.Clear;

end;

procedure TBOKForm.BitBtn167Click(Sender: TObject);
var   TabelDate,   curr_m,  curr_y : string;
    sqlparams : tparams;
begin
  sqlparams:= tparams.create;

      TabelDate:=medBankDate.text;
        curr_m:= copy(TabelDate,4,2)  ;
        curr_y:= copy(TabelDate,7,4)  ;
    if Application.MessageBox(pchar('Удалить табель ('+TabelDate+') ?'), 'Удаление табеля',MB_OKCANCEL) = IDOK
    then Begin

      medBankDate.text := '01.'+curr_m+'.'+curr_y;
      TabelDate:=medBankDate.text;
      GB_tabel_date.caption := ' Табель '+TabelDate;

      with sqlparams
      do begin
        clear;
        CreateParam(ftString,'P_B',ptInput);
        ParamByName('P_B').Value := branch;
        CreateParam(ftInteger,'P_M',ptInput);
        ParamByName('P_M').Value := strtoint(curr_m);
        CreateParam(ftInteger,'P_Y',ptInput);
        ParamByName('P_Y').Value := strtoint(curr_y);

      end;
       execSql('delete From ok_Tabel where branch=:P_B and tabel_month=:P_M and tabel_year=:P_Y',sqlparams);
       execSql('commit');

    end;

    cdsTabel.Refresh;
    
end;

procedure TBOKForm.cdsOK_FreeDaysAfterOpen(DataSet: TDataSet);
begin
  If dsOKPersonal.DataSet.Active Then
  Begin
//    cdsOKAward.FieldByName('award_date').EditMask  := '!09/09/0099;1;_';
    cdsOK_FreeDays.MasterSource    := dsOKPersonal;
    cdsOK_FreeDays.IndexFieldNames := 'branch;personal_code';
    cdsOK_FreeDays.MasterFields    := 'branch;personal_code';
  End;

end;

procedure TBOKForm.actGOSubmitExecute(Sender: TObject);
var sql_ : string;
begin
  if cdsokpersonal.fieldbyname('gosubmit_code').asstring=''
  then begin
    showmessage('Укажите состояние.');
  end else
  try
    sql_:='update ok_personal set gosubmit_code='+cdsokpersonal.fieldbyname('gosubmit_code').asstring+
      ' where branch='''+cdsokpersonal.fieldbyname('branch').asstring+''''+
      ' and personal_code='+cdsokpersonal.fieldbyname('personal_code').asstring;
    cdsokpersonal.Cancel;
    execsql(sql_);
// вставить в историю
    sql_:='insert into ss_ok_gosubmit_protokol '+
      ' select ss_ok_gosubmit_protokol_id_seq.nextval,'''+cdsokpersonal.fieldbyname('branch').asstring+''','+
       cdsokpersonal.fieldbyname('personal_code').asstring+','+
      ' info.getday,sysdate,'+ UserId +
      ' from dual';
    execsql(sql_);

    execsql('commit');
  except
    on e:exception
    do begin
      execsql('rollback');
      showmessage(sql_+#13+e.Message);
    end;
  end;
  cdsokpersonal.refresh;

end;

procedure TBOKForm.bbGOChangeStatusClick(Sender: TObject);
var sql_ : string;
begin
  try
    sql_:='update ok_personal set STATUS_CODE=1,post_code=null'+
      ' where branch='''+cdsokpersonal.fieldbyname('branch').asstring+''''+
      ' and personal_code='+cdsokpersonal.fieldbyname('personal_code').asstring;
    cdsokpersonal.Cancel;
    execsql(sql_);
// вставить в историю
    sql_:='insert into ss_ok_gosubmit_protokol '+
      ' select ss_ok_gosubmit_protokol_id_seq.nextval,'''+cdsokpersonal.fieldbyname('branch').asstring+''','+
       cdsokpersonal.fieldbyname('personal_code').asstring+','+
      ' info.getday,sysdate,'+ UserId +
      ' from dual';
    execsql(sql_);

    execsql('commit');
  except
    on e:exception
    do begin
      execsql('rollback');
      showmessage(sql_+#13+e.Message);
    end;
  end;
  cdsokpersonal.refresh;

end;

initialization
  RegisterClass(TBOKForm);
finalization
  UnRegisterClass(TBOKForm);
end.
