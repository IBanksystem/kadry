unit BOKRefMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ActnList, ImgList, ComCtrls, ToolWin, Base,
  AboutDlg, StdCtrls, DB, DBClient, CheckLst, DBCtrls, Grids, QRExport,
  DBGrids,ComObj, Buttons, Utils, Mask, strutils, errDlg, SelDlg;

type
  TBOKRefForm = class(TBaseForm)
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
    PC: TPageControl;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    q: TClientDataSet;
    N6: TMenuItem;
    ExecPrc: TClientDataSet;
    TabMessage: TTabSheet;
    Memo1: TMemo;
    RepCursor: TClientDataSet;
    DS1: TDataSource;
    TBGetRef: TToolButton;
    PopupMenu1: TPopupMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    ActPrev: TAction;
    N11: TMenuItem;
    SaveDialogPlan: TSaveDialog;
    N12: TMenuItem;
    N13: TMenuItem;
    OpenDialog1: TOpenDialog;
    ActNew: TAction;
    ActPost: TAction;
    SaveDialogRep: TSaveDialog;
    N16: TMenuItem;
    TabSSOKPost: TTabSheet;
    GroupBox1: TGroupBox;
    cdbgSSOKPost: TClientDBGrid;
    cdsSSOKPost_SET: TClientDataSetEx;
    dsSSOKPost_SET: TDataSource;
    TabSSOKEducation: TTabSheet;
    cdsSSOKEducation_SET: TClientDataSetEx;
    dsSSOKEducation_SET: TDataSource;
    cdsSSOKInstitution_SET: TClientDataSet;
    dsSSOKInstitution_SET: TDataSource;
    N18: TMenuItem;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    cdbgSSOKEducation: TClientDBGrid;
    cdbgSSOKInstitution: TClientDBGrid;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cbInsert: TCheckBox;
    edInstitutionName: TEdit;
    edInstitutionAbbreviation: TEdit;
    bbInsert: TBitBtn;
    edInstitutionCode: TMaskEdit;
    edInstitutionPlace: TEdit;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabSSOKNationality: TTabSheet;
    GroupBox4: TGroupBox;
    cdbgSSOKNationality: TClientDBGrid;
    cdsSSOKNationality_SET: TClientDataSetEx;
    dsSSOKNationality_SET: TDataSource;
    cdsSSOKParty_SET: TClientDataSetEx;
    dsSSOKParty_SET: TDataSource;
    TabSSOKParty: TTabSheet;
    GroupBox5: TGroupBox;
    cdbgSSOKParty: TClientDBGrid;
    TabSSOKDegree: TTabSheet;
    GroupBox6: TGroupBox;
    cdbgSSOKDegree: TClientDBGrid;
    cdsSSOKDegree_SET: TClientDataSetEx;
    dsSSOKDegree_SET: TDataSource;
    TabSSOKAcademic: TTabSheet;
    GroupBox7: TGroupBox;
    cdbgSSOKAcademic: TClientDBGrid;
    cdsSSOKAcademic_SET: TClientDataSetEx;
    dsSSOKAcademic_SET: TDataSource;
    TabSSOKLanguage: TTabSheet;
    GroupBox8: TGroupBox;
    cdbgSSOKLanguage: TClientDBGrid;
    cdsSSOKLanguage_SET: TClientDataSetEx;
    dsSSOKLanguage_SET: TDataSource;
    TabSSOKLevelLanguage: TTabSheet;
    GroupBox9: TGroupBox;
    cdbgSSOKLevelLanguage: TClientDBGrid;
    cdsSSOKLevelLanguage_SET: TClientDataSetEx;
    dsSSOKLevelLanguage_SET: TDataSource;
    TabSSOKTypePeriod: TTabSheet;
    GroupBox10: TGroupBox;
    cdbgSSOKTypePeriod: TClientDBGrid;
    cdsSSOKTypePeriod_SET: TClientDataSetEx;
    dsSSOKTypePeriod_SET: TDataSource;
    TabSSOKRelation: TTabSheet;
    TabSSOKQualification: TTabSheet;
    TabSSOKLeave: TTabSheet;
    TabSSOKMotiveDismissial: TTabSheet;
    TabSSOKYouth: TTabSheet;
    TabSSOKDepartmentType: TTabSheet;
    TabSSOKArticle: TTabSheet;
    cdsSSOKRelation_SET: TClientDataSetEx;
    dsSSOKRelation_SET: TDataSource;
    GroupBox11: TGroupBox;
    cdbgSSOKRelation: TClientDBGrid;
    GroupBox12: TGroupBox;
    cdbgSSOKQualification: TClientDBGrid;
    cdsSSOKQualification_SET: TClientDataSetEx;
    dsSSOKQualification_SET: TDataSource;
    GroupBox13: TGroupBox;
    cdbgSSOKLeave: TClientDBGrid;
    cdsSSOKLeave_SET: TClientDataSetEx;
    dsSSOKLeave_SET: TDataSource;
    GroupBox14: TGroupBox;
    cdbgSSOKMotiveDismissial: TClientDBGrid;
    cdsSSOKMotiveDismissial_SET: TClientDataSetEx;
    dsSSOKMotiveDismissial_SET: TDataSource;
    GroupBox15: TGroupBox;
    cdbgSSOKYouth: TClientDBGrid;
    cdsSSOKYouth_SET: TClientDataSetEx;
    dsSSOKYouth_SET: TDataSource;
    cdsSSOKDepartmentType_SET: TClientDataSetEx;
    dsSSOKDepartmentType_SET: TDataSource;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    cdbgSSOKArticle: TClientDBGrid;
    cdsSSOKArticle_SET: TClientDataSetEx;
    dsSSOKArticle_SET: TDataSource;
    cdsSSOKDepartment_SET: TClientDataSetEx;
    dsSSOKDepartment_SET: TDataSource;
    cdbgSSOKDepartmentType: TClientDBGrid;
    TabSSOKDepartment: TTabSheet;
    TabSSOKCommandType: TTabSheet;
    TabSSOKTemplateCommand: TTabSheet;
    GroupBox19: TGroupBox;
    cdbgSSOKCommandType: TClientDBGrid;
    GroupBox20: TGroupBox;
    cdbgSSOKTemplateCommand: TClientDBGrid;
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
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    cdsSSOKCommandType_Set: TClientDataSetEx;
    dsSSOKCommandType_Set: TDataSource;
    cdsSSOKTemplateCommand_SET: TClientDataSetEx;
    dsSSOKTemplateCommand_SET: TDataSource;
    N8: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N14: TMenuItem;
    actSSOKPostView: TAction;
    N15: TMenuItem;
    actSSOKEducationView: TAction;
    actSSOKNationalityView: TAction;
    actSSOKPartyView: TAction;
    actSSOKDegreeView: TAction;
    actSSOKAcademicView: TAction;
    actSSOKLanguageView: TAction;
    actSSOKLevelLanguageView: TAction;
    actSSOKTypePeriodView: TAction;
    actSSOKRelationView: TAction;
    actSSOKQualificationView: TAction;
    actSSOKLeaveView: TAction;
    actSSOKMotiveDismissialView: TAction;
    actSSOKYouthView: TAction;
    actSSOKDepartmentTypeView: TAction;
    actSSOKDepartmentView: TAction;
    actSSOKArticleView: TAction;
    actSSOKCommandTypeView: TAction;
    actSSOKTemplateCommandView: TAction;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    TBNew: TToolButton;
    TBPost: TToolButton;
    N52: TMenuItem;
    N53: TMenuItem;
    TabSSOKPenalty: TTabSheet;
    dsSSOKPenalty_SET: TDataSource;
    cdsSSOKPenalty_SET: TClientDataSetEx;
    GroupBox21: TGroupBox;
    cdbgSSOKPenalty: TClientDBGrid;
    actSSOKPenalty: TAction;
    actSSOKPenaltyView: TAction;
    N54: TMenuItem;
    N55: TMenuItem;
    dsSSOKDepartment_RO: TDataSource;
    cdsSSOKDepartment_RO: TClientDataSetEx;
    tbSend: TToolButton;
    tbReceive: TToolButton;
    actSend: TAction;
    actReceive: TAction;
    cdsRefTemp: TClientDataSetEx;
    TabSSOKEducationTitle: TTabSheet;
    GroupBox22: TGroupBox;
    cdbgSSOKEducationTitle: TClientDBGrid;
    cdssokeducationtitle: TClientDataSetEx;
    dssokeducationtitle: TDataSource;
    actSSOKEducationTitle: TAction;
    actSSOKEducationTitleView: TAction;
    dsSSOKeducationtitle_SET: TDataSource;
    cdsSSOKeducationtitle_SET: TClientDataSetEx;
    dsSSOKLevelDepartment_SET: TDataSource;
    cdsSSOKLevelDepartment_SET: TClientDataSetEx;
    N56: TMenuItem;
    N57: TMenuItem;
    N17: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    cdsSSOKRezerv_SET: TClientDataSetEx;
    dsSSOKRezerv: TDataSource;
    TabSSOKElection: TTabSheet;
    GroupBox23: TGroupBox;
    cdbgSSOKelection: TClientDBGrid;
    dsSSOKElection_SET: TDataSource;
    cdsSSOKElection_SET: TClientDataSetEx;
    actSSOKelection: TAction;
    actSSOKelectionView: TAction;
    actSSOKelection1: TMenuItem;
    N48: TMenuItem;
    TabSSOKBaseMove: TTabSheet;
    dsSSOKBaseMove_set: TDataSource;
    cdsSSOKBaseMove_set: TClientDataSetEx;
    actSSOKBaseMove: TAction;
    actSSOKBaseMoveView: TAction;
    N60: TMenuItem;
    N61: TMenuItem;
    TabSSOKDepartmentTable: TTabSheet;
    GroupBox18: TGroupBox;
    cdbgSSOKDepartment: TClientDBGrid;
    TreeV: TTreeView;
    Splitter3: TSplitter;
    Panel1: TPanel;
    Pages: TPageControl;
    TabSheet2: TTabSheet;
    ScrollBox1: TScrollBox;
    cdsDerevo: TClientDataSetEx;
    dsSSOKLevelDepartment_RO: TDataSource;
    cdsSSOKLevelDepartment_RO: TClientDataSetEx;
    N62: TMenuItem;
    N63: TMenuItem;
    cbFiltr: TComboBox;
    LbLevel: TLabel;
    Source: TClientDataSetEx;
    ActNewDep: TAction;
    ActSaveDep: TAction;
    GroupBox24: TGroupBox;
    BitBtn1: TBitBtn;
    GroupBox25: TGroupBox;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    LbFiltrLevelName: TLabel;
    edDepartmentcode: TEdit;
    edDepartmentName: TEdit;
    edDEPARTMENTNUM: TEdit;
    Label7: TLabel;
    LbDepname: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edDepartmentcodeNew: TEdit;
    edDepartmentNameNew: TEdit;
    edDEPARTMENTNUMnew: TEdit;
    BitBtn3: TBitBtn;
    ActDeactivDep: TAction;
    BitBtn4: TBitBtn;
    ActChangeHighDep: TAction;
    Label12: TLabel;
    cbDepType: TComboBox;
    Label3: TLabel;
    Label8: TLabel;
    cbDepTypeNew: TComboBox;
    edDepType: TEdit;
    edDepTypeNEW: TEdit;
    BitBtn5: TBitBtn;
    actUnAssignHighDep: TAction;
    BitBtn6: TBitBtn;
    actActivDep: TAction;
    TabSSOKSpecial: TTabSheet;
    dsSSOKSpecial_SET: TDataSource;
    cdsSSOKSpecial_SET: TClientDataSetEx;
    actSSOKSpecial: TAction;
    actSSOKSpecialView: TAction;
    N64: TMenuItem;
    N65: TMenuItem;
    GroupBox26: TGroupBox;
    cdbgSSOKBaseMove: TClientDBGrid;
    TabSSOKarmygroup: TTabSheet;
    TabSSOKCATEGORYARMY: TTabSheet;
    tabssokMILITARYRANK: TTabSheet;
    TabSsokSTAFF: TTabSheet;
    TabSSokTYPEFORCE: TTabSheet;
    GroupBox27: TGroupBox;
    cdbgSSOKSpecial: TClientDBGrid;
    GroupBox28: TGroupBox;
    cdbgSSOKarmygroup: TClientDBGrid;
    GroupBox29: TGroupBox;
    cdbgssokTYPEFORCE: TClientDBGrid;
    GroupBox30: TGroupBox;
    cdbgssokSTAFF: TClientDBGrid;
    GroupBox31: TGroupBox;
    cdbgssokMILITARYRANK: TClientDBGrid;
    GroupBox32: TGroupBox;
    cdbgssokCATEGORYARMY: TClientDBGrid;
    dsssokCATEGORYARMY: TDataSource;
    cdsssokCATEGORYARMY: TClientDataSetEx;
    dsssokMILITARYRANK: TDataSource;
    dsssokSTAFF: TDataSource;
    dsssokTYPEFORCE: TDataSource;
    dsSSOKarmygroup: TDataSource;
    cdsssokMILITARYRANK: TClientDataSetEx;
    cdsssokSTAFF: TClientDataSetEx;
    cdsssokTYPEFORCE: TClientDataSetEx;
    cdsSSOKarmygroup: TClientDataSetEx;
    actSSOKarmygroup: TAction;
    actSSOKCATEGORYARMY: TAction;
    actSSOKMILITARYRANK: TAction;
    actSSOKSTAFF: TAction;
    actSSOKTYPEFORCE: TAction;
    actSSOKarmygroupVIEW: TAction;
    actSSOKCATEGORYARMYview: TAction;
    actSSOKMILITARYRANKview: TAction;
    actSSOKSTAFFview: TAction;
    actSSOKTYPEFORCEview: TAction;
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
    BitBtn7: TBitBtn;
    actFindDep: TAction;
    TabSSOKnci: TTabSheet;
    GroupBox33: TGroupBox;
    actSSOKnci: TAction;
    actSSOKNCIview: TAction;
    cdsSSOKnci: TClientDataSetEx;
    dsSSOKnci: TDataSource;
    N76: TMenuItem;
    N77: TMenuItem;
    GroupBox34: TGroupBox;
    cdbgSSOKnci: TClientDBGrid;
    GroupBox35: TGroupBox;
    Label14: TLabel;
    ed_S: TEdit;
    cb_S: TComboBox;
    DBLCB_S: TDBLookupComboBox;
    DBLCB_OK: TDBLookupComboBox;
    DBEd_ok: TDBEdit;
    dbed_S: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    BitBtn8: TBitBtn;
    ed_OK_new: TEdit;
    cb_OK_new: TComboBox;
    ed_S_new: TEdit;
    cb_S_new: TComboBox;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    ds_S: TDataSource;
    ds_OK: TDataSource;
    cds_OK: TClientDataSetEx;
    cds_S: TClientDataSetEx;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    TabSSOKHospital: TTabSheet;
    TabSSOKcategory: TTabSheet;
    GroupBox36: TGroupBox;
    cdbgSSOKhospital: TClientDBGrid;
    GroupBox37: TGroupBox;
    cdbgSSOKmin_zp: TClientDBGrid;
    dsSSOKhospital_set: TDataSource;
    cdsSSOKhospital_set: TClientDataSetEx;
    actSSOKhospital: TAction;
    actSSOKhospitalVIEW: TAction;
    dsSSOKcategory_SET: TDataSource;
    cdsSSOKcategory_SET: TClientDataSetEx;
    actSSOKcategory: TAction;
    actSSOKcategoryView: TAction;
    bbCalcCategory: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    N80: TMenuItem;
    cdbgSSOKcategory: TClientDBGrid;
    dsSSokMinZP_SET: TDataSource;
    cdsSSokMinZP_SET: TClientDataSetEx;
    BitBtn15: TBitBtn;
    N210: TMenuItem;
    N78: TMenuItem;
    N211: TMenuItem;
    N79: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    TabSsOkPrivilege: TTabSheet;
    dsSSOKPrivilege_SET: TDataSource;
    cdsSSOKPrivilege_SET: TClientDataSetEx;
    actSSOKPrivilege: TAction;
    actSSOKPrivilegeView: TAction;
    N83: TMenuItem;
    N84: TMenuItem;
    TabSsOKkv_Kurs: TTabSheet;
    dsSSOKkv_kurs_SET: TDataSource;
    cdsSSOKkv_kurs_SET: TClientDataSetEx;
    actSSOKkv_kurs: TAction;
    actSSOKkv_kursView: TAction;
    N85: TMenuItem;
    N86: TMenuItem;
    Tabss_ok_org_business_voyage: TTabSheet;
    Tabss_ok_theme_business_voyage: TTabSheet;
    GroupBox38: TGroupBox;
    cdbgssok_org_business_voyage: TClientDBGrid;
    GroupBox39: TGroupBox;
    cdbgssok_theme_business_voyage: TClientDBGrid;
    GroupBox40: TGroupBox;
    cdbgSSOKkv_kurs: TClientDBGrid;
    GroupBox41: TGroupBox;
    cdbgSSOKPrivilege: TClientDBGrid;
    DSssok_theme_business_voyage_SET: TDataSource;
    CDSssok_theme_business_voyage_SET: TClientDataSetEx;
    dsssok_org_business_voyage_SET: TDataSource;
    cdsssok_org_business_voyage_SET: TClientDataSetEx;
    actss_ok_org_business_voyage: TAction;
    Actss_ok_org_business_voyageView: TAction;
    Actss_ok_theme_business_voyage: TAction;
    Actss_ok_theme_business_voyageView: TAction;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N90: TMenuItem;
    GroupBox42: TGroupBox;
    Label21: TLabel;
    BitBtn12: TBitBtn;
    cdsS_str: TClientDataSetEx;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    ToolButton1: TToolButton;
    actToExcel: TAction;
    cdsSS_OK_city: TClientDataSetEx;
    dsSS_OK_city: TDataSource;
    Tabss_ok_city: TTabSheet;
    Tabss_ok_regplace: TTabSheet;
    GroupBox43: TGroupBox;
    cdbgss_ok_city: TClientDBGrid;
    GroupBox44: TGroupBox;
    cdbgss_ok_regplace: TClientDBGrid;
    cdsSS_OK_regplace: TClientDataSetEx;
    dsSS_OK_regplace: TDataSource;
    ACTss_ok_city: TAction;
    ACTss_ok_regplace: TAction;
    N91: TMenuItem;
    N92: TMenuItem;
    ACTss_ok_cityVIEW: TAction;
    ACTss_ok_regplaceVIEW: TAction;
    N93: TMenuItem;
    N94: TMenuItem;
    Memo2: TMemo;
    Memo3: TMemo;
    Tabss_ok_zp_rate: TTabSheet;
    Tabss_ok_zp_rate_type: TTabSheet;
    GroupBox45: TGroupBox;
    cdbgss_ok_zp_rate: TClientDBGrid;
    GroupBox46: TGroupBox;
    cdbgss_ok_zp_rate_type: TClientDBGrid;
    dsss_ok_zp_rate_type: TDataSource;
    cdsss_ok_zp_rate_type: TClientDataSetEx;
    dsss_ok_zp_rate: TDataSource;
    cdsss_ok_zp_rate: TClientDataSetEx;
    actss_ok_zp_rate: TAction;
    actss_ok_zp_rate_type: TAction;
    actss_ok_zp_rateVIEW: TAction;
    actss_ok_zp_rate_typeVIEW: TAction;
    N95: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    dsSS_OK_POST_GROUP: TDataSource;
    cdsSS_OK_POST_GROUP: TClientDataSetEx;
    GroupBox47: TGroupBox;
    BitBtn19: TBitBtn;
    Label22: TLabel;
    Label23: TLabel;
    BitBtn20: TBitBtn;
    bbDeleteDep: TBitBtn;
    MemoErr: TMemo;
    cdsTemp: TClientDataSet;
    MemoErr2: TMemo;
    edCategoryFiltr: TEdit;
    Label24: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SplitterCanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure actToolBarExecute(Sender: TObject);
    procedure actStatusBarExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure cdsSSOK_SETReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormShow(Sender: TObject);
    procedure cdsSSOK_SETBeforePost(DataSet: TDataSet);
    procedure cdsSSOK_SETAfterPost(DataSet: TDataSet);
    procedure cbInsertClick(Sender: TObject);
    procedure bbInsertClick(Sender: TObject);
    procedure cdbgSSOKEducationCellClick(Column: TColumn);
    procedure cdsSSOKInstitution_SETBeforePost(DataSet: TDataSet);
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
    procedure GetRefExcel(cdbgSSOK: TClientDBGrid);
    procedure GetRefExcel_institution(cdbgSSOK: TClientDBGrid);
    procedure dsSSOKPost_SETStateChange(Sender: TObject);
    procedure dsSSOKEducation_SETStateChange(Sender: TObject);
    procedure dsSSOKInstitution_SETStateChange(Sender: TObject);
    procedure dsSSOKNationality_SETStateChange(Sender: TObject);
    procedure dsSSOKParty_SETStateChange(Sender: TObject);
    procedure dsSSOKDegree_SETStateChange(Sender: TObject);
    procedure dsSSOKAcademic_SETStateChange(Sender: TObject);
    procedure dsSSOKLanguage_SETStateChange(Sender: TObject);
    procedure dsSSOKLevelLanguage_SETStateChange(Sender: TObject);
    procedure dsSSOKTypePeriod_SETStateChange(Sender: TObject);
    procedure dsSSOKRelation_SETStateChange(Sender: TObject);
    procedure dsSSOKQualification_SETStateChange(Sender: TObject);
    procedure dsSSOKLeave_SETStateChange(Sender: TObject);
    procedure dsSSOKMotiveDismissial_SETStateChange(Sender: TObject);
    procedure dsSSOKYouth_SETStateChange(Sender: TObject);
    procedure dsSSOKDepartmentType_SETStateChange(Sender: TObject);
    procedure dsSSOKDepartment_SETStateChange(Sender: TObject);
    procedure dsSSOKArticle_SETStateChange(Sender: TObject);
    procedure dsSSOKCommandType_SetStateChange(Sender: TObject);
    procedure dsSSOKTemplateCommand_SETStateChange(Sender: TObject);
    procedure actSSOKPostViewExecute(Sender: TObject);
    procedure actSSOKEducationViewExecute(Sender: TObject);
    procedure actSSOKNationalityViewExecute(Sender: TObject);
    procedure actSSOKPartyViewExecute(Sender: TObject);
    procedure actSSOKDegreeViewExecute(Sender: TObject);
    procedure actSSOKAcademicViewExecute(Sender: TObject);
    procedure actSSOKLanguageViewExecute(Sender: TObject);
    procedure actSSOKLevelLanguageViewExecute(Sender: TObject);
    procedure actSSOKTypePeriodViewExecute(Sender: TObject);
    procedure actSSOKRelationViewExecute(Sender: TObject);
    procedure actSSOKQualificationViewExecute(Sender: TObject);
    procedure actSSOKLeaveViewExecute(Sender: TObject);
    procedure actSSOKMotiveDismissialViewExecute(Sender: TObject);
    procedure actSSOKYouthViewExecute(Sender: TObject);
    procedure actSSOKDepartmentTypeViewExecute(Sender: TObject);
    procedure actSSOKDepartmentViewExecute(Sender: TObject);
    procedure actSSOKArticleViewExecute(Sender: TObject);
    procedure actSSOKCommandTypeViewExecute(Sender: TObject);
    procedure actSSOKTemplateCommandViewExecute(Sender: TObject);
    procedure cdsSSOKPost_SETBeforePost(DataSet: TDataSet);
    procedure cdsSSOKDepartment_SETBeforePost(DataSet: TDataSet);
    procedure cdsSSOK_SETBeforeEdit(DataSet: TDataSet);
    procedure ActNewExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure actSSOKPenaltyExecute(Sender: TObject);
    procedure actSSOKPenaltyViewExecute(Sender: TObject);
    procedure dsSSOKPenalty_SETStateChange(Sender: TObject);
    procedure actSendExecute(Sender: TObject);
    procedure actReceiveExecute(Sender: TObject);
    procedure LoadFile(FileName: String; Script: Boolean = False);
    procedure dssokeducationtitleStateChange(Sender: TObject);
    procedure actSSOKEducationTitleExecute(Sender: TObject);
    procedure actSSOKEducationTitleViewExecute(Sender: TObject);
    procedure actSSOKelectionViewExecute(Sender: TObject);
    procedure actSSOKelectionExecute(Sender: TObject);
    procedure actSSOKBaseMoveExecute(Sender: TObject);
    procedure actSSOKBaseMoveViewExecute(Sender: TObject);
    procedure cbFiltrChange(Sender: TObject);
    procedure TreeVClick(Sender: TObject);
    procedure TreeVKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActNewDepExecute(Sender: TObject);
    procedure ActSaveDepExecute(Sender: TObject);
    procedure ActChangeHighDepExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDepTypeChange(Sender: TObject);
    procedure edDepTypeNEWChange(Sender: TObject);
    procedure ActDeactivDepExecute(Sender: TObject);
    procedure actUnAssignHighDepExecute(Sender: TObject);
    procedure actActivDepExecute(Sender: TObject);
    procedure actSSOKSpecialExecute(Sender: TObject);
    procedure actSSOKSpecialViewExecute(Sender: TObject);
    procedure dsSSOKSpecial_SETStateChange(Sender: TObject);
    procedure actSSOKarmygroupExecute(Sender: TObject);
    procedure actSSOKCATEGORYARMYExecute(Sender: TObject);
    procedure actSSOKMILITARYRANKExecute(Sender: TObject);
    procedure actSSOKSTAFFExecute(Sender: TObject);
    procedure actSSOKTYPEFORCEExecute(Sender: TObject);
    procedure actSSOKarmygroupVIEWExecute(Sender: TObject);
    procedure actSSOKCATEGORYARMYviewExecute(Sender: TObject);
    procedure actSSOKMILITARYRANKviewExecute(Sender: TObject);
    procedure actSSOKSTAFFviewExecute(Sender: TObject);
    procedure actSSOKTYPEFORCEviewExecute(Sender: TObject);
    procedure actFindDepExecute(Sender: TObject);
    procedure actSSOKNCIviewExecute(Sender: TObject);
    procedure actSSOKnciExecute(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure cb_SChange(Sender: TObject);
    procedure ed_SChange(Sender: TObject);
    procedure ed_S_newChange(Sender: TObject);
    procedure ed_OK_newChange(Sender: TObject);
    procedure cb_S_newChange(Sender: TObject);
    procedure cb_OK_newChange(Sender: TObject);
    procedure actSSOKhospitalExecute(Sender: TObject);
    procedure actSSOKhospitalVIEWExecute(Sender: TObject);
    procedure actSSOKcategoryViewExecute(Sender: TObject);
    procedure actSSOKcategoryExecute(Sender: TObject);
    procedure bbCalcCategoryClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure actSSOKPrivilegeExecute(Sender: TObject);
    procedure actSSOKPrivilegeViewExecute(Sender: TObject);
    procedure actSSOKkv_kursExecute(Sender: TObject);
    procedure actSSOKkv_kursViewExecute(Sender: TObject);
    procedure actss_ok_org_business_voyageExecute(Sender: TObject);
    procedure Actss_ok_theme_business_voyageExecute(Sender: TObject);
    procedure Actss_ok_org_business_voyageViewExecute(Sender: TObject);
    procedure Actss_ok_theme_business_voyageViewExecute(Sender: TObject);
    procedure cdsSSokMinZP_SETBeforePost(DataSet: TDataSet);
    procedure cdsSSokMinZP_SETAfterOpen(DataSet: TDataSet);
    procedure cdsSSOKhospital_setBeforePost(DataSet: TDataSet);
    procedure BitBtn12Click(Sender: TObject);
    procedure cdsSSOKkv_kurs_SETAfterOpen(DataSet: TDataSet);
    procedure BitBtn16Click(Sender: TObject);
    procedure get_one_line(table_name,field_list,oneline: String);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure actToExcelExecute(Sender: TObject);
    procedure ACTss_ok_cityExecute(Sender: TObject);
    procedure ACTss_ok_regplaceExecute(Sender: TObject);
    procedure ACTss_ok_cityVIEWExecute(Sender: TObject);
    procedure ACTss_ok_regplaceVIEWExecute(Sender: TObject);
    procedure actss_ok_zp_rateExecute(Sender: TObject);
    procedure actss_ok_zp_rate_typeExecute(Sender: TObject);
    procedure actss_ok_zp_rateVIEWExecute(Sender: TObject);
    procedure actss_ok_zp_rate_typeVIEWExecute(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure cdbgSSOKkv_kursKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsSSOKnciAfterPost(DataSet: TDataSet);
    procedure BitBtn20Click(Sender: TObject);
    procedure cdsSSOKPost_SETAfterDelete(DataSet: TDataSet);
    procedure bbDeleteDepClick(Sender: TObject);
    procedure edCategoryFiltrChange(Sender: TObject);

  private
    { Private declarations }
    procedure addLookUpField(DataSet_, LDataSet_: TDataSet;
                             FieldName_, KeyFields_, LookUpKeyFields_, LookUpResultField_: String;
                             CreateField: Boolean = False);

  public
    procedure UpdateView; override;
    { Public declarations }
    function GetSQLResultPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = '') : Variant;
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

  TDataS = class
  private
    FId: string;
    FName: string;
    FNCI_TBL_NAME: string;
    FNCI_ID_NAME: string;
    FNCI_NAME: string;
    FSS_OK_TBL_NAME: string;
    FSS_OK_ID_NAME: string;
    FSS_OK_NAME: string;
  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
    property NCI_TBL_NAME: string read FNCI_TBL_NAME write FNCI_TBL_NAME;
    property NCI_ID_NAME: string read FNCI_ID_NAME write FNCI_ID_NAME;
    property NCI_NAME: string read FNCI_NAME write FNCI_NAME;
    property SS_OK_TBL_NAME: string read FSS_OK_TBL_NAME write FSS_OK_TBL_NAME;
    property SS_OK_ID_NAME: string read FSS_OK_ID_NAME write FSS_OK_ID_NAME;
    property SS_OK_NAME: string read FSS_OK_NAME write FSS_OK_NAME;
  end;

function Convert(const s: string): string;//контрольная сумма

resourcestring
  SShowToolBar   = 'ShowToolBar'  ;
  SShowStatusBar = 'ShowStatusBar';

const
  SQL_SSOKnci = 'select * from ss_ok_nci';
  SQL_Users_SET = 'select id, user_name from users';
//select /*+ INDEX_DESC (d XPK_OFF_DAYS)*/ * from OFF_DAYS d
//select /*+ INDEX (d UK)*/ * from OFF_DAYS d
//select /*+ INDEX (d UK)*/ * from OFF_DAYS d
  SQL_Derevo = 'select level, d.department_id id, d.DEPARTMENT_CODE ,'+
    ' d.DEPARTMENT_CODE||'') ''||d.department_name name_, d.department_code,'+
    ' d.department_name,  d.department_type_code,'+
        ' d.high_dep_code, d.level_department_code, d.department_num '+
        ' from ss_ok_department d ';

//        ' connect by d.high_dep_code = prior d.department_code'+
//        ' start with d.high_dep_code is null';
//

  sql_SS_OK_POST_GROUP       = 'select * from SS_OK_POST_GROUP';

  sql_ss_ok_zp_rate       = 'select * from ss_ok_zp_rate';
  sql_ss_ok_zp_rate_type      = 'select * from ss_ok_zp_rate_type';

  sql_ss_ok_city       = 'select * from ss_ok_city';
  sql_ss_ok_regplace       = 'select * from ss_ok_regplace';
  SQL_ss_ok_org_business_voyage_SET       = 'select * from ss_ok_org_business_voyage';
  SQL_ss_ok_theme_business_voyage_SET       = 'select * from ss_ok_theme_business_voyage';
  SQL_SSOKkv_kurs_SET       = 'select * from SS_OK_kv_kurs';
  SQL_SSOKprivilege_SET       = 'select * from SS_OK_privilege';
  sql_SSokMinZP_SET       = 'select * from SS_OK_min_zp order by date_open';
  SQL_SSOKHospital_SET       = 'select * from SS_OK_hospital';
//  SQL_SSOKcategory_SET       = 'select mfo_category_type_code,CATEGORY_RATE,SALARY,STATE_NOTES,EMP_CODE,INS_DATE,category_code,lpad(category_name,3,'' '') category_name from SS_OK_category where state_notes=''A'' order by mfo_category_type_code,lpad(category_name,3,'' '')';
//  SQL_SSOKcategory_SET       = 'select mfo_category_type_code,CATEGORY_RATE,SALARY,STATE_NOTES,EMP_CODE,INS_DATE,category_code,category_name from SS_OK_category where state_notes=''A'' order by mfo_category_type_code,category_code';
  SQL_SSOKcategory_SET       = 'select CATEGORY_RATE,SALARY,STATE_NOTES,EMP_CODE,INS_DATE,category_code,category_name from SS_OK_category where state_notes=''A'' order by category_code';

  SQL_SSOKarmygroup       = 'select * from SS_OK_army_group';
  SQL_SSOKCATEGORYARMY    = 'select * from SS_OK_CATEGORY_ARMY';
  SQL_SSOKMILITARYRANK    = 'select * from SS_OK_MILITARY_RANK';
  SQL_SSOKSTAFF           = 'select * from SS_OK_STAFF';
  SQL_SSOKTYPEFORCE       = 'select * from SS_OK_TYPE_FORCE';
//
  SQL_SSOKspecial_SET           = 'SELECT * FROM ss_ok_special d';
  SQL_SSOKRezerv_SET            = 'SELECT * FROM ss_ok_rezerv d';
  SQL_SSOKelection_SET          = 'SELECT * FROM ss_ok_election d';
  SQL_SSOKBaseMove_SET          = 'SELECT * FROM ss_ok_base_move d';

//  SQL_SSOKPost_SET              = 'SELECT /*+ INDEX (d ss_ok_post_UK)*/              * FROM ss_ok_post                  d where d.post_code is not null';
  SQL_SSOKPost_SET = 'SELECT * FROM ss_ok_post d ';
//    ' where d.post_code is not null '+
//    ' order by d.LEVEL_DEPARTMENT_CODE, d.post_code';

  SQL_SSOKEducation_SET         = 'SELECT /*+ INDEX (d ss_ok_education_UK)*/         * FROM ss_ok_education             d where d.education_code is not null';
  SQL_SSOKInstitution_SET       = 'SELECT /*+ INDEX (d ss_ok_institution_UK)*/       * FROM ss_ok_institution           d where d.institution_code is not null';
  SQL_SSOKNationality_SET       = 'SELECT /*+ INDEX (d ss_ok_nationality_UK)*/       * FROM ss_ok_nationality           d where d.nationality_code is not null';
  SQL_SSOKParty_SET             = 'SELECT /*+ INDEX (d ss_ok_party_UK)*/             * FROM ss_ok_party                 d where d.party_code is not null';
  SQL_SSOKDegree_SET            = 'select /*+ INDEX (d SS_OK_DEGREE_UK)*/            * from SS_OK_DEGREE                d where d.degree_code is not null';
  SQL_SSOKAcademic_SET          = 'select /*+ INDEX (d SS_OK_ACADEMIC_UK)*/          * from SS_OK_ACADEMIC              d where d.academic_code is not null';
  SQL_SSOKLanguage_SET          = 'select /*+ INDEX (d SS_OK_LANGUAGE_UK)*/          * from SS_OK_LANGUAGE              d where d.language_code is not null';
  SQL_SSOKLevelLanguage_SET     = 'select /*+ INDEX (d SS_OK_LEVEL_LANGUAGE_UK)*/    * from SS_OK_LEVEL_LANGUAGE        d where d.level_language_code is not null';
  SQL_SSOKTypePeriod_SET        = 'select /*+ INDEX (d SS_OK_TYPE_PERIOD_UK)*/       * from SS_OK_TYPE_PERIOD           d where d.type_period_code is not null';
  SQL_SSOKRelation_SET          = 'select /*+ INDEX (d SS_OK_RELATION_UK)*/          * from SS_OK_RELATION              d where d.relation_code is not null';
  SQL_SSOKQualification_SET     = 'select /*+ INDEX (d SS_OK_QUALIFICATION_UK)*/     * from SS_OK_QUALIFICATION         d where d.qualification_code is not null';
  SQL_SSOKLeave_SET             = 'select /*+ INDEX (d SS_OK_LEAVE_UK)*/             * from SS_OK_LEAVE                 d where d.leave_code is not null';
  SQL_SSOKMotiveDismissial_SET  = 'select /*+ INDEX (d SS_OK_MOTIVE_DISMISSIAL_UK)*/ * from SS_OK_MOTIVE_DISMISSIAL     d where d.motive_dismissial_code is not null';
  SQL_SSOKYouth_SET             = 'select /*+ INDEX (d SS_OK_YOUTH_UK)*/             * from SS_OK_YOUTH                 d where d.youth_code is not null';
  SQL_SSOKDepartmentType_SET    = 'SELECT /*+ INDEX (d ss_ok_department_type_UK)*/   * FROM ss_ok_department_type       d where d.department_type_code is not null';
  SQL_SSOKDepartment_SET        = 'SELECT /*+ INDEX (d ss_ok_department_UK)*/        * FROM ss_ok_department d';
//  ' order by d.LEVEL_DEPARTMENT_CODE, d.post_code';
//  SQL_SSOKDepartment_SET        = 'SELECT * FROM ss_ok_department            d where d.department_code is not null'+
//  ' order by d.LEVEL_DEPARTMENT_CODE, d.post_code';

  SQL_SSOKArticle_SET           = 'select /*+ INDEX (d SS_OK_ARTICLE_UK)*/           * from SS_OK_ARTICLE               d where d.article_code is not null';
  SQL_SSOKCommandType_SET       = 'select /*+ INDEX (d SS_OK_COMMAND_TYPE_UK)*/      * from SS_OK_COMMAND_TYPE          d where d.command_type_code is not null';
  SQL_SSOKTemplateCommand_SET   = 'select /*+ INDEX (d SS_OK_TEMPLATE_COMMAND_UK)*/  * from SS_OK_TEMPLATE_COMMAND      d where d.template_command_code is not null';
  SQL_SSOKPenalty_SET           = 'select /*+ INDEX (d SS_OK_PENALTY_UK)*/           * from SS_OK_PENALTY               d where d.penalty_code is not null';
//TabSSOKEducationTitle
  SQL_SSOKEducationTitle_SET    = 'select /*+ INDEX (d SS_OK_Education_Title_UK)*/   * from SS_OK_Education_Title       d where d.Education_Title_code is not null';
  SQL_SSOKLevelDepartment_SET   = 'select /*+ INDEX (d SS_OK_Level_Department_UK)*/  * from SS_OK_Level_Department      d where d.Level_Department_code is not null';

  type TMessage =  array[0..100, 0..2] of String;
  
var
  BOKRefForm: TBOKRefForm;
  ChParam, LineCounter              : integer ;
  RepName, Next_Par, Next_Par_Name, OldStateNotes  : String  ;
  ToPrint, ToExcel, SchRepFileExist : Boolean ;
  F                                 : TextFile;
  SchRepFileOpened                  : Boolean;
  HeadBranch_, FiltrLevelName, FiltrLevel, BossLevel   : String  ;
  tok,field_list_tok: TStringTokenizer;
  field_list_array: TMessage;

implementation


{$R *.dfm}

function NumTo(num:integer):string;  //эта функция переводит num в строчный эквивалент в Exl
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

function TBOKRefForm.GetSQLResultPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = '') : Variant;
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
    Result := GetSqlResult(SQLText,SQLParams);
  finally
    SQLParams.Free;
  end;
