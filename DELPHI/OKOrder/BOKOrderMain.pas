unit BOKOrderMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, ImgList, ComCtrls, Base,
  AboutDlg, StdCtrls, DB, DBClient, //CheckLst,
  DBCtrls, Grids, //QRExport,
  DBGrids,ComObj,
  Buttons, Utils, //Mask,
  strutils, Gauges, SelDlg, ErrDlg, Mask,
  ExtCtrls, ToolWin;

type
  TBOKOrderForm = class(TBaseForm)
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
    N7: TMenuItem;
    N8: TMenuItem;
    TB2: TToolButton;
    TB3: TToolButton;
    N13: TMenuItem;
    ActToExcel1: TMenuItem;
    Table1: TClientDataSetEx;
    DataSource1: TDataSource;
    Table2: TClientDataSetEx;
    DataSource2: TDataSource;
    cds_ss_ok_Pers_Query: TClientDataSetEx;
    DataSource3: TDataSource;
    Query1: TClientDataSetEx;
    DataSource4: TDataSource;
    Query_Look_Up: TClientDataSetEx;
    ds_ss_ok_Pers_Query: TDataSource;
    TablePanel: TPanel;
    actSavequery: TAction;
    actDeleteQuery: TAction;
    qryTmp: TClientDataSetEx;
    FormPanel: TPanel;
    PanelClause: TPanel;
    Panel14: TPanel;
    Gauge1: TGauge;
    Panel12: TPanel;
    DBGrid11: TDBGrid;
    Panel11: TPanel;
    GroupBox11: TGroupBox;
    SpeedButton20: TSpeedButton;
    SpeedButton19: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    ListView1: TListView;
    CheckBox1: TCheckBox;
    RG_Status: TRadioGroup;
    Edit11: TEdit;
    Edit12: TEdit;
    GroupBox12: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    Memo1: TMemo;
    BitBtn12: TBitBtn;
    MaskEdit2: TMaskEdit;
    MaskEdit1: TMaskEdit;
    Label23: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    BitBtn22: TBitBtn;
    BitBtn21: TBitBtn;
    actPanelClause: TAction;
    SpeedButton18: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    actDelete: TAction;
    actDeleteAll: TAction;
    actAdd: TAction;
    ActExcel: TAction;
    ActNotepad: TAction;
    RadioGroup1: TRadioGroup;
    Memo2: TMemo;
    GroupBox2: TGroupBox;
    cboNsi: TComboBox;
    cdsTemp: TClientDataSetEx;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton2: TToolButton;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N14: TMenuItem;
    Excel1: TMenuItem;
    ToolButton8: TToolButton;
    actTable: TAction;
    actForm: TAction;
    ToolButton9: TToolButton;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    ToolButton1: TToolButton;
    actNewQuery: TAction;
    DBEdit1: TDBEdit;
    actCancel: TAction;
    ToolButton7: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    actChangeName: TAction;
    actEdit: TAction;
    SpeedButton17: TSpeedButton;
    SpeedButton1: TSpeedButton;
    chbOtdel: TCheckBox;
    MemoSQL: TMemo;
    cdsTempSource: TClientDataSetEx;
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
    procedure cdsSSOK_SETBeforePost(DataSet: TDataSet);
    procedure cdsSSOK_SETAfterPost(DataSet: TDataSet);
    procedure actSavequeryExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actDeleteQueryExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn21Click(Sender: TObject);
    procedure PrepareQuery;
    procedure actPanelClauseExecute(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);

    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton20Click(Sender: TObject);
    procedure DBGrid11Enter(Sender: TObject);
    procedure CreateRep(PP : Boolean);
    procedure BitBtn22Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AddToWhereMemo;
    procedure actDeleteExecute(Sender: TObject);
    procedure actDeleteAllExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure ActExcelExecute(Sender: TObject);
    procedure ActNotepadExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure cboNsiChange(Sender: TObject);
    procedure actNewQueryExecute(Sender: TObject);
    procedure actTableExecute(Sender: TObject);
    procedure actFormExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actChangeNameExecute(Sender: TObject);

  private
    { Private declarations }
//    procedure addLookUpField(DataSet_, LDataSet_: TDataSet;
//                             FieldName_, KeyFields_, LookUpKeyFields_, LookUpResultField_: String;
//                             CreateField: Boolean = False);
    id_kod:string;
  public
//     procedure CheckParam(Sender: TObject);
//     procedure KillObjects(Sender: TObject) ;
//     procedure UpdateView; override;

    { Public declarations }
  end;
  TData = class
  private
    FId: string;
    FName: string;
  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
  end;

  TNsiData = class
  private
    FId: string;
    FTypeNsi: Char;
    FTableName: string;
  public
    property Id: string read FId write FId;
    property TypeNsi: Char read FTypeNsi write FTypeNsi;
    property TableName: string read FTableName write FTableName;
  end;

resourcestring
  SShowToolBar   = 'ShowToolBar'  ;
  SShowStatusBar = 'ShowStatusBar';

const

  SQL_Table1 = 'select to_number(code_table||code_num) code, name, col_type, name_displ, name_paper, len, code_look_up, sel_sql,real_name from ss_ok_PERS_COL_DFLT';
//  SQL_Table1 = 'select ''1'' code, ''q'' name_displ  from dual';
//  SQL_Table1 = 'select code_num code, name, col_type, name_displ, name_paper, len, code_look_up, sel_sql from ss_ok_pers_col_dflt';

//  SQL_Table2 = 'select * from ss_ok_PERS_S_NSI';
  SQL_Table2 = 'select 0 id,1 name from dual';
  SQL_Table3 = 'select code,name,query_type,query_text,query_clause from ss_ok_PERS_QUERY';

var
  BOKOrderForm: TBOKOrderForm;
  ChParam, LineCounter              : integer ;
  RepName, Next_Par, Next_Par_Name  : String  ;
  ToPrint, ToExcel, SchRepFileExist : Boolean ;
  SchRepFile                        : TextFile;
  SchRepFileOpened                  : Boolean;
  fmOKGrid_Mode_Caption : String;
  ListItem: TListItem;

implementation

//uses OKGrid, OKEditor;
//var
//--  fmSaveOKGrid   : TfmOKGrid;
//  fmClauseOKGrid : TfmOKGrid;
//--  fmQueryOKGrid  : TfmOKGrid;
//  fmSaveOKEditor : TfmOKEditor;
{$R *.dfm}

Procedure CalcDate(
  DatB, DatE : TDateTime;
  Var Day, Month, Year: Word);
Var
  DayB, DayE, MonthB, MonthE, YearB, YearE : Word;
Begin
      If DatE < StrToDate('01.01.1900') Then DatE := Now;
      DecodeDate(DatB, YearB, MonthB, DayB);
      DecodeDate(DatE, YearE, MonthE, DayE);
      If DayB > DayE Then
        Begin
          DayE := DayE + 30;
          MonthE := MonthE - 1;
        End;
      Day := Day + (DayE - DayB);
      If MonthB > MonthE Then
        Begin
          MonthE := MonthE + 12;
          YearE := YearE - 1;
        End;
      Month := Month + (MonthE - MonthB);
      If YearB > YearE Then YearE := YearB;
      Year := Year + (YearE - YearB);
End;

Procedure CorrectDate(Var Day, Month, Year: Word);
Begin
    Month := Month + Trunc(Day/30);
    Day := Day - Trunc(Day/30)*30;
    Year := Year + Trunc(Month/12);
    Month := Month - Trunc(Month/12)*12;
End;

Function RPad(S1 : String; I1 : Integer; S2 : Char):  String;
Var
 I : Integer;
begin
  Result := Copy(S1, 1, I1);
  If Length(S1) < I1 Then
    For I := Length(S1)  to I1 - 1 Do
       Result := Result + S2;
end;

Function LPad(S1 : String; I1 : Integer; S2 : Char):  String;
Var
 I : Integer;
begin
  Result := Copy(S1, 1, I1);
  If Length(S1) < I1 Then
    For I := Length(S1)  to I1 - 1 Do
       Result := S2 + Result;
end;