end;

function TBOKRefForm.ExecSQLPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = '') : Integer;
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

procedure TBOKRefForm.addLookUpField(DataSet_, LDataSet_: TDataSet;
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


procedure TBOKRefForm.FormCreate(Sender: TObject);
 var d : TData;
  i,  n : Integer;
  head_ : string;

begin

  inherited;
  HeadBranch_ := getsqlresult('select header_id from s_mfo where bank_id=info.getbranch');
  i:=GetSqlResult('select status from statusoperday where id=1');
  if (i<>1) then
  begin
    Application.MessageBox('Опер. день закрыт !!!', 'Предупреждение', MB_OK);
  end;
  BOKRefForm := Self;

  with Registry do
    if OpenKey(INIT_KEY + Self.ClassName, False) then
    try
      if ValueExists(SShowToolBar) then
        psToolBar.Visible := ReadBool(SShowToolBar);
      if ValueExists(SShowStatusBar) then
        StatusBar.Visible := ReadBool(SShowStatusBar);
  finally
      CloseKey;
  end;

  with PC do
    for n:=0 to PageCount-1 do
      Pages[n].TabVisible:=false;

//  showMessage(convert('Сейчас я в головном банке00395')+#13#10+' '+'00395');
//  showMessage(convert('Сейчас я в головном банке00980')+#13#10+' '+'00980');
//  showMessage(convert('Сейчас я в головном банке01088')+#13#10+' '+'01088');
//  showMessage(convert('Сейчас я в головном банке01071')+#13#10+' '+'01071');
//  showMessage(convert('Сейчас я в головном банке01066')+#13#10+' '+'01066');
//  showMessage(convert('Сейчас я в головном банке00974')+#13#10+' '+'00974');
//  showMessage(convert('Сейчас я в головном банке00981')+#13#10+' '+'00981');
//  showMessage(convert('Сейчас я в головном банке01041')+#13#10+' '+'01041');
//  showMessage(convert('Сейчас я в головном банке01057')+#13#10+' '+'01057');
//  showMessage(convert('Сейчас я в головном банке00780')+#13#10+' '+'00780');
//  showMessage(convert('Сейчас я в головном банке09006')+#13#10+' '+'09006');
//  showMessage(convert('Сейчас я в головном банке09004')+#13#10+' '+'09004');
//  showMessage(convert('Сейчас я в головном банке09014')+#13#10+' '+'09014');
//  showMessage(convert('Сейчас я в головном банке00548')+#13#10+' '+'00548');
//  showMessage(convert('Сейчас я в головном банке00820')+#13#10+' '+'00820');
//  showMessage(convert('Сейчас я в головном банке00394')+#13#10+' '+'00394');
//  showMessage(convert('Сейчас я в головном банке00883')+#13#10+' '+'00883');
//  showMessage(convert('Сейчас я в головном банке00444')+#13#10+' '+'00444');
  Head_ := VarToStr(getSqlResult('select CONST.GETCONST(23001) from dual'));
  if Head_ <> convert('Сейчас я в головном банке' +Branch) then
  begin
//showmessage('НЕ Головное отделение!!!');
   loadData(Source,'select * from s_mfo '+
        ' where bank_id=union_id '+
        ' and bank_id='''+Branch+''' '+
        ' and header_id<>union_id');
// район
    BossLevel := '3';
    FiltrLevel:='3';
    FiltrLevelName:='Район';
// обл
   while not Source.eof
   do begin
    BossLevel := '2';
    FiltrLevel:='2';
    FiltrLevelName:='Область';
    Source.next;
   end;

    ActNewDep.enabled := false;
    ActSaveDep.enabled := false;
    ActDeactivDep.enabled := false;
    ActChangeHighDep.enabled := false;
     if Head_ = convert('Сейчас я в районном банке' +Branch)
     then begin
       FiltrLevel:='3';
       FiltrLevelName:='Район';
       BossLevel := '3';
     end;
     if Head_ = convert('Сейчас я в областном банке' +Branch)
     then begin
      BossLevel := '2';
      FiltrLevel:= '2';
      FiltrLevelName:='Область';
     end;
    LBlevel.caption := FiltrLevelName+' - '+Branch+' - доступ Только для чтения';
  end else begin
//showmessage('Головное отделение');
{
ключ - республика
}
    ActNewDep.enabled := true;
    ActSaveDep.enabled := true;
    ActDeactivDep.enabled := true;
    ActChangeHighDep.enabled := true;

    LBlevel.caption := 'Головное отделение';
    BossLevel:='1';
    FiltrLevel:='1';
    FiltrLevelName:=getsqlresultpar('select level_department_name from ss_ok_level_department where level_department_code=:p_1','1');
    if FiltrLevelName='' then FiltrLevelName:='Республика';
  end;

  if (BossLevel<>'1') then
  begin

    cdsSSOKPost_SET.ReadOnly            := True;
    cdsSSOKInstitution_SET.ReadOnly     := True;
    cdsSSOKEducation_SET.ReadOnly       := True;
    cdsSSOKNationality_SET.ReadOnly     := True;
    cdsSSOKParty_SET.ReadOnly           := True;
    cdsSSOKDegree_SET.ReadOnly          := True;
    cdsSSOKAcademic_SET.ReadOnly        := True;
    cdsSSOKLanguage_SET.ReadOnly        := True;
    cdsSSOKTypePeriod_SET.ReadOnly      := True;
    cdsSSOKRelation_SET.ReadOnly        := True;
    cdsSSOKLeave_SET.ReadOnly           := True;
    cdsSSOKDepartment_SET.ReadOnly      := True;
    cdsSSOKArticle_SET.ReadOnly         := True;
    cdsSSOKCommandType_SET.ReadOnly     := True;
    cdsSSOKYouth_SET.ReadOnly           := True;
    cdsSSOKMotiveDismissial_SET.ReadOnly:= True;
    cdsSSOKDepartmentType_SET.ReadOnly  := True;
    cdsSSOKLevelLanguage_SET.ReadOnly   := True;
    cdsSSOKQualification_SET.ReadOnly   := True;
    cdsSSOKTemplateCommand_SET.ReadOnly := True;
    cdsSSOKPenalty_SET.ReadOnly         := True;
    cdsSSOKSpecial_SET.ReadOnly         := True;
    cdsSS_OK_POST_GROUP.ReadOnly        := True;
  end;

{
    cdbgSSOKPost.ReadOnly            := True;
    cdbgSSOKInstitution.ReadOnly     := True;
    cdbgSSOKEducation.ReadOnly       := True;
    cdbgSSOKNationality.ReadOnly     := True;
    cdbgSSOKParty.ReadOnly           := True;
    cdbgSSOKDegree.ReadOnly          := True;
    cdbgSSOKAcademic.ReadOnly        := True;
    cdbgSSOKLanguage.ReadOnly        := True;
    cdbgSSOKTypePeriod.ReadOnly      := True;
    cdbgSSOKRelation.ReadOnly        := True;
    cdbgSSOKLeave.ReadOnly           := True;
    cdbgSSOKDepartment.ReadOnly      := True;
    cdbgSSOKArticle.ReadOnly         := True;
    cdbgSSOKCommandType.ReadOnly     := True;
    cdbgSSOKYouth.ReadOnly           := True;
    cdbgSSOKMotiveDismissial.ReadOnly:= True;
    cdbgSSOKDepartmentType.ReadOnly  := True;
    cdbgSSOKLevelLanguage.ReadOnly   := True;
    cdbgSSOKQualification.ReadOnly   := True;
    cdbgSSOKTemplateCommand.ReadOnly := True;
}
//  Pages.pages[0].Caption:='qqq';
  LoadData(Source,'select a.level_department_code id,'+
  ' a.level_department_name name '+
  ' from ss_ok_level_department a',True);

  CBfiltr.clear;
  Source.First;
  while not Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := Source.FieldByName('id').AsString;
        Name := Source.FieldByName('name').AsString;
      end;
      CBfiltr.Items.AddObject(Source.FieldByName('name').AsString, D);
      Source.Next;
  end;

  LbFiltrLevelName.caption:=FiltrLevelName;

//  j:=GetSqlResult('select max(department_code) from ss_ok_department');
//  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);
//  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j)+' отделов';

end;

procedure TBOKRefForm.FormDestroy(Sender: TObject);
begin
  inherited;
  with Registry do
    if OpenKey(INIT_KEY + Self.ClassName, True) then
    try
      WriteBool(SShowToolBar, psToolBar.Visible);
      WriteBool(SShowStatusBar, StatusBar.Visible);
    finally
      CloseKey;
    end;
end;

procedure TBOKRefForm.SplitterCanResize(Sender: TObject;
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

procedure TBOKRefForm.actToolBarExecute(Sender: TObject);
begin
  psToolBar.Visible := not psToolBar.Visible;
end;

procedure TBOKRefForm.actStatusBarExecute(Sender: TObject);
begin
  StatusBar.Visible := not StatusBar.Visible;
end;

procedure TBOKRefForm.actAboutExecute(Sender: TObject);
begin
  with TAboutDialog.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TBOKRefForm.ActionListUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  actToolBar.Checked := psToolBar.Visible;
  actStatusBar.Checked := StatusBar.Visible;
  if action=actSSOKDepartment
  then begin

  end else begin
  
  end;
end;



procedure TBOKRefForm.cdsSSOK_SETReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin

  If pos('ORA-01400', E.Message) > 0 Then ShowMessage('Ошибка при сохранении. Пожалуйста, заполните пустые поля!')
  Else ShowMessage(e.Message);

end;

procedure TBOKRefForm.FormShow(Sender: TObject);
begin
//  PC.ActivePage := TabMessage;
//    showmessage('HeadBranch_='+HeadBranch_+' Branch='+Branch);
  OldStateNotes := 'A';
  if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
  then begin
    showmessage('(1325)Справочники Ведутся Только В Республиканском Отделе Кадров.'); // проверить на 9006 не должно так говорить
    exit;
  end;
  
end;

procedure TBOKRefForm.cdsSSOK_SETBeforePost(DataSet: TDataSet);
var ErMessage : string;
begin
// предупреждение: ИСПОЛЬЗУЕТСЯ ДЛЯ МНОГИХ ДАТАСЕТОВ !!!

  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  if DataSet.Fields.FieldByName('state_notes').AsVariant<>'P'
  then DataSet.Fields.FieldByName('state_notes').AsVariant:='A';

  if DataSet.Fields[1].IsNull
  then ErMessage := 'Ошибка при сохранении.'+#13#10+'Укажите уникальный код записи.';


  if ErMessage <> '' then
  begin
    ShowMessage(ErMessage);
    TCLientDataSet(DataSet).UndoLastChange(True);
    Abort;
  end;

  if OldStateNotes = 'P' then
  begin
    ShowMessage('Предупреждение: эта запись неактивная, но для внесения изменений будет активизирована.');
    DataSet.Fields.FieldByName('state_notes').AsVariant := 'A';
    OldStateNotes := 'A';
  end;

end;

procedure TBOKRefForm.cdsSSOK_SETAfterPost(DataSet: TDataSet);
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
            Abort;
    End;
  End;

end;

procedure TBOKRefForm.cbInsertClick(Sender: TObject);
begin

  If cdsSSOKInstitution_SET.State in [dsEdit, dsInsert] then cdsSSOKInstitution_SET.Cancel;
  If cdsSSOKEducation_SET.State in [dsEdit, dsInsert] then cdsSSOKEducation_SET.Cancel;

  if cbInsert.Checked then begin
//    cdsSSOKInstitution_SET.insert;
//    cdbgSSOKEducation.DataSource.DataSet.Fields.FieldByName('education_code').AsString;
    edInstitutionCode.EditMask := '\' + cdbgSSOKEducation.DataSource.DataSet.Fields.FieldByName('education_code').AsString + '0000;1;_';
    edInstitutionCode.Enabled := True;
    edInstitutionName.Enabled := True;
    edInstitutionAbbreviation.Enabled := True;
    edInstitutionPlace.Enabled := True;
    bbInsert.Enabled := True;
    cdbgSSOKEducation.ReadOnly:= True;
//    cdbgSSOKEducation.Enabled := False;
//    cdbgSSOKInstitution.Enabled := False;
   end else begin
    edInstitutionCode.Enabled := False;
    edInstitutionName.Enabled := False;
    edInstitutionAbbreviation.Enabled := False;
    edInstitutionPlace.Enabled := False;
    bbInsert.Enabled := False;
    cdbgSSOKEducation.ReadOnly := False;
//    cdbgSSOKEducation.Enabled := True;
//    cdbgSSOKInstitution.Enabled := True;
  end;

end;

procedure TBOKRefForm.bbInsertClick(Sender: TObject);
begin
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(1415)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin

  If cdsSSOKInstitution_SET.State in [dsEdit, dsInsert] then cdsSSOKInstitution_SET.Cancel;

  cdsSSOKInstitution_SET.insert;

  cdbgSSOKInstitution.datasource.dataset.Fields.FieldByName('institution_code').AsString := edInstitutionCode.Text;
  cdbgSSOKInstitution.DataSource.DataSet.Fields.FieldByName('institution_name').AsString := edInstitutionName.Text;
  cdbgSSOKInstitution.DataSource.DataSet.Fields.FieldByName('institution_abbreviation').AsString := edInstitutionAbbreviation.Text;
  cdbgSSOKInstitution.datasource.dataset.Fields.FieldByName('institution_place').AsString := edInstitutionPlace.Text;
//  cdsSSOKEducation_SETAfterPost(cdbgSSOKInstitution.DataSource.DataSet);
  cdbgSSOKInstitution.DataSource.DataSet.Post;

  edInstitutionCode.EditMask := '';
  edInstitutionCode.Text  := '';

  try
    edInstitutionCode.EditMask := '\' + cdbgSSOKEducation.DataSource.DataSet.Fields.FieldByName('education_code').AsString + '0000;1;_';
  except
  end;

  edInstitutionName.Text  := '';
  edInstitutionAbbreviation.Text := '';
  edInstitutionPlace.Text := '';
 end;
end;

procedure TBOKRefForm.cdbgSSOKEducationCellClick(Column: TColumn);
begin
  try
    edInstitutionCode.EditMask := '\' + cdbgSSOKEducation.DataSource.DataSet.Fields.FieldByName('education_code').AsString + '0000;1;_';
  except
  end;

end;

procedure TBOKRefForm.cdsSSOKInstitution_SETBeforePost(DataSet: TDataSet);
var InstitutionCode : string;
    k : integer;
begin

  InstitutionCode := rightstr('0000' + DataSet.Fields.FieldByName('institution_code').AsString,5);
  InstitutionCode := cdbgSSOKEducation.DataSource.DataSet.Fields.FieldByName('education_code').AsString + copy(InstitutionCode,2,4);
  k := GetSQLResult( 'select count(*) from ss_ok_institution where institution_code='+InstitutionCode );
  if (k <> 0) and (cdsSSOKInstitution_SET.State in [dsinsert]) then begin
    showmessage('Ошибка при сохранении.'+#13+'Учебное заведение с кодом '+InstitutionCode+' уже есть в справочнике!');
    abort;
  end;

  try
    DataSet.Fields.FieldByName('institution_code').AsInteger := StrToInt(InstitutionCode);
    cdsSSOK_SETBeforePost(DataSet);
  except
    showmessage('Ошибка при сохранении.'+#13+'код учебного заведения не соответствует коду образования!');
    TCLientDataSet(DataSet).UndoLastChange(True);
    abort;
  end;


end;

procedure TBOKRefForm.actSSOKPostExecute(Sender: TObject);
var j : integer;
begin

  j:=0;
  try
    j:=GetSqlResult('select max(post_code) from ss_ok_post');
  except
  end;

  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage:=TabSSOKPost;

//  If cdsSSOKPost_SET.Active Then Exit;

//  If not cdsSSOKLevelDepartment_SET.Active Then
//  Begin
    cdsSSOKLevelDepartment_SET.DisableControls;
    LoadData(cdsSSOKLevelDepartment_SET, SQL_SSOKLevelDepartment_SET);
    cdsSSOKLevelDepartment_SET.EnableControls;
//  end;
    cdsSSOKLevelDepartment_RO.DisableControls;
    LoadData(cdsSSOKLevelDepartment_RO, SQL_SSOKLevelDepartment_SET);
    cdsSSOKLevelDepartment_RO.EnableControls;


//  If not cdsSSOKRezerv_SET.Active Then
//  Begin
    cdsSSOKRezerv_SET.DisableControls;
    LoadData(cdsSSOKRezerv_SET, SQL_SSOKRezerv_SET);
    cdsSSOKRezerv_SET.EnableControls;
//  end;
    cdsSSOKcategory_SET.DisableControls;
    LoadData(cdsSSOKcategory_SET, sql_SSOKcategory_SET);
    cdsSSOKcategory_SET.EnableControls;

    cdsSS_OK_POST_GROUP.DisableControls;
    LoadData(cdsSS_OK_POST_GROUP, sql_SS_OK_POST_GROUP);
    cdsSS_OK_POST_GROUP.EnableControls;

    cdsSSOKEducationTitle_SET.DisableControls;
    LoadData(cdsSSOKEducationTitle_SET, SQL_SSOKEducationTitle_SET);
    cdsSSOKEducationTitle_SET.EnableControls;


  cdsSSOKPost_SET.DisableControls;
  LoadData(cdsSSOKPost_SET, SQL_SSOKPost_SET+
    ' where d.LEVEL_DEPARTMENT_CODE='+FiltrLevel+
//    ' where d.post_code is not null '+
    ' order by d.LEVEL_DEPARTMENT_CODE, d.post_code');

  cdsSSOKPost_SET.Close;

  addLookUpField(cdsSSOKPost_SET, cdsSSOKLevelDepartment_SET,
                'level_department_code_show', 'level_department_code',
                'level_department_code', 'level_department_name', True);

  addLookUpField(cdsSSOKPost_SET, cdsSSOKrezerv_SET,
                'rezerv_code_show', 'rezerv_code',
                'rezerv_code', 'rezerv_name', False);

  addLookUpField(cdsSSOKPost_SET, cdsSSOKcategory_SET,
                'category_show', 'category_code',
                'category_code', 'category_name', False);


  addLookUpField(cdsSSOKPost_SET, cdsSS_OK_POST_GROUP,
                'post_group_code_show', 'post_group_code',
                'post_group_code',      'post_group_name', False);

  addLookUpField(cdsSSOKPost_SET, cdsSSOKEducationTitle_SET,
                'EDUCATION_TITLE_CODE_show', 'EDUCATION_TITLE_CODE',
                'EDUCATION_TITLE_CODE',      'EDUCATION_TITLE_name', False);

  addLookUpField(cdsSSOKPost_SET, cdsSSOKLevelDepartment_RO,
                'CONFIRM_CODE_show', 'CONFIRM_CODE',
                'LEVEL_DEPARTMENT_CODE',      'LEVEL_DEPARTMENT_name', False);

  cdsSSOKPost_SET.Open;
  cdsSSOKPost_SET.EnableControls;
{
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

procedure TBOKRefForm.actSSOKEducationExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max(education_code) from ss_ok_education');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

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

end;

procedure TBOKRefForm.actSSOKNationalityExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max(nationality_code) from ss_ok_nationality');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage:=TabSSOKNationality;

  If cdsSSOKNationality_SET.Active Then Exit;
  cdsSSOKNationality_SET.DisableControls;

  LoadData(cdsSSOKNationality_SET,    SQL_SSOKNationality_SET);
//  cdsSSOKNationality_SET.IndexFieldNames := 'nationality_code';

  cdsSSOKNationality_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKPartyExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max(party_code) from ss_ok_party');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKParty;

  If cdsSSOKParty_SET.Active Then Exit;
  cdsSSOKParty_SET.DisableControls;

  LoadData(cdsSSOKParty_SET,    SQL_SSOKParty_SET);
//  cdsSSOKParty_SET.IndexFieldNames := 'party_code';

  cdsSSOKParty_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKDegreeExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max(degree_code) from ss_ok_degree');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKDegree;

  If cdsSSOKDegree_SET.Active Then Exit;
  cdsSSOKDegree_SET.DisableControls;
  LoadData(cdsSSOKDegree_SET,            SQL_SSOKDegree_SET);
//  cdsSSOKDegree_SET.IndexFieldNames := 'degree_id';
  cdsSSOKDegree_SET.EnableControls;

end;

procedure TBOKRefForm.actSSOKAcademicExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max(academic_code) from ss_ok_academic');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKAcademic;

  If cdsSSOKAcademic_SET.Active Then Exit;
  cdsSSOKAcademic_SET.DisableControls;
  LOADDATA(CDSSSOKAcademic_SET,      SQL_SSOKAcademic_SET);
//  cdsSSOKAcademic_SET.IndexFieldNames := 'academic_id';
  cdsSSOKAcademic_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKLanguageExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( language_code) from ss_ok_language ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKLanguage;
  If cdsSSOKLanguage_SET.Active Then Exit;
  cdsSSOKLanguage_SET.DisableControls;
  LOADDATA(CDSSSOKLanguage_SET,      SQL_SSOKLanguage_SET);
//  cdsSSOKLanguage_SET.IndexFieldNames := 'language_id';
  cdsSSOKLanguage_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKLevelLanguageExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( level_language_code) from ss_ok_level_language ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKLevelLanguage;
  If cdsSSOKLevelLanguage_SET.Active Then Exit;
  cdsSSOKLevelLanguage_SET.DisableControls;
  LOADDATA(CDSSSOKLevelLanguage_SET,      SQL_SSOKLevelLanguage_SET);
//  cdsSSOKLevelLanguage_SET.IndexFieldNames := 'level_language_id';
  cdsSSOKLevelLanguage_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKTypePeriodExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( type_period_code) from ss_ok_type_period ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKTypePeriod;
  If cdsSSOKTypePeriod_SET.Active Then Exit;
  cdsSSOKTypePeriod_SET.DisableControls;
  LOADDATA(CDSSSOKTypePeriod_SET,      SQL_SSOKTypePeriod_SET);
//  cdsSSOKTypePeriod_SET.IndexFieldNames := 'type_period_id';
  cdsSSOKTypePeriod_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKRelationExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( relation_code) from ss_ok_relation ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKRelation;
  If cdsSSOKRelation_SET.Active Then Exit;
  cdsSSOKRelation_SET.DisableControls;
  LOADDATA(CDSSSOKRelation_SET,      SQL_SSOKRelation_SET);
//  cdsSSOKRelation_SET.IndexFieldNames := 'relation_id';
  cdsSSOKRelation_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKQualificationExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( qualification_code) from ss_ok_qualification ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKQualification;

  If cdsSSOKQualification_SET.Active Then Exit;
  cdsSSOKQualification_SET.DisableControls;
  LOADDATA(CDSSSOKQualification_SET,      SQL_SSOKQualification_SET);
//  cdsSSOKQualification_SET.IndexFieldNames := 'qualification_id';
  cdsSSOKQualification_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKLeaveExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( leave_code) from ss_ok_leave ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKLeave;

  If cdsSSOKLeave_SET.Active Then Exit;
  cdsSSOKLeave_SET.DisableControls;
  LOADDATA(CDSSSOKLeave_SET,      SQL_SSOKLeave_SET);
//  cdsSSOKLeave_SET.IndexFieldNames := 'leave_id';
  cdsSSOKLeave_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKMotiveDismissialExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( motive_dismissial_code) from ss_ok_motive_dismissial ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKMotiveDismissial;

  If cdsSSOKMotiveDismissial_SET.Active Then Exit;
  cdsSSOKMotiveDismissial_SET.DisableControls;
  LOADDATA(CDSSSOKMotiveDismissial_SET,      SQL_SSOKMotiveDismissial_SET);
//  cdsSSOKMotiveDismissial_SET.IndexFieldNames := 'motive_dismissial_id';
  cdsSSOKMotiveDismissial_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKYouthExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( youth_code) from ss_ok_youth ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKYouth;
  If cdsSSOKYouth_SET.Active Then Exit;
  cdsSSOKYouth_SET.DisableControls;
  LOADDATA(CDSSSOKYouth_SET,      SQL_SSOKYouth_SET);
//  cdsSSOKYouth_SET.IndexFieldNames := 'youth_id';
  cdsSSOKYouth_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKDepartmentTypeExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( department_type_code) from ss_ok_department_type ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKDepartmentType;
  If cdsSSOKDepartmentType_SET.Active Then Exit;
  cdsSSOKDepartmentType_SET.DisableControls;
  LoadData(cdsSSOKDepartmentType_SET,      SQL_SSOKDepartmentType_SET);
//  cdsSSOKDepartmentType_SET.IndexFieldNames := 'department_type_id';
  cdsSSOKDepartmentType_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKDepartmentExecute(Sender: TObject);
var
// n_TreeNode : TTreeNode;
  ParentNode0, ParentNode1, ParentNode2, ParentNode3, ParentNode4, ParentNode5: TTreeNode;
  j,i : integer;
//  q:integer;
  sql_ :string;
  D : tdata;
begin

Application.ProcessMessages;
cdsSSOKnci.close;
cds_S.close;
cds_OK.close;

  PC.ActivePage := TabSSOKDepartment;
  if (PC.ActivePage=TabSSOKDepartment)
  and (FiltrLevel='4')
  then begin
    showmessage('Уровень "ВСЕ" используется только для должностей');
    FiltrLevel:='1';
//*    FiltrLevelName:='Республика, УБО';
    FiltrLevelName:=getsqlresultpar('select level_department_name from ss_ok_level_department where level_department_code=:p_1','1');
    if FiltrLevelName='' then FiltrLevelName:='Республика';
    LbFiltrLevelName.caption:=FiltrLevelName;
    cbFiltr.ItemIndex:=0;
  end;

  j:=0;
  try
    j:=GetSqlResult('select max(department_code) from ss_ok_department');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);
//  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j)+' отделов';

  LoadData(cdsRefTemp,
    'select a.DEPARTMENT_TYPE_CODE id, '+
    ' a. DEPARTMENT_TYPE_CODE||'') ''||a. DEPARTMENT_TYPE_name name '+
    ' from ss_ok_department_type a where'+
    ' a.state_notes=''A'' '+
    ' order by a.department_type_code',True);
  cbDepType.clear;
  cbDepTypeNew.clear;

  cdsRefTemp.first;
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
/////////////////
{


  q:=1;
      n_TreeNode := TreeV.Items.AddChildObject(
        ParentNode0,
        'краказяба',
        Pointer(q) );
      n_TreeNode.ImageIndex := 1;
      n_TreeNode.SelectedIndex := 1;
    showmessage('q=1 >> '+  inttostr( integer(n_TreeNode.Data) ) );

  q:=2;
    showmessage('q=2 >> '+  inttostr( integer(n_TreeNode.Data) ) );

n_TreeNode.Data не изменился !!!!!
}
///////////////
//  reps := TClientDataSetEx.create(self);
try
  sql_:=SQL_Derevo+
        ' where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null ' ;//+
//        ' order by d.department_code';
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
//  TreeV.FullExpand;
//  SQL_SSOKDepartmentType_SET

end;

procedure TBOKRefForm.actSSOKArticleExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( article_code) from ss_ok_article ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKArticle;

  If cdsSSOKArticle_SET.Active Then Exit;
  cdsSSOKArticle_SET.DisableControls;
  LOADDATA(cdsSSOKArticle_SET,      SQL_SSOKArticle_SET);
//  cdsSSOKArticle_SET.IndexFieldNames := 'article_id';

  cdsSSOKArticle_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKCommandTypeExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( command_type_code) from ss_ok_command_type ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKCommandType;
  If cdsSSOKCommandType_SET.Active Then Exit;
  cdsSSOKCommandType_SET.DisableControls;
  LOADDATA(cdsSSOKCommandType_SET,      SQL_SSOKCommandType_SET);
//  cdsSSOKCommandType_SET.IndexFieldNames := 'command_type_id';
  cdsSSOKCommandType_SET.EnableControls;
end;

procedure TBOKRefForm.actSSOKTemplateCommandExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( command_type_code) from ss_ok_command_type ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

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

end;

procedure TBOKRefForm.ActPrevExecute(Sender: TObject);
begin

  if      PC.ActivePage =  TabSSOKPost             then begin GetRef(cdbgSSOKPost);             end
  else if PC.ActivePage =  TabSSOKEducation        then
    begin
//
      System.AssignFile(f,'C:\NCI Bank\OK\Temp\report.txt');
      System.Rewrite(f);
      Try
        cdsSSOKEducation_SET.First;
        While not cdsSSOKEducation_SET.Eof do
        Begin
          System.Writeln(f, '| ' + cdsSSOKEducation_SET.Fields.FieldByName('education_code').AsString +' '+ cdsSSOKEducation_SET.Fields.FieldByName('education_name').AsString );
          GetRefCDBG(cdbgSSOKInstitution);
          cdsSSOKEducation_SET.Next;
        End;
      Finally
        System.CloseFile(f);
      End;

      WinExec('notepad C:\NCI Bank\OK\Temp\report.txt', SW_MAXIMIZE);
//
    end
  else if PC.ActivePage =  TabSSOKNationality      then begin GetRef(cdbgSSOKNationality);      end
  else if PC.ActivePage =  TabSSOKeducationtitle   then begin GetRef(cdbgSSOKeducationtitle);   end
  else if PC.ActivePage =  TabSSOKParty            then begin GetRef(cdbgSSOKParty);            end
  else if PC.ActivePage =  TabSSOKarmygroup
       then begin GetRef(cdbgSSOKarmygroup); end
  else if PC.ActivePage =  TabSSOKCATEGORYARMY
       then begin GetRef(cdbgSSOKCATEGORYARMY); end
  else if PC.ActivePage =  TabSSOKMILITARYRANK
       then begin GetRef(cdbgSSOKMILITARYRANK); end
  else if PC.ActivePage =  TabSSOKSTAFF
       then begin GetRef(cdbgSSOKSTAFF); end
  else if PC.ActivePage =  TabSSOKTYPEFORCE
       then begin GetRef(cdbgSSOKTYPEFORCE); end
  else if PC.ActivePage =  TabSSOKSpecial          then begin GetRef(cdbgSSOKSpecial);          end
  else if PC.ActivePage =  TabSSOKDegree           then begin GetRef(cdbgSSOKDegree);           end
  else if PC.ActivePage =  TabSSOKAcademic         then begin GetRef(cdbgSSOKAcademic);         end
  else if PC.ActivePage =  TabSSOKBaseMove         then begin GetRef(cdbgSSOKBaseMove);         end
  else if PC.ActivePage =  TabSSOKLanguage         then begin GetRef(cdbgSSOKLanguage);         end
  else if PC.ActivePage =  TabSSOKLevelLanguage    then begin GetRef(cdbgSSOKLevelLanguage);    end
  else if PC.ActivePage =  TabSSOKTypePeriod       then begin GetRef(cdbgSSOKTypePeriod);       end
  else if PC.ActivePage =  TabSSOKRelation         then begin GetRef(cdbgSSOKRelation);         end
  else if PC.ActivePage =  TabSSOKQualification    then begin GetRef(cdbgSSOKQualification);    end
  else if PC.ActivePage =  TabSSOKLeave            then begin GetRef(cdbgSSOKLeave);            end
  else if PC.ActivePage =  TabSSOKMotiveDismissial then begin GetRef(cdbgSSOKMotiveDismissial); end
  else if PC.ActivePage =  TabSSOKYouth            then begin GetRef(cdbgSSOKYouth);            end
  else if PC.ActivePage =  TabSSOKDepartmentType   then begin GetRef(cdbgSSOKDepartmentType);   end
  else if PC.ActivePage =  TabSSOKArticle          then begin GetRef(cdbgSSOKArticle);          end
  else if (PC.ActivePage =  TabSSOKDepartment) or (PC.ActivePage =  TabSSOKDepartmentTable)
       then begin GetRef(cdbgSSOKDepartment);       end
  else if PC.ActivePage =  TabSSOKCommandType      then begin GetRef(cdbgSSOKCommandType);      end
  else if PC.ActivePage =  TabSSOKTemplateCommand  then begin GetRef(cdbgSSOKTemplateCommand);  end
  else if PC.ActivePage =  TabSSOKPenalty          then begin GetRef(cdbgSSOKPenalty);          end
  else if PC.ActivePage =  TabSSOKEducationTitle   then begin GetRef(cdbgSSOKEducationTitle);   end
  else if PC.ActivePage =  TabSSOKelection   then begin GetRef(cdbgSSOKelection);   end
  else if PC.ActivePage =  TabSSOKhospital   then begin GetRef(cdbgSSOKhospital);   end
  else if PC.ActivePage =  Tabss_ok_theme_business_voyage
              then begin GetRef(cdbgssok_theme_business_voyage);   end
  else if PC.ActivePage =  Tabss_ok_org_business_voyage
              then begin GetRef(cdbgssok_org_business_voyage);   end
  else if PC.ActivePage =  TabSSOKkv_kurs   then begin GetRef(cdbgSSOKkv_kurs);   end
  else if PC.ActivePage =  TabSSOKkv_kurs   then begin GetRef(cdbgSSOKkv_kurs);   end
  else if PC.ActivePage =  TabMessage              then begin ShowMessage('Пожалуйста, Выберите Справочник!');
  end; // энд последнего ифа


end;

procedure TBOKRefForm.GetRefCDBG(cdbgSSOK: TClientDBGrid);
var i :  Integer;
    s :  String ;
begin

  s := '|';
  // формирование шапки для текстового файла
  For i := 0 to cdbgSSOK.Columns.Count-1 do
  Begin
      if cdbgSSOK.Columns.Items[i].Visible then
      begin
          s := s + rpad(cdbgSSOK.Columns.Items[i].title.Caption, cdbgSSOK.Columns.Items[i].Width div 6)  + '|';
      end;
  End;

  System.Writeln(f,Lpad('-',Length(s),'-'));
  System.Writeln(f,s);
  System.Writeln(f,Lpad('-',Length(s),'-'));

  // формирование данных для текстового файла
  cdbgSSOK.DataSource.Dataset.DisableControls;
  cdbgSSOK.DataSource.Dataset.First;
  While not cdbgSSOK.DataSource.Dataset.Eof do
  Begin
      s := '|';
      for i := 0 to cdbgSSOK.Columns.Count-1 do
      begin
          if cdbgSSOK.Columns.Items[i].Visible then
          begin
              s := s + rpad( cdbgSSOK.DataSource.Dataset.Fields.FieldByName(cdbgSSOK.Columns.Items[i].FieldName).AsString, cdbgSSOK.Columns.Items[i].Width div 6) + '|';
          end;
      end;
      System.Writeln(f,s);
      cdbgSSOK.DataSource.Dataset.Next;
  End;
  cdbgSSOK.DataSource.Dataset.EnableControls;
  System.Writeln(f,Lpad('-',Length(s),'-'));

end;

procedure TBOKRefForm.GetRef(cdbgSSOK: TClientDBGrid);
begin

  System.AssignFile(f,'C:\NCI Bank\OK\Temp\report.txt');
  System.Rewrite(f);

  Try
    System.Writeln(f,cdbgSSOK.Columns.Items[0].title.Caption);
    GetRefCDBG(cdbgSSOK);
  Finally
    System.CloseFile(f);
  End;

  WinExec('notepad C:\NCI Bank\OK\Temp\report.txt', SW_MAXIMIZE);

end;


procedure TBOKRefForm.dsSSOKPost_SETStateChange(Sender: TObject);
begin
  cdbgSSOKPost.Columns[1].ReadOnly := not (cdsSSOKPost_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKEducation_SETStateChange(Sender: TObject);
begin
  cdbgSSOKEducation.Columns[1].Readonly:= not (cdsSSOKEducation_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKInstitution_SETStateChange(Sender: TObject);
begin
  cdbgSSOKInstitution.Columns[1].Readonly:= not (cdsSSOKInstitution_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKNationality_SETStateChange(Sender: TObject);
begin
  cdbgSSOKNationality.Columns[1].Readonly:= not (cdsSSOKNationality_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKParty_SETStateChange(Sender: TObject);
begin
  cdbgSSOKParty.Columns[1].Readonly:= not (cdsSSOKParty_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKDegree_SETStateChange(Sender: TObject);
begin
  cdbgSSOKDegree.Columns[1].Readonly:= not (cdsSSOKDegree_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKAcademic_SETStateChange(Sender: TObject);
begin
  cdbgSSOKAcademic.Columns[1].Readonly:= not (cdsSSOKAcademic_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKLanguage_SETStateChange(Sender: TObject);
begin
  cdbgSSOKLanguage.Columns[1].Readonly:= not (cdsSSOKLanguage_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKLevelLanguage_SETStateChange(Sender: TObject);
begin
  cdbgSSOKLevelLanguage.Columns[1].Readonly:= not (cdsSSOKLevelLanguage_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKTypePeriod_SETStateChange(Sender: TObject);
begin
  cdbgSSOKTypePeriod.Columns[1].Readonly:= not (cdsSSOKTypePeriod_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKRelation_SETStateChange(Sender: TObject);
begin
  cdbgSSOKRelation.Columns[1].Readonly:= not (cdsSSOKRelation_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKQualification_SETStateChange(Sender: TObject);
begin
  cdbgSSOKQualification.Columns[1].Readonly:= not (cdsSSOKQualification_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKLeave_SETStateChange(Sender: TObject);
begin
  cdbgSSOKLeave.Columns[1].Readonly:= not (cdsSSOKLeave_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKMotiveDismissial_SETStateChange(
  Sender: TObject);
begin
  cdbgSSOKMotiveDismissial.Columns[1].Readonly:= not (cdsSSOKMotiveDismissial_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKYouth_SETStateChange(Sender: TObject);
begin
  cdbgSSOKYouth.Columns[1].Readonly:= not (cdsSSOKYouth_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKDepartmentType_SETStateChange(Sender: TObject);
begin
  cdbgSSOKDepartmentType.Columns[1].Readonly:= not (cdsSSOKDepartmentType_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKDepartment_SETStateChange(Sender: TObject);
begin
  cdbgSSOKDepartment.Columns[1].Readonly:= not (cdsSSOKDepartment_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKArticle_SETStateChange(Sender: TObject);
begin
  cdbgSSOKArticle.Columns[1].Readonly:= not (cdsSSOKArticle_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKCommandType_SetStateChange(Sender: TObject);
begin
  cdbgSSOKCommandType.Columns[1].Readonly:= not (cdsSSOKCommandType_SET.State = dsInsert);
end;

procedure TBOKRefForm.dsSSOKTemplateCommand_SETStateChange(Sender: TObject);
begin
  cdbgSSOKTemplateCommand.Columns[1].Readonly:= not (cdsSSOKTemplateCommand_SET.State = dsInsert);
end;

procedure TBOKRefForm.actSSOKPostViewExecute(Sender: TObject);
begin
  actSSOKPostExecute(Sender);
  GetRef(cdbgSSOKPost);
//  PC.ActivePage := TabMessage;

end;

procedure TBOKRefForm.actSSOKEducationViewExecute(Sender: TObject);
begin
  actSSOKEducationExecute(Sender);

      System.AssignFile(f,'C:\NCI Bank\OK\Temp\report.txt');
      System.Rewrite(f);
      Try
        System.Writeln(f, '  ' + cdbgSSOKInstitution.Columns.Items[0].title.Caption);
        System.Writeln(f, '-----------------------------------');
        cdsSSOKEducation_SET.First;
        While not cdsSSOKEducation_SET.Eof do
        Begin
          System.Writeln(f, '|  тип  | ' + cdsSSOKEducation_SET.Fields.FieldByName('education_code').AsString +' '+ cdsSSOKEducation_SET.Fields.FieldByName('education_name').AsString );
          GetRefCDBG(cdbgSSOKInstitution);
          cdsSSOKEducation_SET.Next;
        End;
      Finally
        System.CloseFile(f);
      End;

      WinExec('notepad C:\NCI Bank\OK\Temp\report.txt', SW_MAXIMIZE);
//
end;

procedure TBOKRefForm.actSSOKNationalityViewExecute(Sender: TObject);
begin
  actSSOKNationalityExecute(Sender);
  GetRef(cdbgSSOKNationality);
end;

procedure TBOKRefForm.actSSOKPartyViewExecute(Sender: TObject);
begin
  actSSOKPartyExecute(Sender);
  GetRef(cdbgSSOKParty);
end;

procedure TBOKRefForm.actSSOKDegreeViewExecute(Sender: TObject);
begin
  actSSOKDegreeExecute(Sender);
  GetRef(cdbgSSOKDegree);
end;

procedure TBOKRefForm.actSSOKAcademicViewExecute(Sender: TObject);
begin
  actSSOKAcademicExecute(Sender);
  GetRef(cdbgSSOKAcademic);
end;

procedure TBOKRefForm.actSSOKLanguageViewExecute(Sender: TObject);
begin
  actSSOKLanguageExecute(Sender);
  GetRef(cdbgSSOKLanguage);
end;

procedure TBOKRefForm.actSSOKLevelLanguageViewExecute(Sender: TObject);
begin
  actSSOKLevelLanguageExecute(Sender);
  GetRef(cdbgSSOKLevelLanguage);
end;

procedure TBOKRefForm.actSSOKTypePeriodViewExecute(Sender: TObject);
begin
  actSSOKTypePeriodExecute(Sender);
  GetRef(cdbgSSOKTypePeriod);
end;

procedure TBOKRefForm.actSSOKRelationViewExecute(Sender: TObject);
begin
  actSSOKRelationExecute(Sender);
  GetRef(cdbgSSOKRelation);
end;

procedure TBOKRefForm.actSSOKQualificationViewExecute(Sender: TObject);
begin
  actSSOKQualificationExecute(Sender);
  GetRef(cdbgSSOKQualification);
end;

procedure TBOKRefForm.actSSOKLeaveViewExecute(Sender: TObject);
begin
  actSSOKLeaveExecute(Sender);
  GetRef(cdbgSSOKLeave);
end;

procedure TBOKRefForm.actSSOKMotiveDismissialViewExecute(Sender: TObject);
begin
  actSSOKMotiveDismissialExecute(Sender);
  GetRef(cdbgSSOKMotiveDismissial);
end;

procedure TBOKRefForm.actSSOKYouthViewExecute(Sender: TObject);
begin
  actSSOKYouthExecute(Sender);
  GetRef(cdbgSSOKYouth);
end;

procedure TBOKRefForm.actSSOKDepartmentTypeViewExecute(Sender: TObject);
begin
  actSSOKDepartmentTypeExecute(Sender);
  GetRef(cdbgSSOKDepartmentType);
end;

procedure TBOKRefForm.actSSOKDepartmentViewExecute(Sender: TObject);
begin
  actSSOKDepartmentExecute(Sender);
  GetRef(cdbgSSOKDepartment);
  PC.ActivePage := TabSSOKDepartmentTable;

end;

procedure TBOKRefForm.actSSOKArticleViewExecute(Sender: TObject);
begin
  actSSOKArticleExecute(Sender);
  GetRef(cdbgSSOKArticle);
end;

procedure TBOKRefForm.actSSOKCommandTypeViewExecute(Sender: TObject);
begin
  actSSOKCommandTypeExecute(Sender);
  GetRef(cdbgSSOKCommandType);
end;

procedure TBOKRefForm.actSSOKTemplateCommandViewExecute(Sender: TObject);
begin
  actSSOKTemplateCommandExecute(Sender);
  GetRef(cdbgSSOKTemplateCommand);
end;


procedure TBOKRefForm.cdsSSOKPost_SETBeforePost(DataSet: TDataSet);
var ErMessage : string;
begin

  ErMessage := '';

  if DataSet.Fields.FieldByName('rezerv_code').AsVariant<>'1'
  then DataSet.Fields.FieldByName('rezerv_code').AsVariant:='2';

//  if DataSet.Fields.FieldByName('salary_max').AsInteger < DataSet.Fields.FieldByName('salary_min').AsInteger
//    then ErMessage := 'Ошибка при сохранении.'+#10#13+'Значение максимального оклада должно быть больше или равно значению минимального оклада.';

//  if (DataSet.Fields.FieldByName('salary_max').AsInteger <= 0) or (DataSet.Fields.FieldByName('salary_min').AsInteger <= 0)
//    then ErMessage := 'Ошибка при сохранении.'+#10#13+'Значение оклада должно быть больше 0!';

  if ErMessage <> '' then
  begin
    ShowMessage(ErMessage);
    TCLientDataSet(DataSet).UndoLastChange(True);
    Abort;
  end
  else
  begin
    cdsSSOK_SETBeforePost(DataSet);
  end;

end;

procedure TBOKRefForm.cdsSSOKDepartment_SETBeforePost(DataSet: TDataSet);
var ErMessage : string;
begin

  ErMessage := '';

  if DataSet.Fields.FieldByName('branch').IsNull
    then ErMessage := 'Ошибка при сохранении.'+#13+'Укажите МФО.';
  if DataSet.Fields.FieldByName('department_type_code').IsNull
    then ErMessage := 'Ошибка при сохранении.'+#13+'Укажите тип отдела.';
  if DataSet.Fields[1].IsNull
    then ErMessage := 'Ошибка при сохранении.'+#13+'Укажите уникальный код отдела.';

  if ErMessage <> '' then
  begin
//      TCLientDataSet(DataSet).UndoLastChange(True);
    ShowMessage(ErMessage);
    TCLientDataSet(DataSet).UndoLastChange(True);
    Abort;
  end
  else
  begin
    cdsSSOK_SETBeforePost(DataSet);
  end;

end;

procedure TBOKRefForm.cdsSSOK_SETBeforeEdit(DataSet: TDataSet);
begin
  OldStateNotes := DataSet.Fields.FieldByName('state_notes').AsVariant;
end;

procedure TBOKRefForm.ActNewExecute(Sender: TObject);
begin
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(2583)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin

  if      PC.ActivePage =  TabSSOKPost             then
  begin
    cdbgSSOKPost.SetFocus;
    cdsSSOKPost_SET.Insert;
  end
  else if      PC.ActivePage =  TabSSOKarmygroup then
  begin
    cdbgSSOKarmygroup.SetFocus;
    cdsSSOKarmygroup.Insert;
  end
  else if      PC.ActivePage =  TabSSOKCATEGORYARMY then
  begin
    cdbgSSOKCATEGORYARMY.SetFocus;
    cdsSSOKCATEGORYARMY.Insert;
  end
  else if      PC.ActivePage =  TabSSOKMILITARYRANK then
  begin
    cdbgSSOKMILITARYRANK.SetFocus;
    cdsSSOKMILITARYRANK.Insert;
  end
  else if      PC.ActivePage =  TabSSOKSTAFF then
  begin
    cdbgSSOKSTAFF.SetFocus;
    cdsSSOKSTAFF.Insert;
  end
  else if      PC.ActivePage =  TabSSOKTYPEFORCE then
  begin
    cdbgSSOKTYPEFORCE.SetFocus;
    cdsSSOKTYPEFORCE.Insert;
  end
  else if      PC.ActivePage =  TabSSOKSpecial             then
  begin
    cdbgSSOKSpecial.SetFocus;
    cdsSSOKSpecial_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKEducation        then
  begin
    cdbgSSOKInstitution.SetFocus;
    cdsSSOKInstitution_set.insert; // :) кнопка "новый" влияет на справочник учебных заведений!
  end
  else if PC.ActivePage =  TabSSOKNationality      then
  begin
    cdbgSSOKNationality.SetFocus;
    cdsSSOKNationality_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKParty            then
  begin
    cdbgSSOKParty.SetFocus;
    cdsSSOKParty_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKDegree           then
  begin
    cdbgSSOKDegree.SetFocus;
    cdsSSOKDegree_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKAcademic         then
  begin
    cdbgSSOKAcademic.SetFocus;
    cdsSSOKAcademic_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKLanguage         then
  begin
    cdbgSSOKLanguage.SetFocus;
    cdsSSOKLanguage_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKLevelLanguage    then
  begin
    cdbgSSOKLevelLanguage.SetFocus;
    cdsSSOKLevelLanguage_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKTypePeriod       then
  begin
    cdbgSSOKTypePeriod.SetFocus;
    cdsSSOKTypePeriod_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKRelation         then
  begin
    cdbgSSOKRelation.SetFocus;
    cdsSSOKRelation_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKQualification    then
  begin
    cdbgSSOKQualification.SetFocus;
    cdsSSOKQualification_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKLeave            then
  begin
    cdbgSSOKLeave.SetFocus;
    cdsSSOKLeave_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKMotiveDismissial then
  begin
    cdbgSSOKMotiveDismissial.SetFocus;
    cdsSSOKMotiveDismissial_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKYouth            then
  begin
    cdbgSSOKYouth.SetFocus;
    cdsSSOKYouth_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKDepartmentType   then
  begin
    cdbgSSOKDepartmentType.SetFocus;
    cdsSSOKDepartmentType_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKDepartment       then
  begin
    cdbgSSOKDepartment.SetFocus;
    cdsSSOKDepartment_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKArticle          then
  begin
    cdbgSSOKArticle.SetFocus;
    cdsSSOKArticle_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKCommandType      then
  begin
    cdbgSSOKCommandType.SetFocus;
    cdsSSOKCommandType_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKTemplateCommand  then
  begin
    cdbgSSOKTemplateCommand.SetFocus;
    cdsSSOKTemplateCommand_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKPenalty  then
  begin
    cdbgSSOKPenalty.SetFocus;
    cdsSSOKPenalty_SET.Insert;
  end
  else if PC.ActivePage =  TabSSOKEducationTitle        then
  begin
    cdbgSSOKEducationTitle.SetFocus;
    cdsSSOKEducationTitle_set.insert;
  end
  else if PC.ActivePage =  TabSSOKelection        then
  begin
    cdbgSSOKelection.SetFocus;
     cdsSSOKelection_set.insert;
  end
  else if PC.ActivePage =  TabSSOKBaseMove        then
  begin
    cdbgSSOKBaseMove.SetFocus;
     cdsSSOKBaseMove_set.insert;
  end
  else if PC.ActivePage =  TabSSOKprivilege        then
  begin
    cdbgSSOKprivilege.SetFocus;
     cdsSSOKprivilege_set.insert;
  end
  else if PC.ActivePage =  TabSSOKkv_kurs        then
  begin
    cdbgSSOKkv_kurs.SetFocus;
     cdsSSOKkv_kurs_set.insert;
  end
  else if PC.ActivePage =  Tabss_ok_org_business_voyage        then
  begin
    cdbgssok_org_business_voyage.SetFocus;
     cdsssok_org_business_voyage_set.insert;
  end
  else if PC.ActivePage =  Tabss_ok_theme_business_voyage        then
  begin
    cdbgssok_theme_business_voyage.SetFocus;
     cdsssok_theme_business_voyage_set.insert;
  end
  else if PC.ActivePage =  TabSSOKhospital        then
  begin
    cdbgSSOKhospital.SetFocus;
     cdsSSOKhospital_set.insert;
  end
  else if PC.ActivePage =  Tabss_ok_regplace        then
  begin
    cdbgss_ok_regplace.SetFocus;
     cdsss_ok_regplace.insert;
  end
  else if PC.ActivePage =  TabMessage              then
  begin
    ShowMessage('Пожалуйста, Выберите Справочник!');
  end; // энд последнего ифа

 end;

end;

procedure TBOKRefForm.ActPostExecute(Sender: TObject);
begin
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(2775)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin
  if    (PC.ActivePage =  TabSSOKPost)               and (cdsSSOKPost_SET.State in dsEditModes)
    then begin  cdsSSOKPost_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKEducation)        and (cdsSSOKInstitution_SET.State in dsEditModes)
    then begin cdsSSOKInstitution_SET.Post; // :) кнопка "сохранить" влияет на справочник учебных заведений!
  end
  else if (PC.ActivePage =  TabSSOKEducationTitle)        and (cdsSSOKEducationTitle_SET.State in dsEditModes)
    then begin cdsSSOKEducationTitle_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKBaseMove) and (cdsSSOKBaseMove_SET.State in dsEditModes)
    then begin cdsSSOKBaseMove_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKNationality)      and (cdsSSOKNationality_SET.State in dsEditModes)
    then begin cdsSSOKNationality_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKParty)            and (cdsSSOKParty_SET.State in dsEditModes)
    then begin cdsSSOKParty_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKSpecial)            and (cdsSSOKSpecial_SET.State in dsEditModes)
    then begin cdsSSOKSpecial_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKarmygroup)
       and (cdsSSOKarmygroup.State in dsEditModes)
    then begin cdsSSOKarmygroup.Post;
  end
  else if (PC.ActivePage =  TabSSOKCATEGORYARMY)
       and (cdsSSOKCATEGORYARMY.State in dsEditModes)
    then begin cdsSSOKCATEGORYARMY.Post;
  end
  else if (PC.ActivePage =  TabSSOKMILITARYRANK)
       and (cdsSSOKMILITARYRANK.State in dsEditModes)
    then begin cdsSSOKMILITARYRANK.Post;
  end
  else if (PC.ActivePage =  TabSSOKSTAFF)
       and (cdsSSOKSTAFF.State in dsEditModes)
    then begin cdsSSOKSTAFF.Post;
  end
  else if (PC.ActivePage =  TabSSOKTYPEFORCE)
       and (cdsSSOKTYPEFORCE.State in dsEditModes)
    then begin cdsSSOKTYPEFORCE.Post;
  end
  else if (PC.ActivePage =  TabSSOKDegree)           and (cdsSSOKDegree_SET.State in dsEditModes)
    then begin cdsSSOKDegree_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKAcademic)         and (cdsSSOKAcademic_SET.State in dsEditModes)
    then begin cdsSSOKAcademic_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKLanguage)         and (cdsSSOKLanguage_SET.State in dsEditModes)
    then begin cdsSSOKLanguage_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKLevelLanguage)    and (cdsSSOKLevelLanguage_SET.State in dsEditModes)
    then begin cdsSSOKLevelLanguage_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKTypePeriod)       and (cdsSSOKTypePeriod_SET.State in dsEditModes)
    then begin cdsSSOKTypePeriod_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKRelation)         and (cdsSSOKRelation_SET.State in dsEditModes)
    then begin cdsSSOKRelation_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKQualification)    and (cdsSSOKQualification_SET.State in dsEditModes)
    then begin cdsSSOKQualification_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKLeave)            and (cdsSSOKLeave_SET.State in dsEditModes)
    then begin cdsSSOKLeave_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKMotiveDismissial) and (cdsSSOKMotiveDismissial_SET.State in dsEditModes)
   then begin cdsSSOKMotiveDismissial_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKYouth)            and (cdsSSOKYouth_SET.State in dsEditModes)
    then begin cdsSSOKYouth_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKDepartmentType)   and (cdsSSOKDepartmentType_SET.State in dsEditModes)
    then begin cdsSSOKDepartmentType_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKArticle)          and (cdsSSOKArticle_SET.State in dsEditModes)
    then begin cdsSSOKArticle_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKDepartment)       and (cdsSSOKDepartment_SET.State in dsEditModes)
    then begin cdsSSOKDepartment_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKCommandType)      and (cdsSSOKCommandType_SET.State in dsEditModes)
    then begin cdsSSOKCommandType_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKTemplateCommand)  and (cdsSSOKTemplateCommand_SET.State in dsEditModes)
    then begin cdsSSOKTemplateCommand_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKCategory)  and (cdsSSOKCategory_SET.State in dsEditModes)
    then begin cdsSSOKCategory_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKPenalty)  and (cdsSSOKPenalty_SET.State in dsEditModes)
    then begin cdsSSOKPenalty_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKprivilege)  and (cdsSSOKprivilege_SET.State in dsEditModes)
    then begin cdsSSOKprivilege_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKkv_kurs)  and (cdsSSOKkv_kurs_SET.State in dsEditModes)
    then begin cdsSSOKkv_kurs_SET.Post;
  end
  else if (PC.ActivePage =  Tabss_ok_org_business_voyage)
    and (cdsssok_org_business_voyage_SET.State in dsEditModes)
    then begin cdsssok_org_business_voyage_SET.Post;
  end
  else if (PC.ActivePage =  Tabss_ok_theme_business_voyage)
    and (cdsssok_theme_business_voyage_SET.State in dsEditModes)
    then begin cdsssok_theme_business_voyage_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKhospital)  and (cdsSSOKhospital_SET.State in dsEditModes)
    then begin cdsSSOKhospital_SET.Post;
  end
  else if (PC.ActivePage =  TabSSOKelection)
       and (cdsSSOKelection_SET.State in dsEditModes)
    then begin cdsSSOKelection_SET.Post;
  end
  else if (PC.ActivePage =  Tabss_ok_regplace)
       and (cdsSS_OK_regplace.State in dsEditModes)
    then begin cdsSS_OK_regplace.Post;
  end
  else if PC.ActivePage =  TabMessage
    then begin ShowMessage('Пожалуйста, Выберите Справочник!');
  end; // энд последнего ифа
  
 end;

end;

procedure TBOKRefForm.actSSOKPenaltyExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( penalty_code) from ss_ok_penalty ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKPenalty;
  If cdsSSOKPenalty_SET.Active Then Exit;
  cdsSSOKPenalty_SET.DisableControls;
  LOADDATA(cdsSSOKPenalty_SET,      SQL_SSOKPenalty_SET);
  cdsSSOKPenalty_SET.EnableControls;

end;

procedure TBOKRefForm.actSSOKPenaltyViewExecute(Sender: TObject);
begin
  actSSOKPenaltyExecute(Sender);
  GetRef(cdbgSSOKPenalty);
end;

procedure TBOKRefForm.dsSSOKPenalty_SETStateChange(Sender: TObject);
begin
  cdbgSSOKPenalty.Columns[1].Readonly:= not (cdsSSOKPenalty_SET.State = dsInsert);
end;

procedure TBOKRefForm.UpdateView;
var I : integer;
begin
//  cdbgSSOKPenalty.Columns[1].Readonly:= not (cdsSSOKPenalty_SET.State = dsInsert);
  if VarToStr(Params.Values['NUMBERREF']) = '' then
  begin
    PC.ActivePageIndex := 20;
  end else begin
    I := StrToInt( VarToStr(Params.Values['NUMBERREF']) );

    case I of
      0: actSSOKPostExecute(nil);
      1: actSSOKEducationExecute(nil);
      2: actSSOKNationalityExecute(nil);
      3: actSSOKPartyExecute(nil);
      4: actSSOKDegreeExecute(nil);
      5: actSSOKAcademicExecute(nil);
      6: actSSOKLanguageExecute(nil);
      7: actSSOKLevelLanguageExecute(nil);
      8: actSSOKTypePeriodExecute(nil);
      9: actSSOKRelationExecute(nil);
     10: actSSOKQualificationExecute(nil);
     11: actSSOKLeaveExecute(nil);
     12: actSSOKMotiveDismissialExecute(nil);
     13: actSSOKYouthExecute(nil);
     14: actSSOKDepartmentTypeExecute(nil);
     15: actSSOKDepartmentExecute(nil);
     16: actSSOKArticleExecute(nil);
     17: actSSOKCommandTypeExecute(nil);
     18: actSSOKTemplateCommandExecute(nil);
     19: actSSOKPenaltyExecute(nil);
     20: actSSOKEducationTitleExecute(nil);
    else
      PC.ActivePage := TabMessage;
    end;

  end;  // case

end;

procedure TBOKRefForm.actSendExecute(Sender: TObject);
var f:         TextFile;
//    OldR:      Integer;
    FileName_: String;

  procedure WriteData( DataSet: TClientDataSetEx; TableName: String; CountRec: Integer = 0);
  var i:   Integer;
      ins: String;
  begin
    With DataSet do
      Begin
        If IsEmpty Then Exit;
        ins := '#INSERT INTO ' + TableName + '(';
        For i := 0 to Fields.Count-1 do
          Begin
            ins := ins + Fields[i].FieldName + ',';
          End;
        System.delete(ins,length(ins),1);
        ins := ins + ') VALUES(';
        System.Writeln(f, ins);
        ins := '';
        While not Eof do
          Begin
            If CountRec > 0 Then If CountRec = RecordCount Then Exit;
            For i := 0 to Fields.Count-1 do
              Begin
                If VarIsNull(Fields[i].Value) Then
                     ins := ins + 'null,'
                Else Begin
                  if Fields[i].FieldName = 'INS_DATE'
                  then ins := ins + 'sysdate,'
                  else ins := ins + QuotedStr(Fields[i].Value) + ',';
                End;
              End;
            System.delete(ins,length(ins),1);
            System.Writeln(f, ins + ')');
            ins := '';
            If CountRec = 1 Then Exit;
            Next;
          End;
      End;
  end;

begin
//  edFilialExit(nil);
  If not DirectoryExists('C:\NCI Bank') then
       CreateDir('C:\NCI Bank');

  If not DirectoryExists('C:\NCI Bank\OK') then
       CreateDir('C:\NCI Bank\OK');

  If not DirectoryExists('C:\NCI Bank\OK\Send') then
       CreateDir('C:\NCI Bank\OK\Send');

  FileName_ := 'C:\NCI Bank\OK\Send\OKREF.TRN';
  System.AssignFile(f,FileName_);
  Try
    System.Rewrite(f);

    //execSQL('begin param.ClearParam; end;');

    System.Writeln(f, '#DELETE FROM ');
    System.Writeln(f, 'ss_ok_post');
    System.Writeln(f, 'ss_ok_special');
    System.Writeln(f, 'SS_OK_BASE_MOVE');
    System.Writeln(f, 'SS_OK_EDUCATION_TITLE');
    System.Writeln(f, 'SS_OK_EDUCATION');
    System.Writeln(f, 'SS_OK_INSTITUTION');
    System.Writeln(f, 'SS_OK_NATIONALITY');
    System.Writeln(f, 'SS_OK_PARTY');
    System.Writeln(f, 'SS_OK_DEGREE');
    System.Writeln(f, 'SS_OK_ACADEMIC');
    System.Writeln(f, 'SS_OK_LANGUAGE');
    System.Writeln(f, 'SS_OK_LEVEL_LANGUAGE');
    System.Writeln(f, 'SS_OK_TYPE_PERIOD');
    System.Writeln(f, 'SS_OK_RELATION');
    System.Writeln(f, 'SS_OK_QUALIFICATION');
    System.Writeln(f, 'SS_OK_LEAVE');
    System.Writeln(f, 'SS_OK_MOTIVE_DISMISSIAL');
    System.Writeln(f, 'SS_OK_YOUTH');
    System.Writeln(f, 'SS_OK_DEPARTMENT_TYPE');
    System.Writeln(f, 'SS_OK_ARTICLE');
    System.Writeln(f, 'SS_OK_TEMPLATE_COMMAND');
    System.Writeln(f, 'SS_OK_COMMAND_TYPE');
    System.Writeln(f, 'SS_OK_PENALTY');
    System.Writeln(f, 'SS_OK_ELECTION');
    System.Writeln(f, 'SS_OK_DEPARTMENT');

    System.Writeln(f, 'SS_OK_army_group');
    System.Writeln(f, 'SS_OK_CATEGORY_ARMY');
    System.Writeln(f, 'SS_OK_MILITARY_RANK');
    System.Writeln(f, 'SS_OK_STAFF');
    System.Writeln(f, 'SS_OK_TYPE_FORCE');
    System.Writeln(f, 'SS_OK_NCI');

//    System.Writeln(f, 'SS_OK_FAMILY_STATUS');
//    System.Writeln(f, 'SS_OK_ARMY');
//    System.Writeln(f, 'SS_OK_FITNESS_ARMY');
//    System.Writeln(f, 'SS_OK_REG_TYPE');
//    System.Writeln(f, 'SS_OK_GENDER');
//    System.Writeln(f, 'SS_OK_REZERVE');
//    System.Writeln(f, 'SS_OK_VACANCY');
//    System.Writeln(f, 'SS_OK_BASIS');
//    System.Writeln(f, 'SS_OK_COMMAND_PARAM');
//    System.Writeln(f, 'SS_OK_STATUS');
//    System.Writeln(f, '#truncate table ');

    LoadData(cdsRefTemp,'SELECT * FROM ss_ok_nci order by nci_id,s_id');
    WriteData(cdsRefTemp, 'ss_ok_nci');

    LoadData(cdsRefTemp,'SELECT * FROM ss_ok_post order by post_code');
    WriteData(cdsRefTemp, 'ss_ok_post');
    LoadData(cdsRefTemp,'SELECT * FROM ss_ok_special order by special_code');
    WriteData(cdsRefTemp, 'ss_ok_special');

    LoadData(cdsRefTemp,'SELECT * FROM SS_OK_army_group order by army_group_code');
    WriteData(cdsRefTemp, 'SS_OK_army_group');
    LoadData(cdsRefTemp,'SELECT * FROM SS_OK_CATEGORY_ARMY order by CATEGORY_ARMY_code');
    WriteData(cdsRefTemp, 'SS_OK_CATEGORY_ARMY');
    LoadData(cdsRefTemp,'SELECT * FROM SS_OK_MILITARY_RANK order by MILITARY_RANK_code');
    WriteData(cdsRefTemp, 'SS_OK_MILITARY_RANK');
    LoadData(cdsRefTemp,'SELECT * FROM SS_OK_STAFF order by STAFF_code');
    WriteData(cdsRefTemp, 'SS_OK_STAFF');
    LoadData(cdsRefTemp,'SELECT * FROM SS_OK_TYPE_FORCE order by TYPE_FORCE_code');
    WriteData(cdsRefTemp, 'SS_OK_TYPE_FORCE');

    LoadData(cdsRefTemp,'SELECT * FROM ss_ok_base_move');
    WriteData(cdsRefTemp, 'ss_ok_base_move');
    LoadData(cdsRefTemp,'SELECT * FROM SS_OK_EDUCATION_TITLE');
    WriteData(cdsRefTemp, 'SS_OK_EDUCATION_TITLE');
    LoadData(cdsRefTemp,'SELECT * FROM SS_OK_EDUCATION');
    WriteData(cdsRefTemp, 'SS_OK_EDUCATION');
    LoadData(cdsRefTemp,'SELECT * FROM SS_OK_INSTITUTION  ');
    WriteData(cdsRefTemp, 'SS_OK_INSTITUTION');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_NATIONALITY  ');
    WriteData(cdsRefTemp, 'SS_OK_NATIONALITY');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_PARTY ');
    WriteData(cdsRefTemp, 'SS_OK_PARTY');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_DEGREE');
    WriteData(cdsRefTemp, 'SS_OK_DEGREE');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_ACADEMIC ');
    WriteData(cdsRefTemp, 'SS_OK_ACADEMIC');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_LANGUAGE ');
    WriteData(cdsRefTemp, 'SS_OK_LANGUAGE');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_LEVEL_LANGUAGE  ');
    WriteData(cdsRefTemp, 'SS_OK_LEVEL_LANGUAGE');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_TYPE_PERIOD ');
    WriteData(cdsRefTemp, 'SS_OK_TYPE_PERIOD');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_RELATION ');
    WriteData(cdsRefTemp, 'SS_OK_RELATION');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_QUALIFICATION ');
    WriteData(cdsRefTemp, 'SS_OK_QUALIFICATION');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_LEAVE ');
    WriteData(cdsRefTemp, 'SS_OK_LEAVE');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_MOTIVE_DISMISSIAL');
    WriteData(cdsRefTemp, 'SS_OK_MOTIVE_DISMISSIAL');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_YOUTH ');
    WriteData(cdsRefTemp, 'SS_OK_YOUTH');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_DEPARTMENT_TYPE  ');
    WriteData(cdsRefTemp, 'SS_OK_DEPARTMENT_TYPE');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_DEPARTMENT order by department_code ');
    WriteData(cdsRefTemp, 'SS_OK_DEPARTMENT');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_ARTICLE ');
    WriteData(cdsRefTemp, 'SS_OK_ARTICLE');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_TEMPLATE_COMMAND ');
    WriteData(cdsRefTemp, 'SS_OK_TEMPLATE_COMMAND');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_COMMAND_TYPE ');
    WriteData(cdsRefTemp, 'SS_OK_COMMAND_TYPE');
    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_PENALTY  ');
    WriteData(cdsRefTemp, 'SS_OK_PENALTY');

    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_ELECTION  ');
    WriteData(cdsRefTemp, 'SS_OK_ELECTION');

//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_FAMILY_STATUS');
//    WriteData(cdsRefTemp, 'SS_OK_FAMILY_STATUS');
//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_ARMY  ');
//    WriteData(cdsRefTemp, 'SS_OK_ARMY');
//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_FITNESS_ARMY ');
//    WriteData(cdsRefTemp, 'SS_OK_FITNESS_ARMY');
//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_REG_TYPE ');
//    WriteData(cdsRefTemp, 'SS_OK_REG_TYPE');
//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_GENDER  ');
//    WriteData(cdsRefTemp, 'SS_OK_GENDER');
//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_REZERVE ');
//    WriteData(cdsRefTemp, 'SS_OK_REZERVE');
//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_VACANCY ');
//    WriteData(cdsRefTemp, 'SS_OK_VACANCY');
//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_BASIS  ');
//    WriteData(cdsRefTemp, 'SS_OK_BASIS');
//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_COMMAND_PARAM');
//    WriteData(cdsRefTemp, 'SS_OK_COMMAND_PARAM');
//    LoadData(cdsRefTemp,'SELECT * FROM  SS_OK_STATUS ');
//    WriteData(cdsRefTemp, 'SS_OK_STATUS');

// сикунсы сами установятся из-за триггеров, которые "BEFORE INSERT"

    ExecSQL('COMMIT');

    PC.ActivePage := TabMessage;
    Memo1.Lines.Add('Файл для пересылки:');
    Memo1.Lines.Add(FileName_);
  Finally
    System.CloseFile(f);
  End;

end;

procedure TBOKRefForm.actReceiveExecute(Sender: TObject);
var ArhFileName_, FileName_: String;
begin

  PC.ActivePage := TabMessage;
  if ( (HeadBranch_='09004') and (branch<>'00394') and (branch<>'09004'))
  or ( (HeadBranch_='09006') and (branch<>'00883') and (branch<>'09006'))
  then begin
    showmessage('(3188)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
  end;

 try
  If not DirectoryExists('C:\NCI Bank') then
       CreateDir('C:\NCI Bank');

  If not DirectoryExists('C:\NCI Bank\OK') then
       CreateDir('C:\NCI Bank\OK');

  If not DirectoryExists('C:\NCI Bank\OK\Receive') then
       CreateDir('C:\NCI Bank\OK\Receive');

  If not DirectoryExists('C:\NCI Bank\OK\Receive\archiv') then
       CreateDir('C:\NCI Bank\OK\Receive\archiv');
 except
 on E:Exception do
  begin
   memo1.Lines.Add(E.Message+#10#13+'ошибка создания каталога C:\NCI Bank\OK\Receive\archiv');
   showmessage(E.Message+#10#13+'ошибка создания каталога C:\NCI Bank\OK\Receive\archiv');
  end;
 end;

  FileName_ := 'C:\NCI Bank\OK\Receive\OKREF.TRN';

  ArhFileName_ := 'C:\NCI Bank\OK\Receive\archiv\OKREF.TRN.'+DateToStr(Date);
{
// begin disable constraints
  ExecSQL('ALTER TABLE OK_PERSONAL DISABLE CONSTRAINT OK_PERSONAL_EMP_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL DISABLE CONSTRAINT OK_PERSONAL_STATUS_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL DISABLE CONSTRAINT OK_PERSONAL_SALARY_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL DISABLE CONSTRAINT OK_PERSONAL_GENDER_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL DISABLE CONSTRAINT OK_PERSONAL_NATIONALITY_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL DISABLE CONSTRAINT OK_PERSONAL_FAMILY_STATUS_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL DISABLE CONSTRAINT OK_PERSONAL_REG_TYPE_FK');
  ExecSQL('ALTER TABLE OK_CHANGE_FIO DISABLE CONSTRAINT OK_CHANGE_FIO_EMP_FK');
  ExecSQL('ALTER TABLE OK_CHANGE_FIO DISABLE CONSTRAINT OK_CHANGE_FIO_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_RELATION DISABLE CONSTRAINT OK_RELATION_EMP_FK');
  ExecSQL('ALTER TABLE OK_RELATION DISABLE CONSTRAINT OK_RELATION_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_PERIOD DISABLE CONSTRAINT OK_PERIOD_EMP_FK');
  ExecSQL('ALTER TABLE OK_PERIOD DISABLE CONSTRAINT OK_PERIOD_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_ARMY DISABLE CONSTRAINT OK_ARMY_EMP_FK');
  ExecSQL('ALTER TABLE OK_ARMY DISABLE CONSTRAINT OK_ARMY_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_POST DISABLE CONSTRAINT OK_POST_EMP_FK');
  ExecSQL('ALTER TABLE OK_POST DISABLE CONSTRAINT OK_POST_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_LEAVE DISABLE CONSTRAINT OK_LEAVE_EMP_FK');
  ExecSQL('ALTER TABLE OK_LEAVE DISABLE CONSTRAINT OK_LEAVE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION DISABLE CONSTRAINT OK_EDUCATION_EMP_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION DISABLE CONSTRAINT OK_EDUCATION_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_PARTY DISABLE CONSTRAINT OK_PARTY_EMP_FK');
  ExecSQL('ALTER TABLE OK_PARTY DISABLE CONSTRAINT OK_PARTY_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_ACADEMIC DISABLE CONSTRAINT OK_ACADEMIC_EMP_FK');
  ExecSQL('ALTER TABLE OK_ACADEMIC DISABLE CONSTRAINT OK_ACADEMIC_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_DEGREE DISABLE CONSTRAINT OK_DEGREE_EMP_FK');
  ExecSQL('ALTER TABLE OK_DEGREE DISABLE CONSTRAINT OK_DEGREE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_AWARD DISABLE CONSTRAINT OK_AWARD_EMP_FK');
  ExecSQL('ALTER TABLE OK_AWARD DISABLE CONSTRAINT OK_AWARD_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_SCIENTIFIC DISABLE CONSTRAINT OK_SCIENTIFIC_EMP_FK');
  ExecSQL('ALTER TABLE OK_SCIENTIFIC DISABLE CONSTRAINT OK_SCIENTIFIC_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_VOYAGE DISABLE CONSTRAINT OK_VOYAGE_EMP_FK');
  ExecSQL('ALTER TABLE OK_VOYAGE DISABLE CONSTRAINT OK_VOYAGE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_RISE DISABLE CONSTRAINT OK_RISE_EMP_FK');
  ExecSQL('ALTER TABLE OK_RISE DISABLE CONSTRAINT OK_RISE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_PENALTY DISABLE CONSTRAINT OK_PENALTY_EMP_FK');
  ExecSQL('ALTER TABLE OK_PENALTY DISABLE CONSTRAINT OK_PENALTY_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_LANGUAGE DISABLE CONSTRAINT OK_LANGUAGE_EMP_FK');
  ExecSQL('ALTER TABLE OK_LANGUAGE DISABLE CONSTRAINT OK_LANGUAGE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_ELECTION DISABLE CONSTRAINT OK_ELECTION_EMP_FK');
  ExecSQL('ALTER TABLE OK_ELECTION DISABLE CONSTRAINT OK_ELECTION_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_PREMIUM DISABLE CONSTRAINT OK_PREMIUM_EMP_FK');
  ExecSQL('ALTER TABLE OK_PREMIUM DISABLE CONSTRAINT OK_PREMIUM_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_YOUTH DISABLE CONSTRAINT OK_YOUTH_EMP_FK');
  ExecSQL('ALTER TABLE OK_YOUTH DISABLE CONSTRAINT OK_YOUTH_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_CONVICTIONS DISABLE CONSTRAINT OK_CONVICTIONS_EMP_FK');
  ExecSQL('ALTER TABLE OK_CONVICTIONS DISABLE CONSTRAINT OK_CONVICTIONS_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_ADDINFORM DISABLE CONSTRAINT OK_ADDINFORM_EMP_FK');
  ExecSQL('ALTER TABLE OK_ADDINFORM DISABLE CONSTRAINT OK_ADDINFORM_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_STAT DISABLE CONSTRAINT OK_STAT_EMP_FK');
  ExecSQL('ALTER TABLE OK_STAT_SALARY DISABLE CONSTRAINT OK_STAT_SALARY_EMP_FK');
  ExecSQL('ALTER TABLE OK_ATTESTATION DISABLE CONSTRAINT OK_ATTESTATION_EMP_FK');
  ExecSQL('ALTER TABLE OK_ATTESTATION DISABLE CONSTRAINT OK_ATTESTATION_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_RELATION DISABLE CONSTRAINT OK_RELATION_FK');
  ExecSQL('ALTER TABLE OK_PERIOD DISABLE CONSTRAINT OK_PERIOD_TYPE_FK');
  ExecSQL('ALTER TABLE OK_ARMY DISABLE CONSTRAINT OK_ARMY_FK');
  ExecSQL('ALTER TABLE OK_ARMY DISABLE CONSTRAINT OK_ARMY_FITNESS_FK');
  ExecSQL('ALTER TABLE OK_POST DISABLE CONSTRAINT OK_POST_DEPARTMENT_FK');
  ExecSQL('ALTER TABLE OK_POST DISABLE CONSTRAINT OK_POST_FK');
  ExecSQL('ALTER TABLE OK_LEAVE DISABLE CONSTRAINT OK_LEAVE_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION DISABLE CONSTRAINT OK_EDUCATION_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION DISABLE CONSTRAINT OK_EDUCATION_BASIS_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION DISABLE CONSTRAINT OK_EDUCATION_INSTITUTION_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION DISABLE CONSTRAINT OK_EDUCATION_QUALIFICATION_FK');
  ExecSQL('ALTER TABLE OK_PARTY DISABLE CONSTRAINT OK_PARTY_FK');
  ExecSQL('ALTER TABLE OK_ACADEMIC DISABLE CONSTRAINT OK_ACADEMIC_FK');
  ExecSQL('ALTER TABLE OK_DEGREE DISABLE CONSTRAINT OK_DEGREE_FK');
  ExecSQL('ALTER TABLE OK_PENALTY DISABLE CONSTRAINT OK_PENALTY_FK');
  ExecSQL('ALTER TABLE OK_LANGUAGE DISABLE CONSTRAINT OK_LANGUAGE_FK');
  ExecSQL('ALTER TABLE OK_LANGUAGE DISABLE CONSTRAINT OK_LANGUAGE_LEVEL_FK');
  ExecSQL('ALTER TABLE OK_YOUTH DISABLE CONSTRAINT OK_YOUTH_FK');
  ExecSQL('ALTER TABLE OK_STAT DISABLE CONSTRAINT OK_STAT_DEPARTMENT_FK');
  ExecSQL('ALTER TABLE OK_STAT DISABLE CONSTRAINT OK_STAT_POST_FK');
  ExecSQL('ALTER TABLE OK_STAT_SALARY DISABLE CONSTRAINT OK_STAT_SALARY_VACANCY_FK');
  ExecSQL('ALTER TABLE OK_STAT_SALARY DISABLE CONSTRAINT OK_STAT_SALARY_REZERVE_FK');
// end disable constraints
}
  LoadFile(FileName_);
{
// begin enable constraints
  ExecSQL('ALTER TABLE OK_PERSONAL ENABLE CONSTRAINT OK_PERSONAL_EMP_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL ENABLE CONSTRAINT OK_PERSONAL_STATUS_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL ENABLE CONSTRAINT OK_PERSONAL_SALARY_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL ENABLE CONSTRAINT OK_PERSONAL_GENDER_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL ENABLE CONSTRAINT OK_PERSONAL_NATIONALITY_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL ENABLE CONSTRAINT OK_PERSONAL_FAMILY_STATUS_FK');
  ExecSQL('ALTER TABLE OK_PERSONAL ENABLE CONSTRAINT OK_PERSONAL_REG_TYPE_FK');
  ExecSQL('ALTER TABLE OK_CHANGE_FIO ENABLE CONSTRAINT OK_CHANGE_FIO_EMP_FK');
  ExecSQL('ALTER TABLE OK_CHANGE_FIO ENABLE CONSTRAINT OK_CHANGE_FIO_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_RELATION ENABLE CONSTRAINT OK_RELATION_EMP_FK');
  ExecSQL('ALTER TABLE OK_RELATION ENABLE CONSTRAINT OK_RELATION_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_PERIOD ENABLE CONSTRAINT OK_PERIOD_EMP_FK');
  ExecSQL('ALTER TABLE OK_PERIOD ENABLE CONSTRAINT OK_PERIOD_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_ARMY ENABLE CONSTRAINT OK_ARMY_EMP_FK');
  ExecSQL('ALTER TABLE OK_ARMY ENABLE CONSTRAINT OK_ARMY_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_POST ENABLE CONSTRAINT OK_POST_EMP_FK');
  ExecSQL('ALTER TABLE OK_POST ENABLE CONSTRAINT OK_POST_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_LEAVE ENABLE CONSTRAINT OK_LEAVE_EMP_FK');
  ExecSQL('ALTER TABLE OK_LEAVE ENABLE CONSTRAINT OK_LEAVE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION ENABLE CONSTRAINT OK_EDUCATION_EMP_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION ENABLE CONSTRAINT OK_EDUCATION_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_PARTY ENABLE CONSTRAINT OK_PARTY_EMP_FK');
  ExecSQL('ALTER TABLE OK_PARTY ENABLE CONSTRAINT OK_PARTY_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_ACADEMIC ENABLE CONSTRAINT OK_ACADEMIC_EMP_FK');
  ExecSQL('ALTER TABLE OK_ACADEMIC ENABLE CONSTRAINT OK_ACADEMIC_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_DEGREE ENABLE CONSTRAINT OK_DEGREE_EMP_FK');
  ExecSQL('ALTER TABLE OK_DEGREE ENABLE CONSTRAINT OK_DEGREE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_AWARD ENABLE CONSTRAINT OK_AWARD_EMP_FK');
  ExecSQL('ALTER TABLE OK_AWARD ENABLE CONSTRAINT OK_AWARD_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_SCIENTIFIC ENABLE CONSTRAINT OK_SCIENTIFIC_EMP_FK');
  ExecSQL('ALTER TABLE OK_SCIENTIFIC ENABLE CONSTRAINT OK_SCIENTIFIC_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_VOYAGE ENABLE CONSTRAINT OK_VOYAGE_EMP_FK');
  ExecSQL('ALTER TABLE OK_VOYAGE ENABLE CONSTRAINT OK_VOYAGE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_RISE ENABLE CONSTRAINT OK_RISE_EMP_FK');
  ExecSQL('ALTER TABLE OK_RISE ENABLE CONSTRAINT OK_RISE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_PENALTY ENABLE CONSTRAINT OK_PENALTY_EMP_FK');
  ExecSQL('ALTER TABLE OK_PENALTY ENABLE CONSTRAINT OK_PENALTY_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_LANGUAGE ENABLE CONSTRAINT OK_LANGUAGE_EMP_FK');
  ExecSQL('ALTER TABLE OK_LANGUAGE ENABLE CONSTRAINT OK_LANGUAGE_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_ELECTION ENABLE CONSTRAINT OK_ELECTION_EMP_FK');
  ExecSQL('ALTER TABLE OK_ELECTION ENABLE CONSTRAINT OK_ELECTION_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_PREMIUM ENABLE CONSTRAINT OK_PREMIUM_EMP_FK');
  ExecSQL('ALTER TABLE OK_PREMIUM ENABLE CONSTRAINT OK_PREMIUM_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_YOUTH ENABLE CONSTRAINT OK_YOUTH_EMP_FK');
  ExecSQL('ALTER TABLE OK_YOUTH ENABLE CONSTRAINT OK_YOUTH_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_CONVICTIONS ENABLE CONSTRAINT OK_CONVICTIONS_EMP_FK');
  ExecSQL('ALTER TABLE OK_CONVICTIONS ENABLE CONSTRAINT OK_CONVICTIONS_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_ADDINFORM ENABLE CONSTRAINT OK_ADDINFORM_EMP_FK');
  ExecSQL('ALTER TABLE OK_ADDINFORM ENABLE CONSTRAINT OK_ADDINFORM_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_STAT ENABLE CONSTRAINT OK_STAT_EMP_FK');
  ExecSQL('ALTER TABLE OK_STAT_SALARY ENABLE CONSTRAINT OK_STAT_SALARY_EMP_FK');
  ExecSQL('ALTER TABLE OK_ATTESTATION ENABLE CONSTRAINT OK_ATTESTATION_EMP_FK');
  ExecSQL('ALTER TABLE OK_ATTESTATION ENABLE CONSTRAINT OK_ATTESTATION_PERSONAL_FK');
  ExecSQL('ALTER TABLE OK_RELATION ENABLE CONSTRAINT OK_RELATION_FK');
  ExecSQL('ALTER TABLE OK_PERIOD ENABLE CONSTRAINT OK_PERIOD_TYPE_FK');
  ExecSQL('ALTER TABLE OK_ARMY ENABLE CONSTRAINT OK_ARMY_FK');
  ExecSQL('ALTER TABLE OK_ARMY ENABLE CONSTRAINT OK_ARMY_FITNESS_FK');
  ExecSQL('ALTER TABLE OK_POST ENABLE CONSTRAINT OK_POST_DEPARTMENT_FK');
  ExecSQL('ALTER TABLE OK_POST ENABLE CONSTRAINT OK_POST_FK');
  ExecSQL('ALTER TABLE OK_LEAVE ENABLE CONSTRAINT OK_LEAVE_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION ENABLE CONSTRAINT OK_EDUCATION_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION ENABLE CONSTRAINT OK_EDUCATION_BASIS_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION ENABLE CONSTRAINT OK_EDUCATION_INSTITUTION_FK');
  ExecSQL('ALTER TABLE OK_EDUCATION ENABLE CONSTRAINT OK_EDUCATION_QUALIFICATION_FK');
  ExecSQL('ALTER TABLE OK_PARTY ENABLE CONSTRAINT OK_PARTY_FK');
  ExecSQL('ALTER TABLE OK_ACADEMIC ENABLE CONSTRAINT OK_ACADEMIC_FK');
  ExecSQL('ALTER TABLE OK_DEGREE ENABLE CONSTRAINT OK_DEGREE_FK');
  ExecSQL('ALTER TABLE OK_PENALTY ENABLE CONSTRAINT OK_PENALTY_FK');
  ExecSQL('ALTER TABLE OK_LANGUAGE ENABLE CONSTRAINT OK_LANGUAGE_FK');
  ExecSQL('ALTER TABLE OK_LANGUAGE ENABLE CONSTRAINT OK_LANGUAGE_LEVEL_FK');
  ExecSQL('ALTER TABLE OK_YOUTH ENABLE CONSTRAINT OK_YOUTH_FK');
  ExecSQL('ALTER TABLE OK_STAT ENABLE CONSTRAINT OK_STAT_DEPARTMENT_FK');
  ExecSQL('ALTER TABLE OK_STAT ENABLE CONSTRAINT OK_STAT_POST_FK');
  ExecSQL('ALTER TABLE OK_STAT_SALARY ENABLE CONSTRAINT OK_STAT_SALARY_VACANCY_FK');
  ExecSQL('ALTER TABLE OK_STAT_SALARY ENABLE CONSTRAINT OK_STAT_SALARY_REZERVE_FK');
}
// end enable constraints

  ExecSQL('COMMIT');
//  ExecSQL('ROLLBACK');

  CopyFile(PChar(FileName_),PChar(ArhFileName_),false);
  DeleteFile(PChar(FileName_));

end;

procedure TBOKRefForm.LoadFile(FileName: String; Script: Boolean = False);
var f: TextFile;
    r, cmd_: String;
    isermes: String;
begin

  isermes:='';

  If not FileExists(FileName) Then Begin memo1.Lines.Add('Файл '+FileName+' не найден!');Exit; End;
  Try
    System.AssignFile(f,FileName);
    System.Reset(f);
    Try
      While not Eof(f) do
        Begin
          System.Readln(f,r);
          If not Script Then
            Begin
              If r[1] = '#' Then
                If cmd_ <> copy(r,2,length(r)) Then
                  Begin
                    cmd_ := copy(r,2,length(r));
                    System.Readln(f,r);
                  End;
              StatusBar.Panels[1].Text := cmd_+r+';';
//              ExecSQL(cmd_+r+';');
              ExecSQL(cmd_+r);
            End
          Else
            Try
              ExecSQL(r);
            Except

              on E:Exception do memo1.Lines.Add(E.Message+#10#13+r);
            End;
        End;
      StatusBar.Panels[1].Text := '';
      ExecSQL('COMMIT');
    Except
      on E: Exception do
        Begin
          isermes:='ошибка';
          ExecSQL('ROLLBACK');
          Showmessage(cmd_+r+';'+' '+#13#10+E.Message);
          memo1.Lines.Add(cmd_+r+';'+' '+#13#10+E.Message);
        End;
    End;
  Finally
    System.CloseFile(f);
  End;

  if isermes=''
  then begin
    memo1.Lines.Add('Файл '+FileName+' принят.');
  end else begin
    memo1.Lines.Add('Файл '+FileName+'не принят.');
  end;

end;

procedure TBOKRefForm.dssokeducationtitleStateChange(Sender: TObject);
begin
  cdbgSSOKeducationtitle.Columns[1].Readonly:= not (cdsSSOKeducationtitle_SET.State = dsInsert);

end;

procedure TBOKRefForm.actSSOKEducationTitleExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( education_title_code) from ss_ok_education_title ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage:=TabSSOKEducationTitle;

  If cdsSSOKEducationTitle_SET.Active Then Exit;
  cdsSSOKEducationTitle_SET.DisableControls;

  LoadData(cdsSSOKEducationTitle_SET,    SQL_SSOKEducationTitle_SET);

  cdsSSOKEducationTitle_SET.EnableControls;

end;

procedure TBOKRefForm.actSSOKEducationTitleViewExecute(Sender: TObject);
begin
  actSSOKEducationTitleExecute(Sender);
  GetRef(cdbgSSOKEducationTitle);

end;

procedure TBOKRefForm.actSSOKelectionViewExecute(Sender: TObject);
begin
  actSSOKElectionExecute(Sender);
  GetRef(cdbgSSOKElection);

end;

procedure TBOKRefForm.actSSOKelectionExecute(Sender: TObject);
var j : integer;
begin

  j:=0;
  try
    j:=GetSqlResult('select max( election_code) from ss_ok_election ');
  except
  end;

  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKelection;
  If cdsSSOKelection_SET.Active Then Exit;
  cdsSSOKelection_SET.DisableControls;
  LOADDATA(cdsSSOKelection_SET,      SQL_SSOKelection_SET);
  cdsSSOKelection_SET.EnableControls;

end;

procedure TBOKRefForm.actSSOKBaseMoveExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( base_move_code) from ss_ok_base_move ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage:=TabSSOKBaseMove;

  If cdsSSOKBaseMove_SET.Active Then Exit;
  cdsSSOKBaseMove_SET.DisableControls;

  LoadData(cdsSSOKBaseMove_SET,    SQL_SSOKBaseMove_SET);
//  cdsSSOKNationality_SET.IndexFieldNames := 'nationality_code';

  cdsSSOKBaseMove_SET.EnableControls;

end;

procedure TBOKRefForm.actSSOKBaseMoveViewExecute(Sender: TObject);
begin
  actSSOKBaseMoveExecute(Sender);
  GetRef(cdbgSSOKBaseMove);

end;

procedure TBOKRefForm.cbFiltrChange(Sender: TObject);
//var j: integer;
begin
//
  FiltrLevel:=TData(CBFiltr.Items.Objects[CBfiltr.ItemIndex]).Id;
  FiltrLevelName:=TData(CBFiltr.Items.Objects[CBfiltr.ItemIndex]).name;
  LbFiltrLevelName.caption:=FiltrLevelName;

  if PC.ActivePage=TabSSOKPost
  then begin
////////////////////
//  If not cdsSSOKLevelDepartment_SET.Active Then
//  Begin
    cdsSSOKLevelDepartment_SET.DisableControls;
    LoadData(cdsSSOKLevelDepartment_SET, SQL_SSOKLevelDepartment_SET);
    cdsSSOKLevelDepartment_SET.EnableControls;
//  end;

//  If not cdsSSOKRezerv_SET.Active Then
//  Begin
    cdsSSOKRezerv_SET.DisableControls;
    LoadData(cdsSSOKRezerv_SET, SQL_SSOKRezerv_SET);
    cdsSSOKRezerv_SET.EnableControls;
//  end;
    cdsSSOKcategory_SET.DisableControls;
    LoadData(cdsSSOKcategory_SET, sql_SSOKcategory_SET);
    cdsSSOKcategory_SET.EnableControls;

    cdsSS_OK_POST_GROUP.DisableControls;
    LoadData(cdsSS_OK_POST_GROUP, sql_SS_OK_POST_GROUP);
    cdsSS_OK_POST_GROUP.EnableControls;



  cdsSSOKPost_SET.DisableControls;
  LoadData(cdsSSOKPost_SET, SQL_SSOKPost_SET+
    ' where d.LEVEL_DEPARTMENT_CODE='+FiltrLevel+
//    ' where d.post_code is not null '+
    ' order by d.LEVEL_DEPARTMENT_CODE, d.post_code');

  cdsSSOKPost_SET.Close;

  addLookUpField(cdsSSOKPost_SET, cdsSSOKLevelDepartment_SET,
                'level_department_code_show', 'level_department_code',
                'level_department_code', 'level_department_name', True);

  addLookUpField(cdsSSOKPost_SET, cdsSSOKrezerv_SET,
                'rezerv_code_show', 'rezerv_code',
                'rezerv_code', 'rezerv_name', False);

  addLookUpField(cdsSSOKPost_SET, cdsSSOKcategory_SET,
                'category_show', 'category_code',
                'category_code', 'category_name', False);


  addLookUpField(cdsSSOKPost_SET, cdsSS_OK_POST_GROUP,
                'post_group_code_show', 'post_group_code',
                'post_group_code',      'post_group_name', False);
///////////////////////////
  addLookUpField(cdsSSOKPost_SET, cdsSSOKEducationTitle_SET,
                'EDUCATION_TITLE_CODE_show', 'EDUCATION_TITLE_CODE',
                'EDUCATION_TITLE_CODE',      'EDUCATION_TITLE_name', False);

  addLookUpField(cdsSSOKPost_SET, cdsSSOKLevelDepartment_RO,
                'CONFIRM_CODE_show', 'CONFIRM_CODE',
                'LEVEL_DEPARTMENT_CODE',      'LEVEL_DEPARTMENT_name', False);
////////////////////////
  cdsSSOKPost_SET.Open;
  cdsSSOKPost_SET.EnableControls;

////////////////////
{
//  If cdsSSOKPost_SET.Active Then Exit;

//  If not cdsSSOKLevelDepartment_SET.Active Then
//  Begin
    cdsSSOKLevelDepartment_SET.DisableControls;
    LoadData(cdsSSOKLevelDepartment_SET, SQL_SSOKLevelDepartment_SET);
    cdsSSOKLevelDepartment_SET.EnableControls;
//  end;

//  If not cdsSSOKRezerv_SET.Active Then
//  Begin
    cdsSSOKRezerv_SET.DisableControls;
    LoadData(cdsSSOKRezerv_SET, SQL_SSOKRezerv_SET);
    cdsSSOKRezerv_SET.EnableControls;
//  end;

  cdsSSOKPost_SET.DisableControls;
  LoadData(cdsSSOKPost_SET, SQL_SSOKPost_SET+
    ' where d.LEVEL_DEPARTMENT_CODE='+FiltrLevel+
//    ' where d.post_code is not null '+
    ' order by d.LEVEL_DEPARTMENT_CODE, d.post_code');

//  cdsSSOKPost_SET.Close;
//  addLookUpField(cdsSSOKPost_SET, cdsSSOKLevelDepartment_SET,
//                'level_department_code_show', 'level_department_code',
//                'level_department_code', 'level_department_name', True);
//  addLookUpField(cdsSSOKPost_SET, cdsSSOKrezerv_SET,
//                'rezerv_code_show', 'rezerv_code',
//                'rezerv_code', 'rezerv_name', False);
//  cdsSSOKPost_SET.Open;
//  cdsSSOKPost_SET.EnableControls;
}
  end;
//
  if (PC.ActivePage=TabSSOKDepartment)
  and (FiltrLevel<>'4')
  then begin
    actSSOKDepartmentExecute(nil);
  end;

  if (PC.ActivePage=TabSSOKDepartment)
  and (FiltrLevel='4')
  then begin
    showmessage('Уровень "ВСЕ" используется только для должностей');
    FiltrLevel:='1';
//*    FiltrLevelName:='Республика, УБО';
    FiltrLevelName:=getsqlresultpar('select level_department_name from ss_ok_level_department where level_department_code=:p_1','1');
    if FiltrLevelName='' then FiltrLevelName:='Республика';
    LbFiltrLevelName.caption:=FiltrLevelName;
    cbFiltr.ItemIndex:=0;

  end;

//  j:=GetSqlResult('select max(department_code) from ss_ok_department');
//  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);
//  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j)+' отделов';

end;

procedure TBOKRefForm.TreeVClick(Sender: TObject);
var is_found : boolean;
  i : integer;
begin

cdsSSOKnci.Close;
cds_S.close;
cds_OK.close;
//showmessage('@00');

//  showmessage('TreeV.Selected.Text ='+TreeV.Selected.Text+#13+
//              'TreeV.Selected.data ='+ IntToStr(integer(TreeV.Selected.data))
//  );

  if (TreeV.Selected=nil ) // акес виолейшн, если NIL
  then begin
    edDepartmentcode.text  := '';
    edDepartmentName.text:= '';
    edDEPARTMENTNUM.text := '';
    LbDepname.caption := FiltrLevelName;
    cbDepType.ItemIndex := -1;
    exit;
  end;

  if (integer(TreeV.Selected.data)<>0)
  then begin
    cdsDerevo.Locate('id', Integer(TreeV.Selected.data), []);
    edDepartmentcode.text  := cdsDerevo.FieldByname('department_code').AsString;

    edDepartmentName.text:= cdsDerevo.FieldByname('department_name').AsString;
    edDEPARTMENTNUM.text := cdsDerevo.FieldByname('department_num').AsString;
    LbDepname.Caption := cdsDerevo.FieldByname('department_name').AsString;
    edDepType.text := cdsDerevo.FieldByname('department_type_code').AsString;

    is_found := false;

    for i:=1 to cbDepType.Items.Count
    do begin
      if cdsDerevo.FieldByname('department_type_code').AsString = TData(cbDepType.Items.Objects[ i-1 ]).Id
      then begin
        is_found := true;
        cbDepType.ItemIndex := i-1;
      end;

    end;

    if not is_found
    then begin
      cbDepType.ItemIndex := -1;
    end;


  end else begin
    edDepartmentcode.text  := '';
    edDepartmentName.text:= '';
    edDEPARTMENTNUM.text := '';
    LbDepname.caption := FiltrLevelName;
    cbDepType.ItemIndex := -1;
  end;


end;

procedure TBOKRefForm.TreeVKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TreeVClick(Sender);
end;

procedure TBOKRefForm.ActNewDepExecute(Sender: TObject);
var n_TreeNode : TTreeNode;
    sql_,highdepcode_, ErMessage : string;
    v    : variant;
    j,id_  : integer;
const
  ERROR_NO = 'ORA-20000: ';

begin
  // процедура добавления отдела
  // также добавить в дерево
  // New: Department_Name
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(3747)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin
  if cbDepTypeNEW.itemindex=-1
  then begin
    showmessage('укажите Тип отдела');
    cbDepType.SetFocus;
    exit;
  end;

  if Integer(TreeV.Selected.data)=0
  then begin
    highdepcode_ := '0';
  end else begin
    cdsDerevo.Locate('id', Integer(TreeV.Selected.data), []);
    highdepcode_ := cdsDerevo.FieldByname('department_code').AsString;
  end;

  try
//    execSQL('begin Param.SaveParam(1); end;');
    execSQL('begin param.ClearParam; end;');


    execSQL('begin Param.SetParam(''BRANCH'',info.getbranch); end;');

    execSQL('begin Param.SetParam(''DEPARTMENTCODE'','''+
      edDepartmentcodeNew.Text +'''); end;');
    execSQL('begin Param.SetParam(''DEPARTMENTNAME'','''+
      edDepartmentNameNew.Text +'''); end;');
    execSQL('begin Param.SetParam(''DEPARTMENTNUM'','''+
      edDEPARTMENTNUMnew.TEXT + '''); end;');



    execSQL('begin Param.SetParam(''HIGHDEPCODE'','''+
      highdepcode_ + '''); end;');

    execSQL('begin Param.SetParam(''DEPARTMENTTYPECODE'','''+
        TData(CBDeptypeNEW.Items.Objects[CBDeptypeNEW.ItemIndex]).Id+
      '''); end;');

    execSQL('begin Param.SetParam(''LEVELDEPARTMENTCODE'','''+
      FiltrLevel +'''); end;');

    execSQL('begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;');

    execSQL('begin OK_SERVICE.OKNEWDEP; end;');

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
          Else ShowMessage(E.Message);
        exit;
      End;
  end;

  v := GetSqlResult('select Param.GetParam(''DEPARTMENTID'') from dual');
  id_ := v;

  n_TreeNode := TreeV.Items.AddChildObject(
        TreeV.Selected,
        edDepartmentcodeNew.Text+') '+edDepartmentNameNew.Text,
        Pointer(id_) );
      n_TreeNode.ImageIndex := 1;
      n_TreeNode.SelectedIndex := 1;

try
  sql_:=SQL_Derevo+
        ' where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null';//+
//        ' order by d.department_code';
  loaddata( cdsDerevo, sql_);


except
showmessage(sql_);
end;

  if Integer(TreeV.Selected.data)=0
  then begin
    showmessage('Добавлено подразделение '+edDepartmentcodeNew.Text+') '+edDepartmentNameNew.Text);
  end else begin
    if cdsDerevo.Locate('id', Integer(TreeV.Selected.data), [])
    then begin
      showmessage('В отдел '+cdsDerevo.FieldByname('department_code').AsString+') '+
        cdsDerevo.FieldByname('department_name').AsString+
        ' добавлено подразделение '+edDepartmentcodeNew.Text+') '+edDepartmentNameNew.Text);
    end;

  end;

    edDepartmentcodeNEW.text  := '';
    edDepartmentNameNEW.text:= '';
    edDEPARTMENTNUMNEW.text := '';
//    LbDepname.caption := FiltrLevelName;
    cbDepTypeNEW.ItemIndex := -1;

  j:=GetSqlResult('select max(department_code) from ss_ok_department');
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);
//  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j)+' отделов';
 end;
end;

procedure TBOKRefForm.ActSaveDepExecute(Sender: TObject);
var //n_TreeNode : TTreeNode;
    sql_,ErMessage : string;
//    v    : variant;
//    id_  : integer;
const
  ERROR_NO = 'ORA-20000: ';

begin
  // процедура изменения отдела
  // также изменить в дереве
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(3880)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin

  if Integer(TreeV.Selected.data)=0
  then begin
    showmessage('Нельзя изменить отдел '+TreeV.Selected.text);
    exit;
  end;

  if cbDepType.itemindex=-1
  then begin
    showmessage('укажите Тип отдела');
    cbDepType.setfocus;
  end;

  try
    execSQL('begin param.ClearParam; end;');

    execSQL('begin Param.SetParam(''BRANCH'',info.getbranch); end;');

    execSQL('begin Param.SetParam(''DEPARTMENTCODE'','''+
      edDepartmentcode.Text +'''); end;');
    execSQL('begin Param.SetParam(''DEPARTMENTNAME'','''+
      edDepartmentName.Text +'''); end;');
    execSQL('begin Param.SetParam(''DEPARTMENTNUM'','''+
      edDEPARTMENTNUM.TEXT + '''); end;');

//    execSQL('begin Param.SetParam(''HIGHDEPCODE'','''+
//      IntToStr(integer(TreeV.Selected.Data)) + '''); end;');

    execSQL('begin Param.SetParam(''DEPARTMENTTYPECODE'','''+
        TData(CBDeptype.Items.Objects[CBDeptype.ItemIndex]).Id+
      '''); end;');

//    execSQL('begin Param.SetParam(''LEVELDEPARTMENTCODE'','''+
//      FiltrLevel +'''); end;');

    execSQL('begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;');

    execSQL('begin OK_SERVICE.OKDEP; end;');

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
          Else ShowMessage(E.Message);
        exit;
      End;
  end;

//  v := GetSqlResult('select Param.GetParam(''DEPARTMENTID'') from dual');
//  id_ := v;

//  n_TreeNode := TreeV.Items.AddChildObject(
//        TreeV.Selected,
//        edDepartmentName.Text,
//        Pointer(id_) );
//      n_TreeNode.ImageIndex := 1;
//      n_TreeNode.SelectedIndex := 1;
  TreeV.Selected.text:= edDepartmentName.Text;
  try
   sql_:=SQL_Derevo+
        ' where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null';//+
//        ' order by d.department_code';
   loaddata( cdsDerevo, sql_);


  except
   showmessage(sql_);
  end;
   TreeVClick(nil);
   showmessage('Изменения сохранены.');

 end;

end;

procedure TBOKRefForm.ActChangeHighDepExecute(Sender: TObject);
var sql_:string;
 is_bad : boolean;
    ErMessage : string;
 dep_code, high_dep_code: String;
 dep_name, high_dep_name: String;
 YesOrNo : boolean;
  ParentNode0, ParentNode1, ParentNode2, ParentNode3, ParentNode4, ParentNode5: TTreeNode;
  i : integer;
//  D : tdata;
  curnode:integer;
const
  ERROR_NO = 'ORA-20000: ';
begin
// будет выдан список отделов, которым подчинить это подразделение
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(3992)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin

  LoadData(cdsRefTemp,
                    'select to_char(a.DEPARTMENT_CODE) id, '+
                    ' a.DEPARTMENT_name name '+
                    ' from ss_ok_department a '+
                    ' where a.state_notes=''A'' '+
                    ' and a.level_department_code='+FiltrLevel+
                    ' order by a.department_code',True);
  cdsRefTemp.Edit;

  With TSelectDialog.CreateEx(Self, cdsRefTemp, cdsRefTemp, cdsRefTemp.FindField('id').Index)
  do
  Try

    If ShowModal = mrOk
    Then begin
      YesOrNo:=true;
// department_code
// cdsDerevo.FieldByName('department_code').AsString
        cdsDerevo.Locate('id', Integer(TreeV.Selected.data), []);

      high_dep_code:=cdsRefTemp.FieldByName('id').AsString;
      high_dep_name:=cdsRefTemp.FieldByName('name').AsString;
      dep_code :=cdsDerevo.FieldByName('department_code').AsString;
      dep_name :=cdsDerevo.FieldByName('department_name').AsString;

      if  high_dep_code=    dep_code
      then begin
        showmessage('Нельзя подчинить отдел самому себе!');
        exit;
      end;

        sql_:='select level, d.department_name name_,'+
        ' d.department_code, d.high_dep_code from ss_ok_department d'+
        ' where d.state_notes=''A'' '+
        ' and d.level_department_code='+FiltrLevel+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code='+dep_code;
      try
         is_bad:= false;
         LoadData(Source,sql_,True);
         While not Source.Eof
         do begin
           if source.FieldByName('department_code').AsString =
              high_dep_code
           then begin
             is_bad := true;
           end;
           source.Next;
         end;
      except
        showmessage(sql_);
        raise;
      end;

      if is_bad
      then begin
           showmessage('Отдел '+high_dep_name+
           ' найден в списке подчиненных у подразделения'+
            cdsDerevo.FieldByName('department_name').AsString+
           ' и не может быть назначен вышестоящим');
           exit;
      end else begin
        sql_ := 'update ss_ok_department'+
            ' set high_dep_code='+high_dep_code+
            ' where department_code=' +  dep_code  ;
//showmessage(sql_);
        try
          ExecSQL(sql_);
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
          Else ShowMessage(E.Message);
        exit;
      End;
    end;


         end;
    End else begin
      YesOrNo:= false;
    End;

  Finally
                    Destination.Filtered:=false;
                    Free;
  End;

 ///////////////
  try
   sql_:=SQL_Derevo+
        ' where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null'; //+
//        ' order by d.department_code';
   loaddata( cdsDerevo, sql_);


  except
   showmessage(sql_);
  end;

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
/////////////////
{
  q:=1;
      n_TreeNode := TreeV.Items.AddChildObject(
        ParentNode0,
        'краказяба',
        Pointer(q) );
      n_TreeNode.ImageIndex := 1;
      n_TreeNode.SelectedIndex := 1;
    showmessage('q=1 >> '+  inttostr( integer(n_TreeNode.Data) ) );

  q:=2;
    showmessage('q=2 >> '+  inttostr( integer(n_TreeNode.Data) ) );
n_TreeNode.Data не изменился !!!!!
}
///////////////
//  reps := TClientDataSetEx.create(self);

// ветки дерева BEGIN
  ParentNode1 :=ParentNode0;
  ParentNode2 :=ParentNode0;
  ParentNode3 :=ParentNode0;
  ParentNode4 :=ParentNode0;
  ParentNode5 :=ParentNode0;

  cdsDerevo.first;
  curnode:=1;


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
      curnode:=1;
     end;

    if cdsDerevo.FieldbyName('level').AsString='2'
    then begin
      ParentNode2 := TreeV.Items.AddChildObject(
        ParentNode1,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode2.ImageIndex := 1;
      ParentNode2.SelectedIndex := 1;
      curnode:=2;
    end;

    if cdsDerevo.FieldbyName('level').AsString='3'
    then begin
      ParentNode3 := TreeV.Items.AddChildObject(
        ParentNode2,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode3.ImageIndex := 1;
      ParentNode3.SelectedIndex := 1;
      curnode:=3;
    end;

    if cdsDerevo.FieldbyName('level').AsString='4'
    then begin
      ParentNode4 := TreeV.Items.AddChildObject(
        ParentNode3,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode4.ImageIndex := 1;
      ParentNode4.SelectedIndex := 1;
      curnode:=4;
    end;

    if cdsDerevo.FieldbyName('level').AsString='5'
    then begin
      ParentNode5 := TreeV.Items.AddChildObject(
        ParentNode4,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode5.ImageIndex := 1;
      ParentNode5.SelectedIndex := 1;
      curnode:=5;
    end;

//except
//showmessage('*5');
//end;
//////////
//    if cdsDerevo.FieldbyName('department_code').AsString=high_dep_code
    if cdsDerevo.FieldbyName('department_code').AsString=dep_code
    then begin
      ParentNode0.expand(false);
      if curnode>1
      then ParentNode1.expand(false);
      if curnode>2
      then ParentNode2.expand(false);
      if curnode>3
      then ParentNode3.expand(false);
      if curnode>4
      then ParentNode4.expand(false);
      if curnode>5
      then ParentNode5.expand(false);
    end;
//////////

    cdsDerevo.Next;
  end;

// ветки дерева END

// здесь растет дерево END
//  TreeV.FullExpand;
///////////////
  if YesOrNo
  then begin
    showmessage('Выполнено действие: подразделение '+#13+dep_code+') '+dep_name+
        ' подчинено'+#13+high_dep_code+') '+high_dep_name);
  end;
  
 end;

end;

procedure TBOKRefForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var
//   j :integer;
//   d: tdata;
begin
//        showmessage(Sender.ClassName);
  Case Key of
    VK_RETURN:
      begin
        SelectNext(ActiveControl, True, True);
      end;
    VK_F1:
      begin
//
       end;
    VK_F9:
      begin
//
        If (Sender = CBDepType) or (Sender = edDepType)
        or (Sender = CBDepTypenew) or (Sender = edDepTypenew)
        Then begin
          LoadData(cdsRefTemp,
                    'select to_char(a.DEPARTMENT_TYPE_CODE) id, '+
                    ' a. DEPARTMENT_TYPE_CODE||'') ''||a. DEPARTMENT_TYPE_name name '+
                    ' from ss_ok_department_type a where'+
                    ' a.state_notes=''A'' '+
                    ' order by a.department_type_code',True);

          cdsRefTemp.Edit;
        End;

        If (Sender = CBDepType) or (Sender = edDepType)
        or (Sender = CBDepTypenew) or (Sender = edDepTypenew)
        Then
        With TSelectDialog.CreateEx(Self, cdsRefTemp, cdsRefTemp, cdsRefTemp.FindField('id').Index) do
        Try
          If ShowModal = mrOk
          Then begin

            if (Sender = edDepType) or (Sender = CBDepType)
            Then begin
              edDepType.text:= cdsRefTemp.FieldByName('id').AsString;
              edDepTypeChange(Sender);
            end;

            If (Sender = edDepTypeNew) or (Sender = CBDepTypeNew)
            Then begin
              edDepTypeNew.text:= cdsRefTemp.FieldByName('id').AsString;
              edDepTypeNewChange(Sender);
            End;

          End;
        Finally
                    Destination.Filtered:=false;
                    Free;
        End;
//
      end;
  End;

end;

procedure TBOKRefForm.edDepTypeChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  is_found := false;

  for i:=1 to CBDepType.Items.Count
  do begin

    if edDepType.text = TData(CBDepType.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CBDepType.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CBDepType.ItemIndex := -1;
  end;

end;

procedure TBOKRefForm.edDepTypeNEWChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  is_found := false;

  for i:=1 to CBDepTypeNEW.Items.Count
  do begin

    if edDepTypeNEW.text = TData(CBDepTypeNEW.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CBDepTypeNEW.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CBDepTypeNEW.ItemIndex := -1;
  end;

end;

procedure TBOKRefForm.ActDeactivDepExecute(Sender: TObject);
var sql_:string;
    ErMessage : string;
  Save_Cursor:TCursor;
const
  ERROR_NO = 'ORA-20000: ';
begin
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(4372)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin

//
// showmessage( inttostr(Integer(TreeV.Selected.data)) );
  if Integer(TreeV.Selected.data)=0
  then begin
    showmessage('Нельзя Деактивировать отдел '+TreeV.Selected.text);
    exit;
  end;

  If Application.MessageBox(PChar('ВЫ УВЕРЕНЫ,'+#13+
    ' что хотите Деактивировать отдел '+TreeV.Selected.text+' ?'+#13+
    ' '), PChar('ПРЕДУПРЕЖДЕНИЕ!'), MB_YESNO or MB_ICONQUESTION) = mrYes
  Then Begin
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
                                   // час стекла - песочные часы
   TRY
    { Do some lengthy operation }
    cdsDerevo.Locate('id', Integer(TreeV.Selected.data), []);

    sql_ := 'update ss_ok_department'+
            ' set state_notes=:p_1'+
            ' where department_code=:p_2';

    try
      ExecSQLpar(sql_,'P',cdsDerevo.FieldByname('department_code').AsString);
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
          Else ShowMessage(E.Message);
        exit;
      End;
    end;

    TreeV.Selected.Delete;
    edDepartmentcode.text  := '';
    edDepartmentName.text:= '';
    edDEPARTMENTNUM.text := '';
    cbDepType.ItemIndex := -1;
    cdsDerevo.Refresh;
   FINALLY
     Screen.Cursor := Save_Cursor;  { Always restore to normal }
   END;

    actSSOKDepartmentExecute(nil);
    TreeV.FullExpand;
    showmessage('Отдел Деактивирован.');

  End;

 end;

end;

procedure TBOKRefForm.actUnAssignHighDepExecute(Sender: TObject);
var sql_:string;
// is_bad : boolean;
    ErMessage : string;
 dep_code: String;
 dep_name: String;
// YesOrNo : boolean;
  ParentNode0, ParentNode1, ParentNode2, ParentNode3, ParentNode4, ParentNode5: TTreeNode;
  i : integer;
//  D : tdata;
  curnode:integer;
const
  ERROR_NO = 'ORA-20000: ';
begin
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(4453)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin

  If Application.MessageBox(PChar('Вы хотите,'+#13+
    ' Отделить отдел '+TreeV.Selected.text+' ?'+#13+
    ' '), PChar('ВОПРОС'), MB_YESNO or MB_ICONQUESTION) = mrYes
  Then Begin

   cdsDerevo.Locate('id', Integer(TreeV.Selected.data), []);

  dep_code :=cdsDerevo.FieldByName('department_code').AsString;
  dep_name :=cdsDerevo.FieldByName('department_name').AsString;



  sql_ := 'update ss_ok_department'+
            ' set high_dep_code=NULL'+
            ' where department_code=' +  dep_code  ;
  try
          ExecSQL(sql_);
          ExecSQL('COMMIT');
  except
    on E: Exception do
    Begin
          ExecSQL('ROLLBACK');
          If Pos(ERROR_NO, E.Message) <> 0
          Then Begin
            erMessage := Copy(E.Message, Pos(ERROR_NO, E.Message) + Length(ERROR_NO), Length(E.Message));
            erMessage := Copy(erMessage, 1, Pos(#10, erMessage) - 1);
            E.Message := StringReplace(E.Message, #13, '', [rfReplaceAll]);
            E.Message := StringReplace(E.Message, #10, #13#10, [rfReplaceAll]);
            ShowErrorBox(erMessage,E.Message,Self.Caption);
          End Else begin
            ShowMessage(E.Message);
          End;
          exit;
    End;
  end;
///////////////
  try
    sql_:=SQL_Derevo+
        ' where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null'; //+
//        ' order by d.department_code';
    loaddata( cdsDerevo, sql_);


  except
    showmessage(sql_);
  end;

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
/////////////////
{
  q:=1;
      n_TreeNode := TreeV.Items.AddChildObject(
        ParentNode0,
        'краказяба',
        Pointer(q) );
      n_TreeNode.ImageIndex := 1;
      n_TreeNode.SelectedIndex := 1;
    showmessage('q=1 >> '+  inttostr( integer(n_TreeNode.Data) ) );

  q:=2;
    showmessage('q=2 >> '+  inttostr( integer(n_TreeNode.Data) ) );
n_TreeNode.Data не изменился !!!!!
}
///////////////
//  reps := TClientDataSetEx.create(self);

// ветки дерева BEGIN
  ParentNode1 :=ParentNode0;
  ParentNode2 :=ParentNode0;
  ParentNode3 :=ParentNode0;
  ParentNode4 :=ParentNode0;
  ParentNode5 :=ParentNode0;

  cdsDerevo.first;
  curnode:=1;

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
      curnode:=1;
     end;

    if cdsDerevo.FieldbyName('level').AsString='2'
    then begin
      ParentNode2 := TreeV.Items.AddChildObject(
        ParentNode1,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode2.ImageIndex := 1;
      ParentNode2.SelectedIndex := 1;
      curnode:=2;
    end;

    if cdsDerevo.FieldbyName('level').AsString='3'
    then begin
      ParentNode3 := TreeV.Items.AddChildObject(
        ParentNode2,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode3.ImageIndex := 1;
      ParentNode3.SelectedIndex := 1;
      curnode:=3;
    end;

    if cdsDerevo.FieldbyName('level').AsString='4'
    then begin
      ParentNode4 := TreeV.Items.AddChildObject(
        ParentNode3,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode4.ImageIndex := 1;
      ParentNode4.SelectedIndex := 1;
      curnode:=4;
    end;

    if cdsDerevo.FieldbyName('level').AsString='5'
    then begin
      ParentNode5 := TreeV.Items.AddChildObject(
        ParentNode4,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode5.ImageIndex := 1;
      ParentNode5.SelectedIndex := 1;
      curnode:=5;
    end;

//except
//showmessage('*5');
//end;
//////////
//    if cdsDerevo.FieldbyName('department_code').AsString=high_dep_code
    if cdsDerevo.FieldbyName('department_code').AsString=dep_code
    then begin
      ParentNode0.expand(false);
      if curnode>1
      then ParentNode1.expand(false);
      if curnode>2
      then ParentNode2.expand(false);
      if curnode>3
      then ParentNode3.expand(false);
      if curnode>4
      then ParentNode4.expand(false);
      if curnode>5
      then ParentNode5.expand(false);
    end;
//////////

    cdsDerevo.Next;
  end;

// ветки дерева END

// здесь растет дерево END
//  TreeV.FullExpand;
///////////////

    showmessage('Выполнено действие: подразделение '+#13+dep_code+') '+dep_name+
        ' отделено');
  END;

 end;

end;

procedure TBOKRefForm.actActivDepExecute(Sender: TObject);
var sql_:string;
// is_bad : boolean;
    ErMessage : string;
 dep_code, dep_name : String;
 YesOrNo : boolean;
  ParentNode0, ParentNode1, ParentNode2, ParentNode3, ParentNode4, ParentNode5: TTreeNode;
  i : integer;
//  D : tdata;
  curnode:integer;
  Save_Cursor:TCursor;
const
  ERROR_NO = 'ORA-20000: ';
begin
// будет выдан список неактивных отделов, только одного надо активировать
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(4664)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin

  LoadData(cdsRefTemp,
                    'select to_char(a.DEPARTMENT_CODE) id, '+
                    ' a.DEPARTMENT_name name '+
                    ' from ss_ok_department a '+
                    ' where a.state_notes<>''A'' '+
                    ' and a.level_department_code='+FiltrLevel+
                    ' order by a.department_code',True);
  cdsRefTemp.Edit;

  With TSelectDialog.CreateEx(Self, cdsRefTemp, cdsRefTemp, cdsRefTemp.FindField('id').Index)
  do
  Try

    If ShowModal = mrOk
    Then begin
     Save_Cursor := Screen.Cursor;
     Screen.Cursor := crHourGlass;    { Show hourglass cursor }
                                   // час стекла - песочные часы
     TRY
     { Do some lengthy operation }
      YesOrNo:=true;
      dep_code :=cdsRefTemp.FieldByName('id').AsString;
      dep_name :=cdsRefTemp.FieldByName('name').AsString;

        sql_ := 'update ss_ok_department'+
            ' set state_notes=''A'' '+
            ' where department_code=' +  dep_code  ;
//showmessage(sql_);
        try
          ExecSQL(sql_);
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
          Else ShowMessage(E.Message);
        exit;
      End;
    end;


    FINALLY
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    END;

    End else begin
      YesOrNo:= false;
    End;

  Finally
                    Destination.Filtered:=false;
                    Free;
  End;

///////////////
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
                                   // час стекла - песочные часы
 TRY
 { Do some lengthy operation }
 try
  sql_:=SQL_Derevo+
        ' where d.level_department_code='+FiltrLevel+
        ' and state_notes=''A'' '+
        ' connect by d.high_dep_code = prior d.department_code'+
        ' start with d.high_dep_code is null'; //+
//        ' order by d.department_code';
  loaddata( cdsDerevo, sql_);


 except
   showmessage(sql_);
 end;

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
/////////////////
{
  q:=1;
      n_TreeNode := TreeV.Items.AddChildObject(
        ParentNode0,
        'краказяба',
        Pointer(q) );
      n_TreeNode.ImageIndex := 1;
      n_TreeNode.SelectedIndex := 1;
    showmessage('q=1 >> '+  inttostr( integer(n_TreeNode.Data) ) );

  q:=2;
    showmessage('q=2 >> '+  inttostr( integer(n_TreeNode.Data) ) );
n_TreeNode.Data не изменился !!!!!
}
///////////////
//  reps := TClientDataSetEx.create(self);

// ветки дерева BEGIN
  ParentNode1 :=ParentNode0;
  ParentNode2 :=ParentNode0;
  ParentNode3 :=ParentNode0;
  ParentNode4 :=ParentNode0;
  ParentNode5 :=ParentNode0;

  cdsDerevo.first;
  curnode:=1;

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
      curnode:=1;
     end;

    if cdsDerevo.FieldbyName('level').AsString='2'
    then begin
      ParentNode2 := TreeV.Items.AddChildObject(
        ParentNode1,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode2.ImageIndex := 1;
      ParentNode2.SelectedIndex := 1;
      curnode:=2;
    end;

    if cdsDerevo.FieldbyName('level').AsString='3'
    then begin
      ParentNode3 := TreeV.Items.AddChildObject(
        ParentNode2,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode3.ImageIndex := 1;
      ParentNode3.SelectedIndex := 1;
      curnode:=3;
    end;

    if cdsDerevo.FieldbyName('level').AsString='4'
    then begin
      ParentNode4 := TreeV.Items.AddChildObject(
        ParentNode3,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode4.ImageIndex := 1;
      ParentNode4.SelectedIndex := 1;
      curnode:=4;
    end;

    if cdsDerevo.FieldbyName('level').AsString='5'
    then begin
      ParentNode5 := TreeV.Items.AddChildObject(
        ParentNode4,
        cdsDerevo.FieldbyName('name_').AsString,
        Pointer( cdsDerevo.FieldbyName('id').AsInteger));
      ParentNode5.ImageIndex := 1;
      ParentNode5.SelectedIndex := 1;
      curnode:=5;
    end;

//except
//showmessage('*5');
//end;
//////////
//    if cdsDerevo.FieldbyName('department_code').AsString=high_dep_code
    if cdsDerevo.FieldbyName('department_code').AsString=dep_code
    then begin
      ParentNode0.expand(false);
      if curnode>1
      then ParentNode1.expand(false);
      if curnode>2
      then ParentNode2.expand(false);
      if curnode>3
      then ParentNode3.expand(false);
      if curnode>4
      then ParentNode4.expand(false);
      if curnode>5
      then ParentNode5.expand(false);
    end;
//////////

    cdsDerevo.Next;
  end;

// ветки дерева END

// здесь растет дерево END
//  TreeV.FullExpand;
///////////////
   FINALLY
     Screen.Cursor := Save_Cursor;  { Always restore to normal }
   END;

  if YesOrNo
  then begin
    showmessage('Выполнено действие: подразделение '+#13+dep_code+') '+dep_name+
        ' активизировано');
  end;
 end;
 
end;

procedure TBOKRefForm.actSSOKSpecialExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( special_code) from ss_ok_special ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKspecial;
  If cdsSSOKspecial_SET.Active Then Exit;
  cdsSSOKspecial_SET.DisableControls;
  LOADDATA(cdsSSOKspecial_SET,      SQL_SSOKspecial_SET);
  cdsSSOKspecial_SET.EnableControls;
  
end;

procedure TBOKRefForm.actSSOKSpecialViewExecute(Sender: TObject);
begin
  actSSOKSpecialExecute(Sender);
  GetRef(cdbgSSOKSpecial);
end;

procedure TBOKRefForm.dsSSOKSpecial_SETStateChange(Sender: TObject);
begin
  cdbgSSOKSpecial.Columns[1].Readonly:= not (cdsSSOKspecial_SET.State = dsInsert);

end;

procedure TBOKRefForm.actSSOKarmygroupExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( army_group_code) from ss_ok_army_group ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKarmygroup;
  If cdsSSOKarmygroup.Active Then Exit;
  cdsSSOKarmygroup.DisableControls;
  LOADDATA(CDSSSOKarmygroup,      SQL_SSOKarmygroup);
  cdsSSOKarmygroup.EnableControls;

end;

procedure TBOKRefForm.actSSOKCATEGORYARMYExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( cATEGORY_ARMY_code) from ss_ok_cATEGORY_ARMY ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKcATEGORYARMY;
  If cdsSSOKcATEGORYARMY.Active Then Exit;
  cdsSSOKcATEGORYARMY.DisableControls;
  LOADDATA(CDSSSOKcATEGORYARMY,      SQL_SSOKcATEGORYARMY);
  cdsSSOKcATEGORYARMY.EnableControls;

end;

procedure TBOKRefForm.actSSOKMILITARYRANKExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( MILITARY_RANK_code) from ss_ok_MILITARY_RANK ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKMILITARYRANK;
  If cdsSSOKMILITARYRANK.Active Then Exit;
  cdsSSOKMILITARYRANK.DisableControls;
  LOADDATA(CDSSSOKMILITARYRANK,      SQL_SSOKMILITARYRANK);
  cdsSSOKMILITARYRANK.EnableControls;

end;

procedure TBOKRefForm.actSSOKSTAFFExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( STAFF_code) from ss_ok_STAFF ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKSTAFF;
  If cdsSSOKSTAFF.Active Then Exit;
  cdsSSOKSTAFF.DisableControls;
  LOADDATA(CDSSSOKSTAFF,      SQL_SSOKSTAFF);
  cdsSSOKSTAFF.EnableControls;

end;

procedure TBOKRefForm.actSSOKTYPEFORCEExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select max( TYPE_FORCE_code) from ss_ok_TYPE_FORCE ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKTYPEFORCE;
  If cdsSSOKTYPEFORCE.Active Then Exit;
  cdsSSOKTYPEFORCE.DisableControls;
  LOADDATA(CDSSSOKTYPEFORCE,      SQL_SSOKTYPEFORCE);
  cdsSSOKTYPEFORCE.EnableControls;

end;

procedure TBOKRefForm.actSSOKarmygroupVIEWExecute(Sender: TObject);
begin
  actSSOKarmygroupExecute(Sender);
  GetRef(cdbgSSOKarmygroup);

end;

procedure TBOKRefForm.actSSOKCATEGORYARMYviewExecute(Sender: TObject);
begin
  actSSOKCATEGORYARMYExecute(Sender);
  GetRef(cdbgSSOKCATEGORYARMY);

end;

procedure TBOKRefForm.actSSOKMILITARYRANKviewExecute(Sender: TObject);
begin
  actSSOKMILITARYRANKExecute(Sender);
  GetRef(cdbgSSOKMILITARYRANK);

end;

procedure TBOKRefForm.actSSOKSTAFFviewExecute(Sender: TObject);
begin
  actSSOKSTAFFExecute(Sender);
  GetRef(cdbgSSOKSTAFF);

end;

procedure TBOKRefForm.actSSOKTYPEFORCEviewExecute(Sender: TObject);
begin
  actSSOKTYPEFORCEExecute(Sender);
  GetRef(cdbgSSOKTYPEFORCE);

end;

procedure TBOKRefForm.actFindDepExecute(Sender: TObject);
var
  d_is_found: boolean;
  i : integer;
begin
//
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(5057)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin
{
  if TreeV.FindNextToSelect <> nil
  then begin
    TreeV.selected:=TreeV.FindNextToSelect;
  end else begin
showmessage('nil');
  end;
}
  TreeV.FullCollapse;
  cdsDerevo.first;
  if TreeV.Items.Count>0
  then begin
    TreeV.Items.Item[1].Selected := true;
  end;
//  cdsDerevo.next;
//  TreeV.Items.Item[0].Selected := false;
//  TreeV.SetFocus;

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
  then showmessage('Не найдено отдела, для которого'+#13+
    'код отдела '+edDepartmentcodeNew.Text+#13+
    'или наименование отдела '+edDepartmentNameNew.Text+#13+
    'или номер отдела '+edDEPARTMENTNUMnew.TEXT +#13 );

 end;
 
end;

procedure TBOKRefForm.actSSOKNCIviewExecute(Sender: TObject);
begin
  GetRef(cdbgSSOKnci);

end;

procedure TBOKRefForm.actSSOKnciExecute(Sender: TObject);
var j : integer;
   d_s: tdatas;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_nci ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKnci;
  If cdsSSOKnci.Active Then Exit;
  cdsSSOKnci.DisableControls;
  LOADDATA(CDSSSOKnci,      SQL_SSOKnci);
  cdsSSOKnci.EnableControls;

  LoadData(cdsRefTemp,
    'select a.nci_id id, '+
    ' a.nci_id||'') ''||a.ss_name name, '+ // a.NCI_ID, a.SS_NAME, 
    ' a.NCI_TBL_NAME, a.NCI_ID_NAME, a.NCI_NAME,'+
    ' a.SS_OK_TBL_NAME, a.SS_OK_ID_NAME, a.SS_OK_NAME'+
    ' from ss_ok a order by a.nci_id',True);

  cb_s.clear;

  cdsRefTemp.first;

  while not cdsRefTemp.Eof do
  begin
      D_S := TDataS.Create;
      with D_S do
      begin
        Id := cdsRefTemp.FieldByName('id').AsString;
        Name := cdsRefTemp.FieldByName('name').AsString;
        NCI_TBL_NAME := cdsRefTemp.FieldByName('NCI_TBL_NAME').AsString;
        NCI_ID_NAME := cdsRefTemp.FieldByName('NCI_ID_NAME').AsString;
        NCI_NAME := cdsRefTemp.FieldByName('NCI_NAME').AsString;
        SS_OK_TBL_NAME := cdsRefTemp.FieldByName('SS_OK_TBL_NAME').AsString;
        SS_OK_ID_NAME := cdsRefTemp.FieldByName('SS_OK_ID_NAME').AsString;
        SS_OK_NAME := cdsRefTemp.FieldByName('SS_OK_NAME').AsString;
      end;
      cb_s.Items.AddObject(cdsRefTemp.FieldByName('name').AsString, D_S);
      cdsRefTemp.Next;
  end;


end;

procedure TBOKRefForm.BitBtn9Click(Sender: TObject);
begin

  cdsSSOKnci.Insert;
  cdsSSOKnci.fieldbyname('nci_id').asstring:=
     TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).Id;

  cdsSSOKnci.fieldbyname('s_id').asstring:=
     TData(CB_S_new.Items.Objects[CB_S_new.ItemIndex]).Id;
  cdsSSOKnci.fieldbyname('ok_id').asstring:=
     TData(CB_ok_new.Items.Objects[CB_ok_new.ItemIndex]).Id;
  cdsSSOKnci.Post;

end;

procedure TBOKRefForm.BitBtn10Click(Sender: TObject);
begin

  cdsSSOKnci.Delete;
//  cdsSSOKnci.Post;

end;

procedure TBOKRefForm.BitBtn8Click(Sender: TObject);
begin

  cdsSSOKnci.Post;

end;

procedure TBOKRefForm.BitBtn11Click(Sender: TObject);
begin

  cdsSSOKnci.Cancel;

end;

procedure TBOKRefForm.cb_SChange(Sender: TObject);
var j : integer;
 sql_, where_s : string;
 d:tdata;
begin

  if (CB_s.ItemIndex<>-1)
  then
    ed_s.text := TData(CB_s.Items.Objects[CB_s.ItemIndex]).Id;

// DBLCB_OK.KeyField наименование поля ид
// DBLCB_OK.ListField наименование поля наме

// DBLCB_S.KeyField наименование поля ид
// DBLCB_S.ListField наименование поля наме

  where_s := ' where nci_id='+
     TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).Id;

  j:=0;
  try
    sql_:='select count(*) from ss_ok_nci '+where_s;
    j:=GetSqlResult(sql_);
  except
    showmessage(sql_);
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  cdsSSOKnci.DisableControls;
  try
    sql_:=SQL_SSOKnci+where_s+' order by s_id';
    LOADDATA(CDSSSOKnci, sql_     );
  except
    showmessage(sql_);
  end;
  cdsSSOKnci.EnableControls;

// NCI_ID, SS_NAME, NCI_TBL_NAME, NCI_ID_NAME, NCI_NAME, SS_OK_TBL_NAME, SS_OK_ID_NAME, SS_OK_NAME
  CDS_OK.Close;
  DBLCB_OK.KeyField  := TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_ID_NAME;
  DBLCB_OK.ListField := TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_NAME;
//showmessage(DBLCB_OK.ListField);
  try

    if TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).Id='79'
    then begin
      sql_:='select post_code,post_name||'' (''||decode(level_department_code,1,''Р-си'',2,''В-ти'',3,''Т-ни'',''---'')||'')'' post_name from '+TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_TBL_NAME+
        ' order by '+TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_ID_NAME;
    end else begin
      sql_:='select * from '+TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_TBL_NAME+
        ' order by '+TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_ID_NAME;
    end;

  except
    showmessage(sql_);
  end;
  LOADDATA(CDS_OK, sql_);

  CDS_S.Close;
  DBLCB_S.KeyField  := TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_ID_NAME;
  DBLCB_S.ListField := TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_NAME;
  try

    if TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).Id='79'
    then begin
      sql_:= 'select dolj_id,dolj_name||'' (''||decode(urov_id,0,''Р-си'',1,''В-ти'',2,''Т-ни'',''---'')||'')'' dolj_name from '+TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_TBL_NAME+
        ' order by '+TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_ID_NAME;
    end else begin
      sql_:= 'select * from '+TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_TBL_NAME+
        ' order by '+TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_ID_NAME;
    end;

  except
    showmessage(sql_);
  end;
//showmessage(sql_);
  LOADDATA(CDS_S, sql_ );


  cb_ok_new.clear;

  cds_ok.First;

  while not cds_ok.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := cds_ok.FieldByName( TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_ID_NAME ).AsString;
        Name := cds_ok.FieldByName( TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_NAME ).AsString;
      end;
      cb_ok_new.Items.AddObject(
        cds_ok.FieldByName( TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_ID_NAME ).AsString+
        ') '+cds_ok.FieldByName( TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_NAME ).AsString
        , D);
      cds_ok.Next;
  end;

  cb_s_new.clear;

  CDS_S.First;
  
  while not cds_s.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := cds_s.FieldByName( TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_ID_NAME ).AsString;
        Name := cds_s.FieldByName( TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_NAME ).AsString;
      end;
      cb_s_new.Items.AddObject(
        cds_s.FieldByName( TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_ID_NAME ).AsString+
        ') '+cds_s.FieldByName( TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_NAME ).AsString
        , D);
      cds_s.Next;
  end;



  CDSSSOKnci.Close;

  addLookUpField(CDSSSOKnci, cds_S,
                's_id_show', 's_id',
                 TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_ID_NAME ,
                 TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).NCI_NAME ,
                True);

  addLookUpField(CDSSSOKnci, cds_OK,
                'ok_id_show', 'ok_id',
                 TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_ID_NAME ,
                 TDataS(CB_S.Items.Objects[CB_S.ItemIndex]).SS_OK_NAME,
                False);

  CDSSSOKnci.Open;
  CDSSSOKnci.EnableControls;



end;

procedure TBOKRefForm.ed_SChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  is_found := false;

  for i:=1 to CB_S.Items.Count
  do begin

    if ed_S.text = TData(CB_S.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CB_S.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CB_S.ItemIndex := -1;
  end;

end;

procedure TBOKRefForm.ed_S_newChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  is_found := false;

  for i:=1 to CB_S_new.Items.Count
  do begin

    if ed_S_new.text = TData(CB_S_new.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CB_S_new.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CB_S_new.ItemIndex := -1;
  end;

end;

procedure TBOKRefForm.ed_OK_newChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  is_found := false;

  for i:=1 to CB_OK_new.Items.Count
  do begin

    if ed_OK_new.text = TData(CB_OK_new.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CB_OK_new.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    cb_OK_new.ItemIndex := -1;
  end;

end;

procedure TBOKRefForm.cb_S_newChange(Sender: TObject);
begin
  if (CB_s_new.ItemIndex<>-1)
  then
    ed_s_new.text := TData(CB_s_new.Items.Objects[CB_s_new.ItemIndex]).Id;

end;

procedure TBOKRefForm.cb_OK_newChange(Sender: TObject);
begin
  if (CB_ok_new.ItemIndex<>-1)
  then
    ed_ok_new.text := TData(CB_ok_new.Items.Objects[CB_ok_new.ItemIndex]).Id;

end;

procedure TBOKRefForm.actSSOKhospitalExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_hospital ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKHospital;
  If cdsSSOKHospital_SET.Active Then Exit;
  cdsSSOKHospital_SET.DisableControls;
  LOADDATA(CDSSSOKHospital_SET,      SQL_SSOKHospital_SET);
//  cdsSSOKLanguage_SET.IndexFieldNames := 'language_id';
  cdsSSOKHospital_SET.EnableControls;

end;

procedure TBOKRefForm.actSSOKhospitalVIEWExecute(Sender: TObject);
begin
  actSSOKhospitalExecute(nil);
  GetRef(cdbgSSOKhospital);
end;

procedure TBOKRefForm.actSSOKcategoryViewExecute(Sender: TObject);
begin
  if cdbgSSOKmin_zp.Focused
  then begin
    GetRef(cdbgSSOKmin_zp);
  end else begin
    actSSOKcategoryExecute(nil);
    GetRef(cdbgSSOKcategory);
  end;

end;

procedure TBOKRefForm.actSSOKcategoryExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_category ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKcategory;
  If cdsSSOKcategory_SET.Active Then Exit;
  cdsSSOKcategory_SET.DisableControls;
  LOADDATA(CDSSSOKcategory_SET,      SQL_SSOKcategory_SET);
  cdsSSOKcategory_SET.EnableControls;

  cdsSSokMinZP_SET.DisableControls;
  loaddata(cdsSSokMinZP_SET,sql_SSokMinZP_SET);
  cdsSSokMinZP_SET.EnableControls;

  if edCategoryFiltr.Text='' then edCategoryFiltr.Text:='1';
   
end;

procedure TBOKRefForm.bbCalcCategoryClick(Sender: TObject);
var sql_: string;
  salary_0:Double;
begin
  salary_0:=getsqlresult('select salary from ss_ok_category '+
      ' where category_name=''0''');
//cdsSSOKcategory_Set.FieldByName('salary').asstring
  If Application.MessageBox(PChar('Вы уверены?,'+#13+
    ' Ставка нулевого разряда '+floattostr(salary_0)+#13+
    ' '), PChar('ПРЕДУПРЕЖДЕНИЕ!'), MB_YESNO or MB_ICONQUESTION) = mrYes
  Then Begin
    if ( (HeadBranch_='09049') or (HeadBranch_='00974') )
    then begin
   // капитал банк
      sql_:='update ss_ok_category set '+
      ' salary=round(category_rate*'+floattostr(salary_0)+'),EMP_CODE='+userid+','+
      ' INS_DATE=sysdate'+
      ' where category_name<>''0'' ';
      ExecSql(sql_);
      sql_:='update ss_ok_category set '+
      ' salary=round(salary),EMP_CODE='+userid+','+
      ' INS_DATE=sysdate'+
      ' where category_name=''0'' ';
    end else begin
      sql_:='update ss_ok_category set '+
      ' salary=round(category_rate*'+floattostr(salary_0)+',2),EMP_CODE='+userid+','+
      ' INS_DATE=sysdate'+
      ' where category_name<>''0'' ';
    end;

    try
      ExecSql(sql_);
      ExecSql('commit');
    except on e:exception
      do begin
        execsql('rollback');
        showmessage(sql_+#13+e.Message);
      end;
    end;
  End Else Begin
    execsql('rollback');
  End;
  cdsSSOKcategory_Set.Refresh;

end;

procedure TBOKRefForm.BitBtn14Click(Sender: TObject);
var
  App,WorkBook: Variant; // sell,   ,Sheet
//  IntRezult,j,i:integer; // 
  s:String; // , rez, col,sell_address
   ccol, cc :integer; // llin, ,ll
  tabno_ : string; // ,gender
  name_,name1, mfo_code,s_region_, s_distr_ , educ_,nation_: string;
begin
  Memo1.Clear;
  App := CreateOLEObject('Excel.Application');
   WorkBook:=App.Workbooks.Open('C:\file.xls');
   App.Visible := false;
//   IntRezult:=-1;

   memo1.lines.add('spool c:\err.txt;');
   memo1.lines.add('alter table OK_PERSONAL drop constraint OK_PERSONAL_CHK_CODE;');
   memo1.lines.add('alter table OK_PERSONAL disable constraint OK_PERSONAL_UK;');
   cc:= 1079;
//   ll:= 52;
   for ccol:=4 to cc
   do begin
     s:='insert into ok_personal(personal_code,id,REG_TYPE_CODE,FAMILY_STATUS_CODE,emp_code,INS_DATE,'+
       'status_code,nn,branch,tabno,FAMILY,FIRST_NAME,PATRONYMIC,'+
       'NOTICE,PASS_SERIYA, PASS_NUM,PASS_REG,PASS_DATE,BIRTHDAY,bank_spec,'+
       'Education_Title_CODE,Nationality_code,GENDER_CODE,region_id,distr,'+
       'HOME_ADDRESSFACT,TELEFON,'+
       'profmember) values (seq_ok_personal.nextval,0,0,0,99,sysdate,';
     if vartostr(App.Cells[ccol,6].Value)='0'
     then s:=s+'4,'
     else s:=s+'1,';
     s:=s+inttostr(19-strtoint(vartostr(App.Cells[ccol,12].Value)))+', ';
// мфо из списка
    mfo_code :=vartostr(App.Cells[ccol,6].Value);
    if (mfo_code='0') or (mfo_code='1') or (mfo_code='2') then mfo_code:='00974';
    if mfo_code='3' then mfo_code:='00445';
    if mfo_code='4' then mfo_code:='01018';
    if mfo_code='5' then mfo_code:='01033';
    if mfo_code='6' then mfo_code:='01042';
    if mfo_code='7' then mfo_code:='01043';
    if mfo_code='8' then mfo_code:='01032';
     s:=s+''''+mfo_code+''', ';
     tabno_:= vartostr(App.Cells[ccol,10].Value);
     if tabno_='' then tabno_:='0';
     s:=s+''''+tabno_+''', ';
// фио разделить на FAMILY,FIRST_NAME,PATRONYMIC
     name_:= vartostr(App.Cells[ccol,13].Value)+' ';
     name1:=copy(name_,1,pos(' ',name_));
     s:=s+''''+copy(name1,1,length(name1)-1)+''', ';

     name_:=copy(name_,pos(' ',name_)+1,length(name_));
     name1:=copy(name_,1,pos(' ',name_));
     s:=s+''''+copy(name1,1,length(name1)-1)+''', ';

     name_:=copy(name_,pos(' ',name_)+1,length(name_));
     s:=s+''''+copy(name_,1,length(name_)-1)+''', ';

     s:=s+''''+vartostr(App.Cells[ccol,14].Value)+''', ';
     s:=s+''''+vartostr(App.Cells[ccol,16].Value)+''', ';
     s:=s+''''+vartostr(App.Cells[ccol,17].Value)+''', ';
     s:=s+''''+vartostr(App.Cells[ccol,18].Value)+''', ';

     s:=s+'to_date('''+vartostr(App.Cells[ccol,19].Value)+''',''dd.mm.yyyy''), ';
     s:=s+'to_date('''+vartostr(App.Cells[ccol,20].Value)+''',''dd.mm.yyyy''), ';
//     s:=s+vartostr(App.Cells[ccol,24].Value)+', ';
     if pos (vartostr(App.Cells[ccol,24].Value),'э')>0
     then s:=s+'1, '
     else s:=s+'null, ';
//*образование -справочник
     educ_:= vartostr(App.Cells[ccol,25].Value);
     if (uppercase(educ_)='ВЫСШЕЕ')
     then educ_:='1';
     if (uppercase(educ_)=uppercase('Средне-специальное'))
     then educ_:='2';
     if (uppercase(educ_)=uppercase('Среднее-специальное'))
     then educ_:='2';
     if (uppercase(educ_)=uppercase('среднее'))
     then educ_:='3';
     if pos(uppercase('бакалавр'),uppercase(educ_))>0
     then educ_:='4';
     if pos(uppercase('магистр'), uppercase(educ_))>0
     then educ_:='5';
     if educ_= vartostr(App.Cells[ccol,25].Value)
     then educ_:='null';
     s:=s+educ_+', ';

//*национальность -справочник
     nation_:=vartostr(App.Cells[ccol,36].Value);
     if nation_='азербайджанин'
     then nation_:='10';
     if nation_='армянин'
     then nation_:='13';
     if nation_='башкир'
     then nation_:='0';
     if nation_='беларус'
     then nation_:='17';
     if nation_='грек'
     then nation_:='0';
     if nation_='еврей'
     then nation_:='14';
     if (nation_='казах') or (nation_='козок')
     then nation_:='7';
     if nation_='каракалпак'
     then nation_:='6';
     if nation_='киргиз'
     then nation_:='9';
     if nation_='китаец'
     then nation_:='19';
     if nation_='кореец'
     then nation_:='5';

     if (nation_='крымская татарка') or (nation_='крымский татарин')
     then nation_:='0';

     if nation_='мариец'
     then nation_:='0';
     if nation_='мордвин'
     then nation_:='0';
     if nation_='немка'
     then nation_:='21';
     if nation_='поляк'
     then nation_:='0';

     if (nation_='русская') or (nation_='русский')
     then nation_:='2';
     if nation_='таджик'
     then nation_:='3';
     if nation_='татарин'
     then nation_:='4';
     if nation_='узбек'
     then nation_:='1';
     if nation_='уйгур'
     then nation_:='11';
     if nation_='украинец'
     then nation_:='12';

     if nation_ =vartostr(App.Cells[ccol,36].Value)
     then nation_:='1';
     s:=s+nation_+', ';


//     s:=s+vartostr(App.Cells[ccol,38].Value)+', ';   // gender
     if vartostr(App.Cells[ccol,38].Value)='ж'
     then s:=s+'2, '
     else s:=s+'1, ';
// region_id - s_region
     s_region_ :=vartostr(App.Cells[ccol,47].Value);
     if s_region_='Ташкент' then s_region_:='26';
     if s_region_='Ташкентская' then s_region_:='27';
     if s_region_='' then s_region_:='';
     if s_region_='Бухара' then s_region_:='06';
     if s_region_='Коканд' then s_region_:='30';
     if s_region_='Маргилан' then s_region_:='30';
     if s_region_='Андижан' then s_region_:='30';
     if s_region_='Фергана' then s_region_:='30';
     if s_region_='Термез' then s_region_:='22';
     if s_region_='Нукус' then s_region_:='35';

     if s_region_ =vartostr(App.Cells[ccol,47].Value) then s_region_:='  ';
     s:=s+''''+s_region_+''', ';
// distr - s_distr
     s_distr_ := vartostr(App.Cells[ccol,48].Value);

     if s_distr_='Сабир Рахимовский' then s_distr_:='204';
     if s_distr_='Юнусабадский' then s_distr_:='200';
     if s_distr_='Мирабадский' then s_distr_:='202';
     if s_distr_='Мирзо Улугбекский' then s_distr_:='201';
     if s_distr_='Хамзинский' then s_distr_:='207';
     if s_distr_='Чиланзарский' then s_distr_:='208';
     if s_distr_='Сергелийский' then s_distr_:='205';
     if s_distr_='Яккасарайский' then s_distr_:='206';
     if s_distr_='Шайхонтохурский' then s_distr_:='203';
     if s_distr_='Учтепинский' then s_distr_:='198';
     if s_distr_='Бектемирский' then s_distr_:='199';

     if s_distr_ =vartostr(App.Cells[ccol,48].Value) then s_distr_:='   ';
     s:=s+''''+s_distr_+''', ';

     s:=s+''''+vartostr(App.Cells[ccol,49].Value)+' '', ';
     s:=s+''''+vartostr(App.Cells[ccol,50].Value)+vartostr(App.Cells[ccol,51].Value)+''', ';
     s:=s+'1);';
     Memo1.Lines.Add(s);
   end;   //1

   s:='update ok_personal set id=personal_code;';
   Memo1.Lines.Add(s);
   Memo1.Lines.Add('commit;');
   memo1.lines.add('alter table OK_PERSONAL disable constraint OK_PERSONAL_UK;');
   memo1.lines.add('spool off;');

  App.Visible:=true;
  App:=unassigned;
  memo1.lines.SaveToFile('C:\otkadr.sql');
{
5)nn номер? номер в отчете равен 19-разряд (разряд в 12 поле)
6)branch мфо 7) мфо для уволенных
10)tabno таб номер
13) ФИО через пробел
FAMILY,FIRST_NAME,PATRONYMIC
14) ok_personal.NOTICE
--15) дата увольнения???
16) серия PASS_SERIYA
17) номер паспорта  PASS_NUM
18)  кем выдан     PASS_REG
19)  когда выдан  PASS_DATE
20)  дата рождения (дд.мм.гггг) BIRTHDAY   vartostr(App.Cells[ccol,20].Value)
24) bank_spec э-да код "э"=1=да Наличие банковской специальности   тип образования (э, т, др)

25)  Образование  Сотрудника  ( Наименование )         Education_Title_CODE
36) национальность   Nationality_code
38) пол м=1 ж=2     GENDER_CODE
47) region_id
48) distr
49) HOME_ADDRESSFACT место жительства
50 и 51) TELEFON
profmember=1 профсоюз все ДА

(1,1)  (1,2)  (1,3)  (1,4)  (1,5) № (1,6) код отд-ия (1,7) подразделение (1,8) Департамент/отделение/управление (1,9) отдел/сектор (1,10) Табельный номер (1,11) должность (1,12) разряд (1,13) Ф.И.О. сотрудника (1,14) примечание (1,15) дата                    (увольнения, перехода)
(1,16) Cерия (1,17) номер (1,18) кем выдан (1,19) когда выдан (1,20) дата рождения (дд.мм.гг)
(1,21)  с какого числа работает (1,22)
(1,23) аттестация в Центр.банке в 2009 г (дата прохождения)
(1,24) тип образования (э, т, др) (1,25) образование  (1,26) первое образование (1,27)  (1,28)  (1,29) второе образование (1,30)  (1,31)  (1,32) третье образование (1,33)  (1,34)  (1,35) Примечание к образованию  (1,36) национальность  (1,37) возраст (1,38) пол (1,39) пенсионеры, матери одиночки (1,40)  (1,41)  (1,42) коэффициентный тариф (1,43) надбавка  (1,44)  (1,45) банкосвкий стаж на 01.01.2009 (1,46)  (1,47) адрес проживания (1,48)  (1,49)  (1,50) телефон (1,51)  (1,52) дата окончан.испытат.срока

(2,1)  (2,2)  (2,3)  (2,4)  (2,5)  (2,6)  (2,7)  (2,8)  (2,9)  (2,10)  (2,11)  (2,12)  (2,13)  (2,14)  (2,15)
(2,16)  (2,17)  (2,18)  (2,19)  (2,20)
(2,21) в Капиталбанке (2,22) в филиале, ГО (2,23)  (2,24)  (2,25)
(2,26) наименование учебного заведения (2,27) дата обучения (с... по ...)
(2,28) специальность (2,29) наименование учебного заведения (2,30) дата обучения (с... по ...) (2,31) специальность (2,32) наименование учебного заведения (2,33) дата обучения (с... по ...) (2,34) специальность (2,35)  (2,36)  (2,37)  (2,38)  (2,39) код (2,40) наименование (2,41) дата (2,42)  (2,43) % (2,44) дата установления (2,45) лет (2,46) месяцев (2,47) город/область (2,48)  (2,49) улица, дом (2,50) домашний (2,51) сот (2,52)

(4,1)  (4,2)  (4,3) 12 (4,4) 8 (4,5) 26 (4,6) 0 (4,7) ГО
(4,8) Департамент по Работе с Персоналом (4,9) Отдел кадров
(4,10) 1159 (4,11) Специалист (4,12) 7 (4,13) Ашурова Дилноза Нуриддиновна
(4,14) перешёл в Сергели (4,15) 09.03.2009 (4,16) CB (4,17) 1555956
(4,18) ТОШКЕНТ ВИЛОЯТИ ЗАНГИОТА ТУМАНИ ИИБ (4,19) 30.04.2001 (4,20) 24.01.1985
(4,21) 03.12.2007 (4,22) 03.12.2007 (4,23)  (4,24) э
(4,25) Высшее-бакалавр (4,26)  Ташкентский Государственный Экономический Университет
(4,27) 2004-2008 (4,28) Экономика, информационные технологии (4,29)  (4,30)  (4,31)
(4,32)  (4,33)  (4,34)  (4,35)
(4,36) узбек (4,37) 23 (4,38) ж (4,39)  (4,40)  (4,41)  (4,42) 4.112 (4,43)  (4,44)
(4,45) 1 (4,46) 1 (4,47) Ташкент (4,48) Зангиатинский
(4,49) ул.А.Навои, д.6, кв.38 (4,50) 8-370-9753424 (4,51) 940-23-38 (4,52)

}
end;

procedure TBOKRefForm.N80Click(Sender: TObject);
begin
  PC.ActivePage := TabMessage;
end;

procedure TBOKRefForm.BitBtn15Click(Sender: TObject);
var SQLSQL_, sql1_, sql2_, sql3_, sql_: string;
begin

     sql1_:='update ss_ok_min_zp set '+
      ' category_zero_salary=round(salary*rate,2),EMP_CODE='+userid+','+
      ' INS_DATE=sysdate'+
      ' where date_open in (select max(date_open) from ss_ok_min_zp)';

    sql2_:='update ss_ok_min_zp set '+
      ' date_close=(select max(date_open) from ss_ok_min_zp),'+
      ' INS_DATE=sysdate,state_notes=''Z'' '+
      ' where date_open not in (select max(date_open) from ss_ok_min_zp)'+
      ' and date_close is null';

    sql_:='update ss_ok_category set '+
      ' salary=(select category_zero_salary from ss_ok_min_zp'+
      ' where date_open in (select max(date_open) from ss_ok_min_zp))';

    sql3_:='update ss_ok_min_zp set '+
      ' state_notes=''Z'' '+
      ' where date_close is not null and date_close<=sysdate';

    try
    SQLSQL_ :=  sql1_;
      ExecSql(sql1_);
    SQLSQL_ := sql2_;
      ExecSql(sql2_);
    SQLSQL_ :=  sql_;
      ExecSql(sql_);
    SQLSQL_ :=  sql3_;
      ExecSql(sql3_);
    bbCalcCategoryClick(nil);
    except on e:exception
      do begin
        execsql('rollback');
        showmessage(SQLSQL_+#13+e.Message
        );
      end;
    end;
//  End;



  cdsSSOKcategory_SET.Refresh;
  cdsSSokMinZP_SET.Refresh;

end;

procedure TBOKRefForm.actSSOKPrivilegeExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_privelege ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := TabSSOKprivilege;
  If cdsSSOKprivilege_SET.Active Then Exit;
  cdsSSOKprivilege_SET.DisableControls;
  LOADDATA(CDSSSOKprivilege_SET,      SQL_SSOKprivilege_SET);
  cdsSSOKprivilege_SET.EnableControls;


end;

procedure TBOKRefForm.actSSOKPrivilegeViewExecute(Sender: TObject);
begin
  actSSOKPrivilegeExecute(nil);
  GetRef(cdbgSSOKPrivilege);

end;

procedure TBOKRefForm.actSSOKkv_kursExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_kv_kurs ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  
  LOADDATA(cdsS_Str, 'select * from S_Str');

  PC.ActivePage := TabSSOKkv_kurs;
  If cdsSSOKkv_kurs_SET.Active Then Exit;
  cdsSSOKkv_kurs_SET.DisableControls;
  LOADDATA(CDSSSOKkv_kurs_SET,      SQL_SSOKkv_kurs_SET);
  CDSSSOKkv_kurs_SET.Close;

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

procedure TBOKRefForm.actSSOKkv_kursViewExecute(Sender: TObject);
begin
  actSSOKkv_kursExecute(nil);
  GetRef(cdbgSSOKkv_kurs);

end;

procedure TBOKRefForm.actss_ok_org_business_voyageExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_org_business_voyage ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := Tabss_ok_org_business_voyage;
  If cdsssok_org_business_voyage_SET.Active Then Exit;
  cdsssok_org_business_voyage_SET.DisableControls;
  LOADDATA(CDSssok_org_business_voyage_SET,      SQL_ss_ok_org_business_voyage_SET);
  cdsssok_org_business_voyage_SET.EnableControls;

end;

procedure TBOKRefForm.Actss_ok_theme_business_voyageExecute(
  Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_theme_business_voyage ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := Tabss_ok_theme_business_voyage;
  If cdsssok_theme_business_voyage_SET.Active Then Exit;
  cdsssok_theme_business_voyage_SET.DisableControls;
  LOADDATA(CDSssok_theme_business_voyage_SET,      SQL_ss_ok_theme_business_voyage_SET);
  cdsssok_theme_business_voyage_SET.EnableControls;

end;

procedure TBOKRefForm.Actss_ok_org_business_voyageViewExecute(
  Sender: TObject);
begin
  actss_ok_org_business_voyageExecute(nil);
  GetRef(cdbgssok_org_business_voyage);

end;

procedure TBOKRefForm.Actss_ok_theme_business_voyageViewExecute(
  Sender: TObject);
begin
  actss_ok_theme_business_voyageExecute(nil);
  GetRef(cdbgssok_theme_business_voyage);

end;

procedure TBOKRefForm.cdsSSokMinZP_SETBeforePost(DataSet: TDataSet);
var ErMessage : string;
begin
// предупреждение: ИСПОЛЬЗУЕТСЯ ДЛЯ МНОГИХ ДАТАСЕТОВ !!!
  if cdsSSokMinZP_SET.FieldByName('category_zero_salary').isnull
  then cdsSSokMinZP_SET.FieldByName('category_zero_salary').AsString:='0';
  if cdsSSokMinZP_SET.FieldByName('state_notes').isnull
  then cdsSSokMinZP_SET.FieldByName('state_notes').AsString:='A';

  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  if DataSet.Fields.FieldByName('state_notes').AsVariant<>'P'
  then DataSet.Fields.FieldByName('state_notes').AsVariant:='A';

  if DataSet.Fields[1].IsNull
  then ErMessage := 'Ошибка при сохранении.'+#13#10+'Укажите уникальный код записи.';


  if ErMessage <> '' then
  begin
    ShowMessage(ErMessage);
    TCLientDataSet(DataSet).UndoLastChange(True);
    Abort;
  end;

  if OldStateNotes = 'P' then
  begin
    ShowMessage('Предупреждение: эта запись неактивная, но для внесения изменений будет активизирована.');
    DataSet.Fields.FieldByName('state_notes').AsVariant := 'A';
    OldStateNotes := 'A';
  end;

end;

procedure TBOKRefForm.cdsSSokMinZP_SETAfterOpen(DataSet: TDataSet);
begin
  cdsSSokMinZP_SET.FieldByName('date_open').EditMask  := '!09/09/0099;1;_';
  cdsSSokMinZP_SET.FieldByName('date_close').EditMask  := '!09/09/0099;1;_';

end;

procedure TBOKRefForm.cdsSSOKhospital_setBeforePost(DataSet: TDataSet);
var ErMessage : string;
begin
// предупреждение: ИСПОЛЬЗУЕТСЯ ДЛЯ МНОГИХ ДАТАСЕТОВ !!!
  if DataSet.Fields.FieldByName('hospital_code').AsInteger<1001
  then begin
    showmessage('Введите значение системного кода больше 1000.');
    abort;
  end;
  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );
  if DataSet.Fields.FieldByName('state_notes').AsVariant<>'P'
  then DataSet.Fields.FieldByName('state_notes').AsVariant:='A';

  if DataSet.Fields[1].IsNull
  then ErMessage := 'Ошибка при сохранении.'+#13#10+'Укажите уникальный код записи.';


  if ErMessage <> '' then
  begin
    ShowMessage(ErMessage);
    TCLientDataSet(DataSet).UndoLastChange(True);
    Abort;
  end;

  if OldStateNotes = 'P' then
  begin
    ShowMessage('Предупреждение: эта запись неактивная, но для внесения изменений будет активизирована.');
    DataSet.Fields.FieldByName('state_notes').AsVariant := 'A';
    OldStateNotes := 'A';
  end;

end;

procedure TBOKRefForm.BitBtn12Click(Sender: TObject);
begin
  cdsSSokMinZP_SET.post;
end;

procedure TBOKRefForm.cdsSSOKkv_kurs_SETAfterOpen(DataSet: TDataSet);
begin
    cdsSSOKkv_kurs_SET.FieldByName('date_open').EditMask  := '!09/09/0099;1;_';
    cdsSSOKkv_kurs_SET.FieldByName('date_close').EditMask  := '!09/09/0099;1;_';
//    cdsSSOKkv_kurs_SET.FieldByName('order_date').EditMask  := '!09/09/0099;1;_';
    cdsSSOKkv_kurs_SET.FieldByName('order_date').EditMask  := '!09/09/0099;1';

end;

procedure TBOKRefForm.BitBtn16Click(Sender: TObject);
var sql_ ,oneline, table_name,field_list,FileName,isermes,from_niki: string; // s,
 k,i : integer; // i2,
 f: TextFile;
begin
  OpenDialog1.Options := [ofAllowMultiSelect, ofFileMustExist];
  OpenDialog1.Filter := 'Text files (*.txt)|*.txt|All files (*.*)|*.*';
  OpenDialog1.FilterIndex := 2; // start the dialog showing all files


  FileName:='C:\ok_personal.TXT';
  isermes:='';
             memo1.clear;
             memo2.clear;
 if OpenDialog1.Execute then
 begin
  with OpenDialog1.Files
  do
  for I := 0 to Count - 1
  do begin
//showmessage(Strings[I]+' >>>>>'+RightStr(Strings[I], 10) );
             from_niki:= ExtractFileName(Strings[I]);
             FileName:= Strings[I];
//showmessage(FileName+' >> '+from_niki);
//if i=3 then break;
//     memo1.Lines.Add(filename+' >> '+from_niki);
  If not FileExists(FileName) Then Begin memo1.Lines.Add('Файл '+FileName+' не найден!');Exit; End;
  Try
    System.AssignFile(f,FileName);
    System.Reset(f);
    Try
             // название таблицы
             table_name:=copy(from_niki,1,length(from_niki)-4);
//               memo1.lines.add(table_name+' >> ' +from_niki);

//               table_name:=copy(oneline,2,100);
               sql_:='spool C:\LOG_'+table_name+'.txt;';
               memo1.lines.add(sql_);
               sql_:='delete from '+table_name+';';
               memo1.lines.add(sql_);
               for k:=0 to 100
               do begin
//memo1.lines.add('array) '+field_list_array[k,1]+'='+'(file)'+table_name);
//sql_:=field_list_array[k,1]+' >> '+field_list_array[k,2];
//memo2.lines.add(sql_);
                 if field_list_array[k,1]= table_name
                 then begin
                   field_list:=  field_list_array[k,2];
                   break;
                 end;
               end;
//sql_:=table_name+' >> '+field_list;
//memo2.lines.add(sql_);

      While not Eof(f) do
        Begin
              System.Readln(f,oneline);
//memo1.lines.add('table_name) '+table_name+' >> '+'(oneline)'+oneline);
             if (length(oneline)<>0)
             then get_one_line(table_name,field_list,oneline);
        End;

    Except
      on E: Exception do
        Begin
          memo1.lines.add(e.Message);
          showmessage(e.Message);
        End;
    End;
  Finally
    System.CloseFile(f);
  End;

  memo1.Lines.Add('commit;');

//  memo1.Lines.SaveToFile('C:\kachok974.sql');
               sql_:='spool off;';
               memo1.lines.add(sql_);
   memo1.Lines.SaveToFile('C:\ok\'+copy(from_niki,1,length(from_niki)-4)+'.sql');
   memo1.clear;
   memo2.Lines.add('@@'+copy(from_niki,1,length(from_niki)-4)+'.sql');
   memo2.Lines.add('commit;');

  end;
 end;

   memo2.Lines.SaveToFile('C:\ok\run.sql');

end;

procedure TBOKRefForm.get_one_line(table_name,field_list,oneline: String);
var s,sql_ ,ss_table_list,hvost,hvostDD,hvostmm: string;
 i2 : integer;
begin

 // список ss_ok таблиц где нет STATE_NOTES EMP_CODE INS_DATE
  ss_table_list:= 'SS_OK,SS_OK_ARMY,SS_OK_BASIS,SS_OK_COMMAND_PARAM,SS_OK_FAMILY_STATUS,'+
    'SS_OK_FITNESS_ARMY,SS_OK_GENDER,SS_OK_LEVEL_BOSS,SS_OK_LEVEL_DEPARTMENT,SS_OK_PERS_COL_DFLT'+
    'SS_OK_PERS_QUERY,SS_OK_PERS_QUERY_COL,SS_OK_PROFMEMBER,SS_OK_REG_TYPE,SS_OK_REZERV,SS_OK_REZERVE,'+
    'SS_OK_STATUS,SS_OK_VACANCY,SS_OK_KV_KURS,SS_OK_THEME_BUSINESS_VOYAGE,SS_OK_ORG_BUSINESS_VOYAGE,'; // в конце нужна запятая...

             field_list_tok := TStringTokenizer.Create;
             field_list_tok.Delimiter := ',';
             field_list_tok.Clear;
             field_list_tok.SourceString := field_list+',';
             field_list_tok.Build;

             tok := TStringTokenizer.Create;
             tok.Delimiter := chr(29);
             tok.Clear;
             tok.SourceString := oneline;
             tok.Build;

//sql_:= ' field_list_tok='+inttostr(field_list_tok.count) +'     tok='+inttostr(tok.count) ;
//             memo1.lines.add(sql_);

             s:='';
             hvost:=' '; hvostDD:=' ';hvostMM:=' ';
//             for i2:=0 to tok.Count-3
             for i2:=0 to field_list_tok.Count-2 // по количеству полей
             do begin
              Try
//memo3.lines.Add(field_list_tok.Tokens[i2]);
//*showmessage('1)'+field_list_tok.Tokens[i2]);
               if (hvost<>' ') and (field_list_tok.Tokens[i2]='DD')
               then begin
                 s:=s+hvostDD+',';
//memo3.lines.Add(s);
               end else
               if  (hvost<>' ') and (field_list_tok.Tokens[i2]='MM')
               then begin
                  s:=s+hvostMM+',';
//memo3.lines.Add(s);
               end else
               if (tok.Tokens[i2]='') or (tok.Tokens[i2]='.  .')
               then begin
                 s:=s+'null,';
               end else
                if (field_list_tok.Tokens[i2]='REGION_ID')
                or (field_list_tok.Tokens[i2]='DISTR')
                then
                  s:=s+'null,'
                else
                if ( (pos('DATE',field_list_tok.Tokens[i2])>0)
                  or (field_list_tok.Tokens[i2]='BIRTHDAY'   )
                  or (field_list_tok.Tokens[i2]='BEGIN_YEAR' )
                  or (field_list_tok.Tokens[i2]='END_YEAR' )
                   )
                and (pos(field_list_tok.Tokens[i2],'#ACADEMIC_DATE#AWARD_DATE#CONVICTIONS_DATE#DEGREE_DATE#PARTY_DATE#PUNISHMENT_DATE#PREMIUM_DATE#SCIENTIFIC_DATE#VOYAGE_DATE#BEGIN_DATE#END_DATE#')<=0)
//*                and (tok.Tokens[i2]<>'.  .')
                then begin
//*showmessage('2)'+field_list_tok.Tokens[i2]);
                  if (tok.Tokens[i2]='0') or (tok.Tokens[i2]='.  .')
                  then s:=s+'null,'
                  else s:=s+' to_date('''+ tok.Tokens[i2]+''',''dd.mm.yyyy''),';

{                  if field_list_tok.Tokens[i2]='RELATION_BIRTHDAY'
                  then begin
                    if strtoint(copy(tok.Tokens[i2],7,2))<10
                    then begin

                      s:=s+' to_date('''+copy(tok.Tokens[i2],1,5)+'.20'+copy(tok.Tokens[i2],7,2)+''',''dd.mm.yyyy''),';
                   //   s:=s+'20'+copy(tok.Tokens[i2],7,2)+',';
                    end else begin
                       s:=s+' to_date('''+copy(tok.Tokens[i2],1,5)+'.19'+copy(tok.Tokens[i2],7,2)+''',''dd.mm.yyyy''),';
                     // s:=s+'19'+copy(tok.Tokens[i2],7,2)+',';
                    end;
                      hvost:='*';
                      hvostDD:= copy(tok.Tokens[i2],1,2);
                      hvostMM:= copy(tok.Tokens[i2],4,2);
                  end else begin
//                    if strtoint(copy(tok.Tokens[i2],7,2))<10
//                    then begin
  // у них год 01.01.00 - 01.01.2000 а 01.01.51 - 01.01.1951
//                      s:=s+' to_date('''+copy(tok.Tokens[i2],1,5)+'.20'+copy(tok.Tokens[i2],7,2)+''',''dd.mm.yyyy''),';
//                    end else begin
//                      s:=s+' to_date('''+copy(tok.Tokens[i2],1,5)+'.19'+copy(tok.Tokens[i2],7,2)+''',''dd.mm.yyyy''),';
//                    end;
                  end;
}
                end else begin
                  if (pos(field_list_tok.Tokens[i2],'#RELATION_BIRTHDAY#ACADEMIC_DATE#AWARD_DATE#CONVICTIONS_DATE#DEGREE_DATE#PARTY_DATE#PUNISHMENT_DATE#PREMIUM_DATE#SCIENTIFIC_DATE#VOYAGE_DATE#BEGIN_DATE#END_DATE#')>0)
                  then begin
                    if length(tok.Tokens[i2])=10
                    then s:=s+''''+copy(tok.Tokens[i2],7,4)+''','
                    else s:=s+''''+tok.Tokens[i2]+''',';
                  end else begin
                    s:=s+''''+tok.Tokens[i2]+''',';
                  end;
                end;
              Except
                s:=s+'null,';
              end;
             end;

             try
                if (pos('DATE',field_list_tok.Tokens[tok.Count-1])>0)
                and (pos(field_list_tok.Tokens[field_list_tok.Count-1],'#ACADEMIC_DATE#AWARD_DATE#CONVICTIONS_DATE#DEGREE_DATE#PARTY_DATE#PUNISHMENT_DATE#PREMIUM_DATE#SCIENTIFIC_DATE#VOYAGE_DATE#BEGIN_DATE#BEGIN_DATE#')<=0)
                then begin
                  if strtoint(copy(tok.Tokens[field_list_tok.Count-1],7,2))<10
                  then begin
                    s:=s+' to_date('''+copy(tok.Tokens[field_list_tok.Count-1],1,5)+'.20'+copy(tok.Tokens[field_list_tok.Count-1],7,2)+''',''dd.mm.yyyy''),';
                  end else begin
                    s:=s+' to_date('''+copy(tok.Tokens[field_list_tok.Count-1],1,5)+'.19'+copy(tok.Tokens[field_list_tok.Count-1],7,2)+''',''dd.mm.yyyy''),';
                  end;
               end else begin
                 s:=s+''''+tok.Tokens[field_list_tok.Count-1]+'''';
               end;
             except
               s:=s+'null';
             end;

             if copy(table_name,1,2)<>'SS'
             then begin
               if pos( 'EMP_CODE',field_list)<=0
               then begin
                 field_list:=field_list+',EMP_CODE';
                 s:=s+',99';
               end;
               if pos( 'INS_DATE',field_list)<=0
               then begin
                 field_list:=field_list+',INS_DATE';
                 s:=s+',sysdate';
               end;
             end else begin
                if pos( table_name+',',ss_table_list)<=0
                then begin
                   if pos( 'EMP_CODE',field_list)<=0
                   then begin
                     field_list:=field_list+',EMP_CODE';
                     s:=s+',99';
                   end;
                   if pos( 'INS_DATE',field_list)<=0
                   then begin
                     field_list:=field_list+',INS_DATE';
                     s:=s+',sysdate';
                   end;
                   if pos( 'STATE_NOTES',field_list)<=0
                   then begin
                     field_list:=field_list+',STATE_NOTES';
                     s:=s+',''A'' ';
                   end;
                end;
             end;
               sql_:='insert into '+table_name+' ( '+field_list+
                 ') values ('+s+');';

             memo1.lines.add(sql_);
//             execsql(sql_);

end;

procedure TBOKRefForm.BitBtn17Click(Sender: TObject);
var f: TextFile;
    r, cmd_,FileName, table_name : String;
    s: String;
    k:integer;
begin

  FileName:='C:\OtKadr.TXT';

  If not FileExists(FileName) Then Begin memo1.Lines.Add('Файл '+FileName+' не найден!');Exit; End;
  Try
    System.AssignFile(f,FileName);
    System.Reset(f);
    Try
      While not Eof(f) do
        Begin
          System.Readln(f,r);
          if copy(r,1,1)=chr(29)
          then begin
            cmd_:='';
            s:='';
            table_name:='';
          end else begin
                k:=pos(' ',r);
                if k>0
                then cmd_:=copy(r,1,k-1)
                else cmd_:=' ';
              if cmd_='TABLE_NAME'
              then begin
                if length(s)<>0
                then memo1.lines.add(s);
                System.Readln(f,r);
                System.Readln(f,r);

                k:=pos(' ',r);
                if k>0
                then cmd_:=copy(r,1,k-1)
                else cmd_:=' ';

                table_name:=cmd_;
                s:=chr(29)+table_name;
                if length(s)<>0
                then memo1.lines.add(s);
                System.Readln(f,r);
                System.Readln(f,r);

                System.Readln(f,r);
                k:=pos(' ',r);
                if k>0
                then cmd_:=copy(r,1,k-1)
                else cmd_:=' ';

                if cmd_<>' '
                then begin
                  s:= cmd_;
                end;

              end else begin
                k:=pos(' ',r);
                if k>0
                then cmd_:=copy(r,1,k-1)
                else cmd_:=' ';

                if cmd_<>' '
                then begin
                  s:=s+','+cmd_;
                end;
              end;
//              if length(cmd_)<>0
//              then memo1.lines.add(cmd_);
           end; // if copy(r,1,1)<>chr(29)
        End;
        if length(s)<>0
        then memo1.lines.add(s);

    Except
      on E: Exception do
        Begin
          memo1.lines.add(e.Message);
          showmessage(e.Message);
        End;
    End;
  Finally
    System.CloseFile(f);
  End;

  memo1.lines.SaveToFile('C:\okkach.tbls');
end;

procedure TBOKRefForm.BitBtn18Click(Sender: TObject);
var oneline, table_name,field_list,FileName,isermes: string; // s, sql_ ,
 k : integer; // i2,
 f: TextFile;
begin


  FileName:='C:\okkach.tbls';
  isermes:='';
//  SetLength(field_list_array, 100,2);

  k:=0;

  If not FileExists(FileName) Then Begin memo1.Lines.Add('Файл '+FileName+' не найден!');Exit; End;
  Try
    System.AssignFile(f,FileName);
    System.Reset(f);
    Try
      While not Eof(f) do
        Begin
              System.Readln(f,oneline);
           if copy(oneline,1,1)=chr(29)
           then begin
             // название таблицы
             table_name:=copy(oneline,2,255);
             // поля таблицы через запятую
             System.Readln(f,oneline);
             field_list:=oneline;
//             SetLength(field_list_array[k], 2);
             field_list_array[k,1]:= table_name;
             field_list_array[k,2]:= field_list;
//             memo1.Lines.add(inttostr(k)+') '+field_list_array[k,1]+','+field_list_array[k,2]+' << '+table_name+','+field_list);
             k:=k+1;
           end;
        End;

    Except
      on E: Exception do
        Begin
          memo1.lines.add(e.Message);
          showmessage(e.Message);
        End;
    End;
  Finally
    System.CloseFile(f);
  End;

  if isermes=''
  then begin
    memo1.Lines.Add('Файл '+FileName+' принят.');
  end else begin
    memo1.Lines.Add('Файл '+FileName+'не принят.');
  end;

  for k:=0 to 68
  do begin
    memo1.Lines.add(field_list_array[k,1]+' >> '+field_list_array[k,2]);
  end;

end;

procedure TBOKRefForm.getrefExcel(cdbgSSOK: TClientDBGrid);
var
 Range, Cell1, Cell2, ArrayData ,V: Variant;
 j,end_row,begin_row,col,row,nn:integer;
 NumFormat,DateFormat,StrFormat: String;
// ExecPrc: TClientDataSetEx;
 i,k :  Integer;
begin

  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
//V.Visible := True;
  row:=1;
   StrFormat  := '@';

    V.Cells[row,2].Value := cdbgSSOK.Columns.Items[0].title.Caption;
  inc(row);
  inc(row);
   try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
   except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
   end;
  // формирование шапки
  j:=0;
  For i := 0 to cdbgSSOK.Columns.Count-1
  do begin
    if cdbgSSOK.Columns.Items[i].Visible then
    begin
      inc(j);
      V.Cells[row,j].Value := rpad(cdbgSSOK.Columns.Items[i].title.Caption, cdbgSSOK.Columns.Items[i].Width div 6);
      V.Cells[row,j].columns.autofit;
    end;

  end;
   inc(row);
////////////
  // формирование данных для текстового файла
  begin_row:=row;
  end_row:=row+cdbgSSOK.DataSource.Dataset.recordcount+1;
  nn:= cdbgSSOK.DataSource.Dataset.FieldCount-1;
    for col:=0 to nn do
     Begin
     V.Range[numto(col+1)+inttostr(begin_row)+':'+numto(col+1)+inttostr(end_row)].Select;
     case cdbgSSOK.DataSource.Dataset.Fields[col].DataType Of
     ftString :     V.Selection.NumberFormat := StrFormat;
     ftFloat  :     V.Selection.NumberFormat := StrFormat;
     ftInteger  :   V.Selection.NumberFormat := StrFormat;
     ftDateTime:    V.Selection.NumberFormat := DateFormat;
     end;
    end;

  cdbgSSOK.DataSource.Dataset.DisableControls;
  cdbgSSOK.DataSource.Dataset.First;
  // Создаем Вариантный Массив, который заполним выходными данными
  ArrayData := VarArrayCreate([1, end_row, 1, cdbgSSOK.DataSource.Dataset.FieldCount], varVariant);//, 1, cdsNsi.FieldCount
  j:=1;
  While not cdbgSSOK.DataSource.Dataset.Eof do
  Begin
    k:=1;
      for i := 0 to cdbgSSOK.Columns.Count-1 do
      begin
          if cdbgSSOK.Columns.Items[i].Visible then
          begin
            ArrayData[j, k] :=
                cdbgSSOK.DataSource.Dataset.Fields.FieldByName(cdbgSSOK.Columns.Items[i].FieldName).AsString;
            inc(k);
          end;
      end;
      inc(j);
      inc(row);
      cdbgSSOK.DataSource.Dataset.Next;
  End;
  cdbgSSOK.DataSource.Dataset.EnableControls;

/////////////////////////////////////////////////////

   // Левая верхняя ячейка области, в которую будем выводить данные
   Cell1 := V.Cells[begin_row, 1];
   // Правая нижняя ячейка области, в которую будем выводить данные
   Cell2 := V.Cells[end_row, cdbgSSOK.DataSource.Dataset.FieldCount ];

  // Область, в которую будем выводить данные
   Range := V.Range[numto(1)+inttostr(begin_row)+':'+numto(cdbgSSOK.DataSource.Dataset.FieldCount)+inttostr(end_row)];
  Range.select;
  Range.Value := ArrayData;

  Range := V.Range[numto(1)+inttostr(begin_row-1)+':'+numto(cdbgSSOK.DataSource.Dataset.FieldCount)+inttostr(end_row)];
  Range.columns.AutoFit;
  Application.ProcessMessages;
  inc(row);
   V.Cells.Select;

   V.Visible := True; //так быстрее
//
end;

procedure TBOKRefForm.getrefExcel_institution(cdbgSSOK: TClientDBGrid);
var
 Range, Cell1, Cell2, ArrayData ,V: Variant;
 j,end_row,begin_row,col,row,nn:integer;
 NumFormat,DateFormat,StrFormat: String;
// ExecPrc: TClientDataSetEx;
 i,k :  Integer;
begin

  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
//V.Visible := True;
  row:=1;
   StrFormat  := '@';

    V.Cells[row,2].Value := cdsSSOKEducation_SET.Fields.FieldByName('education_code').AsString +' '+ cdsSSOKEducation_SET.Fields.FieldByName('education_name').AsString;
  inc(row);
  inc(row);
   try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
   except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
   end;
  // формирование шапки
  j:=0;
  For i := 0 to cdbgSSOK.Columns.Count-1
  do begin
    if cdbgSSOK.Columns.Items[i].Visible then
    begin
      inc(j);
      V.Cells[row,j].Value := rpad(cdbgSSOK.Columns.Items[i].title.Caption, cdbgSSOK.Columns.Items[i].Width div 6);
      V.Cells[row,j].columns.autofit;
    end;
  end;
   inc(row);
////////////
  // формирование данных
  begin_row:=row;
  end_row:=row+getsqlresult('select count(*) from ss_ok_institution')+1+2*cdsSSOKEducation_SET.recordcount;
  nn:= cdbgSSOK.DataSource.Dataset.FieldCount-1;
    for col:=0 to nn do
     Begin
     V.Range[numto(col+1)+inttostr(begin_row)+':'+numto(col+1)+inttostr(end_row)].Select;
     case cdbgSSOK.DataSource.Dataset.Fields[col].DataType Of
     ftString :     V.Selection.NumberFormat := StrFormat;
     ftInteger  :   V.Selection.NumberFormat := StrFormat;
     ftFloat  :     V.Selection.NumberFormat := StrFormat;
     ftDateTime:    V.Selection.NumberFormat := DateFormat;
     end;
    end;

  cdbgSSOK.DataSource.Dataset.DisableControls;
  // Создаем Вариантный Массив, который заполним выходными данными
  ArrayData := VarArrayCreate([1, end_row, 1, cdbgSSOK.DataSource.Dataset.FieldCount], varVariant);//, 1, cdsNsi.FieldCount
  j:=1;
 cdsSSOKEducation_SET.First;
 While not cdsSSOKEducation_SET.Eof do
 Begin
   inc(j);
   inc(row);
   ArrayData[j, 2] :=  cdsSSOKEducation_SET.Fields.FieldByName('education_name').AsString;
   inc(j);
   inc(row);
  cdbgSSOK.DataSource.Dataset.First;
  While not cdbgSSOK.DataSource.Dataset.Eof do
  Begin
    k:=1;
      for i := 0 to cdbgSSOK.Columns.Count-1 do
      begin
          if cdbgSSOK.Columns.Items[i].Visible then
          begin
            ArrayData[j, k] :=
               cdbgSSOK.DataSource.Dataset.Fields.FieldByName(cdbgSSOK.Columns.Items[i].FieldName).AsString  ;
            inc(k);
          end;
      end;
      inc(j);
      inc(row);
      cdbgSSOK.DataSource.Dataset.Next;
  End;
   cdsSSOKEducation_SET.Next;
 End;
  cdbgSSOK.DataSource.Dataset.EnableControls;

/////////////////////////////////////////////////////

   // Левая верхняя ячейка области, в которую будем выводить данные
   Cell1 := V.Cells[begin_row, 1];
   // Правая нижняя ячейка области, в которую будем выводить данные
   Cell2 := V.Cells[end_row, cdbgSSOK.DataSource.Dataset.FieldCount ];

  // Область, в которую будем выводить данные
   Range := V.Range[numto(1)+inttostr(begin_row)+':'+numto(cdbgSSOK.DataSource.Dataset.FieldCount)+inttostr(end_row)];
  Range.select;
  Range.Value := ArrayData;

  Range := V.Range[numto(1)+inttostr(begin_row-1)+':'+numto(cdbgSSOK.DataSource.Dataset.FieldCount)+inttostr(end_row)];
  Range.columns.AutoFit;
  Application.ProcessMessages;
  inc(row);
   V.Cells.Select;

   V.Visible := True; //так быстрее
//
end;

procedure TBOKRefForm.actToExcelExecute(Sender: TObject);
begin
  if      PC.ActivePage =  TabSSOKPost             then begin GetRefEXCEL(cdbgSSOKPost);             end
  else if PC.ActivePage =  TabSSOKEducation        then
    begin
//
          GetRefEXCEL_Institution(cdbgSSOKInstitution);
//
    end
  else if PC.ActivePage =  TabSSOKNationality      then begin GetRefEXCEL(cdbgSSOKNationality);      end
  else if PC.ActivePage =  TabSSOKeducationtitle   then begin GetRefEXCEL(cdbgSSOKeducationtitle);   end
  else if PC.ActivePage =  TabSSOKParty            then begin GetRefEXCEL(cdbgSSOKParty);            end
  else if PC.ActivePage =  TabSSOKarmygroup
       then begin GetRefEXCEL(cdbgSSOKarmygroup); end
  else if PC.ActivePage =  TabSSOKCATEGORYARMY
       then begin GetRefEXCEL(cdbgSSOKCATEGORYARMY); end
  else if PC.ActivePage =  TabSSOKMILITARYRANK
       then begin GetRefEXCEL(cdbgSSOKMILITARYRANK); end
  else if PC.ActivePage =  TabSSOKSTAFF
       then begin GetRefEXCEL(cdbgSSOKSTAFF); end
  else if PC.ActivePage =  TabSSOKTYPEFORCE
       then begin GetRefEXCEL(cdbgSSOKTYPEFORCE); end
  else if PC.ActivePage =  TabSSOKSpecial          then begin GetRefEXCEL(cdbgSSOKSpecial);          end
  else if PC.ActivePage =  TabSSOKDegree           then begin GetRefEXCEL(cdbgSSOKDegree);           end
  else if PC.ActivePage =  TabSSOKAcademic         then begin GetRefEXCEL(cdbgSSOKAcademic);         end
  else if PC.ActivePage =  TabSSOKBaseMove         then begin GetRefEXCEL(cdbgSSOKBaseMove);         end
  else if PC.ActivePage =  TabSSOKLanguage         then begin GetRefEXCEL(cdbgSSOKLanguage);         end
  else if PC.ActivePage =  TabSSOKLevelLanguage    then begin GetRefEXCEL(cdbgSSOKLevelLanguage);    end
  else if PC.ActivePage =  TabSSOKTypePeriod       then begin GetRefEXCEL(cdbgSSOKTypePeriod);       end
  else if PC.ActivePage =  TabSSOKRelation         then begin GetRefEXCEL(cdbgSSOKRelation);         end
  else if PC.ActivePage =  TabSSOKQualification    then begin GetRefEXCEL(cdbgSSOKQualification);    end
  else if PC.ActivePage =  TabSSOKLeave            then begin GetRefEXCEL(cdbgSSOKLeave);            end
  else if PC.ActivePage =  TabSSOKMotiveDismissial then begin GetRefEXCEL(cdbgSSOKMotiveDismissial); end
  else if PC.ActivePage =  TabSSOKYouth            then begin GetRefEXCEL(cdbgSSOKYouth);            end
  else if PC.ActivePage =  TabSSOKDepartmentType   then begin GetRefEXCEL(cdbgSSOKDepartmentType);   end
  else if PC.ActivePage =  TabSSOKArticle          then begin GetRefEXCEL(cdbgSSOKArticle);          end
  else if (PC.ActivePage =  TabSSOKDepartment) or (PC.ActivePage =  TabSSOKDepartmentTable)
       then begin GetRefEXCEL(cdbgSSOKDepartment);       end
  else if PC.ActivePage =  TabSSOKCommandType      then begin GetRefEXCEL(cdbgSSOKCommandType);      end
  else if PC.ActivePage =  TabSSOKTemplateCommand  then begin GetRefEXCEL(cdbgSSOKTemplateCommand);  end
  else if PC.ActivePage =  TabSSOKPenalty          then begin GetRefEXCEL(cdbgSSOKPenalty);          end
  else if PC.ActivePage =  TabSSOKEducationTitle   then begin GetRefEXCEL(cdbgSSOKEducationTitle);   end
  else if PC.ActivePage =  TabSSOKelection   then begin GetRefEXCEL(cdbgSSOKelection);   end
  else if PC.ActivePage =  TabSSOKhospital   then begin GetRefEXCEL(cdbgSSOKhospital);   end
  else if PC.ActivePage =  Tabss_ok_theme_business_voyage
              then begin GetRefEXCEL(cdbgssok_theme_business_voyage);   end
  else if PC.ActivePage =  Tabss_ok_org_business_voyage
              then begin GetRefEXCEL(cdbgssok_org_business_voyage);   end
  else if PC.ActivePage =  TabSSOKkv_kurs   then begin GetRefEXCEL(cdbgSSOKkv_kurs);   end
//  else if PC.ActivePage =  TabSSOKkv_kurs   then begin GetRefEXCEL(cdbgSSOKkv_kurs);   end
  else if PC.ActivePage =  TabSS_OK_city   then begin GetRefEXCEL(cdbgSS_OK_city);   end
  else if PC.ActivePage =  TabSS_OK_regplace   then begin GetRefEXCEL(cdbgSS_OK_regplace);   end
  else if PC.ActivePage =  Tabss_ok_zp_rate   then begin GetRefEXCEL(cdbgss_ok_zp_rate);   end
  else if PC.ActivePage =  Tabss_ok_zp_rate_type   then begin GetRefEXCEL(cdbgss_ok_zp_rate_type);   end
  else if PC.ActivePage =  Tabssoknci   then begin GetRefEXCEL(cdbgSSOKnci);   end
  else if PC.ActivePage =  TabMessage              then begin ShowMessage('Укажите справочник.');
  end; // ??? ?????????? ???

end;

procedure TBOKRefForm.ACTss_ok_cityExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_city ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := Tabss_ok_city;
  If cdsss_ok_city.Active Then Exit;
  cdsss_ok_city.DisableControls;
  LOADDATA(CDSss_ok_city,      SQL_ss_ok_city);
  cdsss_ok_city.EnableControls;

end;

procedure TBOKRefForm.ACTss_ok_regplaceExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_regplace ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := Tabss_ok_regplace;
  If cdsss_ok_regplace.Active Then Exit;
  cdsss_ok_regplace.DisableControls;
  LOADDATA(CDSss_ok_regplace,      SQL_ss_ok_regplace);
  cdsss_ok_regplace.EnableControls;

end;

procedure TBOKRefForm.ACTss_ok_cityVIEWExecute(Sender: TObject);
begin
  actss_ok_cityExecute(nil);
  GetRef(cdbgss_ok_city);

end;

procedure TBOKRefForm.ACTss_ok_regplaceVIEWExecute(Sender: TObject);
begin

  actss_ok_regplaceExecute(nil);
  GetRef(cdbgss_ok_regplace);
end;

procedure TBOKRefForm.actss_ok_zp_rateExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_zp_rate ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := Tabss_ok_zp_rate;
  If cdsss_ok_zp_rate.Active Then Exit;
  cdsss_ok_zp_rate.DisableControls;
  LOADDATA(CDSss_ok_zp_rate,      SQL_ss_ok_zp_rate);
  cdsss_ok_zp_rate.EnableControls;

end;

procedure TBOKRefForm.actss_ok_zp_rate_typeExecute(Sender: TObject);
var j : integer;
begin
  j:=0;
  try
    j:=GetSqlResult('select count(*) from ss_ok_zp_rate_type ');
  except
  end;
  StatusBar.Panels[0].Text :='Всего: '+IntToStr(j);

  PC.ActivePage := Tabss_ok_zp_rate_type;
  If cdsss_ok_zp_rate_type.Active Then Exit;
  cdsss_ok_zp_rate_type.DisableControls;
  LOADDATA(CDSss_ok_zp_rate_type,      SQL_ss_ok_zp_rate_type);
  cdsss_ok_zp_rate_type.EnableControls;

end;

procedure TBOKRefForm.actss_ok_zp_rateVIEWExecute(Sender: TObject);
begin
  actss_ok_zp_rateExecute(nil);
  GetRef(cdbgss_ok_zp_rate);

end;

procedure TBOKRefForm.actss_ok_zp_rate_typeVIEWExecute(Sender: TObject);
begin
  actss_ok_zp_rate_typeExecute(nil);
  GetRef(cdbgss_ok_zp_rate_type);

end;

procedure TBOKRefForm.BitBtn19Click(Sender: TObject);
begin
  if cdsSSOKkv_kurs_SET.IsEmpty
  then begin
    showmessage('нет даты приказа для удаления');
  end else begin

    if not(cdsSSOKkv_kurs_SET.State in dseditmodes)
    then begin
      cdsSSOKkv_kurs_SET.edit;
    end else begin
//      keybd_event(VK_ESCAPE, 0, 0, 0);
//      keybd_event(VK_ESCAPE, 0, KEYEVENTF_KEYUP, 0);

    end;

    cdsSSOKkv_kurs_SET.FieldByName('order_date').asstring:= '';
//    cdsSSOKkv_kurs_SET.post;
//    cdsSSOKkv_kurs_SET.refresh;
  end;

end;

procedure TBOKRefForm.cdbgSSOKkv_kursKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_F8
  then begin
//    Key:= VK_ESCAPE;
// если нажали F8 то эмулируется нажатие ESC
    keybd_event(VK_ESCAPE, 0, 0, 0);
    keybd_event(VK_ESCAPE, 0, KEYEVENTF_KEYUP, 0);
  end;
end;

procedure TBOKRefForm.cdsSSOKnciAfterPost(DataSet: TDataSet);
begin
  Try
    SaveData(DataSet);
    ExecSQL('COMMIT');
    DataSet.Refresh;
  Except
    on E: Exception do
    Begin
      if pos(e.Message,'SS_OK_NCI_PK')>0
      then begin
        showmessage('Удалите записи и введите их заново в правильном варианте.'+#13+
          'при этом для каждой записи в справочнике ОК должна соответствовать только одна запись в справочнике ЦБ');
      end;
            ExecSQL('ROLLBACK');
            TCLientDataSet(DataSet).UndoLastChange(True);
            Abort;
    End;
  End;

end;

procedure TBOKRefForm.BitBtn20Click(Sender: TObject);
var // FileName,from_: string; // s,
     I:integer;
   App,WorkBook,Sheet: Variant;
 j,aa:integer;
str_:String;
begin
showmessage('еще не готово: вывести предупрежедние ВЫ УВЕРЕНЫ и проверить работает вставка или нет');
  OpenDialog1.Options := [ofFileMustExist];
  OpenDialog1.Filter := 'Excel files (*.xls)|*.xls|All files (*.*)|*.*';
  OpenDialog1.FilterIndex := 1; // 2-start the dialog showing all files

  aa:=0;
  if OpenDialog1.Execute
  then begin

    execsql('delete from ss_ok_category');
    App := CreateOLEObject('Excel.Application');
    WorkBook:=App.Workbooks.Open(OpenDialog1.Files.Strings[0]);
    App.Visible:=true;
    j:=1;
    for i:=1 to WorkBook.Sheets.Count do
    Begin  //1
      Application.ProcessMessages;
      Sheet:=WorkBook.WorkSheets[i];
      Sheet.Activate;

     //Memo.Lines.Add(VartoStr(Sheet.Name)); //  Список ячеек
      while aa=0 do
      begin    //2

        try
          if trim(vartostr(Sheet.Cells[j,1].value))=''
          then begin aa:=2;
          end else begin
            Application.ProcessMessages;

            str_ :='insert into ss_ok_category (CATEGORY_CODE,CATEGORY_NAME,CATEGORY_RATE,SALARY,'+
              'STATE_NOTES,EMP_CODE,INS_DATE) select'+
              ' :p_1 , :p_2 , :p_3 , :p_4 , :p_5 , :p_6 , sysdate from dual)';
            execsqlpar(str_,
              Sheet.Cells[j,1].value, Sheet.Cells[j,2].value, Sheet.Cells[j,3].value,
              Sheet.Cells[j,4].value,'A', UserId
            );

          end;
          j:=j+1;
        except on e:exception
          do begin
            execsql('rollback');
            showmessage('ошибка)'+e.Message);
          end;
        end;

       end;

      execsql('commit');
      App:=unassigned;

    end;

  end;

end;

procedure TBOKRefForm.cdsSSOKPost_SETAfterDelete(DataSet: TDataSet);
var filial_schema_,sql_ : string;
begin

  if  (branch<>'09004') and (branch<>'00394')
  and (branch<>'09006') and (branch<>'00883')
  then begin
    showmessage('(6969)Нельзя удалять, можно только деактивировать(ставить состояние "P").');
    exit;
  end else begin

    Try
/////////////////////
// цикл с удалением по филиалам
      cdstemp.close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '10';
      end;
      loaddata(cdstemp,'select * from ss_dblink_branch '+
      ' where region in (select id from V_TRANS_OK where DEAL_ID=:p_1)'); //10)');
      filial_schema_  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
      cdstemp.first;
      while not cdstemp.eof
      do begin
        try
          sql_ := 'delete from '+filial_schema_+'.ok_stat'+
                ' where branch=:p_1 and post_code=:p_2';
          ExecSQLpar(sql_,cdstemp.fieldbyname('BRANCH').asstring,cdsSSOKPost_SET.FieldByname('post_code').AsString);
        except
          on e:exception
          do begin
            if not (MemoErr2.Visible)
            then begin
              MemoErr2.Visible:=true;
              MemoErr2.lines.Clear;
            end;
            MemoErr2.lines.add(cdstemp.fieldbyname('BRANCH').asstring+')'+e.message);
          end;
        end;
        cdstemp.next;
      end;
/////////////////////
      SaveData(DataSet);
      ExecSQL('COMMIT');

      DataSet.Refresh;
    Except
      on E: Exception do
      Begin
              ExecSQL('ROLLBACK');
              TCLientDataSet(DataSet).UndoLastChange(True);
              Abort;
      End;
    End;
  end;

end;

procedure TBOKRefForm.bbDeleteDepClick(Sender: TObject);
var filial_schema_,sql_:string;
    ErMessage : string;
  Save_Cursor:TCursor;
const
  ERROR_NO = 'ORA-20000: ';
begin
 if ( (HeadBranch_='09004') and (branch<>'09004') and (branch<>'00394'))
  or ( (HeadBranch_='09006') and (branch<>'09006') and (branch<>'00883'))
 then begin
    showmessage('(4372)Справочники Ведутся Только В Республиканском Отделе Кадров.');
    exit;
 end else begin

//
// showmessage( inttostr(Integer(TreeV.Selected.data)) );
  if Integer(TreeV.Selected.data)=0
  then begin
    showmessage('Нельзя УДАЛИТЬ отдел '+TreeV.Selected.text);
    exit;
  end;

  If Application.MessageBox(PChar('Вы Уверены,'+#13+
    ' что хотите УДАЛИТЬ отдел '+TreeV.Selected.text+' ?'+#13+
    ' Отдел также будет удален и в штатных расписаниях доступных филиалов.'), PChar('Предупреждение'), MB_YESNO or MB_ICONQUESTION) = mrYes
  Then Begin
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
                                   // час стекла - песочные часы
   TRY
    { Do some lengthy operation }
    cdsDerevo.Locate('id', Integer(TreeV.Selected.data), []);


//showmessage(sql_);
    try
/////////////////////
// цикл с удалением по филиалам
      cdstemp.close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '10';
      end;
      loaddata(cdstemp,'select * from ss_dblink_branch '+
      ' where region in (select id from V_TRANS_OK where DEAL_ID=:p_1)'); //10)');
      filial_schema_  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
      cdstemp.first;
      while not cdstemp.eof
      do begin
        try
          sql_ := 'delete from '+filial_schema_+'.ok_stat'+
                ' where branch=:p_1 and department_code=:p_2';
          ExecSQLpar(sql_,cdstemp.fieldbyname('BRANCH').asstring,cdsDerevo.FieldByname('department_code').AsString);
        except
          on e:exception
          do begin
            if not (MemoErr.Visible)
            then begin
              MemoErr.Visible:=true;
              MemoErr.lines.Clear;
            end;
            MemoErr.lines.add(cdstemp.fieldbyname('BRANCH').asstring+')'+e.message);
          end;
        end;
        cdstemp.next;
      end;
/////////////////////
      sql_ := 'delete from ss_ok_department'+
            ' where department_code=:p_1';
      ExecSQLpar(sql_,cdsDerevo.FieldByname('department_code').AsString);
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
          Else ShowMessage(E.Message);
        exit;
      End;
    end;

    TreeV.Selected.Delete;
    edDepartmentcode.text  := '';
    edDepartmentName.text:= '';
    edDEPARTMENTNUM.text := '';
    cbDepType.ItemIndex := -1;
    cdsDerevo.Refresh;
   FINALLY
     Screen.Cursor := Save_Cursor;  { Always restore to normal }
   END;

    actSSOKDepartmentExecute(nil);
    TreeV.FullExpand;
    showmessage('Отдел УДАЛЕН.');

  End;

 end;

end;

procedure TBOKRefForm.edCategoryFiltrChange(Sender: TObject);
begin
{
  if edCategoryFiltr.Text<>''
  then begin
    try
 //     cdsSSOKcategory_SET.Filter:='mfo_category_type_code='+edCategoryFiltr.Text;
      cdsSSOKcategory_SET.Filtered:=TRUe;
    except
    end;
  end else begin
    cdsSSOKcategory_SET.Filtered:=false;
    cdsSSOKcategory_SET.Filter:='';
  end;
}
end;

initialization
  RegisterClass(TBOKRefForm);
finalization
  UnRegisterClass(TBOKRefForm);
end.