Function NameSp(Code : String): String;
begin
 Result := BOKORDERForm.GetSQLResult('Select Name From ss_OK_Pers_Look_Up Where Code = ''' + Code + '''');
end;

Function Name1(Code : String): String;
begin
// Result := BOKORDERForm.GetSQLResult('Select name From ss_ok_ Where Code = ''' + Code + '''');
//Наименование должности	Вводится с клавиатуры, видимое поле, обязательное для заполнения
 Result := BOKORDERForm.GetSQLResult('select POST_NAME from ss_ok_post where STATE_NOTES=''A'' and POST_CODE= ''' + Code + '''');
end;

Function Name2(Code : String): String;
begin
 Result := BOKORDERForm.GetSQLResult('select EDUCATION_NAME from SS_OK_EDUCATION '+ 'where  STATE_NOTES=''A'' and EDUCATION_CODE= ''' + Code + '''');
end;

Function Name3(Code : String): String;
begin
//  Справочник  учебных заведений - вводится с клавиатуры.  Ввод и сортировка в порядке заполнения
 Result := BOKORDERForm.GetSQLResult('select INSTITUTION_NAME from SS_OK_INSTITUTION '+ 'where  STATE_NOTES=''A'' and INSTITUTION_CODE= ''' + Code + '''');
end;

Function Name4(Code : String): String;
begin
 // Справочник национальностей - ввод и сортировка в порядке заполнения
 Result := BOKORDERForm.GetSQLResult('select NATIONALITY_NAME from SS_OK_NATIONALITY '+ 'where  STATE_NOTES=''A'' and NATIONALITY_CODE= ''' + Code + '''');
end;

Function Name5(Code : String): String;
begin
 // Справочник зарегистрированных партий. Ввод и сортировка в порядке заполнения.
 Result := BOKORDERForm.GetSQLResult('select PARTY_NAME from SS_OK_PARTY '+ 'where  STATE_NOTES=''A'' and PARTY_CODE= ''' + Code + '''');
end;

Function Name6(Code : String): String;
begin
 // Справочник ученых степеней. Заполняется при вводе подсистемы в эксплуатацию в Головном офисе.
 Result := BOKORDERForm.GetSQLResult('select DEGREE_NAME from SS_OK_DEGREE '+
'where STATE_NOTES=''A'' and DEGREE_CODE= ''' + Code + '''');
end;

Function Name7(Code : String): String;
begin
// Справочник ученых званий. Заполняется при вводе подсистемы в эксплуатацию в Головном офисе.
 Result := BOKORDERForm.GetSQLResult('select ACADEMIC_NAME from SS_OK_ACADEMIC '+
'where STATE_NOTES=''A'' and  ACADEMIC_CODE= ''' + Code + '''');
end;

Function Name8(Code : String): String;
begin
// Справочник языков заполняется с клавиатуры по мере ввода
 Result := BOKORDERForm.GetSQLResult('select LANGUAGE_NAME from SS_OK_LANGUAGE '+
'where STATE_NOTES=''A'' and  LANGUAGE_CODE= ''' + Code + '''');
end;

Function Name9(Code : String): String;
begin
  // Уровень знаний иностранных языков
 Result := BOKORDERForm.GetSQLResult('select LEVEL_LANGUAGE_NAME from SS_OK_LEVEL_LANGUAGE '+
'where STATE_NOTES=''A'' and LEVEL_LANGUAGE_CODE= ''' + Code + '''');
end;

Function NameA(Code : String): String;
begin
  // Справочник типов стажа
 Result := BOKORDERForm.GetSQLResult('select TYPE_PERIOD_NAME from SS_OK_TYPE_PERIOD '+
'where STATE_NOTES=''A'' and TYPE_PERIOD_CODE= ''' + Code + '''');
end;

Function NameB(Code : String): String;
begin
 // Справочник родственных отношений - 10 символов. Заполняется при вводе в эксплуатацию
 Result := BOKORDERForm.GetSQLResult('select RELATION_NAME from SS_OK_RELATION '+
'where STATE_NOTES=''A'' and RELATION_CODE= ''' + Code + '''');
end;

Function NameC(Code : String): String;
begin
// Справочник Квалификаций
 Result := BOKORDERForm.GetSQLResult('select QUALIFICATION_NAME from SS_OK_QUALIFICATION '+
'where STATE_NOTES=''A'' and   QUALIFICATION_CODE= ''' + Code + '''');
end;

Function NameD(Code : String): String;
begin
// Cправочник видов отпусков
 Result := BOKORDERForm.GetSQLResult('select LEAVE_Name from SS_OK_LEAVE '+
'where STATE_NOTES=''A'' and LEAVE_CODE= ''' + Code + '''');
end;

Function NameE(Code : String): String;
begin
 // Справочник оснований причин увольнений
 Result := BOKORDERForm.GetSQLResult('select MOTIVE_DISMISSIAL_NAME from SS_OK_MOTIVE_DISMISSIAL '+
'where STATE_NOTES=''A'' and MOTIVE_DISMISSIAL_CODE= ''' + Code + '''');
end;

Function NameF(Code : String): String;
begin
 //  Справочник молодежных организаций
 Result := BOKORDERForm.GetSQLResult('select YOUTH_NAME from SS_OK_YOUTH '+
'where STATE_NOTES=''A'' and YOUTH_CODE= ''' + Code + '''');
end;

Function NameG(Code : String): String;
begin
  // справочник типов отделов
 Result := BOKORDERForm.GetSQLResult('select DEPARTMENT_TYPE_NAME from SS_OK_DEPARTMENT_TYPE '+
'where STATE_NOTES=''A'' and DEPARTMENT_TYPE_CODE= ''' + Code + '''');
end;

Function NameH(Code : String): String;
begin
 // Справочник отделов
 Result := BOKORDERForm.GetSQLResult('select DEPARTMENT_NAME from SS_OK_DEPARTMENT '+
'where STATE_NOTES=''A'' and BRANCH=''' + branch + ''' and DEPARTMENT_CODE= ''' + Code + '''');
end;

Function NameI(Code : String): String;
begin
 // Справочник статей КЗОТа 
 Result := BOKORDERForm.GetSQLResult('select ARTICLE_NAME from SS_OK_ARTICLE '+
'where STATE_NOTES=''A'' and ARTICLE_CODE= ''' + Code + '''');
end;

Function NameJ(Code : String): String;
begin
//
 Result := BOKORDERForm.GetSQLResult('select PENALTY_NAME from SS_OK_PENALTY '+
'where STATE_NOTES=''A'' and PENALTY_CODE= ''' + Code + '''');
end;

Function NameK(Code : String): String;
begin
// справочник наименований образований //K
 Result := BOKORDERForm.GetSQLResult('select education_title_name from ss_ok_education_title '+
'where STATE_NOTES=''A'' and education_title_CODE= ''' + Code + '''');
end;

Function NameL(Code : String): String;
begin
// Системный справочник "семейное положение"
 Result := BOKORDERForm.GetSQLResult('select FAMILY_STATUS_NAME from SS_OK_FAMILY_STATUS  '+
'where FAMILY_STATUS_CODE= ''' + Code + '''');
end;

Function NameM(Code : String): String;
begin
// Отношение к военной службе
 Result := BOKORDERForm.GetSQLResult('select ARMY_TYPE from SS_OK_ARMY '+
'where  ARMY_CODE= ''' + Code + '''');
end;

Function NameN(Code : String): String;
begin
// системный справочник пригодности к военной службе
 Result := BOKORDERForm.GetSQLResult('select fitness_ARMY_TYPE from SS_OK_fitness_ARMY '+
'where  fitness_ARMY_CODE= ''' + Code + '''');
end;

Function NameO(Code : String): String;
begin
// Справочник оснований причин увольнений
 Result := BOKORDERForm.GetSQLResult('select MOTIVE_DISMISSIAL_NAME from SS_OK_MOTIVE_DISMISSIAL '+
'where MOTIVE_DISMISSIAL_CODE= ''' + Code + '''');
end;

Function NameP(Code : String): String;
begin
// тип прописки "постоянная/временная"
 Result := BOKORDERForm.GetSQLResult('select REG_TYPE_NAME from SS_OK_REG_TYPE '+
'where  REG_TYPE_CODE= ''' + Code + '''');
end;

Function NameQ(Code : String): String;
begin
 // системный справочник полов
 Result := BOKORDERForm.GetSQLResult('select GENDER_NAME from SS_OK_GENDER '+
'where  GENDER_CODE= ''' + Code + '''');
end;

Function NameR(Code : String): String;
begin
// Системный справочник наличия резерва
 Result := BOKORDERForm.GetSQLResult('select REZERVE_NAME from SS_OK_REZERVE '+
'where  REZERVE_CODE= ''' + Code + '''');
end;

Function NameS(Code : String): String;
begin
// Системный справочник наличия вакансии
 Result := BOKORDERForm.GetSQLResult('select VACANCY_NAME from SS_OK_VACANCY '+
'where  VACANCY_CODE= ''' + Code + '''');
end;

Function NameT(Code : String): String;
begin
// Системный справочник признака базового образования
 Result := BOKORDERForm.GetSQLResult('select BASIS_NAME from SS_OK_BASIS '+
'where  BASIS_CODE= ''' + Code + '''');
end;

Function NameU(Code : String): String;
begin
// Системный справочник "статус сотрудника"
 Result := BOKORDERForm.GetSQLResult('select STATUS_NAME from SS_OK_STATUS '+
'where  STATUS_CODE= ''' + Code + '''');
end;

Function NameV(Code : String): String;
begin
 // Системный справочник "уровни подразделений"
 Result := BOKORDERForm.GetSQLResult('select LEVEL_DEPARTMENT_NAME from SS_OK_LEVEL_DEPARTMENT '+
'where LEVEL_DEPARTMENT_CODE= ''' + Code + '''');
end;

Function NameW(Code : String): String;
begin
 // Системный справочник "резерв"
 Result := BOKORDERForm.GetSQLResult('select REZERV_NAME from SS_OK_REZERV '+
'where REZERV_CODE= ''' + Code + '''');
end;


Function NameDep(Code : String): String;
begin
 Result := BOKORDERForm.GetSQLResult('Select department_Name From ss_ok_Department Where department_Code = ' + Code );
end;

Function NameOcc(Code : String): String;
begin
 Result := BOKORDERForm.GetSQLResult('Select Name From Pers_Occupation Where Code = ''' + Code + '''');
end;

Function NameYear(Id : String): String;
Var
  DatB, DatE : TDateTime;
  Day, Month, Year : Word;
begin
  // Стаж в отрасли
    BOKORDERForm.LoadData(BOKORDERForm.qryTmp,'Select * From Pers_Work_History Where Work_Sign In (''*'', ''1'') And Code = ' + Id);
    Year := 0;
    Month := 0;
    Day := 0;

  With BOKORDERForm.qryTmp Do
  Begin
    While Not Eof Do
    Begin
      DatB := FieldByName('BEGIN_DATE').AsDateTime;
      DatE := FieldByName('END_DATE').AsDateTime;
      CalcDate(DatB, DatE, Day, Month, Year);
      Next;
    End;
    End;

    CorrectDate(Day, Month, Year);
    Result := Lpad(IntToStr(Year),2,' ') + 'лет ' + Lpad(IntToStr(Month),2,' ') + 'мес.' + Lpad(IntToStr(Day),2,' ') + 'дн.' ;
end;

{procedure TBOKOrderForm.KillObjects(Sender: TObject) ;
 var i : integer;
begin
  if (Sender is TCheckListBox) then
   with (Sender as TCheckListBox) do
     for i:=0 to Items.Count-1 do
        Items.Objects[i].Free;
end;
}
{procedure TBOKOrderForm.addLookUpField(DataSet_, LDataSet_: TDataSet;
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
}

procedure TBOKOrderForm.FormCreate(Sender: TObject);
var  i : Integer;
//  head_ : string;
begin


  inherited;
  i:=GetSqlResult('select status from statusoperday where id=1');
  if (i<>1) then
  begin
    Application.MessageBox('Опер. день закрыт !!!', 'Предупреждение', MB_OK);
  end;
  BOKOrderForm := Self;

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

  actTable.Checked := true;
{
  Head_ := VarToStr(getSqlResultpar('select CONST.GETCONST(:p_1) from dual','23001'));
  if Head_ <> convert('Сейчас я в головном банке' +Branch) then
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

  // район
  //showmessage('2)не Головное отделение ');
      gbEDB.caption:='3) Генератор отчетов - только филиал';
      gbEDB.visible:=false;
  // обл
     while not cdsTempSource.eof
     do begin
       gbEDB.visible:=true;
       gbEDB.caption:='2) Генератор отчетов - Область, только филиалы области';
       lbEDB.caption:='Область, только филиалы области';
  //showmessage('bosslevel)не Головное отделение ');
      cdsTempSource.next;
     end;
     if Head_ = convert('Сейчас я в районном банке' +Branch)
     then begin
       gbEDB.caption:='3) Генератор отчетов - только филиал';
       gbEDB.visible:=false;
     end;
     if Head_ = convert('Сейчас я в областном банке' +Branch)
     then begin
       gbEDB.visible:=true;
       gbEDB.caption:='2) Генератор отчетов - Область, только филиалы области';
       lbEDB.caption:='Область, только филиалы области';
     end;
//showmessage('3)не Головное отделение ');

  end else begin
//showmessage('Головное отделение');
    gbEDB.visible:=true;
    gbEDB.caption:='1) Генератор отчетов - Единая база';
    lbEDB.caption:='Республика:  Область   Филиал';
    // тут загрузить в все обл и все филиалы

  end;

  if gbEDB.visible
  then begin
    if gbEDB.caption ='2) Генератор отчетов - Область, только филиалы области'
    then begin

    end
    else if gbEDB.caption ='1) Генератор отчетов - Единая база'
    then begin

    end;
  end;
}

end;

procedure TBOKOrderForm.FormDestroy(Sender: TObject);
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

procedure TBOKOrderForm.SplitterCanResize(Sender: TObject;
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

procedure TBOKOrderForm.actToolBarExecute(Sender: TObject);
begin
  psToolBar.Visible := not psToolBar.Visible;
end;

procedure TBOKOrderForm.actStatusBarExecute(Sender: TObject);
begin
  StatusBar.Visible := not StatusBar.Visible;
end;

procedure TBOKOrderForm.actAboutExecute(Sender: TObject);
begin
  with TAboutDialog.Create(Self) do
  try
    Caption:='Кадры - Генератор отчетов';
    lblName.Caption:='Генератор отчетов для Отдела Кадров';
    ShowModal;
  finally
    Free;
  end;
end;

procedure TBOKOrderForm.ActionListUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  TablePanel.Visible   := actTable.Checked;
  FormPanel.Visible    := actForm.Checked;

  actToolBar.Checked := psToolBar.Visible;
  actStatusBar.Checked := StatusBar.Visible;
end;

{procedure TBOKOrderForm.CheckParam(Sender: TObject);
begin
end;
}
{procedure TBOKOrderForm.UpdateView;
begin
end;
}
procedure TBOKOrderForm.cdsSSOKPost_SETReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TBOKOrderForm.cdsSSOK_SETBeforePost(DataSet: TDataSet);
begin
// предупреждение: ИСПОЛЬЗУЕТСЯ ДЛЯ МНОГИХ ДАТАСЕТОВ !!!
  DataSet.Fields.FieldByName('emp_code').AsInteger := StrToInt(UserId);
  DataSet.Fields.FieldByName('ins_date').AsVariant := GetSQLResult( 'select SysDate from dual' );

end;

procedure TBOKOrderForm.cdsSSOK_SETAfterPost(DataSet: TDataSet);
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

procedure TBOKOrderForm.actSavequeryExecute(Sender: TObject);
var
  SqlText : String;
  I : Integer;
begin

  if FormPanel.Visible
  then begin
    if Application.MessageBox('Сохранить изменения запроса?', 'Соглашения', MB_OKCANCEL ) = IDOK
    then Begin
      Try
        ExecSQL ('Delete From SS_OK_Pers_Query_Col Where Code_Query = ' + BOKOrderForm.cds_ss_ok_Pers_Query.FieldByName('CODE').AsString);
        ExecSQL('COMMIT');
      Except
      on E: Exception
        do begin
          ExecSQL('ROLLBACK');
          ShowMessage(
//          'Delete From SS_OK_Pers_Query_Col Where Code_Query = ' + BOKOrderForm.cds_ss_ok_Pers_Query.FieldByName('CODE').AsString+#13+
          'Ошибка при сохранении.'+#13+E.Message);
        end;
      End;

      For I := 0 to ListView1.Items.Count - 1
      do Begin
        SqlText := 'Insert Into SS_ok_Pers_Query_Col Values(' + BOKOrderForm.cds_ss_ok_Pers_Query.FieldByName('CODE').AsString + ', ''';
        SqlText := SqlText + ListView1.Items.Item[i].SubItems.Strings[0] + ''', ''';
//        SqlText := SqlText + ListView1.Items.Item[i].SubItems.Strings[1] + ''', ''';
        SqlText := SqlText + stringreplace  (ListView1.Items.Item[i].SubItems.Strings[1], chr(39), chr(39)+chr(39), [rfReplaceAll]) + ''', ''';
        SqlText := SqlText + ListView1.Items.Item[i].SubItems.Strings[2] + ''', ''';
        SqlText := SqlText + ListView1.Items.Item[i].Caption + ''', ''';
        SqlText := SqlText + ListView1.Items.Item[i].SubItems.Strings[3] + ''', ';
        SqlText := SqlText + ListView1.Items.Item[i].SubItems.Strings[4] + ', ''';
        SqlText := SqlText + ListView1.Items.Item[i].SubItems.Strings[5] + ''')';

        Try
          ExecSQL(SqlText);
          ExecSQL('COMMIT');
        Except
        on E: Exception
          do begin
            ExecSQL('ROLLBACK');
            memosql.lines.add(SqlText);
            ShowMessage(
              SqlText+#13+
              'Ошибка при сохранении.'+#13+E.Message);
          end;
        End;

      End;

      BOKOrderForm.cds_ss_ok_Pers_Query.Edit;
      BOKOrderForm.cds_ss_ok_Pers_Query.FieldByName('QUERY_CLAUSE').Value := Memo1.Text;
      BOKOrderForm.cds_ss_ok_Pers_Query.FieldByname('QUERY_TEXT').Value := 'Select * from ok_Personal';

      Try
        BOKOrderForm.cds_ss_ok_Pers_Query.Post;
      Except
      on E: Exception do
        Begin
          ExecSQL('ROLLBACK');
          ShowMessage('Не удалось сохранить изменения!'+#13+E.Message);
        End;
      End;

      LoadData(cds_ss_ok_Pers_Query,SQL_Table3);

    end;

//  PanelQuery.Visible:=false;
//  actEditQueryExecute(nil);

  end else begin
    if TablePanel.Visible
    then begin
/////////////////////
      TRY
            cds_ss_ok_Pers_Query.Post;
            ExecSQL('COMMIT');
      EXCEPT
          on E: Exception
            do begin
              ExecSQL('ROLLBACK');
              ShowMessage(E.Message);
            end;
      END;
    end;


      End;
      LoadData(cds_ss_ok_Pers_Query,SQL_Table3);





end;

procedure TBOKOrderForm.FormShow(Sender: TObject);
var
//  ModuleName, FileVersion, Version, Build: string;
//  Index: Integer;
  NsiData: TNsiData;
begin

{  Try
    LoadData(Table1, SQL_Table1);
  Except
  on E: Exception do
    Begin
      ShowMessage(
      SQL_Table1+
      'Ошибка.'+#13+E.Message);
    End;
  End;
}
  Try
    LoadData(Table2, SQL_Table2);
  Except
  on E: Exception do
    Begin
      ShowMessage(
      SQL_Table2+
      'Ошибка.'+#13+E.Message);
    End;
  End;

  Try
    LoadData(cds_ss_ok_Pers_Query, SQL_Table3);
  Except
  on E: Exception do
    Begin
      ShowMessage(
      SQL_Table3+
      'Ошибка.'+#13+E.Message);
    End;
  End;



  LoadData(cdsTemp, 'select * from ok_nsi where type = ''H''');
  cboNsi.Items.Clear;

  with cdsTemp do begin
    First;
    while not Eof do begin
      NsiData := TNsiData.Create;
      with NsiData do begin
        Id := FieldByName('ok_id').AsString;
        TableName := FieldByName('table_name').AsString;
      end;
      cboNsi.Items.AddObject(FieldByName('name_f').AsString, NsiData);
      Next;
    end;
    Close;
  end;

//  если признак ГО то все филиалы
  //если признак область то филиалы только данной области
//  если филиал то только филиал
  //  gbEDB

end;

procedure TBOKOrderForm.actDeleteQueryExecute(Sender: TObject);
begin

  if Application.MessageBox('Удалить запись?', 'Удаление', MB_OKCANCEL ) = IDOK
  then Begin
    Try
      ExecSQL('Delete From ss_OK_Pers_Query_Col Where Code_Query = ' + cds_ss_ok_Pers_Query.Fieldbyname('code').AsString);
      ExecSQL('Delete From ss_OK_Pers_Query Where Code = ' + cds_ss_ok_Pers_Query.Fieldbyname('code').AsString);
      ExecSQL('COMMIT');
    Except
    on E: Exception do
      Begin
        ExecSQL('ROLLBACK');
        ShowMessage(
         'Ошибка при удалении.'+#13+E.Message);
      End;
    End;

    LoadData(cds_ss_ok_Pers_Query,SQL_Table3);


  End;

end;

procedure TBOKOrderForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
   Begin
        SelectNext(ActiveControl, True, True);
        Key := #0;
   End;

end;


///////////////////////////
procedure TBOKOrderForm.BitBtn21Click(Sender: TObject);
begin

  PanelClause.Visible := False;
//  TablePanel.Visible :=False ;

  actTable.Checked := False;
  actForm.Checked  := True;

//  FormPanel.Visible := True;

  AddToWhereMemo;

end;

procedure TBOKOrderForm.AddToWhereMemo;
begin

    If Length(Memo1.Lines.Text) > 0 Then
    Begin
      Memo1.Lines.Text := Memo1.Lines.Text + ' And ';
      Memo1.Lines.Add('');
    End;

    Memo1.Lines.Text := Memo1.Lines.Text + Table1.FieldByName('Name').AsString;

    If BOKOrderForm.Table1.FieldByname('COL_TYPE').AsString = 'D' Then
      Memo1.Lines.Text := Memo1.Lines.Text + ' Between ''' +
      MaskEdit1.Text + ''' And ''' + MaskEdit2.Text + '''';
    If BOKOrderForm.Table1.FieldByname('COL_TYPE').AsString = 'N' Then
      Memo1.Lines.Text := Memo1.Lines.Text + ' Between ' +
      MaskEdit1.Text + ' And ' + MaskEdit2.Text;
    If BOKOrderForm.Table1.FieldByname('COL_TYPE').AsString = 'C' Then
      Memo1.Lines.Text := Memo1.Lines.Text + ' Like ''%' +
      MaskEdit1.Text + '%''';
    If (BOKOrderForm.Table1.FieldByname('COL_TYPE').AsString = 'L') Or
       (BOKOrderForm.Table1.FieldByname('COL_TYPE').AsString = 'P') Or
       (BOKOrderForm.Table1.FieldByname('COL_TYPE').AsString = 'R') Or
       (BOKOrderForm.Table1.FieldByname('COL_TYPE').AsString = 'O') Then
        Memo1.Lines.Text := Memo1.Lines.Text + ' In (' +
        MaskEdit1.Text + ')';
    Memo1.Selstart := Length(Memo1.Lines.Text);

end;



///////////////////////////

procedure TBOKOrderForm.actPanelClauseExecute(Sender: TObject);
begin

  actTable.Checked := False;
  actForm.Checked  := False;

//  FormPanel.Visible := False;
//  TablePanel.Visible := False;
  PanelClause.Visible := True;

  MaskEdit1.SetFocus;
  fmOKGrid_Mode_Caption := 'Clause1';

end;

procedure TBOKOrderForm.MaskEdit1Enter(Sender: TObject);
begin
  fmOKGrid_Mode_Caption := 'Clause1';

end;

procedure TBOKOrderForm.MaskEdit2Enter(Sender: TObject);
begin
  fmOKGrid_Mode_Caption := 'Clause2';

end;

////////////////////////////////-------

procedure TBOKOrderForm.ListView1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
//  SpeedButton18.Enabled := not SpeedButton18.Enabled;
  Edit11.Text := Item.SubItems.Strings[3];
  Edit12.Text := Item.SubItems.Strings[4];

end;

procedure TBOKOrderForm.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in ['0'..'9',#8,#13]) Then Key:=#0;
end;

procedure TBOKOrderForm.Edit12Exit(Sender: TObject);
var
  I : Integer;
begin
  For I := 0 to ListView1.Items.Count - 1 do
    If ListView1.Items.Item[i].Selected Then
        ListView1.Items.Item[i].SubItems.Strings[4] := Edit12.Text;
end;

procedure TBOKOrderForm.Edit11Exit(Sender: TObject);
var
  I : Integer;
begin
  For I := 0 to ListView1.Items.Count - 1 do
    If ListView1.Items.Item[i].Selected Then
        ListView1.Items.Item[i].SubItems.Strings[3] := Edit11.Text;
end;

procedure TBOKOrderForm.BitBtn11Click(Sender: TObject);
begin
  ListView1.Items.Clear;
  Edit11.Text := '';
  Edit12.Text := '';
end;

procedure TBOKOrderForm.SpeedButton19Click(Sender: TObject);
Var CurInd,MaxInd,MinInd,NewInd : Integer;
begin

  if ListView1.Selected <> nil
  then begin
   CurInd := ListView1.Selected.Index;
   MaxInd := ListView1.Items.Count-1;
   MinInd := 0;
   if CurInd > MinInd then NewInd := CurInd-1
                      else NewInd := MaxInd;
   ListView1.Items.Insert(NewInd);
   ListView1.Items.Item[NewInd] := ListView1.Items.Item[CurInd + 1];
   ListView1.Items.Delete(CurInd+1);
   ListView1.Items.Item[NewInd].Selected := True;
  end else showmessage('Сначала выберите поле для перемещения!');

end;

procedure TBOKOrderForm.SpeedButton20Click(Sender: TObject);
Var CurInd,MaxInd,MinInd,NewInd : Integer;
begin
  if ListView1.Selected <> nil
  then begin
   CurInd := ListView1.Selected.Index;
   MaxInd := ListView1.Items.Count-1;
   MinInd := 0;
   if CurInd < MaxInd then NewInd := CurInd+1
                      else NewInd := MinInd;
   ListView1.Items.Insert(NewInd + 1);
   ListView1.Items.Item[NewInd + 1] := ListView1.Items.Item[CurInd];
   ListView1.Items.Delete(CurInd);
   ListView1.Items.Item[NewInd].Selected := True;
  end else showmessage('Сначала выберите поле для перемещения!');
end;

procedure TBOKOrderForm.SpeedButton5Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' = ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton6Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' < ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton7Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' > ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton8Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' <> ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton9Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' <= ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton10Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' >= ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton11Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' Not ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton12Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' Or ';
  Memo1.Lines.Add('');
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton13Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' And ';
  Memo1.Lines.Add('');
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton21Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' (';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton22Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ') ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton14Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' Like ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton15Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' Between ';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.SpeedButton16Click(Sender: TObject);
begin
  Memo1.Lines.Text := Memo1.Lines.Text + ' In (';
  Memo1.Selstart := Length(Memo1.Lines.Text);
end;

procedure TBOKOrderForm.BitBtn12Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TBOKOrderForm.SpeedButton17Click(Sender: TObject);
begin
  if cboNsi.ItemIndex=-1
  then begin
    showmessage('условие может быть добавлено только из полей для выбора');
    exit;
  end;

  If (BOKOrderForm.Table1.FieldByName('COL_TYPE').AsString = 'Y') Then Exit;
//showmessage('@1');
  actPanelClause.Execute;
//showmessage('@2');

//  Label22.Caption := BOKOrderForm.Table1.FieldByname('NAME_DISPL').AsString + ' сотрудника';
  Label22.Caption := BOKOrderForm.Table1.FieldByname('NAME_DISPL').AsString + ' сотрудника';
//showmessage('@3');
  MaskEdit1.EditMask := '';
  MaskEdit2.EditMask := '';
  MaskEdit1.Text := '';
  MaskEdit2.Text := '';
  MaskEdit1.Visible := True;
  MaskEdit2.Visible := True;
//showmessage('@4');
  Label23.Visible := True;
//showmessage('@5');

  If BOKOrderForm.Table1.FieldByName('COL_TYPE').AsString = 'D' Then
  Begin
//showmessage('@6');
    Label21.Caption := 'Между';
    MaskEdit1.EditMask := '!90/90/0000;1;_';
    MaskEdit2.EditMask := '!90/90/0000;1;_';
//    PanelMain.Visible:=false;
//    PanelQuery.Visible:=false;
//    PanelClause.Visible:=true;
  End;
//showmessage('@7');

  If BOKOrderForm.Table1.FieldByName('COL_TYPE').AsString = 'N' Then
  Begin
    Label21.Caption := 'Между';
//showmessage('@8');
  End;
//showmessage('@9');

  If BOKOrderForm.Table1.FieldByName('COL_TYPE').AsString = 'C' Then
  Begin
//showmessage('@10');
    Label21.Caption := 'Содержит слово';
    MaskEdit2.Visible := False;
    Label23.Visible := False;
  End;
//showmessage('@11');

  If (BOKOrderForm.Table1.FieldByName('COL_TYPE').AsString = 'L') Or
     (BOKOrderForm.Table1.FieldByName('COL_TYPE').AsString = 'P') Or
     (BOKOrderForm.Table1.FieldByName('COL_TYPE').AsString = 'R') Or
     (BOKOrderForm.Table1.FieldByName('COL_TYPE').AsString = 'O') Then
  Begin
//showmessage('@12');
    Label21.Caption := 'Включает';
    MaskEdit2.Visible := False;
    Label23.Visible := False;
  End;
//showmessage('@13');

//  actPanelClause.Execute;

end;

procedure TBOKOrderForm.PrepareQuery;
var
  SqlText, from_or_comma : String;
  I, L : Integer;
begin

// Select
  SqlText := 'Select ';
  L := ListView1.Items.Count - 1;
  For I := 0 to L
  do SqlText := SqlText + ListView1.Items.Item[i].SubItems.Strings[1] + ' FF'+inttostr(I)+', ';

//  SqlText := SqlText + 'PP.id ';
  SqlText := Copy(SqlText, 1, Length(SqlText)-2);
// From
//  SqlText := SqlText + ' From ok_personal PP ';
  if (Pos('PP.',SqlText) <> 0) or (Pos('PP.',Memo1.Text) <> 0)
  then begin
    SqlText := SqlText + ' from OK_PERSONAL PP '
  end;

  if pos(' from OK',SqlText)>0
  then from_or_comma :=','
  else from_or_comma :=' from ';

  if (Pos('AC.',SqlText) <> 0) or (Pos('AC.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_ACADEMIC AC ';

  if (Pos('AD.',SqlText) <> 0) or (Pos('AD.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_ADDINFORM AD ';

  if (Pos('AR.',SqlText) <> 0) or (Pos('AR.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_ARMY AR ';

  if (Pos('AA.',SqlText) <> 0) or (Pos('AA.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_ATTESTATION AA ';

  if (Pos('AW.',SqlText) <> 0) or (Pos('AW.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_AWARD AW ';

  if (Pos('CH.',SqlText) <> 0) or (Pos('CH.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_change_fio CH ';

  if (Pos('CO.',SqlText) <> 0) or (Pos('CO.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_CONVICTIONS CO ';

  if (Pos('DE.',SqlText) <> 0) or (Pos('DE.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_DEGREE DE ';

  if (Pos('ED.',SqlText) <> 0) or (Pos('ED.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_EDUCATION ED ';

  if (Pos('EL.',SqlText) <> 0) or (Pos('EL.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_ELECTION EL ';

  if (Pos('LA.',SqlText) <> 0) or (Pos('LA.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_LANGUAGE LA ';

  if (Pos('LE.',SqlText) <> 0) or (Pos('LE.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_LEAVE LE ';

  if (Pos('PA.',SqlText) <> 0) or (Pos('PA.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_PARTY PA ';

  if (Pos('PE.',SqlText) <> 0) or (Pos('PE.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_PENALTY PE ';

  if (Pos('PR.',SqlText) <> 0) or (Pos('PR.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_PERIOD PR ';

//  if (Pos('PO.',SqlText) <> 0) or (Pos('PO.',Memo1.Text) <> 0)
//  then SqlText := SqlText + from_or_comma+'  OK_POST PO ';

  if (Pos('PM.',SqlText) <> 0) or (Pos('PM.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_PREMIUM PM ';

  if (Pos('RE.',SqlText) <> 0) or (Pos('RE.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_RELATION RE ';

  if (Pos('RI.',SqlText) <> 0) or (Pos('RI.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_RISE RI ';

  if (Pos('SC.',SqlText) <> 0) or (Pos('SC.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_SCIENTIFIC SC ';

  if (Pos('VO.',SqlText) <> 0) or (Pos('VO.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_VOYAGE VO ';

  if (Pos('YO.',SqlText) <> 0) or (Pos('YO.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_YOUTH YO ';

  if (Pos('KU.',SqlText) <> 0) or (Pos('KU.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_KURS KU,SS_OK_KV_KURS KUKU ';

  if (Pos('HO.',SqlText) <> 0) or (Pos('HO.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_HOSPITAL HO ';

  if (Pos('PI.',SqlText) <> 0) or (Pos('PI.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_PRIVILEGE PI ';

  if (Pos('II.',SqlText) <> 0) or (Pos('II.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_INCREASE II ';

  if (Pos('BV.',SqlText) <> 0) or (Pos('BV.',Memo1.Text) <> 0)
  then SqlText := SqlText + from_or_comma+' OK_BUSINESS_VOYAGE BV ';

// Where
  SqlText := SqlText + ' Where pp.branch=info.getbranch ';

  if pos('from OK_PERSONAL PP',SqlText)>0
  then begin
    Case RG_Status.ItemIndex of
    0 :  SqlText := SqlText + ' And PP.Status_code = 1 ';
    1 : SqlText := SqlText + ' And PP.Status_code = 2 ';
    2 : SqlText := SqlText + ' And PP.Status_code in(2,5) ';
    3 : SqlText := SqlText + ' And PP.Status_code = 5 ';
    4 : SqlText := SqlText + ' And PP.Status_code = 4 ';
    5 : SqlText := SqlText + ' And PP.Status_code = 3 ';
    Else

//          SqlText := SqlText + ' Where E.State in (''Y'',''N'') ';
    End;

      if (Pos('AC.',SqlText) <> 0) or (Pos('AC.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AC.branch and PP.personal_code=AC.personal_code ';

      if (Pos('AD.',SqlText) <> 0) or (Pos('AD.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AD.branch and PP.personal_code=AD.personal_code ';

      if (Pos('AR.',SqlText) <> 0) or (Pos('AR.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AR.branch and PP.personal_code=AR.personal_code ';

      if (Pos('AT.',SqlText) <> 0) or (Pos('AT.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AT.branch and PP.personal_code=AT.personal_code ';

      if (Pos('AW.',SqlText) <> 0) or (Pos('AW.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AW.branch and PP.personal_code=AW.personal_code ';

      if (Pos('CH.',SqlText) <> 0) or (Pos('CH.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = CH.branch and PP.personal_code=CH.personal_code ';

      if (Pos('CO.',SqlText) <> 0) or (Pos('CO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = CO.branch and PP.personal_code=CO.personal_code ';

      if (Pos('DE.',SqlText) <> 0) or (Pos('DE.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = DE.branch and PP.personal_code=DE.personal_code ';

      if (Pos('ED.',SqlText) <> 0) or (Pos('ED.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = ED.branch and PP.personal_code=ED.personal_code ';

      if (Pos('EL.',SqlText) <> 0) or (Pos('EL.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = EL.branch and PP.personal_code=EL.personal_code ';

      if (Pos('LA.',SqlText) <> 0) or (Pos('LA.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = LA.branch and PP.personal_code=LA.personal_code ';

      if (Pos('LE.',SqlText) <> 0) or (Pos('LE.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = LE.branch and PP.personal_code=LE.personal_code ';

      if (Pos('PA.',SqlText) <> 0) or (Pos('PA.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PA.branch and PP.personal_code=PA.personal_code ';

      if (Pos('PE.',SqlText) <> 0) or (Pos('PE.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PE.branch and PP.personal_code=PE.personal_code ';

      if (Pos('PR.',SqlText) <> 0) or (Pos('PR.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PR.branch and PP.personal_code=PR.personal_code ';

      if (Pos('PO.',SqlText) <> 0) or (Pos('PO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PO.branch and PP.personal_code=PO.personal_code ';

      if (Pos('PM.',SqlText) <> 0) or (Pos('PM.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PM.branch and PP.personal_code=PM.personal_code ';

      if (Pos('RE.',SqlText) <> 0) or (Pos('RE.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = RE.branch and PP.personal_code=RE.personal_code ';

      if (Pos('RI.',SqlText) <> 0) or (Pos('RI.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = RI.branch and PP.personal_code=RI.personal_code ';

      if (Pos('SC.',SqlText) <> 0) or (Pos('SC.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = SC.branch and PP.personal_code=SC.personal_code ';

      if (Pos('VO.',SqlText) <> 0) or (Pos('VO.',Memo1.Text) <> 0)
      THEN  SqlText := SqlText + ' And PP.branch = VO.branch and PP.personal_code=VO.personal_code ';

      if (Pos('YO.',SqlText) <> 0) or (Pos('YO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = YO.branch and PP.personal_code=YO.personal_code ';

      if (Pos('KU.',SqlText) <> 0) or (Pos('KU.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = KU.branch and PP.personal_code=KU.personal_code '+
         ' and KU.KV_KURS_CODE=KUKU.KV_KURS_CODE';

      if (Pos('HO.',SqlText) <> 0) or (Pos('HO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = HO.branch and PP.personal_code=HO.personal_code ';

      if (Pos('PI.',SqlText) <> 0) or (Pos('YO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PI.branch and PP.personal_code=PI.personal_code ';

      if (Pos('II.',SqlText) <> 0) or (Pos('II.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = II.branch and PP.personal_code=II.personal_code ';

      if (Pos('BV.',SqlText) <> 0) or (Pos('BV.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = BV.branch and PP.personal_code=BV.personal_code ';

  end else begin
    if pos(' Where ',SqlText)=0
    then SqlText := SqlText + ' Where 1=1 ';

    if (Pos('KU.',SqlText) <> 0) or (Pos('KU.',Memo1.Text) <> 0)
      then  SqlText := SqlText +
         ' and KU.KV_KURS_CODE=KUKU.KV_KURS_CODE';
{
      if (Pos('AC.',SqlText) <> 0) or (Pos('AC.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AC.branch and PP.personal_code=AC.personal_code ';

      if (Pos('AD.',SqlText) <> 0) or (Pos('AD.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AD.branch and PP.personal_code=AD.personal_code ';

      if (Pos('AR.',SqlText) <> 0) or (Pos('AR.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AR.branch and PP.personal_code=AR.personal_code ';

      if (Pos('AT.',SqlText) <> 0) or (Pos('AT.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AT.branch and PP.personal_code=AT.personal_code ';

      if (Pos('AW.',SqlText) <> 0) or (Pos('AW.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = AW.branch and PP.personal_code=AW.personal_code ';

      if (Pos('CH.',SqlText) <> 0) or (Pos('CH.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = CH.branch and PP.personal_code=CH.personal_code ';

      if (Pos('CO.',SqlText) <> 0) or (Pos('CO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = CO.branch and PP.personal_code=CO.personal_code ';

      if (Pos('DE.',SqlText) <> 0) or (Pos('DE.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = DE.branch and PP.personal_code=DE.personal_code ';

      if (Pos('ED.',SqlText) <> 0) or (Pos('ED.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = ED.branch and PP.personal_code=ED.personal_code ';

      if (Pos('EL.',SqlText) <> 0) or (Pos('EL.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = EL.branch and PP.personal_code=EL.personal_code ';

      if (Pos('LA.',SqlText) <> 0) or (Pos('LA.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = LA.branch and PP.personal_code=LA.personal_code ';

      if (Pos('LE.',SqlText) <> 0) or (Pos('LE.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = LE.branch and PP.personal_code=LE.personal_code ';

      if (Pos('PA.',SqlText) <> 0) or (Pos('PA.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PA.branch and PP.personal_code=PA.personal_code ';

      if (Pos('PE.',SqlText) <> 0) or (Pos('PE.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PE.branch and PP.personal_code=PE.personal_code ';

      if (Pos('PR.',SqlText) <> 0) or (Pos('PR.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PR.branch and PP.personal_code=PR.personal_code ';

      if (Pos('PO.',SqlText) <> 0) or (Pos('PO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PO.branch and PP.personal_code=PO.personal_code ';

      if (Pos('PM.',SqlText) <> 0) or (Pos('PM.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PM.branch and PP.personal_code=PM.personal_code ';

      if (Pos('RE.',SqlText) <> 0) or (Pos('RE.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = RE.branch and PP.personal_code=RE.personal_code ';

      if (Pos('RI.',SqlText) <> 0) or (Pos('RI.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = RI.branch and PP.personal_code=RI.personal_code ';

      if (Pos('SC.',SqlText) <> 0) or (Pos('SC.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = SC.branch and PP.personal_code=SC.personal_code ';

      if (Pos('VO.',SqlText) <> 0) or (Pos('VO.',Memo1.Text) <> 0)
      THEN  SqlText := SqlText + ' And PP.branch = VO.branch and PP.personal_code=VO.personal_code ';

      if (Pos('YO.',SqlText) <> 0) or (Pos('YO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = YO.branch and PP.personal_code=YO.personal_code ';


      if (Pos('HO.',SqlText) <> 0) or (Pos('HO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = HO.branch and PP.personal_code=HO.personal_code ';

      if (Pos('PI.',SqlText) <> 0) or (Pos('YO.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = PI.branch and PP.personal_code=PI.personal_code ';

      if (Pos('II.',SqlText) <> 0) or (Pos('II.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = II.branch and PP.personal_code=II.personal_code ';

      if (Pos('BV.',SqlText) <> 0) or (Pos('BV.',Memo1.Text) <> 0)
      then  SqlText := SqlText + ' And PP.branch = BV.branch and PP.personal_code=BV.personal_code ';
}
  end;

  if pos(' Where ',SqlText)=0
  then SqlText := SqlText + ' Where 1=1 ';



  If Length(Memo1.Text) > 0 Then
    SqlText := SqlText + ' And ' + Memo1.Text;
  SqlText := SqlText + ' Order By ' ;
  If L > 1 Then L := 1;
  For I := 0 to L do
    SqlText := SqlText + ListView1.Items.Item[i].SubItems.Strings[1] + ', ';
  SqlText := Copy(SqlText, 1, Length(SqlText)-2);
  memoSql.Clear;
  memoSql.lines.add(SqlText);
//ShowMessage(      SqlText);
  Gauge1.MaxValue := 10;

  Try
    LoadData(BOKOrderForm.Query1,SqlText);
    Gauge1.MaxValue := BOKOrderForm.Query1.RecordCount;
  Except
  on E: Exception do
    Begin
      ShowErrorBox('Ошибка. Такой отчет невозможно сгенерировать.',E.Message+' '+#13+' '+SqlText,Self.Caption);

//      ShowErrorBox('Ошибка.'+#13+'Такой отчет невозможно сгенерировать.',E.Message,Self.Caption);
//      ShowMessage(
//      SqlText+#13+
//      'Ошибка.'+#13+'Такой отчет невозможно сгенерировать.'+#13+E.Message);
    End;
  End;

  Gauge1.Progress := 0;
end;



//////////////////////////////////////---------------------


procedure TBOKOrderForm.DBGrid11Enter(Sender: TObject);
begin
  SpeedButton18.Enabled := True;

end;

Procedure TBOKOrderForm.CreateRep(PP : Boolean);
Var
  I1,I2, L1,L2, J2 : Integer;
  Str1,Str2 : String;
  F                                 : TextFile;

Begin

  if not Query1.Active then EXIT;

  If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');

  try
    System.AssignFile(f,'C:\NCI Bank\OK\Temp\report_ok2.txt');
    System.Rewrite(f);

    Try

//      System.Writeln(f,'ТЕКСТ ОДНОЙ СТРОКИ В ФАЙЛЕ');
      System.Writeln(f,'');
      Gauge1.Visible := True;
      Gauge1.Progress := Gauge1.Progress + 1;
      System.Writeln(f,'      ' + BOKOrderForm.cds_ss_ok_Pers_Query.FieldByname('NAME').AsString);

      Str1 := '|';
      If PP
      Then Str1 := '|п/п|';

      With ListView1.Items
      Do Begin
        for I1 := 0 to Count - 1
        do begin
              L1 := StrToInt(Item[i1].SubItems.Strings[4]);
              Str1 := Str1 + RPad(Item[i1].SubItems.Strings[3],L1,' ') + '|';
        end;
      End;
      System.Writeln(f,RPad('-',Length(Str1),'-'));
      System.Writeln(f,Str1);
      System.Writeln(f,RPad('-',Length(Str1),'-'));
////////////////////////////////////////////////////////////
      With Query1
      do Begin
        First;
        J2 := 1;
        While Not Eof
        Do Begin
          Str2 := '|';
          If PP
          Then Str2 := '|' + LPad(IntToStr(J2),3,' ') + '|';

          For I2 := 0 to ListView1.Items.Count - 1 do
          Begin
            L2 := StrToInt( BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[4]);
            Str2 := Str2 + RPad(Fields.Fields[I2].AsString, L2, ' ') + '|';
          End;

          System.Writeln(f,Str2);
          System.Writeln(f,RPad('-',Length(Str2),'-'));
          Gauge1.Progress := Gauge1.Progress + 1;
          Inc(J2);
          Next;
        End;
      End;

      System.Writeln(f,'');
      System.Writeln(f,'     Отчет сформирован: ' + DateToStr(Now));
      Gauge1.Visible := False;
//  fmSaveOKEditor.ShowModal;
//  fmSaveOKEditor.Close;

////////////////////////////////////////////////////////////


    Finally
      System.CloseFile(f);
    End;
  except
    showmessage('Не удалось сохранить данные в файл "C:\NCI Bank\OK\Temp\report_ok2.txt"');
  end;

  try
    WinExec('notepad C:\NCI Bank\OK\Temp\report_ok2.txt', SW_MAXIMIZE);
  except
    showmessage('Не удалось открыть в блокноте "notepad C:\NCI Bank\OK\Temp\report_ok2.txt"');
  end;


// TRY
//  If fmSaveOKEditor = nil Then fmSaveOKEditor := TfmOKEditor.Create(Self);

//  fmSaveOKEditor.Editor.Lines.Clear;
//  fmSaveOKEditor.Editor.Lines.Add('');
//  Gauge1.Visible := True;
//  Gauge1.Progress := Gauge1.Progress + 1;
//  fmSaveOKEditor.Editor.Lines.Add('      ' + BOKOrderForm.cds_ss_ok_Pers_Query.FieldByname('NAME').AsString);

{  Str1 := '|';
  If PP Then
  Str1 := '|п/п|';
  With ListView1.Items do
  For I1 := 0 to Count - 1 do
  Begin
      L1 := StrToInt(Item[i1].SubItems.Strings[4]);
      Str1 := Str1 + RPad(Item[i1].SubItems.Strings[3],L1,' ') + '|';
  End;
  fmSaveOKEditor.Editor.Lines.Add(RPad('-',Length(Str1),'-'));
  fmSaveOKEditor.Editor.Lines.Add(Str1);
  fmSaveOKEditor.Editor.Lines.Add(RPad('-',Length(Str1),'-'));
}
//  With Query1 do
//  Begin
//    First;
//    J2 := 1;
//    While Not Eof Do
//    Begin
//      Str2 := '|';
//      If PP Then
//      Str2 := '|' + LPad(IntToStr(J2),3,' ') + '|';
//      For I2 := 0 to ListView1.Items.Count - 1 do
//      Begin
//        L2 := StrToInt( BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[4]);

{        If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'L'
          Then Str2 := Str2 + RPad(NameSp(Fields.Fields[I2].AsString), L2, ' ') + '|'

          else If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'P'
          Then
            Str2 := Str2 + RPad(NameDep(Fields.Fields[I2].AsString), L2, ' ') + '|'

          else If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'O'
          Then
            Str2 := Str2 + RPad(NameOcc(Fields.Fields[I2].AsString), L2, ' ') + '|'

          else If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'Y'
          Then
            Str2 := Str2 + RPad(NameYear(Fields.FieldByName('Code').AsString), L2, ' ') + '|'

{          If (BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] <> 'L') And
             (BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] <> 'P') And
             (BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] <> 'Y') And
             (BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] <> 'O')
          Then
            Str2 := Str2 + RPad(Fields.Fields[I2].AsString, L2, ' ') + '|';
}
//
{         else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R1'
          Then Str2 := Str2 + RPad(Name1(Fields.Fields[I2].AsString), L2, ' ') + '|'

          else If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R2'
          Then Str2 := Str2 + RPad(Name2(Fields.Fields[I2].AsString), L2, ' ') + '|'

          else If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R3'
          Then Str2 := Str2 + RPad(Name3(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R4'
          Then Str2 := Str2 + RPad(Name4(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R5'
          Then Str2 := Str2 + RPad(Name5(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R6'
          Then Str2 := Str2 + RPad(Name6(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R7'
          Then Str2 := Str2 + RPad(Name7(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R8'
          Then Str2 := Str2 + RPad(Name8(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R9'
          Then Str2 := Str2 + RPad(Name9(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RA'
          Then Str2 := Str2 + RPad(NameA(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RB'
          Then Str2 := Str2 + RPad(NameB(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RC'
          Then Str2 := Str2 + RPad(NameC(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RD'
          Then Str2 := Str2 + RPad(NameD(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RE'
          Then Str2 := Str2 + RPad(NameE(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RF'
          Then Str2 := Str2 + RPad(NameF(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RG'
          Then Str2 := Str2 + RPad(NameG(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RH'
          Then Str2 := Str2 + RPad(NameH(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RI'
          Then Str2 := Str2 + RPad(NameI(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RJ'
          Then Str2 := Str2 + RPad(NameJ(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RK'
          Then Str2 := Str2 + RPad(NameK(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RL'
          Then Str2 := Str2 + RPad(NameL(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RM'
          Then Str2 := Str2 + RPad(NameM(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RN'
          Then Str2 := Str2 + RPad(NameN(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RO'
          Then Str2 := Str2 + RPad(NameO(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RP'
          Then Str2 := Str2 + RPad(NameP(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RQ'
          Then Str2 := Str2 + RPad(NameQ(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RR'
          Then Str2 := Str2 + RPad(NameR(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RS'
          Then Str2 := Str2 + RPad(NameS(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RT'
          Then Str2 := Str2 + RPad(NameT(Fields.Fields[I2].AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RU'
          Then Str2 := Str2 + RPad(NameU(Fields.Fields[I2].AsString), L2, ' ') + '|' else

          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RV'
          Then Str2 := Str2 + RPad(NameV(Fields.Fields[I2].AsString), L2, ' ') + '|' else


          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'RW'
          Then Str2 := Str2 + RPad(NameW(Fields.Fields[I2].AsString), L2, ' ') + '|'
          else
}
// кроме них
//          Str2 := Str2 + RPad(Fields.Fields[I2].AsString, L2, ' ') + '|';

{ //было
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = '1'
          Then Str2 := Str2 + RPad(Name1(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|'

          else If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = '2'
          Then Str2 := Str2 + RPad(Name2(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|'

          else If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = '3'
          Then Str2 := Str2 + RPad(Name3(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = '4'
          Then Str2 := Str2 + RPad(Name4(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = '5'
          Then Str2 := Str2 + RPad(Name5(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = '6'
          Then Str2 := Str2 + RPad(Name6(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = '7'
          Then Str2 := Str2 + RPad(Name7(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = '8'
          Then Str2 := Str2 + RPad(Name8(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = '9'
          Then Str2 := Str2 + RPad(Name9(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'A'
          Then Str2 := Str2 + RPad(NameA(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'B'
          Then Str2 := Str2 + RPad(NameB(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'C'
          Then Str2 := Str2 + RPad(NameC(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'D'
          Then Str2 := Str2 + RPad(NameD(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'E'
          Then Str2 := Str2 + RPad(NameE(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'F'
          Then Str2 := Str2 + RPad(NameF(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'G'
          Then Str2 := Str2 + RPad(NameG(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'H'
          Then Str2 := Str2 + RPad(NameH(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'I'
          Then Str2 := Str2 + RPad(NameI(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'J'
          Then Str2 := Str2 + RPad(NameJ(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'K'
          Then Str2 := Str2 + RPad(NameK(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'L'
          Then Str2 := Str2 + RPad(NameL(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'M'
          Then Str2 := Str2 + RPad(NameM(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'N'
          Then Str2 := Str2 + RPad(NameN(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'O'
          Then Str2 := Str2 + RPad(NameO(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'P'
          Then Str2 := Str2 + RPad(NameP(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'Q'
          Then Str2 := Str2 + RPad(NameQ(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'R'
          Then Str2 := Str2 + RPad(NameR(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'S'
          Then Str2 := Str2 + RPad(NameS(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'T'
          Then Str2 := Str2 + RPad(NameT(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else
          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'U'
          Then Str2 := Str2 + RPad(NameU(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else

          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'V'
          Then Str2 := Str2 + RPad(NameV(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|' else


          If BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[2] = 'W'
          Then Str2 := Str2 + RPad(NameW(Fields.FieldByName('personal_code').AsString), L2, ' ') + '|'
          else

// кроме них
          Str2 := Str2 + RPad(Fields.Fields[I2].AsString, L2, ' ') + '|';
}

//      End;

//      fmSaveOKEditor.Editor.Lines.Add(Str2);
//      fmSaveOKEditor.Editor.Lines.Add(RPad('-',Length(Str2),'-'));
//      Gauge1.Progress := Gauge1.Progress + 1;
//      Inc(J2);
//      Next;
//    End;
//  End;
//  fmSaveOKEditor.Editor.Lines.Add('     Отчет сформирован: ' + DateToStr(Now));
//  Gauge1.Visible := False;
//  fmSaveOKEditor.ShowModal;
//  fmSaveOKEditor.Close;
// FINALLY
//  fmSaveOKEditor := nil;
// END;

End;


procedure TBOKOrderForm.BitBtn22Click(Sender: TObject);
begin
  actTable.Checked := False;
  actForm.Checked  := True;

  PanelClause.Visible := False;

end;

procedure TBOKOrderForm.SpeedButton1Click(Sender: TObject);
var sql_:string;
begin

  if cboNsi.ItemIndex=-1
  then begin
    showmessage('условие может быть добавлено только из полей для выбора');
    exit;
  end;
//showmessage(BOKOrderForm.Table1.FieldByName('SEL_SQL').AsString);
  if BOKOrderForm.Table1.FieldByName('SEL_SQL').AsString=''
  then begin
    SpeedButton17Click(nil);
    exit;
  end;

  qryTmp.Params.Clear;
//  Showmessage((Sender As TButtonEx).SQL);
  try
  sql_ := BOKOrderForm.Table1.FieldByName('SEL_SQL').AsString;
  LoadData(qryTmp,sql_,True);
  except on e:exception do
  showmessage(sql_+' '+e.message);
  end;

  try
//    ShowSelectDialog(Self,cdsNsi,cdsTemp,(Sender As TButtonEx).Tag);
//    With TSelectDialog.CreateEx(Self, Source, Destination, FieldIndex) do
// i := 0 to Fields.Count - 1 то есть номер поля в cdsNsi
    qryTmp.Edit;

    With TSelectDialog.CreateEx(Self, qryTmp,qryTmp, qryTmp.FindField('id').Index ) do
    Try
      If ShowModal = mrOk
      Then begin
       If Length(Memo1.Lines.Text) > 0
       Then Begin
         Memo1.Lines.Text := Memo1.Lines.Text + ' And ';
         Memo1.Lines.Add('');
       End;
////       if BOKOrderForm.Table1.FieldByName('SEL_SQL').AsString<>''
//       Memo1.Lines.Text := Memo1.Lines.Text + Table1.FieldByName('Name').AsString+
//         ' In ('''+qryTmp.FieldByName('NAME').AsString+''')';
       if chbotdel.Checked
       then begin
         if Table1.FieldByName('real_name').AsString='PP.DEPARTMENT_CODE'
         then begin
           Memo1.Lines.Text := Memo1.Lines.Text + '('+Table1.FieldByName('real_name').AsString+
             ' ='''+qryTmp.FieldByName('id').AsString+''' ';
           Memo1.Lines.Text := Memo1.Lines.Text +       ' OR pp.department_code in '+
                  '(select d.department_code from ss_ok_department d'+
                  ' connect by d.high_dep_code = prior d.department_code'+
                  ' start with d.high_dep_code='+ qryTmp.FieldByName('id').AsString+') )';

         end;
       end else begin
         Memo1.Lines.Text := Memo1.Lines.Text + Table1.FieldByName('real_name').AsString+
           ' ='''+qryTmp.FieldByName('id').AsString+''' ';
       end;
       Memo1.Selstart := Length(Memo1.Lines.Text);
      end;
    Finally
      Destination.Filtered := False;
      Free;
    End;

  finally
    qryTmp.Close;
  end;

end;

procedure TBOKOrderForm.actDeleteExecute(Sender: TObject);
begin
  if ListView1.Selected <> nil
  then begin
    ListView1.Selected.Delete;
  end else showmessage('Сначала выберите поле для перемещения!');;

end;

procedure TBOKOrderForm.actDeleteAllExecute(Sender: TObject);
begin
  ListView1.Items.Clear;
  Edit11.Text := '';
  Edit12.Text := '';

end;

procedure TBOKOrderForm.actAddExecute(Sender: TObject);
Var
 I : Integer;
begin
  ListItem := ListView1.Items.Add;
  ListItem.Caption := BOKOrderForm.Table1.FieldbyName('Name_DISPL').AsString;

  For I := 0 To BOKOrderForm.Table1.FieldCount-1 Do
    If (BOKOrderForm.Table1.Fields.Fields[I].FieldName <> 'NAME_DISPL')
    then begin
       ListItem.SubItems.Add(BOKOrderForm.Table1.Fields.Fields[I].AsString);
    end;

end;

procedure TBOKOrderForm.ActExcelExecute(Sender: TObject);
var
 V: Variant;
// i, col,row,nn,col1:integer;
 row,col1:integer;
 DateFormat,StrFormat: String;
 PP:boolean;
 I1,I2,  J2 : Integer;
// L1,L2 : Integer;
 Str1 : String;

begin

//  if panelMain.Visible
//  then actEditQueryExecute(nil);

  PrepareQuery;
  if not Query1.Active then EXIT;

  PP:=CheckBox1.Checked  ;

  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;

  BOKOrderForm.Query1.First;
//  cdbgOK_PERSONAL.DataSource.Dataset.First;

  row:=1;
  StrFormat  := '@';
  try
//    V.Cells[row,3].NumberFormat := '00.0';
//    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
//    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  row:=1;
  Gauge1.Visible := True;
  Gauge1.Progress := Gauge1.Progress + 1;
  V.Cells[row,2].Value := '      ' + BOKOrderForm.cds_ss_ok_Pers_Query.FieldByname('NAME').AsString;
  inc(row);

  col1:=1;
  If PP
  Then V.Cells[row, col1 ].Value := 'п/п';
  inc(col1);

  With ListView1.Items
  Do Begin
  for I1 := 0 to Count - 1
    do begin
//      L1 := StrToInt(Item[i1].SubItems.Strings[4]);
//      Str1 := RPad(Item[i1].SubItems.Strings[3],L1,' '); // дополнено пробелами справа
      Str1 := Item[i1].SubItems.Strings[3]; // без пробелов
      V.Cells[row, col1 ].Value := str1;
      inc(col1);
    end;
  End;
  inc(row);
      With Query1
      do Begin
        First;
        J2 := 1;
        While Not Eof
        Do Begin

        col1:=1;
        If PP
        Then V.Cells[row, col1 ].Value := LPad(IntToStr(J2),3,' ');
        inc(col1);


        For I2 := 0 to ListView1.Items.Count - 1 do
        Begin
//          L2 := StrToInt( BOKOrderForm.ListView1.Items.Item[i2].SubItems.Strings[4]);
//          V.Cells[row, col1 ].Value := RPad(Fields.Fields[I2].AsString, L2, ' ') ; // дополнено пробелами справа
          V.Cells[row, col1 ].NumberFormat := StrFormat;
          V.Cells[row, col1 ].Value := Fields.Fields[I2].AsString ; // без пробелов
          inc(col1);
        End;
//
//          System.Writeln(f,Str2);
//          System.Writeln(f,RPad('-',Length(Str2),'-'));
          Gauge1.Progress := Gauge1.Progress + 1;
          Inc(row);
          Inc(j2);
          Next;
        End;
      End;

//      System.Writeln(f,'     Отчет сформирован: ' + DateToStr(Now));
      Inc(row);
      V.Cells[row, 2 ].Value := '     Отчет сформирован: ' + DateToStr(Now);
      Gauge1.Visible := False;

      V.Cells.Select;
      V.Columns.AutoFit;
      V.Visible := True; //так быстрее


{
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
          ftDateTime:    V.Cells[row, i ].NumberFormat := DateFormat;
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
}
end;

procedure TBOKOrderForm.ActNotepadExecute(Sender: TObject);
begin
//  if panelMain.Visible
//  then actEditQueryExecute(nil);

  PrepareQuery;
  CreateRep(CheckBox1.Checked);
  
end;

procedure TBOKOrderForm.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0
  then begin
    Memo2.Visible:=false;
    Memo1.Visible:=true;
  end else begin
    Memo1.Visible:=false;
    Memo2.Visible:=true;
  end;

end;

procedure TBOKOrderForm.cboNsiChange(Sender: TObject);
begin

  id_kod:=TNsiData(cboNsi.Items.Objects[cboNsi.ItemIndex]).Id;

  Try
    LoadData(Table1, SQL_Table1+ ' where code_table = ''' +
        id_kod + ''' order by code_num');
  Except
  On E: Exception Do
    Begin
      ShowMessage(
      'таблица SS_OK_PERS_COL_DFLT'+#13+
      'Ошибка.'+#13+E.Message);
    End;
  End;

end;

procedure TBOKOrderForm.actNewQueryExecute(Sender: TObject);
begin
  actTableExecute(nil);
  cds_ss_ok_Pers_Query.Insert;
end;

procedure TBOKOrderForm.actTableExecute(Sender: TObject);
begin

  actTable.Checked := True;
  actForm.Checked  := False;
//  actNew.Checked     := False;

  PanelClause.Visible:=false;
//  FormPanel.Visible:=false;
//  TablePanel.Visible:=true;

end;

procedure TBOKOrderForm.actFormExecute(Sender: TObject);
Var
 I : Integer;
begin

  actForm.Checked  := True;
  actTable.Checked := False;
//  actNew.Checked     := False;

  PanelClause.Visible:=false;
//  TablePanel.Visible:=false;
//  FormPanel.Visible:=true;

      LoadData(Query1,'Select * From ss_ok_Pers_Query_Col Where Code_Query = ' + cds_ss_ok_Pers_Query.fieldByName('CODE').AsString+' order by code_col');
      ListView1.Items.Clear;
      While Not Query1.Eof Do
      Begin
        ListItem := ListView1.Items.Add;
        ListItem.Caption := Query1.FieldByName('NAME_DISPL').AsString;

//        For I := 0 To Table1.FieldCount-1 Do
        For I := 0 To 8-1 Do
          If  (Query1.Fields.Fields[I].FieldName <> 'NAME_DISPL')
          And (Query1.Fields.Fields[I].FieldName <> 'CODE_QUERY')
          And (Query1.Fields.Fields[I].FieldName <> 'SEL_SQL')
          then begin
            ListItem.SubItems.Add(Query1.Fields.Fields[I].AsString);
//showmessage(Query1.Fields.Fields[I].AsString);
          end;
        Query1.Next;
      End;
      Memo1.Text := cds_ss_ok_Pers_Query.FieldByName('QUERY_CLAUSE').AsString;
      Caption := 'Запрос: ' + cds_ss_ok_Pers_Query.FieldByName('NAME').AsString;
end;

procedure TBOKOrderForm.actCancelExecute(Sender: TObject);
begin
  cds_ss_ok_Pers_Query.cancel;

end;

procedure TBOKOrderForm.actEditExecute(Sender: TObject);
begin
  actFormExecute(nil);
end;

procedure TBOKOrderForm.actChangeNameExecute(Sender: TObject);
begin
  ds_ss_ok_Pers_Query.edit;
//  ds_ss_ok_Pers_Query.fieldbyname('name').asstring:='';
end;

initialization
  RegisterClass(TBOKOrderForm);
finalization
  UnRegisterClass(TBOKOrderForm);
end.
