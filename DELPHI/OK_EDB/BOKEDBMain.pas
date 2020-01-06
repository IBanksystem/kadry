unit BOKEDBMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  Base, AboutDlg, SelDlg, errDlg, Utils, ActnList, Menus, ComCtrls, ToolWin,
  StdCtrls, Buttons, DB, DBClient, ComObj, ExtCtrls, Grids, DBGrids, dbctrls,
  Mask;

type
  TBOKEDBForm = class(TBaseForm)
    StatusBar1: TStatusBar;
    PC_Main: TPageControl;
    TabSheet1: TTabSheet;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    basa1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    ActionList1: TActionList;
    Actabout: TAction;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label10EDB: TLabel;
    edMFO: TEdit;
    bbGoToFilialEDB: TBitBtn;
    ActGoToFilial: TAction;
    cdsTemp: TClientDataSet;
    MemoProt: TMemo;
    CDS_DBBranch: TClientDataSet;
    ExecPrc: TClientDataSet;
    bbMutahassislar: TButton;
    ilova3: TBitBtn;
    cdsssokpost: TClientDataSet;
    chbTESTEDB: TCheckBox;
    cbRGN: TComboBox;
    CBII: TComboBox;
    Label1: TLabel;
    ilova4: TBitBtn;
    ilova2: TBitBtn;
    Label2XalkEDB: TLabel;
    dtp_From4: TDateTimePicker;
    dtp_To4: TDateTimePicker;
    TabSheet2: TTabSheet;
    gb_EDB_: TGroupBox;
    cdbgOK_PERSONAL: TClientDBGrid;
    cdsOKPersonal: TClientDataSetEx;
    dsOKPersonal: TDataSource;
    cdsSSOKDepartment_RO: TClientDataSetEx;
    cdsSSOKPost_SET: TClientDataSetEx;
    cdsSS_OK_GOSUBMIT: TClientDataSetEx;
    cdsOKPersonalFiltr: TClientDataSetEx;
    dsOKPersonalFiltr: TDataSource;
    GroupBox5: TGroupBox;
    BitBtn1: TBitBtn;
    bbgotopers: TBitBtn;
    bbPodtv: TBitBtn;
    bbUtv: TBitBtn;
    bbsubmituvol: TBitBtn;
    bbOtkaz: TBitBtn;
    gbFiltr: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    gbFields: TGroupBox;
    ClientDBGrid1: TClientDBGrid;
    Memo1: TMemo;
    bbFiltrGO: TBitBtn;
    BitBtn5: TBitBtn;
    bbSudimostiedb: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    TabSheet3: TTabSheet;
    gb_Obl: TGroupBox;
    cdbgOK_PERSONAL_OBL: TClientDBGrid;
    GroupBox6: TGroupBox;
    BitBtn6: TBitBtn;
    bbgotopersOBL: TBitBtn;
    bbPodtvOBL: TBitBtn;
    bbUtvOBL: TBitBtn;
    bbsubmituvolOBL: TBitBtn;
    bbOtkazOBL: TBitBtn;
    bbFiltrOBL: TBitBtn;
    gbFiltrOBL: TGroupBox;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    gbFieldsOBL: TGroupBox;
    ClientDBGrid3: TClientDBGrid;
    Memo2: TMemo;
    BitBtn15: TBitBtn;
    dsOKPersonal_OBL: TDataSource;
    cdsOKPersonal_OBL: TClientDataSetEx;
    bbNeuvolennieedb: TBitBtn;
    chbfiltr: TCheckBox;
    chbfiltrOBL: TCheckBox;
    cdsTempSource: TClientDataSet;
    BbStatExelEDB: TBitBtn;
    CDS_DBBranchStat: TClientDataSet;
    cdsTempDoljn: TClientDataSet;
    TabFiltr: TTabSheet;
    GroupBox3: TGroupBox;
    gbPersonal: TGroupBox;
    lbStatus: TLabel;
    Label32: TLabel;
    dbeOKGender: TDBEdit;
    dblcbOKGender: TDBLookupComboBox;
    dblcbOKFamilyStatus: TDBLookupComboBox;
    dbeOKFamilyStatus: TDBEdit;
    chbFamilyStatus: TCheckBox;
    chbGender: TCheckBox;
    medOK_BIRTHDAY: TMaskEdit;
    GroupBox4: TGroupBox;
    gbAddress: TGroupBox;
    Label13: TLabel;
    edBranchFilter: TEdit;
    RadioGroup1: TRadioGroup;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    cbRGN_2: TComboBox;
    CBII_2: TComboBox;
    bOk: TButton;
    GroupBox7: TGroupBox;
    Label11: TLabel;
    edInstitution: TEdit;
    lbEducation: TLabel;
    Button2: TButton;
    GroupBox8: TGroupBox;
    RadioGroup2: TRadioGroup;
    Button3: TButton;
    Source: TClientDataSet;
    GroupBox9: TGroupBox;
    Label30: TLabel;
    Label23: TLabel;
    Button1: TButton;
    EdFamily: TEdit;
    edname: TEdit;
    bClear: TButton;
    Label8: TLabel;
    Label7: TLabel;
    edPost: TEdit;
    edDepartment: TEdit;
    lbPost: TLabel;
    lbDepartment: TLabel;
    Label14: TLabel;
    edSpecial: TEdit;
    lbSpecial: TLabel;
    lbBasis: TLabel;
    Label15: TLabel;
    edEducation: TEdit;
    edBasis: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    bbDoljnostiEDB: TBitBtn;
    bbDepEDB: TBitBtn;
    ilova1_2: TBitBtn;
    ilova1_3: TBitBtn;
    bbCheckPoStatuEdb: TBitBtn;
    bbSpecialEDB: TBitBtn;
    bbSpecial2edb: TBitBtn;
    bbStatEDB: TBitBtn;
    bbStatEDB_XB: TBitBtn;
    bbStatEDB_XB_SUM: TBitBtn;
    BitBtn4: TBitBtn;
    edCOMMENTS: TEdit;
    Label2: TLabel;
    BitBtn7: TBitBtn;
    Label10: TLabel;
    edComments_OBL: TEdit;
    chbPeriod: TCheckBox;
    dtpPeriodFrom: TDateTimePicker;
    Label19: TLabel;
    dtpPeriodTo: TDateTimePicker;
    dtpPeriodToOBL: TDateTimePicker;
    Label18: TLabel;
    dtpPeriodFromOBL: TDateTimePicker;
    chbPeriodOBL: TCheckBox;
    bbSpecial3edb: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    bbSifatTarkibi: TBitBtn;
    BitBtn10: TBitBtn;
    PB1: TProgressBar;
    cdsTempSOD: TClientDataSetEx;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Label20: TLabel;
    dtpFrom: TDateTimePicker;
    Label21: TLabel;
    dtpTO: TDateTimePicker;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    gbDostup: TGroupBox;
    lbDostup: TLabel;
    lbDostupOBL: TLabel;
    procedure ActaboutExecute(Sender: TObject);
    procedure MakeScreenDetail(whoami : integer);
    procedure MakeScreenDetail2(whoami : integer);
    procedure ActGoToFilialExecute(Sender: TObject);
    procedure edMFOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure bbMutahassislarClick(Sender: TObject);
    procedure ilova3Click(Sender: TObject);
    procedure cbRGNSelect(Sender: TObject);
    procedure ilova4Click(Sender: TObject);
    procedure ilova2Click(Sender: TObject);
    procedure addLookUpField(DataSet_, LDataSet_: TDataSet;
                             FieldName_, KeyFields_, LookUpKeyFields_, LookUpResultField_: String;
                             CreateField: Boolean = False);
    procedure bbgotopersClick(Sender: TObject);
    procedure bbUtvClick(Sender: TObject);
    procedure bbPodtvClick(Sender: TObject);
    procedure bbsubmituvolClick(Sender: TObject);
    procedure bbOtkazClick(Sender: TObject);
    procedure cdbgOK_PERSONALDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure cdsOKPersonalFiltrBeforePost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bbFiltrGOClick(Sender: TObject);
    procedure bbSudimostiedbClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure bbFiltrOBLClick(Sender: TObject);
    procedure cdbgOK_PERSONAL_OBLDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure bbNeuvolennieedbClick(Sender: TObject);
    procedure chbfiltrOBLClick(Sender: TObject);
    procedure chbfiltrClick(Sender: TObject);
    procedure BbStatExelEDBClick(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbRGN_2Select(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bClearClick(Sender: TObject);
    procedure bbDoljnostiEDBClick(Sender: TObject);
    procedure bbDepEDBClick(Sender: TObject);
    procedure ilova1_2Click(Sender: TObject);
    procedure ilova1_3Click(Sender: TObject);
    procedure bbCheckPoStatuEdbClick(Sender: TObject);
    procedure bbSpecialEDBClick(Sender: TObject);
    procedure bbSpecial2edbClick(Sender: TObject);
    procedure bbStatEDBClick(Sender: TObject);
    procedure bbStatEDB_XBClick(Sender: TObject);
    procedure bbStatEDB_XB_SUMClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure bbSpecial3edbClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure bbSifatTarkibiClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetSQLResultPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = ''; Par7:String = ''; Par8:String = ''; Par9:String = ''; Par10:String = ''; Par11:String = '') : Variant;
    function ExecSQLPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = ''; Par7:String = ''; Par8:String = ''; Par9:String = ''; Par10:String = '') : Integer;
  end;

  TData = class
  private
    FId: string;
    FName: string;
    FUser_Name: string;
  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
    property User_Name: string read FUser_Name write FUser_Name;
  end;

var
  BOKEDBForm: TBOKEDBForm;
  D: TData;
  DateSet,Source, Destination: TDataSet;
  FieldIndex : Integer;
//  is_EDB : boolean;

implementation

{$R *.dfm}
uses BOKMain;
const go_user_code='9050';

function numtomonth3(num:string):string;  //эта функция переводит num в строчный эквивалент в Exl
//var abc:string;
begin
  if num='01' then result:='янв'
  else if num='02' then result:='фев'
  else if num='03' then result:='мар'
  else if num='04' then result:='апр'
  else if num='05' then result:='май'
  else if num='06' then result:='июн'
  else if num='07' then result:='июл'
  else if num='08' then result:='авг'
  else if num='09' then result:='сен'
  else if num='10' then result:='окт'
  else if num='11' then result:='ноя'
  else if num='12' then result:='дек'
  else result:=num;
end;

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

function TBOKEDBForm.GetSQLResultPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = ''; Par7:String = ''; Par8:String = ''; Par9:String = ''; Par10:String = ''; Par11:String = '') : Variant;
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
    SQLParams.CreateParam(ftString,'p_10',ptInput);
    SQLParams.CreateParam(ftString,'p_11',ptInput);
    SQLParams.ParamByName('p_1').Value:=Par1;
    SQLParams.ParamByName('p_2').Value:=Par2;
    SQLParams.ParamByName('p_3').Value:=Par3;
    SQLParams.ParamByName('p_4').Value:=Par4;
    SQLParams.ParamByName('p_5').Value:=Par5;
    SQLParams.ParamByName('p_6').Value:=Par6;
    SQLParams.ParamByName('p_7').Value:=Par7;
    SQLParams.ParamByName('p_8').Value:=Par8;
    SQLParams.ParamByName('p_9').Value:=Par9;
    SQLParams.ParamByName('p_10').Value:=Par10;
    SQLParams.ParamByName('p_11').Value:=Par11;
    Result := GetSqlResult(SQLText,SQLParams);
  finally
    SQLParams.Free;
  end;
end;

function TBOKEDBForm.ExecSQLPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = ''; Par7:String = ''; Par8:String = ''; Par9:String = ''; Par10:String = '') : Integer;
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
    SQLParams.CreateParam(ftString,'p_10',ptInput);
    SQLParams.ParamByName('p_1').Value:=Par1;
    SQLParams.ParamByName('p_2').Value:=Par2;
    SQLParams.ParamByName('p_3').Value:=Par3;
    SQLParams.ParamByName('p_4').Value:=Par4;
    SQLParams.ParamByName('p_5').Value:=Par5;
    SQLParams.ParamByName('p_6').Value:=Par6;
    SQLParams.ParamByName('p_7').Value:=Par7;
    SQLParams.ParamByName('p_8').Value:=Par8;
    SQLParams.ParamByName('p_9').Value:=Par9;
    SQLParams.ParamByName('p_10').Value:=Par10;
    Result := ExecSql(SQLText,SQLParams);
  finally
    SQLParams.Free;
  end;
end;

procedure TBOKEDBForm.addLookUpField(DataSet_, LDataSet_: TDataSet;
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

procedure TBOKEDBForm.ActaboutExecute(Sender: TObject);
begin
  with TAboutDialog.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;

end;

procedure TBOKEDBForm.ActGoToFilialExecute(Sender: TObject);
var filial_branch,  filial_schema, old_schema, old_branch, old_bankdate, sql_:string;
  k,j,i:integer;
  GOdEl, GOEdit, GoRefuse,     GOPodtverdit,     GoUtverdit,     GOsubmitDismiss,     GOtoVveden : boolean;
begin
  HeadBranch_:=getsqlresult('select header_id from s_mfo where bank_id=info.getbranch');

  filial_branch:=  edMFO.Text;
  if copy(branch,1,2)='09'
  then begin
    old_schema:= CurrentSchema;
    old_branch:=branch;
    old_bankdate := bankdate;
  end;

//  memoprot.lines.add('Доступные действия');
     GoRefuse        := false;
     GOPodtverdit    := false;
     GoUtverdit      := false;
     GOsubmitDismiss := false;
     GOtoVveden      := false;
     GOEdit          := false;
     GODel          :=false;
      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '20';
      end;
  loaddata(cdstemp,'select DEAL_ID,id,name from V_TRANS_OK where DEAL_ID=:p_1');
  cdstemp.first;
  j:=0;
  while not cdstemp.eof
  do begin
    j:=j+1;
//    memoprot.lines.add(cdstemp.fieldbyname('ID').asstring+')'+cdstemp.fieldbyname('NAME').asstring);
//214,'Отклонить'
//222,'Подтвердить'
//233,'Утвердить'
//206,'Разрешено Уволить'
//201,'Вернуть Введен'
    if cdstemp.fieldbyname('ID').asInteger=214 then GoRefuse        :=true;
    if cdstemp.fieldbyname('ID').asInteger=222 then GOPodtverdit    :=true;
    if cdstemp.fieldbyname('ID').asInteger=233 then GoUtverdit      :=true;
    if cdstemp.fieldbyname('ID').asInteger=206 then GOsubmitDismiss :=true;
    if cdstemp.fieldbyname('ID').asInteger=201 then GOtoVveden      :=true;

    if cdstemp.fieldbyname('ID').asInteger=208 then GOEdit          :=true;
    if cdstemp.fieldbyname('ID').asInteger=209 then GODel          :=true;
    cdstemp.next;

  end;
  if j<1 then memoprot.lines.add(datetimetostr(now)+')'+'нет Доступных действий - дайте права в администрировании.');

  j:=0;
//  memoprot.lines.add('Доступные области');
      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(cdstemp,'select DEAL_ID,id,name from V_TRANS_OK where DEAL_ID=:p_1'); //10');
  cdstemp.first;
  while not cdstemp.eof
  do begin
    j:=j+1;
//    memoprot.lines.add(cdstemp.fieldbyname('ID').asstring+')'+cdstemp.fieldbyname('NAME').asstring);
    cdstemp.next;
  end;
  if j<1 then memoprot.lines.add(datetimetostr(now)+')'+'нет Доступных Областей - дайте права в администрировании.');


  cdstemp.close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := filial_branch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '10';
      end;
  loaddata(cdstemp,'select * from ss_dblink_branch where branch=:p_1'+
// act='A'
  ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)'); //10)');
  filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
  if filial_schema=''
  then begin
    showmessage('нет доступа или не найдено мфо "'+filial_branch+'" в таблице ss_dblink_branch');
  end else begin
   try
    sql_:='alter session set current_schema = '+filial_schema;
    ExecSQL(sql_);
    branch :=  filial_branch;
//memodelete.lines.add(sql_);
     k:=getsqlresult('select count(*) from users where user_name=user'); //loaddata(cdsTemp2,
     if k=0
     then begin
       try
//         ExecSQL('begin IS_GO_USER('''+UpperCase(UserName)+''','+go_user_code+');end;');
         ExecSQLpar('begin IS_GO_USER(:p_1,:p_2);end;',UpperCase(UserName),go_user_code);
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
    ' from branch where bank_id=:p_1',branch );
    memoProt.lines.add(datetimetostr(now)+' ) Филиал '+branch);

     with TBOKForm.Create(self) do
     try
       lbShowBank.Caption := '(из ЕДБ)' ;

//**        gb_go.visible := true;
//           cdsOKPersonal.Close;
  //         cdsOKPersonal.params.clear;
       curBranch := branch;
       bbSudDel.visible:=true;
       bbSudDel.enabled:=true;
       bbSudDel2.visible:=true;
       bbSudDel2.enabled:=true;
       bbSudDel3.visible:=true;
       bbSudDel3.enabled:=true;
//         bbGoRefuse.visible:= true; // GoRefuse;
        actGoRefuse.enabled:=  GoRefuse;

//         bbGOPodtverdit.visible:= true; // GOPodtverdit;
        actGOPodtverdit.enabled:=  GOPodtverdit;

//         bbGoUtverdit.visible:=   true; // GoUtverdit;
        actGoUtverdit.enabled:=    GoUtverdit;

//         bbGOsubmitDismiss.visible:= true; //GOsubmitDismiss;
        actGOSubmitDismiss.enabled:= GOsubmitDismiss;

//         bbGOtoVveden.visible:= true; //GOtoVveden;
        actGOtoVveden.enabled:= GOtoVveden;

        if (HeadBranch_ ='09004') or (HeadBranch_='00394')
        then begin
          bbStatNew.visible:=false;
          bbStatUndo.visible:=false;
          bbStatSave.visible:=false;
          bbStatDelete.visible:=false;
          bbStatNew.enabled:=false;
          bbStatUndo.enabled:=false;
          bbStatSave.enabled:=false;
          bbStatDelete.enabled:=false;
          lbFilial.caption:='НЕ разрешается редактировать штатное расписание'; //-- в агро
        end else begin
          bbStatNew.visible:=true;
          bbStatUndo.visible:=true;
          bbStatSave.visible:=true;
          bbStatDelete.visible:=true;
          bbStatNew.enabled:=true;
          bbStatUndo.enabled:=true;
          bbStatSave.enabled:=true;
          bbStatDelete.enabled:=true;
          lbFilial.caption:='(EDB) Разрешается редактировать штатное расписание';
        end;
//        ActTable.Execute;

      For i := 0 to actionlist.ActionCount-1 do
      Begin
        if  ((ActionList.Actions[i] as TAction).tag=1)
        then begin
          if goedit
          then (ActionList.Actions[i] as TAction).Enabled:=true
          else (ActionList.Actions[i] as TAction).Enabled:=false;
        end;

        if  ((ActionList.Actions[i] as TAction).tag=2)
        then begin
          if goedit
          then (ActionList.Actions[i] as TAction).Enabled:=true
          else (ActionList.Actions[i] as TAction).Enabled:=false;
        end;

        if  ((ActionList.Actions[i] as TAction).tag=6)
        then begin
          if godel
          then (ActionList.Actions[i] as TAction).Enabled:=true
          else (ActionList.Actions[i] as TAction).Enabled:=false;
        end;
      End;

//        if goedit
//        then begin
//showmessage('goedit=true');
//        end else begin
//showmessage('goedit=false');
//        end;

        showModal;
     finally
//           cdsOKPersonal.Close;
  //         cdsOKPersonal.params.clear;

    //   bOKForm.Close;
      // bOKForm := nil;
       Free;

     end;

   finally
//    ROLLBACK;

    memoProt.lines.add(datetimetostr(now)+' ) Филиал '+filial_branch+' Выход.');
    if copy(old_branch,1,2)='09'
    then begin
      sql_:='alter session set current_schema = '+old_schema;
      ExecSQL(sql_);
      ExecSQL('begin info.init; end;');
      execsql('COMMIT');
      branch := old_branch;
      bankdate := old_bankdate ;
      memoProt.lines.add(datetimetostr(now)+' ) '+branch);
    end;
   end;
  end;
end;

procedure TBOKEDBForm.edMFOKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var str_: string;
begin
  if Key = VK_RETURN
  then begin

    actGoToFilialExecute(nil);
  end;
  if Key = VK_F9
  then begin
    if Sender = edMFO then
    begin
      cdsTemp.Close;
      with cdsTemp.params
      do begin
        clear;
         CreateParam(ftString, 'p_1', ptInput);
         ParamByName('p_1').Value   :='09%';
      end;
      str_:='select branch id, name from ss_dblink_branch where branch not like :p_1';
      LoadData(cdsTemp,str_);

      If cdsTemp.IsEmpty then cdsTemp.Insert
      Else cdsTemp.Edit;
      cdsTemp.Edit;
      Source := cdsTemp;
      Destination := cdsTemp;
      FieldIndex := 0;
    end ;
    with TSelectDialog.CreateEx(Self, Source, Destination, FieldIndex) do
    try
      if ShowModal = mrOk Then
        begin
           TEdit(Sender).Text := Destination.FieldByName('ID').AsString;
//           Sender.Text := TEdit(Sender).Text;
        end;
    finally
      Free;
    end;

  end;

end;

procedure TBOKEDBForm.FormShow(Sender: TObject);
var kk,j:integer; // ,n
  sql_:string;
begin

  HeadBranch_:=getsqlresult('select header_id from s_mfo where bank_id=info.getbranch');
  lbDostupOBL.Caption:=' ';
    
  PC_main.Pages[3].TabVisible:=false;
  if ((HeadBranch_<>'09006') and (HeadBranch_<>'09004') and (HeadBranch_<>'09049') and (HeadBranch_<>'09051') and (HeadBranch_<>'09014') ) // подтв. в ГО
  then begin
    PC_main.Pages[1].TabVisible:=false;
    PC_main.Pages[2].TabVisible:=false;
  end;

      CDS_DBBranchStat.Close;
      with CDS_DBBranchStat.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := 'A';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '10';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := 'A';
      end;
  loaddata(CDS_DBBranchStat,'select a.*,b.bank_id,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // ' and branch=''00974'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)'+
    ' and b.bank_id=b.union_id'+
    ' and b.act=:p_2'+
    ' union all'+
    ' select * from'+
     ' (select a.*,b.bank_id,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
     ' where a.branch=b.bank_id'+ // ' and branch=''00974'' '+
     ' and b.act=''A'' '+
     ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_3)'+
     ' and b.bank_id<>b.union_id'+
     ' and b.act=:p_4'+
     ' order by b.bank_id)');

//    gb_EDB_.Visible := false;
    gb_obl.Visible := false;


  memoprot.lines.add(datetimetostr(now)+')'+'Доступные действия:');
      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '20';
      end;
  loaddata(cdstemp,'select DEAL_ID,id,name from V_TRANS_OK where DEAL_ID=:p_1'); //20');
  cdstemp.first;
  j:=0;
  while not cdstemp.eof
  do begin
    j:=j+1;
    memoprot.lines.add(datetimetostr(now)+')'+cdstemp.fieldbyname('ID').asstring+')'+cdstemp.fieldbyname('NAME').asstring);

// вернуть введен
//    if cdstemp.fieldbyname('ID').asstring='201'
//    then begin
//      .enabled:=true;
//      .enabled:=true;
//    end;

    // отклонить
    if cdstemp.fieldbyname('ID').asstring='214'
    then begin
      bbOtkaz.enabled:=true;
      bbOtkazOBL.enabled:=true;
    end;

    // подтвердить
    if cdstemp.fieldbyname('ID').asstring='222'
    then begin
      bbPodtv.enabled:=true;
      bbPodtvOBL.enabled:=true;
    end;

    // разрешить уволить
    if cdstemp.fieldbyname('ID').asstring='206'
    then begin
      bbsubmituvol.enabled:=true;
      bbsubmituvolOBL.enabled:=true;
    end;

    // утвердить
    if cdstemp.fieldbyname('ID').asstring='233'
    then begin
      bbUtv.enabled:=true;
      bbUtvOBL.enabled:=true;
    end;

    cdstemp.next;
  end;

  if ( (HeadBranch_ ='09006') or  (HeadBranch_ ='09004') or  (HeadBranch_ ='09049') or  (HeadBranch_ ='09051') or  (HeadBranch_ ='09014') )
  and (j<1) then memoprot.lines.add(datetimetostr(now)+')'+'нет Доступных действий - дайте права в администрировании.');

  memoprot.lines.add('');
  j:=0;
  memoprot.lines.add(datetimetostr(now)+')'+'Доступные области:');
      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(cdstemp,'select DEAL_ID,id,name from V_TRANS_OK where DEAL_ID=:p_1'); // 10');
  cdstemp.first;
  while not cdstemp.eof
  do begin
    j:=j+1;
    memoprot.lines.add(datetimetostr(now)+')'+cdstemp.fieldbyname('ID').asstring+')'+cdstemp.fieldbyname('NAME').asstring);
    cdstemp.next;
    lbDostupOBL.Caption:=lbDostupOBL.Caption+' '+cdstemp.fieldbyname('ID').asstring+')'+cdstemp.fieldbyname('NAME').asstring;
  end;
  if j<1
  then begin
    gb_Obl.Visible:=false;
    memoprot.lines.add(datetimetostr(now)+')'+'нет Доступных Областей - дайте права в администрировании.');
  end else begin
    gb_Obl.Visible:=true;
  end;

  if (HeadBranch_ ='09004')
  then begin
    if (j=14)
    then begin
      memoprot.lines.add('14 Областей');
      lbDostup.Caption:='ГО (ЕДБ)';
      lbDostupOBL.Caption:='(14 Областей) '+    lbDostupOBL.Caption;

      gb_EDB_.Visible := true;
      gb_Obl.Visible:=true;

      bbPodtv.Visible := false;
      bbPodtvOBL.Visible := true;

      bbUtv.Visible := true;
      bbUtvOBL.Visible := false;

    end else begin
      PC_main.Pages[1].TabVisible:=false;

  //    is_EDB := false;
      gb_EDB_.Visible := false;
      gb_Obl.Visible:=true;

      lbDostup.Caption:='Область (ЕДБ)';

      bbPodtv.Visible := false;
      bbPodtvOBL.Visible := true;

      bbUtv.Visible := false;
      bbUtvOBL.Visible := false;
    end;
    
  end;

    gb_EDB_.Visible := true;

      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.bank_id,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // ' and branch=''00974'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');

    CDS_DBBranch.First;

    CBII.Clear;
    CBII.Items.Add('');
    CBII_2.Clear;
    CBII_2.Items.Add('');
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
        CBII_2.Items.AddObject(FieldByName('bank_id').AsString +
          ' | ' + FieldByName('bank_name').AsString, D);
        Next;
      end;
    end;
    CBII.ItemIndex := 0;
    CBII_2.ItemIndex := 0;
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
    cbRGN_2.Clear;
    cbRGN_2.Items.Add('');
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
        cbRGN_2.Items.AddObject(FieldByName('region_id').AsString +
          ' | ' + FieldByName('region_nam').AsString, D);
        Next;
      end;
    end;
    cbRGN.ItemIndex := 0;
    cbRGN_2.ItemIndex := 0;

    dtp_From4.DateTime:=strtodate(bankdate);
    dtp_To4.DateTime:=strtodate(bankdate);
//////////////
    LoadData(cdsSSOKDepartment_RO,  'SELECT * FROM ss_ok_Department');
    LoadData(cdsSSOKPost_SET, 'SELECT * FROM ss_ok_post');
    LoadData(cdsSS_OK_GOSUBMIT, 'SELECT * FROM SS_OK_GOSUBMIT');

{  if (HeadBranch_ <>'09006')  // кнопки Илова в агро не надо
  then begin

    ilova2.visible:=false;
    ilova3.visible:=false;
    ilova4.visible:=false;
    Label2XalkEDB.visible:=false;
    bbMutahassislar.visible:=false;
    bbStatEDB_XB.visible:=false;
    bbStatEDB_XB_SUM.visible:=false;
  end;

6	Разрешено Уволить
14	Отклонён ГО
22	Подтверждён ГО
29	Отправлен в ГО
30	Заявка на увольнение
33	Утверждён ГО
}
  if (HeadBranch_ ='09006')  or (HeadBranch_ ='09004')  or (HeadBranch_ ='09049')  or (HeadBranch_ ='09051')  or (HeadBranch_ ='09014')
  then begin

      cdsOKPersonal.close;
      with cdsOKPersonal.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
          CreateParam(ftString,'p_2' ,ptInput);
          if (HeadBranch_ ='09004') then begin
          // агро-головной-ЕДБ не надо  29	Отправлен в ГО
            ParamByName('p_2').Value := '22' // '29'; //
          end else begin
            ParamByName('p_2').Value := '29';
          end;
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '30';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := '22';
      end;

      cdsOKPersonal_OBL.close;
      with cdsOKPersonal_OBL.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';//'';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '29';//'';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '30';//'';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := '30';// '22';   Областной не видит подтвержденных
      end;

    if true
    then begin
      sql_ :='select * from okedb_appoints a'+
        ' where a.branch in (select s_mfo.bank_id from s_mfo where s_mfo.REGION_ID in (select lpad(to_char(o.id),2,''0'') '+
        ' from V_TRANS_OK o where o.DEAL_ID=:p_1))'+
        ' and a.state_code in (:p_2,:p_3,:p_4)'+
        ' and (a.POST_CODE in '+
                           ' (select p.post_code from ss_ok_post p '+
                           ' where p.confirm_code is null or p.confirm_code=1) '+
              ' or a.POST_CODE_NEW in (select p2.post_code from ss_ok_post p2 where p2.confirm_code is null or p2.confirm_code=1))'
        ;
      kk:=0;
      try
        LoadData(cdsOKPersonal,sql_ );
      except on e:exception
        do begin
          kk:=1;
          memoprot.lines.add(sql_);
          memoprot.lines.add(e.Message);
        end;
      end;

      if kk=0
      then begin
        cdsOKPersonal.Close;
        addLookUpField(cdsOKPersonal, cdsSSOKDepartment_RO,
                    'department_show', 'department_code',
                    'department_code', 'department_name', TRUE);

        addLookUpField(cdsOKPersonal, cdsSSOKPost_SET,
                    'post_show', 'post_code',
                    'post_code', 'post_name', False);

        addLookUpField(cdsOKPersonal, cdsSSOKDepartment_RO,
                    'new_department_show', 'department_code_new',
                    'department_code', 'department_name', False);

        addLookUpField(cdsOKPersonal, cdsSSOKPost_SET,
                    'new_post_show', 'post_code_new',
                    'post_code', 'post_name', False);

        if not((chbfiltr.checked) and (chbfiltrOBL.checked))
        then begin
          addLookUpField(cdsOKPersonal, cdsSS_OK_gosubmit,
                    'state_name', 'state_code',
                    'gosubmit_code', 'gosubmit_name', False);
        end;
        cdsOKPersonal.Open;

      end;
//      gb_EDB.Visible := true;
    end else begin
//      gb_EDB_.Visible := false;
      // областной только по доступным областям
    end;

    try
      sql_ :='select * from okedb_appoints a'+
        ' where a.branch in (select s_mfo.bank_id from s_mfo where s_mfo.REGION_ID in (select lpad(to_char(o.id),2,''0'') '+
        ' from V_TRANS_OK o where o.DEAL_ID=:p_1))'+
        ' and a.state_code in (:p_2,:p_3,:p_4)'+
        ' and (a.POST_CODE in '+
                           ' (select p.post_code from ss_ok_post p '+
                           ' where p.confirm_code is null or p.confirm_code=1) '+
              ' or a.POST_CODE_NEW in (select p2.post_code from ss_ok_post p2 where p2.confirm_code is null or p2.confirm_code=1))'
        ;

      LoadData(cdsOKPersonal_OBL,sql_);

        cdsOKPersonal_OBL.Close;
        addLookUpField(cdsOKPersonal_OBL, cdsSSOKDepartment_RO,
                    'department_show', 'department_code',
                    'department_code', 'department_name', TRUE);

        addLookUpField(cdsOKPersonal_OBL, cdsSSOKPost_SET,
                    'post_show', 'post_code',
                    'post_code', 'post_name', False);

        addLookUpField(cdsOKPersonal_OBL, cdsSSOKDepartment_RO,
                    'new_department_show', 'department_code_new',
                    'department_code', 'department_name', False);

        addLookUpField(cdsOKPersonal_OBL, cdsSSOKPost_SET,
                    'new_post_show', 'post_code_new',
                    'post_code', 'post_name', False);

         if not((chbfiltr.checked) and (chbfiltrOBL.checked))
         then begin
        addLookUpField(cdsOKPersonal_OBL, cdsSS_OK_gosubmit,
                    'state_name', 'state_code',
                    'gosubmit_code', 'gosubmit_name', False);
         end;
        cdsOKPersonal_OBL.Open;

        LoadData(cdsOKPersonalFiltr,'select * from okedb_appoints where rownum<1');
        cdsOKPersonalFiltr.Close;
        addLookUpField(cdsOKPersonalFiltr, cdsSSOKDepartment_RO,
                    'department_show', 'department_code',
                    'department_code', 'department_name', TRUE);

        addLookUpField(cdsOKPersonalFiltr, cdsSSOKPost_SET,
                    'post_show', 'post_code',
                    'post_code', 'post_name', False);

        addLookUpField(cdsOKPersonalFiltr, cdsSSOKDepartment_RO,
                    'new_department_show', 'department_code_new',
                    'department_code', 'department_name', False);

        addLookUpField(cdsOKPersonalFiltr, cdsSSOKPost_SET,
                    'new_post_show', 'post_code_new',
                    'post_code', 'post_name', False);

        addLookUpField(cdsOKPersonalFiltr, cdsSS_OK_gosubmit,
                    'state_name', 'state_code',
                    'gosubmit_code', 'gosubmit_name', False);

        cdsOKPersonalFiltr.Open;
        MakeScreenDetail(1);
        MakeScreenDetail2(1);
        cdsOKPersonalFiltr.Insert;
    except on e:exception
      do begin
        memoprot.lines.add(e.Message);
      end;
    end;
  end;


  dtpfrom.DateTime := strtodate( '01.01.'+copy(bankdate,7,4) );
  dtpTO.DateTime   := strtodate( '31.12.'+copy(bankdate,7,4) );

end;

procedure TBOKEDBForm.bbMutahassislarClick(Sender: TObject);
var  //sql_  :string;
  MyRange: OLEVariant;
 Range, V: Variant; // Cell1, Cell2, ArrayData ,
 row,row_j:integer; //   j,end_row,begin_row,col,,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 p_3_, p_5_ , p_8_: double;
begin
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbMutahassislar.caption);

  CDS_DBBranch.filtered := false;

//потом добавлю фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
  end;

  if (CBII.ItemIndex=0) and (cbRGN.ItemIndex>0)
  then begin
    CDS_DBBranch.filter :='region='''+ TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end;

  if (CBII.ItemIndex>0)
  then begin
    CDS_DBBranch.filter :='bank_id='''+ TData(CBII.Items.Objects[CBII.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end;

 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          Илова-?';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='ДАВЛАТ-ТИЖОРАТ ХАЛК БАНКИ БОШКАРУВИ АППАРАТИ, КОРАКАЛПОГИСТОН РЕСПУБЛИКАСИ, ВИЛОЯТЛАР ВА';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                               ТОШКЕНТ ШАХАР АППАРАТИ ВА ТУМАН (ШАХАР) ФИЛИАЛЛАРИДА';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                             МУТАХАССИСЛАР СОНИ ВА ТАРКИБИ ТУГРИСИДА МАЪЛУМОТ';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' холатига';

  inc(row);

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];
  MyRange.Borders.LineStyle := 1;
  MyRange.Borders.Weight := 2;
  MyRange.Borders.ColorIndex := 1;

    MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,3].Value:='';   // здесь написать если нужно
    MyRange:= V.Range[numto(12)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,12].Value:='Маълумотга эга';
    MyRange:= V.Range[numto(20)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,20].Value:='Укийди';

  inc(row);

  V.Cells[row,1].Value:='Т/р';
  V.Cells[row,1].VerticalAlignment := 2;
  V.Cells[row,2].Value:='МФО';
  V.Cells[row,2].VerticalAlignment := 2;
  V.Cells[row,2].HorizontalAlignment := 3;

  MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Orientation := 90;
  V.Cells[row,3].WrapText := True; V.Cells[row,3].Value:='Штат жадвали буйича мутахассислар сони';
  V.Cells[row,4].WrapText := True; V.Cells[row,4].Value:='Шулардан 0,5 ставкадаги штатлар сони';
  V.Cells[row,5].Value:='Хакикатдан ишлайди';
  V.Cells[row,6].WrapText := True; V.Cells[row,6].Value:='Шулардан 0,5 ставкадаги штатлар сони';

  row_j:=7;   V.Cells[row,row_j].Value:='Буш лавозимлар';
  inc(row_j); V.Cells[row,row_j].Value:='30 ёшгачалар';
  inc(row_j); V.Cells[row,row_j].Value:='50 ёшгачалар';
  inc(row_j); V.Cells[row,row_j].Value:='50 ёшдан катталар';
  inc(row_j); V.Cells[row,row_j].Value:='аёллар';
  inc(row_j); V.Cells[row,row_j].Value:='олий';
  inc(row_j); V.Cells[row,row_j].Value:='бакалавр';
  inc(row_j); V.Cells[row,row_j].Value:='магистр';
  inc(row_j); V.Cells[row,row_j].Value:='шулардан базавий';
  inc(row_j); V.Cells[row,row_j].Value:='урта махсус';
  inc(row_j); V.Cells[row,row_j].Value:='шулардан базавий';

  V.Cells[row,18].WrapText := True; V.Cells[row,18].Value:='икт-лицейлар, бизнес- мактаб';
  row_j:=19;   V.Cells[row,row_j].Value:='умумий урта';
  inc(row_j); V.Cells[row,row_j].Value:='олий укув юртларида'; // 20
  inc(row_j); V.Cells[row,row_j].Value:='2-чи мутахассис буйича';
  inc(row_j); V.Cells[row,row_j].Value:='урта-махсус укув юрт-да';
  inc(row_j); V.Cells[row,row_j].Value:='2-чи мутахассис буйича';
//  row_j:=36;   V.Cells[row,row_j].Value:='';

  inc(row);
    row_j:=0;
    while row_j<>23 //step 2
    do begin
      row_j:=row_j+1;
      V.Cells[row,row_j].Value:=inttostr(row_j);
      V.Cells[row,row_j].HorizontalAlignment := 3;
    end;




  row:=9;


  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
      inc(row);
      V.Cells[row,1].Value := row-9;
      V.Cells[row,2].Value := CDS_DBBranch.fieldbyname('bank_name').asstring;

      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;

      p_3_:= getsqlresultpar('select nvl(sum(ot.quantity_post),0) a'+
          ' from '+fil_schema+'.ok_stat ot, ss_ok_post sop'+
          ' where ot.post_code=sop.post_code'+
          ' and ot.branch=:p_1'+
          ' and sop.post_group_code=:p_2',CDS_DBBranch.fieldbyname('branch').asstring,'2');
      V.Cells[row,3].Value := p_3_;
// по штату специалисты post_group_code=2

      // p_4_ из них на полставки - в штатном нет поля "ставка" полставки и т.д.
      // нет данных штатного расписания на полставки !!!

// по факту специалисты   post_group_code=2
        p_5_ := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
          ' and op.status_code in(:p_1,:p_2)'+
          ' and op.branch=:p_3'+
          ' and sop.post_group_code=:p_4','2','5',CDS_DBBranch.fieldbyname('branch').asstring,'2');
        V.Cells[row,5].Value := p_5_;
        // p_6_ из них на полставки
        V.Cells[row,6].Value :=  getsqlresultpar(
          'select count(*) from '+fil_schema+'.ok_zp_rate where zp_rate_code=:p_1'+
          ' and zp_rate_date<=to_date(:p_2,:p_3)'+
          ' and (zp_rate_date_end is null or zp_rate_date_end>=to_date(:p_4,:p_5))'+
          ' and (branch,personal_code) '+
          ' in (select branch,personal_code from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_6 and op.status_code in(:p_7,:p_8) '+
          ' and op.post_code=sop.post_code'+
          ' and sop.post_group_code=:p_9)',
          '4',bankdate,'dd.mm.yyyy',bankdate,'dd.mm.yyyy',
          CDS_DBBranch.fieldbyname('branch').asstring, '2','5','2'
          );


        // Буш лавозимлар - свободные вакансии
        V.Cells[row,7].Value := p_3_ - p_5_;

        // по факту специалисты   post_group_code=2 до 30 лет
        p_8_ := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
          ' and op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and sop.post_group_code=:p_4'+
          ' and (months_between(to_date(:p_5,:p_6),op.birthday)/12)<:p_7',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2',
          bankdate,'dd.mm.yyyy','30' );
        V.Cells[row,8].Value := p_8_;

        // по факту специалисты   post_group_code=2   с 30 до 50 лет
        V.Cells[row,9].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
          ' and op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and sop.post_group_code=:p_4'+
          ' and (months_between(to_date(:p_5,:p_6),op.birthday)/12)>=:p_7'+ // 30
          ' and (months_between(to_date(:p_8,:p_9),op.birthday)/12)<:p_10',  // 50
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2',
          bankdate,'dd.mm.yyyy','30' ,bankdate,'dd.mm.yyyy','50');

        // по факту специалисты   post_group_code=2   с 50 лет
        V.Cells[row,10].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
          ' and op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and sop.post_group_code=:p_4'+
          ' and (months_between(to_date(:p_5,:p_6),op.birthday)/12)>=:p_7', // 50
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2',
          bankdate,'dd.mm.yyyy','50' );

        // по факту специалисты   post_group_code=2   аёллар Ж
        V.Cells[row,11].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
          ' and op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and sop.post_group_code=:p_4'+
          ' and gender_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2','2' );

        // маълумотга эга
          // 1 олий
        V.Cells[row,12].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.post_code=sop.post_code'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and sop.post_group_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','1' ,'2');
        V.Cells[row,13].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.post_code=sop.post_code'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and sop.post_group_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','4', '2'  );
        V.Cells[row,14].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.post_code=sop.post_code'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and sop.post_group_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','5' , '2' );
        // из них трех базовое
        V.Cells[row,15].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.post_code=sop.post_code'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code in(:p_4,:p_5,:p_6)'+
          ' and bank_spec=:p_7'+
          ' and sop.post_group_code=:p_8',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','1','4','5','1' , '2' );

        V.Cells[row,16].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.post_code=sop.post_code'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and sop.post_group_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2' , '2' );
        V.Cells[row,17].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.post_code=sop.post_code'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and bank_spec=:p_5'+
          ' and sop.post_group_code=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2','1' , '2' );

        V.Cells[row,18].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and op.post_code=sop.post_code'+
          ' and education_title_code=:p_4'+
          ' and bank_spec=:p_5'+
          ' and sop.post_group_code=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','3','1' , '2' );
        V.Cells[row,19].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.post_code=sop.post_code'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and (bank_spec is null or bank_spec=:p_5)'+
          ' and sop.post_group_code=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','3','2', '2' );

        V.Cells[row,20].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.post_code=sop.post_code'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and sop.post_group_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6', '2'  );
        // 21 учатся по 2 спец-ти высш
        V.Cells[row,21].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and op.post_code=sop.post_code'+
          ' and education_title_code=:p_4'+
          ' and spec_ikki=:p_5' +
          ' and sop.post_group_code=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6','1', '2'  );

        V.Cells[row,22].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and op.post_code=sop.post_code'+
          ' and education_title_code=:p_4'+
          ' and sop.post_group_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','7', '2'  );
        // 23 учатся по 2 спец-ти ср.спец
        V.Cells[row,23].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and op.post_code=sop.post_code'+
          ' and education_title_code=:p_4'+
          ' and spec_ikki=:p_5' +
          ' and sop.post_group_code=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','7','1', '2'  );

    end;
    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
  Range := V.Range[numto(1)+'7:'+numto(23)+inttostr(row+1)];
  Range.Select;
  Range.Columns.AutoFit;
  Range.Borders.LineStyle := 1;
  Range.Borders.Weight := 2;
  Range.Borders.ColorIndex := 1;
 Finally
  V.Visible := True; //так быстрее
 End;
 
end;

procedure TBOKEDBForm.ilova3Click(Sender: TObject);
var  //sql_  :string;
  MyRange: OLEVariant;
 Range,V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 datarow : array [1..19] of integer;
begin
//  showmessage( 'в шаблон илова9.doc');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(ilova3.caption);






  CDS_DBBranch.filtered := false;


//потом добавлю фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          Илова-3';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='ДАВЛАТ-ТИЖОРАТ ХАЛК БАНКИ БОШКАРУВИ ХАМДА ХУДУДИЙ, ТУМАН (ШАХАР) ФИЛИАЛЛАРИ ХОДИМЛАРИНИНГ';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                  СОНИ ВА УЛАРНИНГ ТАРКИБИ ТУГРИСИДА УМУМЛАШГАН МАЪЛУМОТ';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' холатига';

  inc(row);
  MyRange:= V.Range[numto(5)+inttostr(row)+':'+numto(14)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,5].HorizontalAlignment := 3;
    V.Cells[row,5].Value:='МАЪЛУМОТ';
  MyRange:= V.Range[numto(15)+inttostr(row)+':'+numto(19)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,15].WrapText := True;
    V.Cells[row,15].HorizontalAlignment := 3;
    V.Cells[row,15].Value:='Олий ва урта махсус укув юртларида жами укиётганлар';

  inc(row);
  inc(row);
  MyRange:= V.Range[numto(5)+inttostr(row)+':'+numto(7)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,5].HorizontalAlignment := 3;
    V.Cells[row,5].Value:='Олий';
  MyRange:= V.Range[numto(8)+inttostr(row)+':'+numto(10)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,8].HorizontalAlignment := 3;
    V.Cells[row,8].Value:='Урта-махсус';
  MyRange:= V.Range[numto(11)+inttostr(row)+':'+numto(14)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,11].WrapText := True;
    V.Cells[row,11].HorizontalAlignment := 3;
    V.Cells[row,11].Value:='Олий ёки урта-махсус маълумотга эга булмаганлар';
  MyRange:= V.Range[numto(16)+inttostr(row)+':'+numto(17)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,16].WrapText := True;
    V.Cells[row,16].HorizontalAlignment := 3;
    V.Cells[row,16].Value:='Олий укув юртларида';
  MyRange:= V.Range[numto(18)+inttostr(row)+':'+numto(19)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,18].WrapText := True;
    V.Cells[row,18].HorizontalAlignment := 3;
    V.Cells[row,18].Value:='Урта-махсус укув юртларида';

  inc(row);
  inc(row);


    row_j:=0;
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Т/р';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Лавозимларнинг номи';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Штат жадвали буйича жами ходимлар сони';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Амалда ишлаётган ходимлар сони';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Ж а м и';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Олий иктисодий маълу- мотга эга булганлар';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Олий иктисодий маълу- мотга эга бул- маганлар';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Ж а м и';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Урта-махсус иктисодий маълу- мотга эга булганлар';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Урта-махсус иктисодий маълу- мотга эга бул- маганлар';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Ж а м и';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Олий укув юртла- рида';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='урта махсус укув юртла- рида';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='хеч каерда укима- ётган- лар';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row-2)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row-2,row_j].WrapText := True; V.Cells[row-2,row_j].HorizontalAlignment := 3;
    V.Cells[row-2,row_j].Value:='Олий ва урта махсус укув юртларида жами укиётганлар';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Ж а м и';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='шундан 2-мута- хассис- лик буйича';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='Ж а м и';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='шундан 2-мута- хассис- лик буйича';

  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);
  inc(row);

    row_j:=0;
    while row_j<>19 //step 1
    do begin
      row_j:=row_j+1;
      V.Cells[15,row_j].HorizontalAlignment := 3;
      if (row_j=3) or (row_j=4) or (row_j=6) or (row_j=7) or (row_j=9) or (row_j=10)
      or (row_j=15)
      then V.Cells[15,row_j].Value  := '''        '+inttostr(row_j)+'        '
      else
        if (row_j=5) or (row_j=8) or (row_j=11) or (row_j=16) or (row_j=18)
        then V.Cells[15,row_j].Value  := ''' '+inttostr(row_j)+' '
        else V.Cells[15,row_j].Value  := '''     '+inttostr(row_j)+'     ';
    end;

  row:=15;

    with cdsSSokPost do
        begin
          close;
          Params.Clear;
          Params.CreateParam(ftString,'p_1',ptInput);
          Params.ParamByName('p_1').Value:='A';
        end;

  loaddata(cdsSSokPost,'select * from ss_ok_post where state_notes=:p_1 order by post_group_code,post_code');
  cdsSSokPost.First;
  while not cdsSSokPost.eof
  do begin

        row_j:=2;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;
         inc(row_j); datarow[row_j] := 0;

    CDS_DBBranch.First;
    while not CDS_DBBranch.eof
    do begin
      if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
      then begin
  //      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
        fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;

        row_j:=2;
        inc(row_j);
//if chbTEST.checked then MemoProt.lines.add('1175');
         datarow[row_j] := datarow[row_j] +  // 3
            getsqlresultpar('select nvl(sum(ot.quantity_post),0) a'+
          ' from '+fil_schema+'.ok_stat ot'+
          ' where ot.branch=:p_1'+
          ' and ot.post_code=:p_2',
          CDS_DBBranch.fieldbyname('branch').asstring,
          cdsSSokPost.fieldbyname('post_code').asstring);
//if chbTEST.checked then MemoProt.lines.add('1183');

        inc(row_j);
         datarow[row_j] := datarow[row_j] +
           getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and op.post_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          cdsSSokPost.fieldbyname('post_code').asstring);

        inc(row_j);
         datarow[row_j] := datarow[row_j] +
           getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and op.post_code=:p_4'+
          ' and education_title_code in(:p_5,:p_6,:p_7)',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          cdsSSokPost.fieldbyname('post_code').asstring,'1','4','5');

        inc(row_j);
         datarow[row_j] := datarow[row_j] +
           getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and op.post_code=:p_4'+
          ' and education_title_code in(:p_5,:p_6,:p_7)'+
          ' and bank_spec=:p_8',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          cdsSSokPost.fieldbyname('post_code').asstring,'1','4','5','1');

        inc(row_j);
         datarow[row_j] := datarow[row_j] +
           getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and op.post_code=:p_4'+
          ' and education_title_code in(:p_5,:p_6,:p_7)'+
          ' and (bank_spec is null or bank_spec=:p_8)',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          cdsSSokPost.fieldbyname('post_code').asstring,'1','4','5','2');

        inc(row_j);
         datarow[row_j] := datarow[row_j] +
           getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and op.post_code=:p_4'+
          ' and education_title_code in(:p_5)',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          cdsSSokPost.fieldbyname('post_code').asstring,'2');

        inc(row_j);
         datarow[row_j] := datarow[row_j] +
           getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and op.post_code=:p_4'+
          ' and education_title_code in(:p_5)'+
          ' and bank_spec=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          cdsSSokPost.fieldbyname('post_code').asstring,'2','1');

        inc(row_j);
         datarow[row_j] := datarow[row_j] +   // 10
           getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and op.post_code=:p_4'+
          ' and education_title_code in(:p_5)'+
          ' and (bank_spec is null or bank_spec=:p_6)',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          cdsSSokPost.fieldbyname('post_code').asstring,'2','2');



        inc(row_j);
         datarow[row_j] := datarow[row_j] + 0;
        inc(row_j);
         datarow[row_j] := datarow[row_j] + 0;
        inc(row_j);
         datarow[row_j] := datarow[row_j] + 0;
        inc(row_j);
         datarow[row_j] := datarow[row_j] + 0;
        inc(row_j);
         datarow[row_j] := datarow[row_j] +     // 15 обучаются олий ва урта-махсус
           getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code in (:p_4,:p_5)'+
          ' and op.post_code=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6','7',
          cdsSSokPost.fieldbyname('post_code').asstring);

        inc(row_j);       // олий жами
         datarow[row_j] := datarow[row_j] +
         getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and op.post_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6',
          cdsSSokPost.fieldbyname('post_code').asstring);

        inc(row_j);      // олий жами 2-мутахассис
         datarow[row_j] := datarow[row_j] +
         getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and spec_ikki=:p_5' +
          ' and op.post_code=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6','1' ,
          cdsSSokPost.fieldbyname('post_code').asstring);

        inc(row_j);   //   урта-махсус
         datarow[row_j] := datarow[row_j] +
         getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and op.post_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','7' ,
          cdsSSokPost.fieldbyname('post_code').asstring);

        inc(row_j);  //   урта-махсус 2-мутахассис
         datarow[row_j] := datarow[row_j] +
         getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and spec_ikki=:p_5' +
          ' and op.post_code=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','7','1' ,
          cdsSSokPost.fieldbyname('post_code').asstring);



      end;
      CDS_DBBranch.Next;
    end;

        inc(row);
        row_j:=0;
        inc(row_j); V.Cells[row,row_j].Value := row-15;
        inc(row_j); V.Cells[row,row_j].Value := CDSssokpost.fieldbyname('post_name').asstring;

        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
    CDSssokpost.Next;
  end;
  ///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
  Range := V.Range[numto(1)+'14:'+numto(19)+inttostr(row+1)];
  Range.Select;
  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;

  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.cbRGNSelect(Sender: TObject);
begin
  if cbRGN.ItemIndex>0
  then begin
    CDS_DBBranch.filter :='region='''+ TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end else begin
    if CDS_DBBranch.filtered
    then CDS_DBBranch.filtered:=false;
  end;

    CBII.Clear;
    CBII.Items.Add('');
    with CDS_DBBranch do
    begin
      first;
      while not EOF do
      begin
        D := TData.Create;
        with D do
        begin
          Id := FieldByName('bank_id').AsString;
          Name := FieldByName('bank_name').AsString;
          User_Name := FieldByName('user_name').AsString;
        end;
        CBII.Items.AddObject(FieldByName('bank_id').AsString +
          ' | ' + FieldByName('bank_name').AsString, D);
        Next;
      end;
    end;
    CBII.ItemIndex := 0;

end;

procedure TBOKEDBForm.ilova4Click(Sender: TObject);
var  //sql_  :string;
  MyRange: OLEVariant;
 Range, V: Variant; // Cell1, Cell2, ArrayData ,
 row,row_j:integer; //   j,end_row,begin_row,col,,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
// p_3_, p_5_ , p_8_: double;
 datarow : array [1..23] of integer;
 column_counts: integer; // количество колонок в отчете
begin
 column_counts:=23; // количество колонок в отчете
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(ilova4.caption);

  CDS_DBBranch.filtered := false;

//потом добавлю фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
  end;

  if (CBII.ItemIndex=0) and (cbRGN.ItemIndex>0)
  then begin
    CDS_DBBranch.filter :='region='''+ TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end;

  if (CBII.ItemIndex>0)
  then begin
    CDS_DBBranch.filter :='bank_id='''+ TData(CBII.Items.Objects[CBII.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end;

 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          Илова-4';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='ДАВЛАТ-ТИЖОРАТ ХАЛК БАНКИ БОШКАРУВИ АППАРАТИ, КОРАКАЛПОГИСТОН РЕСПУБЛИКАСИ, ВИЛОЯТЛАР ВА';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                               ТОШКЕНТ ШАХАР АППАРАТИ ВА ТУМАН (ШАХАР) ФИЛИАЛЛАРИДА';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                             МУТАХАССИСЛАР СОНИ ВА ТАРКИБИ ТУГРИСИДА МАЪЛУМОТ';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' холатига';

  inc(row);


    MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,24].Value:='Ишга кабул килинди';
    MyRange:= V.Range[numto(12)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,31].Value:='Ишдан бушатилди';
  row_j:=2;


  MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];
  MyRange.Orientation := 90;
  MyRange.VerticalAlignment := 2;
  MyRange.HorizontalAlignment := 3;

  inc(row_j); V.Cells[row,row_j].Value:='жами';
  inc(row_j); V.Cells[row,row_j].Value:='аёллар';
  inc(row_j); V.Cells[row,row_j].Value:='олий маълумотилар';
  inc(row_j); V.Cells[row,row_j].Value:='шулардан базавий';
  inc(row_j); V.Cells[row,row_j].Value:='урта-махсус маълумот';
  inc(row_j); V.Cells[row,row_j].Value:='шулардан базавий';
  inc(row_j); V.Cells[row,row_j].Value:='умумий урта';
// 6-Тугалланмаган олий (институт талабаси)
  inc(row_j); V.Cells[row,row_j].Value:='Тугалланмаган олий (институт талабаси)';
// 7-Тугалланмаган урта махсус (коллеж талабаси)
  inc(row_j); V.Cells[row,row_j].Value:='Тугалланмаган урта махсус (коллеж талабаси)';
  inc(row_j); V.Cells[row,row_j].Value:='жами';
  inc(row_j); V.Cells[row,row_j].Value:='аёллар';
//*  inc(row_j); V.Cells[row,row_j].Value:='Уз хохишига кура';
//*  inc(row_j); V.Cells[row,row_j].Value:='штат кискариши сабабли';
//*  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='шундан 100-модда 2,3,4 банд';

  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Уз хохишига кура';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Тарафлар келишувига кура';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Мехнат шартномаси муддати тугаши муносабати билан';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Ходимнинг вафоти муносабати билан';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Мехнат вазифасини бир марта купол равишда бузганлиги учун';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Нафакага чикиши муносабати билан';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Суд хукмининг конуний кучга кирганлиги муносабати билан';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Мехнат вазифасини мунтазам бузганлиги учун';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Лавозимига малакаси етарли булмаганлиги сабабли';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='Бошка';


  ///////////////////////////////////////////
  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
      inc(row);
      V.Cells[row,1].Value := row-9;
      V.Cells[row,2].Value := CDS_DBBranch.fieldbyname('bank_name').asstring;

      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;
  // принятые
        row_j:=2;
        while row_j<>(column_counts+1)
        do begin
          inc(row_j); datarow[row_j] := 0;
        end;

      with ExecPrc do
        begin
          close;
          Params.Clear;
          Params.CreateParam(ftString,'p_1',ptInput);
          Params.CreateParam(ftInteger,'p_2',ptInput);
          Params.CreateParam(ftDate,'p_3',ptInput);
          Params.CreateParam(ftDate,'p_4',ptInput);

          Params.ParamByName('p_1').Value:=CDS_DBBranch.fieldbyname('branch').asstring;
          Params.ParamByName('p_2').Value:=3;
          Params.ParamByName('p_3').Value:= dtp_From4.date;
          Params.ParamByName('p_4').Value:= dtp_To4.date;
        end;

       ExecPrc.close;
       loaddata(ExecPrc,
          'select op.personal_code,min(op.in_office_date) min_date,'+
           ' okp.gender_code,okp.Education_Title_Code,okp.bank_spec'+
          ' from '+fil_schema+'.ok_period op,'+fil_schema+'.ok_personal okp'+
         ' where op.branch=:p_1'+
         ' and op.type_period_code=:p_2'+ // 3
         ' and op.branch=okp.branch'+
         ' and op.personal_code=okp.personal_code'+
         ' group by op.personal_code,okp.gender_code,okp.Education_Title_Code,okp.bank_spec'+
          ' having min(op.in_office_date) between :p_3'+
          ' and :p_4' );

      ExecPrc.First;
      while not ExecPrc.eof
      do begin
        // в цикле

        datarow[3] := datarow[3]+1; // жами

        if ExecPrc.FieldByName('gender_code').asstring='2'
        then begin
          datarow[4] := datarow[4]+1; // аёллар
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='1')
        or (ExecPrc.FieldByName('Education_Title_Code').asstring='4')
        or (ExecPrc.FieldByName('Education_Title_Code').asstring='5')
        then begin
          datarow[5] := datarow[5]+1; // олий маълумотлилар (1-олий 4-бакалавр 5-магистр)
          if (ExecPrc.FieldByName('bank_spec').asstring='1')
          then begin
            datarow[6] := datarow[6]+1; // (олий) шулардан базавий
          end;
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='1')
        or (ExecPrc.FieldByName('Education_Title_Code').asstring='4')
        or (ExecPrc.FieldByName('Education_Title_Code').asstring='5')
        then begin
          datarow[5] := datarow[5]+1; // олий маълумотлилар (1-олий 4-бакалавр 5-магистр)
          if (ExecPrc.FieldByName('bank_spec').asstring='1')
          then begin
            datarow[6] := datarow[6]+1; // (олий) шулардан базавий
          end;
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='2')
        then begin
          datarow[7] := datarow[7]+1; // 2-урта махсус
          if (ExecPrc.FieldByName('bank_spec').asstring='1')
          then begin
            datarow[8] := datarow[8]+1; // (2-урта махсус) шулардан базавий
          end;
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='3')
        then begin
          datarow[9] := datarow[9]+1; // 3-урта
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='6')
        then begin
          datarow[10] := datarow[10]+1; // 6-Тугалланмаган олий (институт талабаси)
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='7')
        then begin
          datarow[11] := datarow[11]+1; // 7-Тугалланмаган урта махсус (коллеж талабаси)
        end;

    {
     // уволенные
     // спросил у свет
     Ильдар (11:24:20 7/11/2011)
    вопрос кадрам про причины увольнения
    в справочнике ЦБ есть:
    01	Уз хохишига кура
    02	Тарафлар келишувига кура
    03	Мехнат шартномаси муддати тугаши муносабати билан
    04	Ходимнинг вафоти муносабати билан
    05	Мехнат вазифасини бир марта купол равишда бузганлиги учун
    06	Нафакага чикиши муносабати билан
    07	Суд хукмининг конуний кучга кирганлиги муносабати билан
    08	Мехнат вазифасини мунтазам бузганлиги учун
    09	Лавозимига малакаси етарли булмаганлиги сабабли
    99	Бошка

    а в отчете :
    1)	Уз хохишига кура
    2)штат кискариши сабабли
    3) шундан 100-модда 2,3,4 банд

    в халк напишите, пусть ответят что к чему относится, или может быть необходимо поменять в отчете,
    чтобы соответствовало справочнику ЦБ

    08.11.2011 свет не ответила, сделаю как в справочнике ЦБ.
    }
        ExecPrc.next;
      end;
    end;

//        inc(row_j); V.Cells[row,row_j].Value := row-9;
//        inc(row_j); V.Cells[row,row_j].Value := CDS_DBBranch.fieldbyname('branch_name').asstring;
        row_j:=2;

        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];
        inc(row_j); V.Cells[row,row_j].Value := datarow[row_j];


    CDS_DBBranch.Next;
  end;
  ///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
  Range := V.Range[numto(1)+'7:'+numto(16)+inttostr(row+1)];
  Range.Select;
  Range.Columns.AutoFit;
  Range.Borders.LineStyle := 1;
  Range.Borders.Weight := 2;
  Range.Borders.ColorIndex := 1;
 Finally
  V.Visible := True; //так быстрее
 End;

end;

procedure TBOKEDBForm.ilova2Click(Sender: TObject);
var  //sql_  :string;
  MyRange: OLEVariant;
 Range, V: Variant; // Cell1, Cell2, ArrayData ,
 row,row_j:integer; //   j,end_row,begin_row,col,,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 p_3_, p_5_ , p_8_: double;
begin
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(ilova2.caption);

  CDS_DBBranch.filtered := false;
  CDS_DBBranch.filtered := false;


  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(25)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          Илова-2';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(25)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='ДАВЛАТ-ТИЖОРАТ ХАЛК БАНКИ БОШКАРУВИ АППАРАТИ, КОРАКАЛПОГИСТОН РЕСПУБЛИКАСИ, ВИЛОЯТЛАР ВА';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(25)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                               ТОШКЕНТ ШАХАР АППАРАТИ ВА ТУМАН (ШАХАР) ФИЛИАЛЛАРИДА';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(25)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                             МУТАХАССИСЛАР СОНИ ВА ТАРКИБИ ТУГРИСИДА МАЪЛУМОТ';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(25)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' холатига';

  inc(row);

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(25)+inttostr(row)];
  MyRange.Borders.LineStyle := 1;
  MyRange.Borders.Weight := 2;
  MyRange.Borders.ColorIndex := 1;

    MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(13)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,3].Value:='';   // здесь написать если нужно
    MyRange:= V.Range[numto(14)+inttostr(row)+':'+numto(21)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,14].Value:='Маълумотга эга';
    MyRange:= V.Range[numto(22)+inttostr(row)+':'+numto(25)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,22].Value:='Укийди';

  inc(row);

  V.Cells[row,1].Value:='Т/р';
  V.Cells[row,1].VerticalAlignment := 2;
  V.Cells[row,2].Value:='МФО';
  V.Cells[row,2].VerticalAlignment := 2;
  V.Cells[row,2].HorizontalAlignment := 3;

  MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(25)+inttostr(row)];  MyRange.Orientation := 90;
  V.Cells[row,3].WrapText := True; V.Cells[row,3].Value:='Штат жадвали буйича мутахассислар сони';

  V.Cells[row,4].Value:='Хакикатдан ишлайди';
  V.Cells[row,5].WrapText := True; V.Cells[row,5].Value:='Шулардан 1 ставкадаги штатлар сони';
  V.Cells[row,6].WrapText := True; V.Cells[row,6].Value:='Шулардан 0,25 ставкадаги штатлар сони';
  V.Cells[row,7].WrapText := True; V.Cells[row,7].Value:='Шулардан 0,5 ставкадаги штатлар сони';
  V.Cells[row,8].WrapText := True; V.Cells[row,8].Value:='Шулардан 0,75 ставкадаги штатлар сони';

  row_j:=9;   V.Cells[row,row_j].Value:='Буш лавозимлар';
  inc(row_j); V.Cells[row,row_j].Value:='30 ёшгачалар';
  inc(row_j); V.Cells[row,row_j].Value:='50 ёшгачалар';
  inc(row_j); V.Cells[row,row_j].Value:='50 ёшдан катталар';
  inc(row_j); V.Cells[row,row_j].Value:='аёллар';
  inc(row_j); V.Cells[row,row_j].Value:='олий';
  inc(row_j); V.Cells[row,row_j].Value:='бакалавр';
  inc(row_j); V.Cells[row,row_j].Value:='магистр';
  inc(row_j); V.Cells[row,row_j].Value:='шулардан базавий';
  inc(row_j); V.Cells[row,row_j].Value:='урта махсус';
  inc(row_j); V.Cells[row,row_j].Value:='шулардан базавий';

  V.Cells[row,20].WrapText := True; V.Cells[row,20].Value:='икт-лицейлар, бизнес- мактаб';
  row_j:=21;   V.Cells[row,row_j].Value:='умумий урта';
  inc(row_j); V.Cells[row,row_j].Value:='олий укув юртларида'; // 20
  inc(row_j); V.Cells[row,row_j].Value:='2-чи мутахассис буйича';
  inc(row_j); V.Cells[row,row_j].Value:='урта-махсус укув юрт-да';
  inc(row_j); V.Cells[row,row_j].Value:='2-чи мутахассис буйича';
//  row_j:=36;   V.Cells[row,row_j].Value:='';

  inc(row);
    row_j:=0;
    while row_j<>25 //step 2
    do begin
      row_j:=row_j+1;
      V.Cells[row,row_j].Value:=inttostr(row_j);
      V.Cells[row,row_j].HorizontalAlignment := 3;
    end;




  row:=9;


  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
      inc(row);
      V.Cells[row,1].Value := row-9;
      V.Cells[row,2].Value := CDS_DBBranch.fieldbyname('bank_name').asstring;

      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;

      p_3_:= getsqlresultpar('select nvl(sum(ot.quantity_post),0) a'+
          ' from '+fil_schema+'.ok_stat ot'+
          ' where ot.branch=:p_1',CDS_DBBranch.fieldbyname('branch').asstring);
      V.Cells[row,3].Value := p_3_;
// по штату специалисты post_group_code=2


// по факту специалисты   post_group_code=2
        p_5_ := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.status_code in(:p_1,:p_2)'+
          ' and op.branch=:p_3',
          '2','5',CDS_DBBranch.fieldbyname('branch').asstring);
        V.Cells[row,4].Value := p_5_;
        // p_6_ из них на 1 ставки
        V.Cells[row,5].Value :=  getsqlresultpar(
          'select count(*) from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1 and op.status_code in(:p_2,:p_3) and (ZP_RATE_CODE is null or ZP_RATE_CODE=:p_4) ',
          CDS_DBBranch.fieldbyname('branch').asstring, '2','5','8'
          );
        // p_6_ из них на четвертьставки
        V.Cells[row,6].Value :=  getsqlresultpar(
          'select count(*) from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1 and op.status_code in(:p_2,:p_3) and ZP_RATE_CODE=:p_4 ',
          CDS_DBBranch.fieldbyname('branch').asstring, '2','5','2'
          );
        // p_6_ из них на полставки
        V.Cells[row,7].Value :=  getsqlresultpar(
          'select count(*) from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1 and op.status_code in(:p_2,:p_3) and ZP_RATE_CODE=:p_4 ',
          CDS_DBBranch.fieldbyname('branch').asstring, '2','5','4'
          );
        // p_6_ из них на 0.75 ставки
        V.Cells[row,8].Value :=  getsqlresultpar(
          'select count(*) from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1 and op.status_code in(:p_2,:p_3) and ZP_RATE_CODE=:p_4 ',
          CDS_DBBranch.fieldbyname('branch').asstring, '2','5','8'
          );


        // Буш лавозимлар - свободные вакансии
        V.Cells[row,9].Value := p_3_ - p_5_;

        // по факту специалисты   post_group_code=2 до 30 лет
        p_8_ := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and (months_between(to_date(:p_4,:p_5),op.birthday)/12)<:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          bankdate,'dd.mm.yyyy','30' );
        V.Cells[row,10].Value := p_8_;

        // по факту специалисты   post_group_code=2   с 30 до 50 лет
        V.Cells[row,11].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and (months_between(to_date(:p_4,:p_5),op.birthday)/12)>=:p_6'+ // 30
          ' and (months_between(to_date(:p_7,:p_8),op.birthday)/12)<:p_9',  // 50
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          bankdate,'dd.mm.yyyy','30' ,bankdate,'dd.mm.yyyy','50');

        // по факту специалисты   post_group_code=2   с 50 лет
        V.Cells[row,12].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and (months_between(to_date(:p_4,:p_5),op.birthday)/12)>=:p_6', // 50
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          bankdate,'dd.mm.yyyy','50' );

        // по факту специалисты   post_group_code=2   аёллар Ж
        V.Cells[row,13].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and gender_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2' );

        // маълумотга эга
          // 1 олий
        V.Cells[row,14].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','1' );
        V.Cells[row,15].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','4'  );
        V.Cells[row,16].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','5'  );
        // из них трех базовое
        V.Cells[row,17].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code in(:p_4,:p_5,:p_6)'+
          ' and bank_spec=:p_7',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','1','4','5','1'  );

        V.Cells[row,18].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2'  );
        V.Cells[row,19].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and bank_spec=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2','1'  );

        V.Cells[row,20].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and bank_spec=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','3','1'  );
        V.Cells[row,21].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and (bank_spec is null or bank_spec=:p_5)',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','3','2',  );

        V.Cells[row,22].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6'  );
        // 21 учатся по 2 спец-ти высш
        V.Cells[row,23].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and spec_ikki=:p_5' ,
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6','1'  );

        V.Cells[row,24].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','7'  );
        // 23 учатся по 2 спец-ти ср.спец
        V.Cells[row,25].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and spec_ikki=:p_5' ,
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','7','1' );

    end;
    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
  Range := V.Range[numto(1)+'7:'+numto(25)+inttostr(row+1)];
  Range.Select;
  Range.Columns.AutoFit;
  Range.Borders.LineStyle := 1;
  Range.Borders.Weight := 2;
  Range.Borders.ColorIndex := 1;
 Finally
  V.Visible := True; //так быстрее
 End;

end;

procedure TBOKEDBForm.bbgotopersClick(Sender: TObject);
var go_personal_code_,filial_branch,  filial_schema, old_schema, old_branch, old_bankdate, sql_:string;
  k,j:integer;
  GoRefuse,     GOPodtverdit,     GoUtverdit,     GOsubmitDismiss,     GOtoVveden : boolean;
begin

  if sender=bbgotopers
  then begin
    filial_branch:=  cdsOKPersonal.fieldbyname('branch').AsString;
    go_personal_code_:=cdsOKPersonal.fieldbyname('personal_code').asstring;
  end;
  if sender=bbgotopersOBL
  then begin
    filial_branch:=  cdsOKPersonal_OBL.fieldbyname('branch').AsString;
    go_personal_code_:=cdsOKPersonal_OBL.fieldbyname('personal_code').asstring;
  end;
  old_schema:= CurrentSchema;
  old_branch:=branch;
  old_bankdate := bankdate;

//  memoprot.lines.add('Доступные действия');
     GoRefuse        := false;
     GOPodtverdit    := false;
     GoUtverdit      := false;
     GOsubmitDismiss := false;
     GOtoVveden      := false;
      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '20';
      end;
  loaddata(cdstemp,'select DEAL_ID,id,name from V_TRANS_OK where DEAL_ID=:p_1');
  cdstemp.first;
  j:=0;
  while not cdstemp.eof
  do begin
    j:=j+1;
//    memoprot.lines.add(cdstemp.fieldbyname('ID').asstring+')'+cdstemp.fieldbyname('NAME').asstring);
//214,'Отклонить'
//222,'Подтвердить'
//233,'Утвердить'
//206,'Разрешено Уволить'
//201,'Вернуть Введен'
    if cdstemp.fieldbyname('ID').asInteger=214 then GoRefuse        :=true;
    if cdstemp.fieldbyname('ID').asInteger=222 then GOPodtverdit    :=true;
    if cdstemp.fieldbyname('ID').asInteger=233 then GoUtverdit      :=true;
    if cdstemp.fieldbyname('ID').asInteger=206 then GOsubmitDismiss :=true;
    if cdstemp.fieldbyname('ID').asInteger=201 then GOtoVveden      :=true;
    cdstemp.next;

  end;
  if j<1 then memoprot.lines.add(datetimetostr(now)+')'+'нет Доступных действий - дайте права в администрировании.');

  j:=0;
//  memoprot.lines.add('Доступные области');
      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
//  loaddata(cdstemp,'select DEAL_ID,id,name from V_TRANS_OK where DEAL_ID=10');
  loaddata(cdstemp,'select DEAL_ID,id,name from V_TRANS_OK where DEAL_ID=:p_1');

  cdstemp.first;
  while not cdstemp.eof
  do begin
    j:=j+1;
//    memoprot.lines.add(cdstemp.fieldbyname('ID').asstring+')'+cdstemp.fieldbyname('NAME').asstring);
    cdstemp.next;
  end;
  if j<1 then memoprot.lines.add(datetimetostr(now)+')'+'нет Доступных Областей - дайте права в администрировании.');


      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := filial_branch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '10';
      end;
  loaddata(cdstemp,'select * from ss_dblink_branch where branch=:p_1'+
//  ' and act=''A'' '+
  ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
  filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
  if filial_schema=''
  then begin
    showmessage('нет доступа или не найдено мфо "'+filial_branch+'" в таблице ss_dblink_branch');
  end else begin
   try
    sql_:='alter session set current_schema = '+filial_schema;
    ExecSQL(sql_);
    branch :=  filial_branch;
//memodelete.lines.add(sql_);
     k:=getsqlresult('select count(*) from users where user_name=user'); //loaddata(cdsTemp2,
     if k=0
     then begin
       try
//         ExecSQL('begin IS_GO_USER('''+UpperCase(UserName)+''','+go_user_code+');end;');
//**         ExecSQLpar('begin IS_GO_USER(:p_1,:p_2);end;',UpperCase(UserName),go_user_code);
         execSql('commit');
       except on e:exception
         do begin
           execSql('rollback');
           showmessage(e.Message);
//           exit;
         end;
       end;

     end;

//**     ExecSQL('begin info.init; end;');
     ExecSQLpar('begin info.initbranch(:p_1); end;',filial_branch);

/////

//     ExecSQL('alter session set NLS_DATE_FORMAT ='+''''+'dd.mm.yyyy'+'''');
     execsql('COMMIT');
     bankdate:=getsqlresultpar('select to_char(curr_date,''dd.mm.yyyy'') '+ // :P
    ' from branch where bank_id=:p_1',branch);
    memoProt.lines.add(datetimetostr(now)+' ) Филиал '+branch);

     with TBOKForm.Create(self) do
     try
//        gb_go.visible := true;

//         bbGoRefuse.visible:= true; // GoRefuse;
        actGoRefuse.enabled:=  GoRefuse;

//         bbGOPodtverdit.visible:= true; // GOPodtverdit;
        actGOPodtverdit.enabled:=  GOPodtverdit;

//         bbGoUtverdit.visible:=   true; // GoUtverdit;
        actGoUtverdit.enabled:=    GoUtverdit;

//         bbGOsubmitDismiss.visible:= true; //GOsubmitDismiss;
        actGOSubmitDismiss.enabled:= GOsubmitDismiss;

//         bbGOtoVveden.visible:= true; //GOtoVveden;
        actGOtoVveden.enabled:= GOtoVveden;
        go_filial_branch := filial_branch;
        go_personal_code := go_personal_code_;

        cdsOKEducation.close;
        cdsOKAcademic.close;
        cdsOKDegree.close;
        cdsOKAward.close;
        cdsOKScientific.close;
        cdsOkvoyage.close;
        cdsOkLanguage.close;
        cdsOkRelation.close;
        cdsOKRise.close;
        cdsOKPeriod.close;
        cdsOKPremium.close;
        cdsOKElection.close;
        cdsOKLeave.close;
        cdsOKYouth.close;
        cdsOKArmy.close;
        cdsOKParty.close;
        cdsOKPenalty.close;
        cdsOKConvictions.close;
        cdsOKAddInform.close;
        cdsOKPost.close;
        cdsOKPhoto.close;
        cdsOKPhotoBMP.close;
        cdsokprivilege.close;
        cdsokincrease.close;
        cdsokhospital.close;
        cdsOK_diplom.close;
//        -- закрыть все датасеты
        cdsOKStatSalary2.close;
        showModal;
     finally
       Free;
     end;

   finally
//    ROLLBACK;
    sql_:='alter session set current_schema = '+old_schema;
    ExecSQL(sql_);
//    memoProt.lines.add(sql_);
    ExecSQL('begin info.init; end;');
//    ExecSQL('alter session set NLS_DATE_FORMAT ='+''''+'dd.mm.yyyy'+'''');
    execsql('COMMIT');
    branch := old_branch;
    bankdate := old_bankdate ;

    memoProt.lines.add(datetimetostr(now)+' ) Филиал '+filial_branch+' Выход.');
   end;
  end;

end;

procedure TBOKEDBForm.bbUtvClick(Sender: TObject);
var
  go_personal_code_, state_code_, department_code_new_, post_code_new_, id_,edComments_text_: string;
  eto_agro , region_, user_: string;
begin

  if  (pc_main.activepage=tabsheet2)
  then edComments_text_:= edComments.text;
  if  (pc_main.activepage=tabsheet3)
  then edComments_text_:= edComments_OBL.text;

  if  (gb_EDB_.caption= ' (АРХИВ) Подтверждение в ГО (АРХИВ)')
  or  (gb_Obl.caption= ' (АРХИВ) Подтверждение в области (АРХИВ)')
  then begin
    showmessage('АРХИВ - только для просмотра'+#13+'Используйте фильтр без галочки "Архив"');
  end else begin

     if Sender=bbUtv
     then begin
        filial_branch:=  cdsOKPersonal.fieldbyname('branch').AsString;
        go_personal_code_:=cdsOKPersonal.fieldbyname('personal_code').asstring;
        state_code_ :=  cdsOKPersonal.fieldbyname('state_code').asstring;
        department_code_new_ := cdsOKPersonal.fieldbyname('department_code_new').asstring;
        post_code_new_ := cdsOKPersonal.fieldbyname('post_code_new').asstring;
        id_ := cdsOKPersonal.fieldbyname('id').asstring;
      end;
     if Sender=bbUtvOBL
     then begin
        filial_branch:=  cdsOKPersonal_OBL.fieldbyname('branch').AsString;
        go_personal_code_:=cdsOKPersonal_OBL.fieldbyname('personal_code').asstring;
        state_code_ :=  cdsOKPersonal_OBL.fieldbyname('state_code').asstring;
        department_code_new_ := cdsOKPersonal_OBL.fieldbyname('department_code_new').asstring;
        post_code_new_ := cdsOKPersonal_OBL.fieldbyname('post_code_new').asstring;
        id_ := cdsOKPersonal_OBL.fieldbyname('id').asstring;
      end;

      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := filial_branch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '10';
      end;
    loaddata(cdstemp,'select * from ss_dblink_branch where branch=:p_1'+
//    ' and b.act=''A'' '+
    ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
    filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;

        eto_agro :='0';          //
        if (HeadBranch_='09004') //
        then begin
          region_:= getsqlresultpar('select region_id from s_mfo where bank_id=:p_1',filial_branch);
          user_ := getsqlresultpar('select user from dual');
          if  (length(user_)<>11)
          and (copy(user_,1,5) <>'U004_')
          and (copy(user_,6,4) <>'KADR')
          and (copy(user_,10,2) <>'20')
//          and ((region_ ='03') or (region_ ='10') or (region_ ='22'))
          then begin
            eto_agro :='-1';
          end;
        end;

    if (filial_schema='') or (eto_agro='-1')
    then begin
      if (filial_schema='')
      then begin
        showmessage('нет доступа или не найдено мфо "'+filial_branch+'" в таблице ss_dblink_branch');
      end;
      if (eto_agro='-1')
      then begin
        showmessage('(2980)нет доступа мфо "'+filial_branch+'" (Кашкадарё, Сурхондарё, Андижон)');
      end;

    end else begin
      if (state_code_<>'22')
      then begin
        showmessage('Нельзя утвердить назначение - состояние сотрудника должно быть 22-Подтвержден ('+cdsOKPersonal.fieldbyname('state_code').asstring+')');
      end else begin
        try
          execsqlpar('update '+filial_schema+'.ok_personal '+
            ' set reply_date=sysdate, gosubmit_code=:p_1,'+ // 33 утвержден ГО
            ' department_code_new=:p_2,post_code_new=:p_3'+
            ' ,comments=:p_4'+
            ' where branch=:p_5'+
            ' and personal_code=:p_6'
          ,'33',department_code_new_,
                post_code_new_, copy(edComments_text_,1,249),
          filial_branch,go_personal_code_
          );
            execsqlpar('update okedb_appoints '+
              ' set reply_date=sysdate,state_code=:p_1,'+
            ' INS_DATE_UTV=sysdate, EMP_NAME_UTV=info.GetUserFullName(info.GetEmpId,info.getbranch)'+ // 33 утвержден ГО
            ' ,comments=:p_2'+
              ' where branch=:p_3'+
              ' and personal_code=:p_4'+
              ' and id=:p_5'
            ,'33',copy(edComments_text_,1,249),
            filial_branch,go_personal_code_,
              id_
            );
            execsql('commit');
        except
        on e:exception
          do begin
            execsql('rollback');
            showmessage('(2439) не удалось утвердить назначение '+e.Message);
          end;
        end;
      end;
    end;
    if cdsOKPersonal.active     then cdsOKPersonal.Refresh;
    if cdsOKPersonal_OBL.active then cdsOKPersonal_OBL.Refresh;
  end;

end;

procedure TBOKEDBForm.bbPodtvClick(Sender: TObject);
var
  go_personal_code_, state_code_, department_code_new_, post_code_new_, id_, edComments_text_: string;
  eto_agro , region_, user_: string;
begin

  if  (pc_main.activepage=tabsheet2)
  then edComments_text_:= edComments.text;
  if  (pc_main.activepage=tabsheet3)
  then edComments_text_:= edComments_OBL.text;

  if  (gb_EDB_.caption= ' (АРХИВ) Подтверждение в ГО (АРХИВ)')
  or  (gb_Obl.caption= ' (АРХИВ) Подтверждение в области (АРХИВ)')
  then begin
    showmessage('АРХИВ - только для просмотра'+#13+'Используйте фильтр без галочки "Архив"');
  end else begin

       if Sender=bbPodtv
       then begin
          filial_branch:=  cdsOKPersonal.fieldbyname('branch').AsString;
          go_personal_code_:=cdsOKPersonal.fieldbyname('personal_code').asstring;
          state_code_ :=  cdsOKPersonal.fieldbyname('state_code').asstring;
          department_code_new_ := cdsOKPersonal.fieldbyname('department_code_new').asstring;
          post_code_new_ := cdsOKPersonal.fieldbyname('post_code_new').asstring;
          id_ := cdsOKPersonal.fieldbyname('id').asstring;
        end;

       if Sender=bbPodtvOBL
       then begin
          filial_branch:=  cdsOKPersonal_OBL.fieldbyname('branch').AsString;
          go_personal_code_:=cdsOKPersonal_OBL.fieldbyname('personal_code').asstring;
          state_code_ :=  cdsOKPersonal_OBL.fieldbyname('state_code').asstring;
          department_code_new_ := cdsOKPersonal_OBL.fieldbyname('department_code_new').asstring;
          post_code_new_ := cdsOKPersonal_OBL.fieldbyname('post_code_new').asstring;
          id_ := cdsOKPersonal_OBL.fieldbyname('id').asstring;
        end;


        cdstemp.Close;
        with cdstemp.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value := filial_branch;
            CreateParam(ftString,'p_2' ,ptInput);
            ParamByName('p_2').Value := '10';
        end;
        loaddata(cdstemp,'select * from ss_dblink_branch where branch=:p_1'+
//        ' and b.act=''A'' '+
        ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
        filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
        eto_agro :='0';          //
        if (HeadBranch_='09004') //
        then begin
          region_:= getsqlresultpar('select region_id from s_mfo where bank_id=:p_1',filial_branch);
          user_ := getsqlresultpar('select user from dual');
          if  (length(user_)<>11)
          and (copy(user_,1,5) <>'U004_')
          and (copy(user_,6,4) <>'KADR')
          and (copy(user_,10,2) <>'20')
//          and ((region_ ='03') or (region_ ='10') or (region_ ='22'))
          then begin
            eto_agro :='-1';
          end;
        end;

        if (filial_schema='') or (eto_agro='-1')
        then begin
          if (filial_schema='')
          then begin
            showmessage('нет доступа или не найдено мфо "'+filial_branch+'" в таблице ss_dblink_branch');
          end;
          if (eto_agro='-1')
          then begin
            showmessage('(2980)нет доступа мфо "'+filial_branch+'" (Кашкадарё, Сурхондарё, Андижон)');
          end;

        end else begin
          if (state_code_<>'29')
          and (state_code_<>'14')
          then begin
            showmessage('Нельзя потдвердить - состояние сотрудника должно быть 29-Отправлен в ГО или 14-Отклонен ГО');
          end else begin
            try
              execsqlpar('update '+filial_schema+'.ok_personal '+
                ' set gosubmit_code=:p_1,'+ // 22 подтвержден ГО
                ' department_code_new=:p_2,post_code_new=:p_3'+
                ' ,comments=:p_4'+
                ' where branch=:p_5'+
                ' and personal_code=:p_6'
              ,'22',department_code_new_,
              post_code_new_,  copy(edComments_text_,1,249),
              filial_branch,go_personal_code_
              );
              execsqlpar('update okedb_appoints '+
                ' set state_code=:p_1,'+
                ' INS_DATE_POD=sysdate, EMP_NAME_POD=info.GetUserFullName(info.GetEmpId,info.getbranch)'+ // 22 подтвержден ГО
                ' ,comments=:p_2'+
                ' where branch=:p_3'+
                ' and personal_code=:p_4'+
                ' and id=:p_5'
              ,'22', copy(edComments_text_,1,249),
              filial_branch,go_personal_code_,
                id_
              );
              execsql('commit');
            except
            on e:exception
              do begin
                execsql('rollback');
                showmessage('(2475) не удалось подтвердить'+e.Message);
              end;
            end;
          end;
        end;
      if cdsOKPersonal.active     then cdsOKPersonal.Refresh;
      if cdsOKPersonal_OBL.active then cdsOKPersonal_OBL.Refresh;


  end;

end;

procedure TBOKEDBForm.bbsubmituvolClick(Sender: TObject);
var
  go_personal_code_, state_code_, department_code_new_, post_code_new_, id_,edComments_text_: string;
begin

  if  (pc_main.activepage=tabsheet2)
  then edComments_text_:= edComments.text;
  if  (pc_main.activepage=tabsheet3)
  then edComments_text_:= edComments_OBL.text;


  if  (gb_EDB_.caption= ' (АРХИВ) Подтверждение в ГО (АРХИВ)')
  or  (gb_Obl.caption= ' (АРХИВ) Подтверждение в области (АРХИВ)')
  then begin
    showmessage('АРХИВ - только для просмотра'+#13+'Используйте фильтр без галочки "Архив"');
  end else begin

     if Sender=bbsubmituvol
     then begin
        filial_branch:=  cdsOKPersonal.fieldbyname('branch').AsString;
        go_personal_code_:=cdsOKPersonal.fieldbyname('personal_code').asstring;
        state_code_ :=  cdsOKPersonal.fieldbyname('state_code').asstring;
        department_code_new_ := cdsOKPersonal.fieldbyname('department_code_new').asstring;
        post_code_new_ := cdsOKPersonal.fieldbyname('post_code_new').asstring;
        id_ := cdsOKPersonal.fieldbyname('id').asstring;
      end;
     if Sender=bbsubmituvolOBL
     then begin
        filial_branch:=  cdsOKPersonal_OBL.fieldbyname('branch').AsString;
        go_personal_code_:=cdsOKPersonal_OBL.fieldbyname('personal_code').asstring;
        state_code_ :=  cdsOKPersonal_OBL.fieldbyname('state_code').asstring;
        department_code_new_ := cdsOKPersonal_OBL.fieldbyname('department_code_new').asstring;
        post_code_new_ := cdsOKPersonal_OBL.fieldbyname('post_code_new').asstring;
        id_ := cdsOKPersonal_OBL.fieldbyname('id').asstring;
      end;

      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := filial_branch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '10';
      end;
    loaddata(cdstemp,'select * from ss_dblink_branch where branch=:p_1'+
//    ' and b.act=''A'' '+
    ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
    filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
    if filial_schema=''
    then begin
      showmessage('нет доступа или не найдено мфо "'+filial_branch+'" в таблице ss_dblink_branch');
    end else begin
        try
          execsqlpar('update '+filial_schema+'.ok_personal '+
            ' set reply_date=sysdate,gosubmit_code=:p_1,'+ // 6 разрешено уволить ГО
            ' department_code_new=:p_2,post_code_new=:p_3'+
            ' ,comments=:p_4'+
            ' where branch=:p_5'+
            ' and personal_code=:p_6'
          ,'6',department_code_new_,
          post_code_new_,copy(edComments_text_,1,249),
          filial_branch,go_personal_code_
          );
            execsqlpar('update okedb_appoints '+
              ' set reply_date=sysdate,state_code=:p_1,'+
            ' INS_DATE_UVOL=sysdate, EMP_NAME_UVOL=info.GetUserFullName(info.GetEmpId,info.getbranch)'+ // 6
            ' ,comments=:p_2'+
              ' where branch=:p_3'+
              ' and personal_code=:p_4'+
              ' and id=:p_5'
            ,'6',copy(edComments_text_,1,249),
             filial_branch,go_personal_code_,
              id_
            );
            execsql('commit');
        except
        on e:exception
          do begin
            execsql('rollback');
            showmessage('(2543) не удалось разрешить уволить '+e.Message);
          end;
        end;
    end;
    if cdsOKPersonal.active     then cdsOKPersonal.Refresh;
    if cdsOKPersonal_OBL.active then cdsOKPersonal_OBL.Refresh;
  end;

end;

procedure TBOKEDBForm.bbOtkazClick(Sender: TObject);
var
  go_personal_code_, state_code_, department_code_new_, post_code_new_, id_,edComments_text_: string;
begin

  if  (pc_main.activepage=tabsheet2)
  then edComments_text_:= edComments.text;
  if  (pc_main.activepage=tabsheet3)
  then edComments_text_:= edComments_OBL.text;

  if (headbranch_='09004') and (edComments_text_='')
  then begin
    showmessage('(-2922) Введите причину отказа');
  end else begin
    if  (gb_EDB_.caption= ' (АРХИВ) Подтверждение в ГО (АРХИВ)')
    or  (gb_Obl.caption= ' (АРХИВ) Подтверждение в области (АРХИВ)')
    then begin
      showmessage('АРХИВ - только для просмотра'+#13+'Используйте фильтр без галочки "Архив"');
    end else begin
      if Sender=bbOtkaz
      then begin
        filial_branch:=  cdsOKPersonal.fieldbyname('branch').AsString;
        go_personal_code_:=cdsOKPersonal.fieldbyname('personal_code').asstring;
        state_code_ :=  cdsOKPersonal.fieldbyname('state_code').asstring;
        department_code_new_ := cdsOKPersonal.fieldbyname('department_code_new').asstring;
        post_code_new_ := cdsOKPersonal.fieldbyname('post_code_new').asstring;
        id_ := cdsOKPersonal.fieldbyname('id').asstring;
      end;
      if Sender=bbOtkazOBL
      then begin
        filial_branch:=  cdsOKPersonal_OBL.fieldbyname('branch').AsString;
        go_personal_code_:=cdsOKPersonal_OBL.fieldbyname('personal_code').asstring;
        state_code_ :=  cdsOKPersonal_OBL.fieldbyname('state_code').asstring;
        department_code_new_ := cdsOKPersonal_OBL.fieldbyname('department_code_new').asstring;
        post_code_new_ := cdsOKPersonal_OBL.fieldbyname('post_code_new').asstring;
        id_ := cdsOKPersonal_OBL.fieldbyname('id').asstring;
      end;

      cdstemp.Close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := filial_branch;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '10';
      end;
      loaddata(cdstemp,'select * from ss_dblink_branch where branch=:p_1'+
//      ' and b.act=''A'' '+
      ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
      filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
      if filial_schema=''
      then begin
        showmessage('нет доступа или не найдено мфо "'+filial_branch+'" в таблице ss_dblink_branch');
      end else begin
        try
          execsqlpar('update '+filial_schema+'.ok_personal '+
            ' set reply_date=sysdate,gosubmit_code=:p_1,'+ // 14 отказать ГО
            ' department_code_new=:p_2,post_code_new=:p_3'+
            ' ,comments=:p_4'+
            ' where branch=:p_5'+
            ' and personal_code=:p_6'
          ,'14',department_code_new_,
          post_code_new_, copy(edComments_text_,1,249),
          filial_branch,go_personal_code_
          );
              execsqlpar('update okedb_appoints '+
                ' set reply_date=sysdate,state_code=:p_1,'+
              ' INS_DATE_OTKAZ=sysdate, EMP_NAME_OTKAZ=info.GetUserFullName(info.GetEmpId,info.getbranch)'+ // 6
              ' ,comments=:p_2'+
                ' where branch=:p_3'+
                ' and personal_code=:p_4'+
                ' and id=:p_5'
              ,'14',  copy( edComments_text_,1,249),
               filial_branch,go_personal_code_,
                id_
              );
            execsql('commit');
        except
        on e:exception
          do begin
            execsql('rollback');
            showmessage('(2543) не удалось Отказать '+e.Message);
          end;
        end;

      end;
      if cdsOKPersonal.active     then cdsOKPersonal.Refresh;
      if cdsOKPersonal_OBL.active then cdsOKPersonal_OBL.Refresh;
    end;
  end;

end;

procedure TBOKEDBForm.cdbgOK_PERSONALDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if cdsokpersonal.FieldByName('STATE_CODE').AsString<>''
  then begin
     if not (gdSelected in State) then
     begin
           case StrtoInt(cdsokpersonal.FieldByName('STATE_CODE').AsString) of
            6 : cdbgOK_PERSONAL.Canvas.Font.Color := clWindowText;
            14 : cdbgOK_PERSONAL.Canvas.Font.Color := clMaroon;
            22 : cdbgOK_PERSONAL.Canvas.Font.Color := clBlue;
            29 : cdbgOK_PERSONAL.Canvas.Font.Color := clRed;
            30 : cdbgOK_PERSONAL.Canvas.Font.Color := clpurple;
            33 : cdbgOK_PERSONAL.Canvas.Font.Color := clGreen;
            else
                cdbgOK_PERSONAL.Canvas.Font.Color := clOlive;
            end;

    {
6	Разрешено Уволить
14	Отклонено ГО
22	Подтвержден ГО
29	Отправлен в ГО
30	Заявка на увольнение
33	Утверждён ГО
    }
            cdbgOK_PERSONAL.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

  end;

end;

procedure TBOKEDBForm.BitBtn1Click(Sender: TObject);
var //n:integer;
    sql_:string;
begin
  HeadBranch_:=getsqlresult('select header_id from s_mfo where bank_id=info.getbranch');

{  if (HeadBranch_ <>'09006')
  then begin
//    ilova1.visible:=false;
    ilova2.visible:=false;
    ilova3.visible:=false;
    ilova4.visible:=false;
    Label2XalkEDB.visible:=false;
    bbMutahassislar.visible:=false;
  end;
}
  if (HeadBranch_ ='09006') or (HeadBranch_ ='09004')  or (HeadBranch_='09049')  or (HeadBranch_='09051')  or (HeadBranch_='09014')  // подтв. в ГО
  then begin

      cdsOKPersonal.close;
      with cdsOKPersonal.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '29';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '30';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := '22';
      end;

      cdsOKPersonal_OBL.close;
      with cdsOKPersonal_OBL.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '29';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '30';
          CreateParam(ftString,'p_4' ,ptInput);
          ParamByName('p_4').Value := '22';
      end;

    if true
    then begin

        if (chbfiltr.checked) or (chbfiltrOBL.checked)
        then begin
          sql_ :='select b.gosubmit_name state_name ,a.* from okedb_appoints_arh a, ss_ok_gosubmit b '+
            ' where a.branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=:p_1))'+
            ' and a.state_code=b.gosubmit_code '+
            ' and state_code in (:p_2,:p_3,:p_4)'+
            ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1))'
            ;
          LoadData(cdsOKPersonal,sql_);
          gb_EDB_.caption:= ' (АРХИВ) Подтверждение в ГО (АРХИВ)';
          gb_Obl.caption:= ' (АРХИВ) Подтверждение в области (АРХИВ)';
          chbfiltr.checked   := true;
          chbfiltrOBL.checked:= true;

        end else begin
          LoadData(cdsOKPersonal,'select * from okedb_appoints '+
            ' where branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=:p_1))'+
            ' and state_code in (:p_2,:p_3,:p_4)'+
            ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1))'
            );
          gb_EDB_.caption:= ' Подтверждение в ГО ';
          gb_Obl.caption:= ' Подтверждение в области ';
          chbfiltr.checked   := false;
          chbfiltrOBL.checked:= false;
        end;

      cdsOKPersonal.Close;
      addLookUpField(cdsOKPersonal, cdsSSOKDepartment_RO,
                  'department_show', 'department_code',
                  'department_code', 'department_name', TRUE);

      addLookUpField(cdsOKPersonal, cdsSSOKPost_SET,
                  'post_show', 'post_code',
                  'post_code', 'post_name', False);

      addLookUpField(cdsOKPersonal, cdsSSOKDepartment_RO,
                  'new_department_show', 'department_code_new',
                  'department_code', 'department_name', False);

      addLookUpField(cdsOKPersonal, cdsSSOKPost_SET,
                  'new_post_show', 'post_code_new',
                  'post_code', 'post_name', False);

     if not((chbfiltr.checked) and (chbfiltrOBL.checked))
     then begin
       addLookUpField(cdsOKPersonal, cdsSS_OK_gosubmit,
                  'state_name', 'state_code',
                  'gosubmit_code', 'gosubmit_name', False);
     end;
      cdsOKPersonal.Open;

      gb_EDB_.Visible := true;
    end else begin
//      gb_EDB_.Visible := false;
      // областной только по доступным областям и доступным должностям
    end;

        if (chbfiltr.checked) or (chbfiltrOBL.checked)
        then begin
          sql_ :='select b.gosubmit_name state_name ,a.* from okedb_appoints_arh a, ss_ok_gosubmit b '+
            ' where a.branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=:p_1))'+
            ' and a.state_code=b.gosubmit_code'+
            ' and state_code in (:p_2,:p_3,:p_4)'+
            ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code >1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code >1))'
             ;
          LoadData(cdsOKPersonal_OBL,sql_);

          gb_EDB_.caption:= ' (АРХИВ) Подтверждение в ГО (АРХИВ)';
          gb_Obl.caption:= ' (АРХИВ) Подтверждение в области (АРХИВ)';
          chbfiltr.checked   := true;
          chbfiltrOBL.checked:= true;

        end else begin
          LoadData(cdsOKPersonal_OBL,'select * from okedb_appoints '+
            ' where branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=:p_1))'+
            ' and state_code in (:p_2,:p_3,:p_4)'+
            ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code >1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code >1))'
            );
          gb_EDB_.caption:= ' Подтверждение в ГО ';
          gb_Obl.caption:= ' Подтверждение в области ';
          chbfiltr.checked   := false;
          chbfiltrOBL.checked:= false;
        end;


    cdsOKPersonal_OBL.Close;
    addLookUpField(cdsOKPersonal_OBL, cdsSSOKDepartment_RO,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);

    addLookUpField(cdsOKPersonal_OBL, cdsSSOKPost_SET,
                'post_show', 'post_code',
                'post_code', 'post_name', False);

    addLookUpField(cdsOKPersonal_OBL, cdsSSOKDepartment_RO,
                'new_department_show', 'department_code_new',
                'department_code', 'department_name', False);

    addLookUpField(cdsOKPersonal_OBL, cdsSSOKPost_SET,
                'new_post_show', 'post_code_new',
                'post_code', 'post_name', False);

     if not((chbfiltr.checked) and (chbfiltrOBL.checked))
     then begin
       addLookUpField(cdsOKPersonal_OBL, cdsSS_OK_gosubmit,
                'state_name', 'state_code',
                'gosubmit_code', 'gosubmit_name', False);
     end;

    cdsOKPersonal_OBL.Open;

  end;

end;

procedure TBOKEDBForm.cdsOKPersonalFiltrBeforePost(DataSet: TDataSet);
begin
  abort;
end;

procedure TBOKEDBForm.BitBtn3Click(Sender: TObject);
begin
  cdsOKPersonalFiltr.cancel;
  cdsOKPersonalFiltr.Insert;
end;

procedure TBOKEDBForm.BitBtn2Click(Sender: TObject);
var i:integer;
  sql_,sql_1,sql_2 : string;
begin

  sql_:=' ';
  sql_1:=' ';
  sql_2:=' ';
  if (chbfiltr.checked) or (chbfiltrOBL.checked)
  then begin
    sql_1:='select b.gosubmit_name state_name ,a.* from okedb_appoints a, ss_ok_gosubmit b '+
      ' where a.branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))'+
      ' and a.state_code=b.gosubmit_code'
       ;
    sql_2:='select b.gosubmit_name state_name ,a.* from okedb_appoints_arh a, ss_ok_gosubmit b '+
      ' where a.branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))'+
      ' and a.state_code=b.gosubmit_code'
       ;
    gb_EDB_.caption:= ' (АРХИВ) Подтверждение в ГО (АРХИВ)';
    gb_Obl.caption:= ' (АРХИВ) Подтверждение в области (АРХИВ)';
    chbfiltr.checked   := true;
    chbfiltrOBL.checked:= true;

  end else begin
    sql_1 := 'select * from okedb_appoints '+
      ' where branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))'+
        ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1))'
       ;
    gb_EDB_.caption:= ' Подтверждение в ГО ';
    gb_Obl.caption:= ' Подтверждение в области ';
    chbfiltr.checked   := false;
    chbfiltrOBL.checked:= false;
  end;

    cdsOKPersonal.close;
      with cdsOKPersonal.Params
      do begin
        clear;

        for i:=1 to 18
        do begin
          if cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring<>''
          then begin
            sql_ := sql_ + ' and ';

            if (i=3) or (i=5) or (i=17)
            then begin
              sql_ := sql_ + cdsOKPersonalfiltr.Fields[i].FieldName+'=nvl(:p_'+inttostr(i)+',sysdate)';
              CreateParam(ftString,'p_'+inttostr(i) ,ptInput);
              ParamByName('p_'+inttostr(i)).Value := cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring;
  //          memo1.lines.add(inttostr(i)+')'+cdsOKPersonalfiltr.Fields[i].FieldName+')'+cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring);
            end else begin
              if (i=14) or (i=15) or (i=16)
              then begin
                sql_ := sql_ + 'upper('+cdsOKPersonalfiltr.Fields[i].FieldName+')=upper(:p_'+inttostr(i)+')';
                CreateParam(ftString,'p_'+inttostr(i) ,ptInput);
                ParamByName('p_'+inttostr(i)).Value := cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring;
  //              CreateParam(ftString,'p_0'+inttostr(i) ,ptInput);
//                ParamByName('p_0'+inttostr(i)).Value := '0';
    //          memo1.lines.add(inttostr(i)+')'+cdsOKPersonalfiltr.Fields[i].FieldName+')'+cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring);
              end else begin
                sql_ := sql_ + cdsOKPersonalfiltr.Fields[i].FieldName+'=:p_'+inttostr(i) ;
                CreateParam(ftString,'p_'+inttostr(i) ,ptInput);
                ParamByName('p_'+inttostr(i)).Value := cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring;
  //              CreateParam(ftString,'p_0'+inttostr(i) ,ptInput);
//                ParamByName('p_0'+inttostr(i)).Value := '0';
    //          memo1.lines.add(inttostr(i)+')'+cdsOKPersonalfiltr.Fields[i].FieldName+')'+cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring);
              end;

            end;

          end;

        end;

        if (chbPeriod.checked)
        then begin
          sql_ := sql_ + ' and v_date>=to_date(:pd1_,''dd.mm.yyyy'')'+
                         ' and v_date<=to_date(:pd2_,''dd.mm.yyyy'')';
                      CreateParam(ftString,'pd1_' ,ptInput);
                      CreateParam(ftString,'pd2_' ,ptInput);
                      ParamByName('pd1_').Value := datetostr(dtpPeriodFrom.Date);
                      ParamByName('pd2_').Value := datetostr(dtpPeriodTO.Date);

        end;

      end;



  if (chbfiltr.checked)
  then begin
    sql_ :=          sql_1+sql_+
      ' union all '+ sql_2+sql_;
    LoadData(cdsOKPersonal,sql_);
  end else begin
    sql_ := sql_1+sql_;
    LoadData(cdsOKPersonal,sql_);
  end;

    cdsOKPersonal.Close;
    addLookUpField(cdsOKPersonal, cdsSSOKDepartment_RO,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);

    addLookUpField(cdsOKPersonal, cdsSSOKPost_SET,
                'post_show', 'post_code',
                'post_code', 'post_name', False);

    addLookUpField(cdsOKPersonal, cdsSSOKDepartment_RO,
                'new_department_show', 'department_code_new',
                'department_code', 'department_name', False);

    addLookUpField(cdsOKPersonal, cdsSSOKPost_SET,
                'new_post_show', 'post_code_new',
                'post_code', 'post_name', False);

     if not((chbfiltr.checked) and (chbfiltrOBL.checked))
     then begin
       addLookUpField(cdsOKPersonal, cdsSS_OK_gosubmit,
                'state_name', 'state_code',
                'gosubmit_code', 'gosubmit_name', False);
     end;

    cdsOKPersonal.Open;


end;

procedure TBOKEDBForm.bbFiltrGOClick(Sender: TObject);
begin
  if gbFiltr.Visible
  then gbFiltr.Visible:=false
  else gbFiltr.Visible:=true;

end;

procedure TBOKEDBForm.bbSudimostiedbClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j, row_k:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
begin
//  showmessage( 'в шаблон илова9.doc');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbSudimostiedb.caption);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='                                                                                                                                                                                                                          Илова-1';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:=datetostr(dtp_To4.date)+' холатига вилоят бошкармалари ва филиал ходимларига нисбатан хукукни мухофаза килувчи ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='идоралар томонидан кузгатилган жиноят ишлари тугрисида';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='                                                             МАЪЛУМОТ';


    inc(row);
    inc(row);
    row_j:=1;

    V.Cells[row,row_j].ColumnWidth := 5;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='       N';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='Жиноий иш кузгатилган банк ходимнинг Ф.И.Ш. ва лавозими';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='Жиноят иши кимнинг ташаббуси билан кузгатилган';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='Жиноят иши кузгатилган сана';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='Жиноят иши кузгатилишига сабаб булган конунбузарлик холати (Жиноят Кодексининг моддаси)';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='Жиноят иши буйича тергов ёки суднинг натижаси (терговчининг карори ёки суднинг хукмига асосан кулланилган чоралар)';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='Банк томонидан курилган чора';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='Судланганлик холати олиб ташланганлиги ёки жиноий жазода озод килинганлиги хакидаги хамда бошка маълумотлар';

    row_j:=1;
    inc(row);


  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
//      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;


      try
        sql_:=
          'select '+
          ' F1_FIO f1,'+
          ' F2_KIMNING f2,'+
          ' F3_SANA f3,'+
          ' F4_SABAB1||'' ''||F4_SABAB2||'' ''||F4_SABAB3 f4,'+
          ' F5_NATIJA1||'' ''||F5_NATIJA2||'' ''||F5_NATIJA3 f5,'+
          ' F6_CHORA f6,'+
          ' F7_MALUMOT1||'' ''||F7_MALUMOT2 f7'+
          ' from '+fil_schema+'.ok_convictions'+
          ' where CONVICTIONS_sana>=to_date(:p_1,''dd.mm.yyyy'')'+
          ' and CONVICTIONS_sana<=to_date(:p_2,''dd.mm.yyyy'')'+
          ' order by convictions_date';


        ExecPrc.Close;
        with ExecPrc.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value :=datetostr(dtp_From4.Date);
            CreateParam(ftString,'p_2' ,ptInput);
            ParamByName('p_2').Value :=datetostr(dtp_To4.Date);
        end;
        loaddata(ExecPrc,sql_);

        ExecPrc.First;
        while not ExecPrc.eof
        do begin
          inc(row);
          row_k:=1;
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);

  //        V.Cells[row,1].width := 15;
    //      V.Cells[row,2].width := 75;
      //    V.Cells[row,3].width := 75;
        //  V.Cells[row,4].width := 75;
  //        V.Cells[row,5].width := 75;
    //      V.Cells[row,6].width := 75;
      //    V.Cells[row,7].width := 75;
        //  V.Cells[row,8].width := 75;

          V.Cells[row,1].Value := inttostr(row_j);
          V.Cells[row,2].Value := Trim(ExecPrc.Fields[0].AsString); //ExecPrc.Fields[0].FieldName;
          V.Cells[row,3].Value := Trim(ExecPrc.Fields[1].AsString); //ExecPrc.Fields[1].FieldName;
          V.Cells[row,4].Value := Trim(ExecPrc.Fields[2].AsString); //ExecPrc.Fields[1].FieldName;
          V.Cells[row,5].Value := Trim(ExecPrc.Fields[3].AsString); //ExecPrc.Fields[1].FieldName;
          V.Cells[row,6].Value := Trim(ExecPrc.Fields[4].AsString); //ExecPrc.Fields[1].FieldName;
          V.Cells[row,7].Value := Trim(ExecPrc.Fields[5].AsString); //ExecPrc.Fields[2].FieldName;
          V.Cells[row,8].Value := Trim(ExecPrc.Fields[6].AsString); //ExecPrc.Fields[3].FieldName;
          inc(row_j);
          ExecPrc.next;
        end;


      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
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
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.BitBtn13Click(Sender: TObject);
var i:integer;
  sql_ : string;
begin

  if (chbfiltr.checked) or (chbfiltrOBL.checked)
  then begin
    sql_ :='select b.gosubmit_name state_name ,a.* from okedb_appoints_arh a, ss_ok_gosubmit b '+
      ' where branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))'+
        '  and a.state_code=b.gosubmit_code'+
        ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code >1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code >1))'
          ;
    gb_EDB_.caption:= ' (АРХИВ) Подтверждение в ГО (АРХИВ)';
    gb_Obl.caption:= ' (АРХИВ) Подтверждение в области (АРХИВ)';
    chbfiltr.checked   := true;
    chbfiltrOBL.checked:= true;
  end else begin
    sql_ :='select * from okedb_appoints '+
      ' where branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))'+
        ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code >1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code >1))'
          ;
    gb_EDB_.caption:= ' Подтверждение в ГО ';
    gb_Obl.caption:= ' Подтверждение в области ';
    chbfiltr.checked   := false;
    chbfiltrOBL.checked:= false;
  end;

    cdsOKPersonal_OBL.close;
      with cdsOKPersonal_OBL.Params
      do begin
        clear;

        for i:=1 to 18
        do begin
          if cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring<>''
          then begin
            sql_ := sql_ + ' and ';

            if (i=3) or (i=5) or (i=17)
            then begin
              sql_ := sql_ + cdsOKPersonalfiltr.Fields[i].FieldName+'=nvl(:p_'+inttostr(i)+',sysdate)';
              CreateParam(ftString,'p_'+inttostr(i) ,ptInput);
              ParamByName('p_'+inttostr(i)).Value := cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring;
  //          memo1.lines.add(inttostr(i)+')'+cdsOKPersonalfiltr.Fields[i].FieldName+')'+cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring);
            end else begin
              if (i=14) or (i=15) or (i=16)
              then begin
                sql_ := sql_ + 'upper('+cdsOKPersonalfiltr.Fields[i].FieldName+')=upper(:p_'+inttostr(i)+')';
                CreateParam(ftString,'p_'+inttostr(i) ,ptInput);
                ParamByName('p_'+inttostr(i)).Value := cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring;
  //              CreateParam(ftString,'p_0'+inttostr(i) ,ptInput);
//                ParamByName('p_0'+inttostr(i)).Value := '0';
    //          memo1.lines.add(inttostr(i)+')'+cdsOKPersonalfiltr.Fields[i].FieldName+')'+cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring);
              end else begin
                sql_ := sql_ + cdsOKPersonalfiltr.Fields[i].FieldName+'=:p_'+inttostr(i) ;
                CreateParam(ftString,'p_'+inttostr(i) ,ptInput);
                ParamByName('p_'+inttostr(i)).Value := cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring;
  //              CreateParam(ftString,'p_0'+inttostr(i) ,ptInput);
//                ParamByName('p_0'+inttostr(i)).Value := '0';
    //          memo1.lines.add(inttostr(i)+')'+cdsOKPersonalfiltr.Fields[i].FieldName+')'+cdsOKPersonalfiltr.fieldbyname(cdsOKPersonalfiltr.Fields[i].FieldName).asstring);
              end;

            end;

          end;

        end;


        if (chbPeriodOBL.checked)
        then begin
          sql_ := sql_ + ' and v_date>=to_date(:pd1_,''dd.mm.yyyy'')'+
                         ' and v_date<=to_date(:pd2_,''dd.mm.yyyy'')';
                      CreateParam(ftString,'pd1_' ,ptInput);
                      CreateParam(ftString,'pd2_' ,ptInput);
                      ParamByName('pd1_').Value := datetostr(dtpPeriodFromOBL.Date);
                      ParamByName('pd2_').Value := datetostr(dtpPeriodTOOBL.Date);

        end;

      end;


      LoadData(cdsOKPersonal_OBL,sql_+
           ' and branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10)');

    cdsOKPersonal_OBL.Close;
    addLookUpField(cdsOKPersonal_OBL, cdsSSOKDepartment_RO,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);
    addLookUpField(cdsOKPersonal_OBL, cdsSSOKPost_SET,
                'post_show', 'post_code',
                'post_code', 'post_name', False);

    addLookUpField(cdsOKPersonal_OBL, cdsSSOKDepartment_RO,
                'new_department_show', 'department_code_new',
                'department_code', 'department_name', False);

    addLookUpField(cdsOKPersonal_OBL, cdsSSOKPost_SET,
                'new_post_show', 'post_code_new',
                'post_code', 'post_name', False);

     if not(chbfiltrOBL.checked)
     then begin
    addLookUpField(cdsOKPersonal_OBL, cdsSS_OK_gosubmit,
                'state_name', 'state_code',
                'gosubmit_code', 'gosubmit_name', False);
     end;

    cdsOKPersonal_OBL.Open;


end;

procedure TBOKEDBForm.bbFiltrOBLClick(Sender: TObject);
begin
  if gbFiltrOBL.Visible
  then gbFiltrOBL.Visible:=false
  else gbFiltrOBL.Visible:=true;

end;

procedure TBOKEDBForm.cdbgOK_PERSONAL_OBLDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if cdsOKPersonal_OBL.FieldByName('STATE_CODE').AsString<>''
  then begin
     if not (gdSelected in State) then
     begin
           case StrtoInt(cdsOKPersonal_OBL.FieldByName('STATE_CODE').AsString) of
            6 : cdbgOK_PERSONAL_OBL.Canvas.Font.Color := clWindowText;
            14 : cdbgOK_PERSONAL_OBL.Canvas.Font.Color := clMaroon;
            22 : cdbgOK_PERSONAL_OBL.Canvas.Font.Color := clBlue;
            29 : cdbgOK_PERSONAL_OBL.Canvas.Font.Color := clRed;
            30 : cdbgOK_PERSONAL_OBL.Canvas.Font.Color := clpurple;
            33 : cdbgOK_PERSONAL_OBL.Canvas.Font.Color := clGreen;
            else
                cdbgOK_PERSONAL_OBL.Canvas.Font.Color := clOlive;
            end;

    {
6	Разрешено Уволить
14	Отклонено ГО
22	Подтвержден ГО
29	Отправлен в ГО
30	Заявка на увольнение
33	Утверждён ГО
    }
            cdbgOK_PERSONAL_OBL.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

  end;

end;

procedure TBOKEDBForm.bbNeuvolennieedbClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j, row_k:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
begin
//  showmessage( 'в шаблон илова9.doc');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbNeuvolennieedb.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='Неуволенные сотрудники в состоянии Принят, фактически уволенные';


    inc(row);
    inc(row);
    row_j:=1;

    V.Cells[row,row_j].ColumnWidth := 5;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='       N';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' МФО ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 15;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Таб.номер ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Фамилия ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Имя ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Отчество ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Дата увольнения ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Состояние ';

    row_j:=1;
    inc(row);


  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
//      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;


      try
        sql_:=
        'select chr(39)||okpl.branch f1,okpl.tabno f2,okpl.family f3,okpl.first_name f4,okpl.patronymic f5,max(okpd.out_office_date) f6,''Принят'' f7 '+
        ' from  '+fil_schema+'.ok_personal okpl,  '+fil_schema+'.ok_period okpd'+
        ' where okpl.branch=:p_1 and okpl.branch=okpd.branch'+
        ' and okpl.personal_code=okpd.personal_code and okpl.status_code=:p_2'+
        ' and okpl.personal_code not in (select personal_code from  '+fil_schema+'.ok_period where branch=:p_3 and out_office_date is null)'+
        ' group by okpl.branch,okpl.tabno,okpl.family,okpl.first_name,okpl.patronymic'+
        ' order by okpl.branch,okpl.tabno';

        ExecPrc.Close;
        with ExecPrc.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value :=CDS_DBBranch.fieldbyname('branch').asstring;
            CreateParam(ftString,'p_2' ,ptInput);
            ParamByName('p_2').Value :='2';
            CreateParam(ftString,'p_3' ,ptInput);
            ParamByName('p_3').Value :=CDS_DBBranch.fieldbyname('branch').asstring;
        end;
        loaddata(ExecPrc,sql_);

        ExecPrc.First;

        while not ExecPrc.eof
        do begin
          inc(row);
          row_k:=1;
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);
          V.Cells[row,row_k].WrapText := true;
          inc(row_k);

  //        V.Cells[row,1].width := 15;
    //      V.Cells[row,2].width := 75;
      //    V.Cells[row,3].width := 75;
        //  V.Cells[row,4].width := 75;
  //        V.Cells[row,5].width := 75;
    //      V.Cells[row,6].width := 75;
      //    V.Cells[row,7].width := 75;
        //  V.Cells[row,8].width := 75;

          V.Cells[row,1].Value := #39+inttostr(row_j);
          V.Cells[row,2].Value := Trim(ExecPrc.Fields[0].AsString); //ExecPrc.Fields[0].FieldName;
          V.Cells[row,3].Value := Trim(ExecPrc.Fields[1].AsString); //ExecPrc.Fields[1].FieldName;
          V.Cells[row,4].Value := Trim(ExecPrc.Fields[2].AsString); //ExecPrc.Fields[1].FieldName;
          V.Cells[row,5].Value := Trim(ExecPrc.Fields[3].AsString); //ExecPrc.Fields[1].FieldName;
          V.Cells[row,6].Value := Trim(ExecPrc.Fields[4].AsString); //ExecPrc.Fields[1].FieldName;
          V.Cells[row,7].Value := Trim(ExecPrc.Fields[5].AsString); //ExecPrc.Fields[2].FieldName;
          V.Cells[row,8].Value := Trim(ExecPrc.Fields[6].AsString); //ExecPrc.Fields[3].FieldName;
          inc(row_j);

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
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
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.chbfiltrOBLClick(Sender: TObject);
begin
  if (chbfiltrOBL.checked)
  then begin
    chbfiltr.checked:=true;
  end else begin
    chbfiltr.checked:=false;
  end;

end;

procedure TBOKEDBForm.chbfiltrClick(Sender: TObject);
begin
  if (chbfiltr.checked)
  then begin
    chbfiltrOBL.checked:=true;
  end else begin
    chbfiltrOBL.checked:=false;
  end;

end;

procedure TBOKEDBForm.BbStatExelEDBClick(Sender: TObject);
var kolvo_doljn_, k,  nomer_filiala_po_poryadku :integer;
   App,WorkBook: Variant;
 MyRange, Range, Cell1, Cell2, ArrayData ,V: Variant;
 ITOGO_line_, line_ ,end_row,begin_row, j, col,row,nn, col_lines, cycle_:integer;
 dur_line,  filial_branch, filial_schema, sql_, sql2_, sql3_ : string;
   lines_,lines2_,lines3_,lines4_,lines5_ : string;
//   Flines2_,Flines3_,Flines4_,Flines5_ : string;
   LAST_level, LAST_DEPARTMENT_CODE, LAST_department_name : string;
   CUR_level, CUR_DEPARTMENT_CODE, CUR_department_name,
   LAST_level_1_name, LAST_level_2_name , LAST_level_3_name: string;
   LAST_level_0_col_3,   LAST_level_0_col_4,
   LAST_level_0_col_5,   LAST_level_0_col_6,
   LAST_level_1_col_3,   LAST_level_1_col_4,
   LAST_level_1_col_5,   LAST_level_1_col_6,
   LAST_level_2_col_3,   LAST_level_2_col_4,
   LAST_level_2_col_5,   LAST_level_2_col_6,
   LAST_level_3_col_3,   LAST_level_3_col_4,
   LAST_level_3_col_5,   LAST_level_3_col_6:string;
   LAST_level_0_col_3_sum,   LAST_level_0_col_4_sum,
   LAST_level_0_col_5_sum,   LAST_level_0_col_6_sum : double;
   rgn_,maxzp:string;
   v_maxzp:variant;
begin
  if (cbRGN.ItemIndex=0)
  then begin
    showmessage('Укажите область');
  end else begin
    rgn_:=TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id;
    try
      App := CreateOLEObject('Excel.Application');
      WorkBook:=App.Workbooks.Open(ROOT_DIR+'OK\TEMPLATES\stat'+TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'.xls');
      MemoProt.lines.add(TimeToStr(Time)+') '+ROOT_DIR+'OK\TEMPLATES\stat'+TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'.xls');
      App.Visible := false;
//      App.Visible := true; // для теста чтобы видеть на чем остановился
      Application.ProcessMessages;
      // мин зп
      WorkBook.WorkSheets[1].Select;
      maxzp :='-1';
      v_maxzp := getsqlresultpar('select max(salary) from ss_ok_min_zp where state_notes=:p_1','A');
      if varisnull(v_maxzp)
      then begin
        v_maxzp :=getsqlresult('select max(salary) from ss_ok_min_zp');
        if not varisnull(v_maxzp)
        then begin
          maxzp :=vartostr(v_maxzp);
        end;
      end;
      WorkBook.WorkSheets[1].Cells[4,5].Value:= maxzp;
// 1 лист - обл.должности
// 2 лист - район.должности
      loaddata(cdsTemp,
        'select a.post_code,a.post_name,nvl(b.category_name,''0'') category_name,'+
        ' nvl(b.category_rate,''0'') category_rate from ss_ok_post a, ss_ok_category b'+
        ' where a.category_code=b.category_code(+)'+
        ' order by a.post_code');


      line_ :=7;
      begin_row:=line_;
      end_row:=line_+cdsTemp.recordcount+1;
      nn:=cdsTemp.FieldCount-1;

  // Создаем Вариантный Массив, который заполним выходными данными
     ArrayData := VarArrayCreate([1, end_row, 1, 5], varVariant);//, 1, cdsNsi.FieldCount

     j:=0;
     cdsTemp.First;
     While not cdsTemp.EOF do
     begin
         inc(j); inc(line_);
         ArrayData[j, 1] := cdstemp.fieldbyname('post_code').asstring;
         ArrayData[j, 2] := cdstemp.fieldbyname('post_name').asstring;
         ArrayData[j, 3] := cdstemp.fieldbyname('category_name').asstring;
         ArrayData[j, 4] := cdstemp.fieldbyname('category_rate').asstring;
         ArrayData[j, 5] := '=D'+inttostr((line_-1))+'*E4';
         cdsTemp.next;
     end;


    // Область, в которую будем выводить данные
     Range := WorkBook.WorkSheets[1].Range[numto(1)+inttostr(begin_row)+':'+numto(5)+inttostr(end_row)];
     Range.select;
     Range.clear;
     Range.Value := ArrayData;
     Range := WorkBook.WorkSheets[1].Range[numto(1)+inttostr(begin_row-1)+':'+numto(5)+inttostr(end_row)];
     Range.columns.AutoFit;
     Application.ProcessMessages;

     MemoProt.lines.add(TimeToStr(Time)+') '+WorkBook.WorkSheets[1].name);

     WorkBook.WorkSheets[2].Select;

    // Область, в которую будем выводить данные
     Range := WorkBook.WorkSheets[2].Range[numto(1)+inttostr(begin_row)+':'+numto(5)+inttostr(end_row)];
     Range.select;
     Range.Value := ArrayData;
     Range := WorkBook.WorkSheets[2].Range[numto(1)+inttostr(begin_row-1)+':'+numto(5)+inttostr(end_row)];
     Range.columns.AutoFit;
     Application.ProcessMessages;

      MemoProt.lines.add(TimeToStr(Time)+') '+WorkBook.WorkSheets[2].name);

      CDS_DBBranchStat.filter :='region='''+ TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'''';
      CDS_DBBranchStat.filtered := true;
      k:=2; // номер страницы
      nomer_filiala_po_poryadku:=0;

      CDS_DBBranchStat.First;
      while not CDS_DBBranchStat.eof
      do begin
        filial_branch:=CDS_DBBranchStat.fieldbyname('branch').asstring;
        if (copy(filial_branch,1,2))<>'09'
        then begin
          ITOGO_line_:=0;
          nomer_filiala_po_poryadku:=nomer_filiala_po_poryadku+1;
          col_lines:=0;
        // здесь по очереди каждому мфо один лист
        // взять дб_линк
          cdstemp.close;
          with cdstemp.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := filial_branch;
              CreateParam(ftString,'p_2' ,ptInput);
              ParamByName('p_2').Value := '10';
          end;
          loaddata(cdstemp,'select * from ss_dblink_branch where branch=:p_1'+
// act='A'          
          ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)'); //10)');
          filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
          if filial_schema=''
          then begin
            MemoProt.lines.add(TimeToStr(Time)+') '+'нет доступа или не найдено мфо "'+filial_branch+'" в таблице ss_dblink_branch');
          end else begin
            k:=k+1;
            MemoProt.lines.add(TimeToStr(Time)+') '+filial_schema);
            try
              WorkBook.WorkSheets[k].Select;
            except on e:exception
              do begin
                MemoProt.lines.add(TimeToStr(Time)+') '+'в шаблоне не хватает листа для мфо "'+filial_branch+'" ');
                MemoProt.lines.add(e.Message);
                WorkBook.WorkSheets[k].Select;
              end;
            end;
            WorkBook.WorkSheets[k].Cells[1,1].Value:=filial_branch;
           try
          // список отделов  cdsTempSource
{
select level, b.department_id id, b.DEPARTMENT_CODE ,
                     b.department_name,  b.department_type_code,
                     b.high_dep_code, b.level_department_code, b.department_num
                     from ss_ok_department b
                     where b.DEPARTMENT_CODE in (
                     (select high_dep_code from ss_ok_department where department_code in
                      (select high_dep_code from ss_ok_department where department_code in
                       (select DEPARTMENT_CODE from bank394.ok_stat
                         where branch='00394')))
                     union all
                     (select high_dep_code from ss_ok_department where department_code in
                      (select DEPARTMENT_CODE from bank394.ok_stat
                         where branch='00394'))
                     union all
                     (select DEPARTMENT_CODE from bank394.ok_stat
                         where branch='00394'))
                     and b.state_notes='A'
                     connect by b.high_dep_code = prior b.department_code
                     start with b.high_dep_code is null
}
            sql2_ := '  select level, b.department_id id, b.DEPARTMENT_CODE ,'+
                    ' b.department_name,  b.department_type_code,'+
                    ' b.high_dep_code, b.level_department_code, b.department_num'+
                    ' from ss_ok_department b'+
                    ' where b.DEPARTMENT_CODE in '+
                    ' (select high_dep_code from ss_ok_department where department_code in'+
                     ' (select high_dep_code from ss_ok_department where department_code in'+
                      ' (select DEPARTMENT_CODE from '+filial_schema+'.ok_stat'+
                        ' where branch=:p_1))'+
                    ' union all'+
                    ' (select high_dep_code from ss_ok_department where department_code in'+
                     ' (select DEPARTMENT_CODE from '+filial_schema+'.ok_stat'+
                        ' where branch=:p_2))'+
                    ' union all'+
                    ' (select DEPARTMENT_CODE from '+filial_schema+'.ok_stat'+
                        ' where branch=:p_3))'+
                    ' and b.state_notes=:p_a' + //''A'' '+
                    ' connect by b.high_dep_code = prior b.department_code'+
                    ' start with b.high_dep_code is null';
            cdsTempSource.close;
            with cdsTempSource.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value := filial_branch;
                CreateParam(ftString,'p_2' ,ptInput);
                ParamByName('p_2').Value := filial_branch;
                CreateParam(ftString,'p_3' ,ptInput);
                ParamByName('p_3').Value := filial_branch;
                CreateParam(ftString,'p_a' ,ptInput);
                ParamByName('p_a').Value := 'A';
            end;
            loaddata(cdsTempSource,sql2_);
            cdsTempSource.first;

            kolvo_doljn_ := getsqlresultpar('select count(id) from '+filial_schema+'.ok_stat'+
                        ' where branch=:p_1',filial_branch);

            begin_row:=15; //
            end_row:= begin_row + 2*(cdsTempSource.recordcount) + kolvo_doljn_ ; // начало + колво строк должностей + 2*колво строк отделов + 1

          // Создаем Вариантный Массив, который заполним выходными данными
            ArrayData := VarArrayCreate([1, (2*(cdsTempSource.recordcount) + kolvo_doljn_ + 1), 1, 6], varVariant);//, 1, cdsNsi.FieldCount
            j:=0; // текущая строка массива
            line_ := 14; // текущая строка страницы экселя

            cdsTempSource.first;
            LAST_level := cdsTempSource.fieldbyname('level').AsString;
            if 1<>1 // LAST_level<>'1'
            then begin
              MemoProt.lines.add(filial_schema+') Не заполнено подразделение 1 уровня. Невозможно вывести штатное расписание.');
            end else begin

              LAST_DEPARTMENT_CODE := cdsTempSource.fieldbyname('DEPARTMENT_CODE').AsString;
              LAST_department_name := ' '+cdsTempSource.fieldbyname('department_name').AsString;

              LAST_level_1_name := ' ';
              LAST_level_2_name := ' ';
              LAST_level_3_name := ' ';

              if LAST_level='1' then LAST_level_1_name := LAST_department_name;
              if LAST_level='2' then LAST_level_2_name := LAST_department_name;
              if LAST_level='3' then LAST_level_3_name := LAST_department_name;
              // вывод заголовка LAST_department_name
              inc(j); inc(line_);
              ArrayData[j, 1] :='';
              ArrayData[j, 2] := LAST_department_name;
              ArrayData[j, 3] :='';
              ArrayData[j, 4] :='';
              ArrayData[j, 5] :='';
              ArrayData[j, 6] :='';

                    LAST_level_0_col_3:='=';
                    LAST_level_0_col_4:='=';
                    LAST_level_0_col_5:='=';
                    LAST_level_0_col_6:='=';

                    LAST_level_0_col_3_sum:=0;
                    LAST_level_0_col_4_sum:=0;
                    LAST_level_0_col_5_sum:=0;
                    LAST_level_0_col_6_sum:=0;

                    LAST_level_1_col_3:='=';
                    LAST_level_1_col_4:='=';
                    LAST_level_1_col_5:='=';
                    LAST_level_1_col_6:='=';

                    LAST_level_2_col_3:='=';
                    LAST_level_2_col_4:='=';
                    LAST_level_2_col_5:='=';
                    LAST_level_2_col_6:='=';

                    LAST_level_3_col_3:='=';
                    LAST_level_3_col_4:='=';
                    LAST_level_3_col_5:='=';
                    LAST_level_3_col_6:='=';

            while not cdsTempSource.eof
            do begin
            // по отделам
              CUR_level := cdsTempSource.fieldbyname('level').AsString;
              CUR_DEPARTMENT_CODE := cdsTempSource.fieldbyname('DEPARTMENT_CODE').AsString;
              CUR_department_name := cdsTempSource.fieldbyname('department_name').AsString;
              if LAST_level ='1'
              then begin
                if  (CUR_DEPARTMENT_CODE<>LAST_DEPARTMENT_CODE)
                then begin
                // другой код отдела
                  if  CUR_level='1'
                  then begin
                  // итого по LAST_DEPARTMENT_CODE и начинаем новый level_1
                    // вывод Итого LAST_level_1
                    inc(j); inc(line_);
                    ArrayData[j, 1] :=' '; // пусто
                    if rgn_='26' // Ташкент
                    then begin
                      ArrayData[j, 2] :=' Жами '+LAST_level_1_name; // Лавозим номи
                    end else begin
                      ArrayData[j, 2] :=' Жами '; // Лавозим номи
                    end;
                    ArrayData[j, 3] :=LAST_level_1_col_3; // Штат сони
                    ArrayData[j, 4] :=LAST_level_1_col_4; // Лавозим маоши
                    ArrayData[j, 5] :=LAST_level_1_col_5; // Сувсизлик коэффиценти
                    ArrayData[j, 6] :=LAST_level_1_col_6; // Иш хакининг  ойлик фонди
                     if (filial_branch='00394') or (filial_branch='00883')
                     then begin
                     // для 394 и 883 суммирование по итого первых уровней
                          LAST_level_0_col_3:=LAST_level_0_col_3+'+C'+inttostr(line_);
                          LAST_level_0_col_4:=LAST_level_0_col_4+'+D'+inttostr(line_);
                          LAST_level_0_col_5:=LAST_level_0_col_5+'+E'+inttostr(line_);
                          LAST_level_0_col_6:=LAST_level_0_col_6+'+F'+inttostr(line_);
                     end;

                    LAST_level_1_name := CUR_department_name;
                    LAST_level_1_col_3:='=';
                    LAST_level_1_col_4:='=';
                    LAST_level_1_col_5:='=';
                    LAST_level_1_col_6:='=';

                  end;
                  if  CUR_level='2'
                  then begin
                    LAST_level_2_name := CUR_department_name;
                    LAST_level_2_col_3:='=';
                    LAST_level_2_col_4:='=';
                    LAST_level_2_col_5:='=';
                    LAST_level_2_col_6:='=';
                    // подуровень 1 уровня,
                    // продолжаем без вывода Итого
                  end;
                  // вывод заголовка этого следующего отдела
                  inc(j); inc(line_);
                  ArrayData[j, 1] :='';
                  ArrayData[j, 2] := CUR_department_name;
                  ArrayData[j, 3] :='';
                  ArrayData[j, 4] :='';
                  ArrayData[j, 5] :='';
                  ArrayData[j, 6] :='';
                end;
              end;

              if LAST_level ='2'
              then begin
                if  (CUR_DEPARTMENT_CODE<>LAST_DEPARTMENT_CODE)
                then begin
                // другой код отдела
                  if  (CUR_level='1') or (CUR_level='2')
                  then begin
                  // итого по LAST_DEPARTMENT_CODE и начинаем новый level_1 или level_2
                    // вывод Итого
                    inc(j); inc(line_);
                    ArrayData[j, 1] :=' '; // пусто
                    ArrayData[j, 2] :=' Жами '+LAST_level_2_name; // Лавозим номи
                    ArrayData[j, 3] :=LAST_level_2_col_3; // Штат сони
                    ArrayData[j, 4] :=LAST_level_2_col_4; // Лавозим маоши
                    ArrayData[j, 5] :=LAST_level_2_col_5; // Сувсизлик коэффиценти
                    ArrayData[j, 6] :=LAST_level_2_col_6; // Иш хакининг  ойлик фонди

                    LAST_level_2_col_3:='=';
                    LAST_level_2_col_4:='=';
                    LAST_level_2_col_5:='=';
                    LAST_level_2_col_6:='=';
                    LAST_level_2_name := '(4685)было='+LAST_level_2_name;

                    if (CUR_level='2')
                    then begin
                      LAST_level_2_name := CUR_department_name;
                    end;

                    if (CUR_level='1')
                    then begin
                      // меняется и уровень 1, ставится итого по предидущему уровню 1
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_1_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_1_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_1_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_1_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_1_col_6; // Иш хакининг  ойлик фонди
                       if (filial_branch='00394') or (filial_branch='00883')
                       then begin
                       // для 394 и 883 суммирование по итого первых уровней
                            LAST_level_0_col_3:=LAST_level_0_col_3+'+C'+inttostr(line_);
                            LAST_level_0_col_4:=LAST_level_0_col_4+'+D'+inttostr(line_);
                            LAST_level_0_col_5:=LAST_level_0_col_5+'+E'+inttostr(line_);
                            LAST_level_0_col_6:=LAST_level_0_col_6+'+F'+inttostr(line_);
                       end;

                      LAST_level_1_name :=CUR_department_name;
                      LAST_level_1_col_3:='=';
                      LAST_level_1_col_4:='=';
                      LAST_level_1_col_5:='=';
                      LAST_level_1_col_6:='=';
                    end;

                  end;

//                  LAST_level_3_name :='(4713)было='+LAST_level_3_name;
                  LAST_level_3_col_3:='=';
                  LAST_level_3_col_4:='=';
                  LAST_level_3_col_5:='=';
                  LAST_level_3_col_6:='=';

                  if  CUR_level='3'
                  then begin
                      LAST_level_3_name := CUR_department_name;
                      LAST_level_3_col_3:='=';
                      LAST_level_3_col_4:='=';
                      LAST_level_3_col_5:='=';
                      LAST_level_3_col_6:='=';
                    // подуровень 2 уровня,
                    // продолжаем без вывода Итого
                  end;
                  // вывод заголовка этого следующего отдела
                  inc(j); inc(line_);
                  ArrayData[j, 1] :='';
                  ArrayData[j, 2] := CUR_department_name;
                  ArrayData[j, 3] :='';
                  ArrayData[j, 4] :='';
                  ArrayData[j, 5] :='';
                  ArrayData[j, 6] :='';

                end;

              end;

              if LAST_level ='3'
              then begin
                if  (CUR_DEPARTMENT_CODE<>LAST_DEPARTMENT_CODE)
                then begin
                // другой код отдела
                  if  (CUR_level='1') or (CUR_level='2') or (CUR_level='3')
                  then begin
                  // итого по LAST_DEPARTMENT_CODE и начинаем новый level_1 или level_2 или level_3
                    if  (CUR_level='1')
                    then begin
                   // итого по 3 LAST_DEPARTMENT_CODE
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_3_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_3_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_3_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_3_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_3_col_6; // Иш хакининг  ойлик фонди
                   // итого по 2
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_2_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_2_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_2_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_2_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_2_col_6; // Иш хакининг  ойлик фонди
                   // итого по 1
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_1_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_1_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_1_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_1_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_1_col_6; // Иш хакининг  ойлик фонди
                       if (filial_branch='00394') or (filial_branch='00883')
                       then begin
                       // для 394 и 883 суммирование по итого первых уровней
                            LAST_level_0_col_3:=LAST_level_0_col_3+'+C'+inttostr(line_);
                            LAST_level_0_col_4:=LAST_level_0_col_4+'+D'+inttostr(line_);
                            LAST_level_0_col_5:=LAST_level_0_col_5+'+E'+inttostr(line_);
                            LAST_level_0_col_6:=LAST_level_0_col_6+'+F'+inttostr(line_);
                       end;
                   // и начинаем новый level_1
                      LAST_level_1_name :=CUR_department_name;
                      LAST_level_1_col_3:='=';
                      LAST_level_1_col_4:='=';
                      LAST_level_1_col_5:='=';
                      LAST_level_1_col_6:='=';

//                      LAST_level_2_name :='(4762)было';
                      LAST_level_2_col_3:='=';
                      LAST_level_2_col_4:='=';
                      LAST_level_2_col_5:='=';
                      LAST_level_2_col_6:='=';

//                      LAST_level_3_name :='(4768)было';
                      LAST_level_3_col_3:='=';
                      LAST_level_3_col_4:='=';
                      LAST_level_3_col_5:='=';
                      LAST_level_3_col_6:='=';

                    end;
                    if  (CUR_level='2')
                    then begin
                   // итого по 3 LAST_DEPARTMENT_CODE
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_3_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_3_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_3_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_3_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_3_col_6; // Иш хакининг  ойлик фонди
                   // итого по 2
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_2_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_2_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_2_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_2_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_2_col_6; // Иш хакининг  ойлик фонди
                   // и начинаем новый level_2
                      LAST_level_2_name := CUR_department_name;
                      LAST_level_2_col_3:='=';
                      LAST_level_2_col_4:='=';
                      LAST_level_2_col_5:='=';
                      LAST_level_2_col_6:='=';

//                      LAST_level_3_name :='(4840)было';
                      LAST_level_3_col_3:='=';
                      LAST_level_3_col_4:='=';
                      LAST_level_3_col_5:='=';
                      LAST_level_3_col_6:='=';
                    end;

                    if  (CUR_level='3')
                    then begin
                   // итого по 3 LAST_DEPARTMENT_CODE
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_3_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_3_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_3_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_3_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_3_col_6; // Иш хакининг  ойлик фонди
                   // и начинаем новый level_3
                      LAST_level_3_name :=CUR_department_name;
                      LAST_level_3_col_3:='=';
                      LAST_level_3_col_4:='=';
                      LAST_level_3_col_5:='=';
                      LAST_level_3_col_6:='=';
                    end;


                  end;
                  if  CUR_level='4'
                  then begin
                    // подуровень 3 уровня,
                    // продолжаем без вывода Итого
                  end;
                  // вывод заголовка этого следующего отдела
                  inc(j); inc(line_);
                  ArrayData[j, 1] :='';
                  ArrayData[j, 2] :=  CUR_department_name;
                  ArrayData[j, 3] :='';
                  ArrayData[j, 4] :='';
                  ArrayData[j, 5] :='';
                  ArrayData[j, 6] :='';
                end;

              end;
//////////////
// вывод должностей
// селект по мфо и коду отдела из OK_STAT
            sql3_ := ' select sop.post_code, sop.post_name, quantity_post, soc.SALARY'+
                    ' from '+filial_schema+'.ok_stat os, ss_ok_post sop, ss_ok_category soc'+
                    ' where os.branch=:p_1'+
                    ' and os.post_CODE=sop.post_CODE'+
                    ' and sop.category_code=soc.category_code(+)'+
                    ' and os.DEPARTMENT_CODE=:p_2 order by os.post_CODE';
            cdsTempDoljn.close;
            with cdsTempDoljn.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value := filial_branch;
                CreateParam(ftString,'p_2' ,ptInput);
                ParamByName('p_2').Value := CUR_DEPARTMENT_CODE;
            end;
//memoprot.lines.add('filial_branch='+filial_branch+' CUR_DEPARTMENT_CODE='+CUR_DEPARTMENT_CODE);
              loaddata(cdsTempDoljn,sql3_);
//memoprot.lines.add('cdsTempDoljn.recordcount='+inttostr(cdsTempDoljn.recordcount));
              cdsTempDoljn.First;
              while not cdsTempDoljn.eof
              do begin
                inc(j); inc(line_);
                ArrayData[j, 1] :=cdsTempDoljn.fieldbyname('post_code').asstring; // код должности
                ArrayData[j, 2] :=cdsTempDoljn.fieldbyname('post_name').asstring; // Лавозим номи
                ArrayData[j, 3] :=cdsTempDoljn.fieldbyname('quantity_post').asstring; // Штат сони
//memoprot.lines.add(cdsTempDoljn.fieldbyname('post_code').asstring+' '+cdsTempDoljn.fieldbyname('post_name').asstring);
//memoprot.lines.add('=ВПР(A'+inttostr(line_)+';бошкарма!A:E;5;ЛОЖЬ)');
//                dur_line := Format('=ВПР(A'+inttostr(line_)+';бошкарма!A:E%s5%sЛОЖЬ)',[ListSeparator,ListSeparator]);
//                dur_line := 'ВПР(A'+inttostr(line_)+';филиал!A:E;5;ЛОЖЬ)';
//memoprot.lines.add('1)'+dur_line);
//                ArrayData[j, 4] := dur_line;
                // Лавозим маоши  =ВПР(A176;филиал!A:E;5;ЛОЖЬ)
// %s
                ArrayData[j, 4] := cdsTempDoljn.fieldbyname('SALARY').asstring;
//memoprot.lines.add(cdsTempDoljn.fieldbyname('post_code').asstring+'|'+
//cdsTempDoljn.fieldbyname('post_name').asstring+'|'+
//cdsTempDoljn.fieldbyname('quantity_post').asstring+'|'+
//'SALARY='+cdsTempDoljn.fieldbyname('SALARY').asstring);
                ArrayData[j, 5] :='=+бошкарма!L'+inttostr(nomer_filiala_po_poryadku+7); // Сувсизлик коэффиценти  L8 - первый филиал, L9 второй и т.д.
                ArrayData[j, 6] :='=(D'+inttostr(line_)+'+E'+inttostr(line_)+')*C'+inttostr(line_); // Иш хакининг  ойлик фонди
                // и в итогошки просуммировать
                 //
                 if (filial_branch='00394') or (filial_branch='00883')
                 then begin
                 // для 394 и 883 суммирование по итого первых уровней
                 end else begin
                      LAST_level_0_col_3:=LAST_level_0_col_3+'+C'+inttostr(line_);
                      LAST_level_0_col_4:=LAST_level_0_col_4+'+D'+inttostr(line_);
                      LAST_level_0_col_5:=LAST_level_0_col_5+'+E'+inttostr(line_);
                      LAST_level_0_col_6:=LAST_level_0_col_6+'+F'+inttostr(line_);
                 end;
                      LAST_level_1_col_3:=LAST_level_1_col_3+'+C'+inttostr(line_);
                      LAST_level_1_col_4:=LAST_level_1_col_4+'+D'+inttostr(line_);
                      LAST_level_1_col_5:=LAST_level_1_col_5+'+E'+inttostr(line_);
                      LAST_level_1_col_6:=LAST_level_1_col_6+'+F'+inttostr(line_);

                      LAST_level_2_col_3:=LAST_level_2_col_3+'+C'+inttostr(line_);
                      LAST_level_2_col_4:=LAST_level_2_col_4+'+D'+inttostr(line_);
                      LAST_level_2_col_5:=LAST_level_2_col_5+'+E'+inttostr(line_);
                      LAST_level_2_col_6:=LAST_level_2_col_6+'+F'+inttostr(line_);

                      LAST_level_3_col_3:=LAST_level_3_col_3+'+C'+inttostr(line_);
                      LAST_level_3_col_4:=LAST_level_3_col_4+'+D'+inttostr(line_);
                      LAST_level_3_col_5:=LAST_level_3_col_5+'+E'+inttostr(line_);
                      LAST_level_3_col_6:=LAST_level_3_col_6+'+F'+inttostr(line_);


                cdsTempDoljn.next;
              end;
//////////////
              LAST_level := cdsTempSource.fieldbyname('level').AsString;
              LAST_DEPARTMENT_CODE := cdsTempSource.fieldbyname('DEPARTMENT_CODE').AsString;
              LAST_department_name := cdsTempSource.fieldbyname('department_name').AsString;
              cdsTempSource.next;
            end;

          // конец филиала,
          // если последний 3 то итого 3,2,1,F
          if (LAST_level='3')
          then begin
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_3_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_3_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_3_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_3_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_3_col_6; // Иш хакининг  ойлик фонди

          end;
          // если последний 2 то итого 2,1,F
          if (LAST_level='3') or (LAST_level='2')
          then begin
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_2_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_2_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_2_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_2_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_2_col_6; // Иш хакининг  ойлик фонди

          end;
          // если последний 1 то итого 1,F
          if (LAST_level='3') or (LAST_level='2') or (LAST_level='1')
          then begin
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' Жами '+LAST_level_1_name; // Лавозим номи
                      ArrayData[j, 3] :=LAST_level_1_col_3; // Штат сони
                      ArrayData[j, 4] :=LAST_level_1_col_4; // Лавозим маоши
                      ArrayData[j, 5] :=LAST_level_1_col_5; // Сувсизлик коэффиценти
                      ArrayData[j, 6] :=LAST_level_1_col_6; // Иш хакининг  ойлик фонди

                 if (filial_branch='00394') or (filial_branch='00883')
                 then begin
                 // для 394 и 883 суммирование по итого первых уровней
                      LAST_level_0_col_3:=LAST_level_0_col_3+'+C'+inttostr(line_);
                      LAST_level_0_col_4:=LAST_level_0_col_4+'+D'+inttostr(line_);
                      LAST_level_0_col_5:=LAST_level_0_col_5+'+E'+inttostr(line_);
                      LAST_level_0_col_6:=LAST_level_0_col_6+'+F'+inttostr(line_);
                 end;
                      // вывод Итого
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // пусто
                      ArrayData[j, 2] :=' ЖАМИ '; // Лавозим номи
                        ArrayData[j, 3] :=LAST_level_0_col_3; // Штат сони
                        ArrayData[j, 4] :=LAST_level_0_col_4; // Лавозим маоши
                        ArrayData[j, 5] :=LAST_level_0_col_5; // Сувсизлик коэффиценти
                        ArrayData[j, 6] :=LAST_level_0_col_6; // Иш хакининг  ойлик фонди

                      ITOGO_line_:= line_;
          end;


            // Область, в которую будем выводить данные
             Range := WorkBook.WorkSheets[k].Range[numto(1)+inttostr(begin_row)+':'+numto(6)+inttostr(end_row)];
             Range.select;
             Range.Value := ArrayData;

// убрал авторасширение
//             Range := WorkBook.WorkSheets[k].Range[numto(1)+inttostr(begin_row-1)+':'+numto(6)+inttostr(end_row)];
//             Range.columns.AutoFit;


          MyRange := WorkBook.WorkSheets[k].Range[numto(2)+inttostr(16)+':'+numto(2)+inttostr(ITOGO_line_)];
          MyRange.WrapText:=True;

          for cycle_:=15 to (ITOGO_line_-1)
          do begin
//            memoprot.lines.add(copy(ArrayData[cycle_-14,4],1,3)+')'+ArrayData[cycle_-14,4]);

            if ArrayData[cycle_-14,1]='' //
            then begin                                          // // Format('=округл(A1*B1%s 2)', [ListSeparator]);
//            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=бошкарма!M26';
               dur_line:=WorkBook.WorkSheets[k].Cells[line_,2].Value;
               WorkBook.WorkSheets[k].Cells[line_,2].Value :='';
               MyRange:= WorkBook.WorkSheets[k].Range[numto(2)+inttostr(cycle_)+':'+numto(6)+inttostr(cycle_)];
               MyRange.select;
               MyRange.Merge;
               MyRange.HorizontalAlignment := 3;
               if (copy(dur_line,1,1)=' ')
               then begin
                 MyRange.Font.Bold := True;
               end;
               WorkBook.WorkSheets[k].Cells[line_,2].Value := dur_line;

//               WorkBook.WorkSheets[k].Cells[cycle_,4].Value:= '=' +WorkBook.WorkSheets[k].Cells[cycle_,4].Value ;
            end;

            if (copy(ArrayData[cycle_-14,2],1,1)=' ') //
            then begin
               MyRange:= WorkBook.WorkSheets[k].Range[numto(2)+inttostr(cycle_)+':'+numto(6)+inttostr(cycle_)];
               MyRange.Font.Bold := True;
            end;

          end;

               MyRange:= WorkBook.WorkSheets[k].Range[numto(2)+inttostr(ITOGO_line_)+':'+numto(6)+inttostr(ITOGO_line_)];
               MyRange.Font.Bold := True;

          // две пустые линиии
            inc(line_);
            inc(line_);

                      // в B '=бошкарма!M'+inttostr(5+k)
            inc(line_);

               MyRange:= WorkBook.WorkSheets[k].Range[numto(2)+inttostr(line_)+':'+numto(6)+inttostr(line_)];
               MyRange.WrapText:=True;
               MyRange.select;
               MyRange.Merge;
            WorkBook.WorkSheets[k].Rows[line_].rowheight:=40;
            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=бошкарма!M'+inttostr(5+k);

                      // пустая линиия
            inc(line_);

                      // в B '=бошкарма!S'+inttostr(5+k)
            inc(line_);
               MyRange:= WorkBook.WorkSheets[k].Range[numto(2)+inttostr(line_)+':'+numto(6)+inttostr(line_)];
               MyRange.WrapText:=True;
               MyRange.select;
               MyRange.Merge;
            WorkBook.WorkSheets[k].Rows[line_].rowheight:=40;
            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=бошкарма!S'+inttostr(5+k);

                      // пустая линиия
            inc(line_);

                      // BD '=бошкарма!M26'   '=бошкарма!O26'
            inc(line_);
            WorkBook.WorkSheets[k].Rows[line_].rowheight:=40;
            WorkBook.WorkSheets[k].Cells[line_,2].Font.Bold := True;
            WorkBook.WorkSheets[k].Cells[line_,2].WrapText:=True;
            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=бошкарма!V1';

            WorkBook.WorkSheets[k].Cells[line_,4].Font.Bold := True;
            WorkBook.WorkSheets[k].Cells[line_,4].Value:='=бошкарма!X1';

                      // пустая линиия
            inc(line_);

                      // BD '=бошкарма!M28'   '=бошкарма!O28'
            inc(line_);
            WorkBook.WorkSheets[k].Rows[line_].rowheight:=40;
            WorkBook.WorkSheets[k].Cells[line_,2].Font.Bold := True;
            WorkBook.WorkSheets[k].Cells[line_,2].WrapText:=True;
            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=бошкарма!V3';

            WorkBook.WorkSheets[k].Cells[line_,4].Font.Bold := True;
            WorkBook.WorkSheets[k].Cells[line_,4].Value:='=бошкарма!X3';
                      // пустая линиия

            inc(line_);
          // также закинуть итоговое колво в 7:4 и сумму в 6:6
            WorkBook.WorkSheets[k].Cells[7,4].Value:='=C'+ inttostr(ITOGO_line_);
            WorkBook.WorkSheets[k].Cells[6,6].Value:='=F'+ inttostr(ITOGO_line_);

             Application.ProcessMessages;
            MemoProt.lines.add(TimeToStr(Time)+') '+WorkBook.WorkSheets[k].name);
           end;

          except on e:exception
            do begin
              MemoProt.lines.add(TimeToStr(Time)+') '+WorkBook.WorkSheets[k].name+' линия='+inttostr(line_));
            end;  
          end;

         end;
        end;
        CDS_DBBranchStat.Next;
      end;



      // в конце
        WorkBook.WorkSheets[1].Select;
    finally;
        App.Visible:=true;
        App:=unassigned;
    end;

  end;

end;

procedure TBOKEDBForm.bOkClick(Sender: TObject);
begin
//
end;

procedure TBOKEDBForm.Button2Click(Sender: TObject);
begin
//
end;

procedure TBOKEDBForm.Button3Click(Sender: TObject);
begin
//
end;

procedure TBOKEDBForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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
      end;
    VK_F9:
      begin
                 If Sender = edDepartment
                 Then begin
                   Source.close;
                    with source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   LoadData(Source,'SELECT to_char(department_code) id, department_name name'+
                                              '  FROM ss_ok_department'+
                                              ' WHERE state_notes=:p_1',True);
                 end;
                 If Sender = edPost
                 Then begin
                   Source.close;
                    with source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   LoadData(Source,'SELECT to_char(post_code) id, post_name name'+
                                              '  FROM ss_ok_post'+
                                              ' WHERE state_notes=:p_1',True);
                 end;
                 If Sender = edSpecial
                 Then begin
                   Source.close;
                    with source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   LoadData(Source,'SELECT to_char(Special_code) id, Special_name name'+
                                              '  FROM ss_ok_Special'+
                                              ' WHERE state_notes=:p_1',True);
                 end;
                 If Sender = edEducation
                 Then begin
                   Source.close;
                    with source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   LoadData(Source,'SELECT to_char(education_code) id, education_name name'+
                                              '  FROM ss_ok_education'+
                                              ' WHERE state_notes=:p_1',True);
                 end;

                 If Sender = edInstitution
                 Then begin
                   Source.close;
                    with source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   LoadData(Source,'SELECT to_char(Institution_code) id, Institution_name name'+
                                              '  FROM ss_ok_Institution'+
                                              ' WHERE state_notes=:p_1',True);
                 end;


                 If Sender = edBasis
                 Then begin
                   Source.close;
                   source.Params.clear;
                   LoadData(Source,'SELECT to_char(basis_code) id, basis_name name FROM ss_ok_basis',True);
                 end;

                 Source.Edit;
                 With TSelectDialog.CreateEx(Self, Source, Source, Source.FindField('id').Index) do
                  Try
                    If ShowModal = mrOk Then
                      TEdit(Sender).Text := Source.FieldByName('ID').AsString;

                      If Sender = edDepartment
                      Then lbDepartment.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = edPost
                      Then lbPost.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = edSpecial
                      Then lbSpecial.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = edEducation
                      Then lbEducation.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = edBasis
                      Then lbBasis.Caption := Source.FieldByName('NAME').AsString;

                  Finally
                    Destination.Filtered:=false;
                    Free;
                  End;
               End;

  end;

end;

procedure TBOKEDBForm.cbRGN_2Select(Sender: TObject);
begin
  if cbRGN_2.ItemIndex>0
  then begin
    CDS_DBBranch.filter :='region='''+ TData(cbRGN_2.Items.Objects[cbRGN_2.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end else begin
    if CDS_DBBranch.filtered
    then CDS_DBBranch.filtered:=false;
  end;

    CBII_2.Clear;
    CBII_2.Items.Add('');
    with CDS_DBBranch do
    begin
      first;
      while not EOF do
      begin
        D := TData.Create;
        with D do
        begin
          Id := FieldByName('bank_id').AsString;
          Name := FieldByName('bank_name').AsString;
          User_Name := FieldByName('user_name').AsString;
        end;
        CBII_2.Items.AddObject(FieldByName('bank_id').AsString +
          ' | ' + FieldByName('bank_name').AsString, D);
        Next;
      end;
    end;
    CBII_2.ItemIndex := 0;

end;

procedure TBOKEDBForm.Button1Click(Sender: TObject);
var  //sql_  :string;
  MyRange: OLEVariant;
 Range,V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
begin

  MemoProt.lines.add('Начало '+TimeToStr(Time));
//  MemoProt.lines.add(ilova1.caption);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
  end;

  if (CBII.ItemIndex=0) and (cbRGN.ItemIndex>0)
  then begin
    CDS_DBBranch.filter :='region='''+ TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'''';
    CDS_DBBranch.filtered := true;
  end;

  if ((CBII.ItemIndex>0) or (edBranchFilter.text<>''))
  then begin
    if (edBranchFilter.Text<>'')
    then begin
      CDS_DBBranch.filter :='branch='''+ edBranchFilter.text+'''';
    end else begin
      CDS_DBBranch.filter :='branch='''+ TData(CBII.Items.Objects[CBII.ItemIndex]).Id+'''';
    end;
    CDS_DBBranch.filtered := true;
  end;

 Try
  V := CreateOleObject('Excel.Application');
  V.Workbooks.Add;
  row:=1;
  StrFormat  := '@';
  try
    V.Cells[row,3].NumberFormat := '00.0';
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          Илова-1';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=' ';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=' ';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=' ';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' холатига';
  inc(row);
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//    V.Cells[row,row_j].Value:='Умумий сони';
//    inc(row_j);
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//     V.Cells[row,row_j].Value:='Рахбарият';
//    inc(row_j);
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//     V.Cells[row,row_j].Value:='Мутахассислар';
//    inc(row_j); //V.Cells[row,row_j].Value:='сислар';
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//    V.Cells[row,row_j].Value:='Касса ходимлари';
//    inc(row_j); //V.Cells[row,row_j].Value:='ходимлари';
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//    V.Cells[row,row_j].Value:='Кичик хизмат ходимлари';
//    inc(row_j); //V.Cells[row,row_j].Value:='хизмат';

    inc(row);

  row_j:=1;
  V.Cells[row,row_j].Value:='       Т/р';
  inc(row_j);
  V.Cells[row,row_j].Value:='МФО';
  inc(row_j);
  V.Cells[row,row_j].Value:='Таб.н.';
  inc(row_j);
  V.Cells[row,row_j].Value:='Фамилия';
  inc(row_j);
  V.Cells[row,row_j].Value:='Имя';
  inc(row_j);
  V.Cells[row,row_j].Value:='Отчество';
  inc(row_j);
  V.Cells[row,row_j].Value:='Отдел';
  inc(row_j);
  V.Cells[row,row_j].Value:='Должность';
  inc(row_j);
  V.Cells[row,row_j].Value:='';
  inc(row_j);
  V.Cells[row,row_j].Value:='';
  inc(row_j);
  V.Cells[row,row_j].Value:='';
  inc(row_j);
  V.Cells[row,row_j].Value:='';
  inc(row_j);
  V.Cells[row,row_j].Value:='';
  inc(row_j);
  V.Cells[row,row_j].Value:='';
  inc(row_j);
  V.Cells[row,row_j].Value:='';
  inc(row_j);
  V.Cells[row,row_j].Value:='';
  inc(row_j);
  V.Cells[row,row_j].Value:='';
  inc(row_j);

  inc(row);
  row_j:=0;



  row:=10;

//CDS_DBBranch.filter :='bank_id=''00394'' or bank_id=''00475''';
//CDS_DBBranch.filtered := true;

  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;




    end;
    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
  Range.Select;
  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));
//
end;

procedure TBOKEDBForm.bClearClick(Sender: TObject);
begin
//

end;

procedure TBOKEDBForm.bbDoljnostiEDBClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 department_code_old, code_,name_,count_stat_,count_fakt_ : string;
 itogo_count_stat_,itogo_count_fakt_ : double;
 ITOGOitogo_count_stat_,ITOGOitogo_count_fakt_ : double;
begin
//  showmessage( 'в шаблон илова9.doc');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbDoljnostiEDB.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='Должности';


    inc(row);
    inc(row);
    row_j:=1;

//    V.Cells[row,row_j].ColumnWidth := 5;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:='       N';
//    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' МФО ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Наименование ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По факту';
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

  ITOGOitogo_count_stat_ :=0;
  ITOGOitogo_count_fakt_ :=0;

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
        ' select sop.post_code,''11''||nvl(sop.post_name,''-''), sum(nvl(okp.zp_rate_code,8)/8) '+
        ' from ss_ok_post sop, '+fil_schema+'.ok_personal okp'+
//        ' where sop.post_code=okp.post_code (+)'+
        ' where sop.post_code=okp.post_code '+
        ' and okp.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sop.post_code,sop.post_name'+
        ' union all'+
        ' select sop.post_code,''00''||nvl(sop.post_name,''--''), sum(nvl(oks.quantity_post,0))'+
        ' from ss_ok_post sop, '+fil_schema+'.ok_stat oks'+
//        ' where sop.post_code=oks.post_code (+)'+
        ' where sop.post_code=oks.post_code '+
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
        department_code_old :='--1';

        while not ExecPrc.eof
        do begin

          if copy( Trim(ExecPrc.Fields[1].AsString) ,1,2)='00'
          then begin
            // по штату
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
            // по факту
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
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// добавить игого
                inc(row);
                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'Итого';
                V.Cells[row,4].Value := itogo_count_stat_;
                V.Cells[row,5].Value := itogo_count_fakt_;
///////////////////////////////////////////

    ITOGOitogo_count_stat_ :=ITOGOitogo_count_stat_+itogo_count_stat_;
    ITOGOitogo_count_fakt_ :=ITOGOitogo_count_fakt_+itogo_count_fakt_;

    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// добавить ИГОГОигого
                inc(row);
//                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'ИТОГО';
                V.Cells[row,4].Value := ITOGOitogo_count_stat_;
                V.Cells[row,5].Value := ITOGOitogo_count_fakt_;
///////////////////////////////////////////
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.bbDepEDBClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn  , row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 department_code_old, code_,name_,count_stat_,count_fakt_ : string;
 itogo_count_stat_,itogo_count_fakt_ : double;
 ITOGOitogo_count_stat_,ITOGOitogo_count_fakt_ : double;
begin
//  showmessage( 'в шаблон илова9.doc');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbDepEDB.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='Подразделения';


    inc(row);
    inc(row);
    row_j:=1;

//    V.Cells[row,row_j].ColumnWidth := 5;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:='       N';
//    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' МФО ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Наименование ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По факту';
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
  ITOGOitogo_count_stat_ :=0;
  ITOGOitogo_count_fakt_ :=0;

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
        ' select sop.department_code,''11''||nvl(sop.department_name,''-''), sum(nvl(okp.zp_rate_code,8)/8)'+
        ' from ss_ok_department sop, '+fil_schema+'.ok_personal okp'+
//        ' where sop.department_code=okp.department_code (+)'+
        ' where sop.department_code=okp.department_code '+
        ' and sop.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sop.department_code,sop.department_name'+
        ' union all'+
        ' select sop.department_code,''00''||nvl(sop.department_name,''--''), sum(nvl(oks.quantity_post,0))'+
        ' from ss_ok_department sop, '+fil_schema+'.ok_stat oks'+
//        ' where sop.department_code=oks.department_code (+)'+
        ' where sop.department_code=oks.department_code '+
        ' and sop.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' group by sop.department_code,sop.department_name'+
        ' order by 1,2';

        ExecPrc.Close;
        with ExecPrc.Params
        do begin
            clear;
            CreateParam(ftString,'p_1' ,ptInput);
            ParamByName('p_1').Value :=CDS_DBBranch.fieldbyname('branch').asstring;
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
            // по штату
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
            // по факту
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
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// добавить игого
                inc(row);
                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'Итого';
                V.Cells[row,4].Value := itogo_count_stat_;
                V.Cells[row,5].Value := itogo_count_fakt_;
///////////////////////////////////////////

    ITOGOitogo_count_stat_ :=ITOGOitogo_count_stat_+itogo_count_stat_;
    ITOGOitogo_count_fakt_ :=ITOGOitogo_count_fakt_+itogo_count_fakt_;

    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// добавить ИГОГОигого
                inc(row);
//                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'ИТОГО';
                V.Cells[row,4].Value := ITOGOitogo_count_stat_;
                V.Cells[row,5].Value := ITOGOitogo_count_fakt_;
///////////////////////////////////////////
  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.ilova1_2Click(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 Range,V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema, old_region_id, old_bank_id, old_region_nam: String;
 region_sum2,region_sum3,region_sum4,region_sum5,region_sum6 : Double;
 region_sum7,region_sum8,region_sum9,region_sum10,region_sum11 : Double;
 all_sum2,all_sum3,all_sum4,all_sum5,all_sum6 : Double;
 all_sum7,all_sum8,all_sum9,all_sum10,all_sum11 : Double;
begin
//  showmessage( 'в шаблон илова9.doc');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(ilova1_2.caption);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.BRANCH,a.DB_ALIAS,a.NAME,a.USER_NAME,a.REGION,'+
    ' b.BANK_NAME,b.region_id,b.bank_id, c.REGION_NAM from ss_dblink_branch a,s_mfo b, s_region c'+
    ' where a.branch=b.bank_id'+
    ' and b.act=''A'' '+
//' and branch in'+
//'(''00828'',''00826'',''00822'',''00641'',''00786'',''00687'',''00666'',''09006'',''00722'',''00699'','+
//' ''00657'',''00497'',''00830'',''00726'',''09014'',''00638'',''00283'',''00671'',''00741'','+
//' ''00773'',''01005'',''00670'',''00656'',''01032'',''00444'',''00883'',''00817'')'+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)'+
    ' and a.region=c.REGION_ID'+
    ' and b.REGION_ID=c.REGION_ID'+
    ' order by b.region_id,b.bank_id');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          Илова-1';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
  if headbranch='09006'
  then begin
    V.Cells[row,1].Value:='ДАВЛАТ-ТИЖОРАТ ХАЛК БАНКИ БОШКАРУВИ АППАРАТИ, КОРАКАЛПОГИСТОН РЕСПУБЛИКАСИ, ВИЛОЯТЛАР ВА';
  end else begin
    V.Cells[row,1].Value:='БОШКАРУВИ АППАРАТИ, КОРАКАЛПОГИСТОН РЕСПУБЛИКАСИ, ВИЛОЯТЛАР ВА';
  end;
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                               ТОШКЕНТ ШАХАР АППАРАТИ ВА ТУМАН (ШАХАР) ФИЛИАЛЛАРИДА';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                             ХОДИМЛАР СОНИ ВА ТАРКИБИ ТУГРИСИДА МАЪЛУМОТ';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' холатига';
  inc(row);
    row_j:=1;
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
    V.Cells[row,row_j].Value:='Умумий сони';
    inc(row_j);
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
     V.Cells[row,row_j].Value:='Рахбарият';
    inc(row_j);
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
     V.Cells[row,row_j].Value:='Мутахассислар';
    inc(row_j); //V.Cells[row,row_j].Value:='сислар';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
    V.Cells[row,row_j].Value:='Касса ходимлари';
    inc(row_j); //V.Cells[row,row_j].Value:='ходимлари';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
    V.Cells[row,row_j].Value:='Кичик хизмат ходимлари';
    inc(row_j); //V.Cells[row,row_j].Value:='хизмат';

    inc(row);
//    inc(row);  MyRange:= V.Range[numto(10)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,10].Value:='ходимлари'; //V.Cells[row,11].Value:='лари';

  V.Cells[row,1].Value:='       Т/р';
  inc(row);
    row_j:=0;
    while row_j<>10 //step 2
    do begin
      row_j:=row_j+2;
      V.Cells[row,row_j].Value  :='  '+'Штат'+'     ';
      V.Cells[row+1,row_j].Value:=' '+'жадвалида'+' ';
      V.Cells[row,row_j+1].Value:='  '+'Амалда'+'   ';

      V.Cells[10,row_j-1].Value:='''     '+'     '+inttostr(row_j-1)+'     '+'     ';
      V.Cells[10,row_j].Value  :='''     '+'     '+inttostr(row_j)  +'     '+'     ';
    end;

    V.Cells[10,11].Value:='''     '+'     '+'11     '+'     ';

//			Штат		Штат		Штат		Штат
//Т/р	 жадвалида	амалда	 жадвалида	амалда	 жадвалида	амалда	 жадвалида	амалда	 жадвалида	амалда
//1	2	3	4	5	6	7	8	9	10	11

  row:=10;

//CDS_DBBranch.filter :='bank_id=''00394'' or bank_id=''00475''';
//CDS_DBBranch.filtered := true;

  old_region_id :='x';
  old_bank_id:='x';
  old_region_nam:='x';
 region_sum2:=0; region_sum3:=0; region_sum4:=0; region_sum5:=0; region_sum6:=0;
 region_sum7:=0; region_sum8:=0; region_sum9:=0; region_sum10:=0; region_sum11 :=0;
 all_sum2:=0; all_sum3:=0; all_sum4:=0; all_sum5:=0; all_sum6:=0;
 all_sum7:=0; all_sum8:=0; all_sum9:=0; all_sum10:=0; all_sum11 :=0;

  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
      if (old_region_id ='x')
      then begin
        inc(row);
//        inc(row);
        V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('REGION_NAM').asstring;
        old_region_nam:=CDS_DBBranch.fieldbyname('REGION_NAM').asstring
      end;
      if (old_region_id<>CDS_DBBranch.fieldbyname('region_id').asstring)
      and (old_region_id <>'x')
      then begin
        inc(row);
        V.Cells[row,1].Value := 'Жами '+old_region_nam;
        V.Cells[row,2].Value := floattostr(region_sum2); //ExecPrc.Fields[0].FieldName;
        V.Cells[row,3].Value := floattostr(region_sum3);
        V.Cells[row,4].Value := floattostr(region_sum4); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,5].Value := floattostr(region_sum5);
        V.Cells[row,6].Value := floattostr(region_sum6);
        V.Cells[row,7].Value := floattostr(region_sum7);
        V.Cells[row,8].Value := floattostr(region_sum8);
        V.Cells[row,9].Value := floattostr(region_sum9);
        V.Cells[row,10].Value := floattostr(region_sum10);
        V.Cells[row,11].Value := floattostr(region_sum11);

    all_sum2:=all_sum2+region_sum2;    all_sum3:=all_sum3+region_sum3; all_sum4:=all_sum4+region_sum4;
    all_sum5:=all_sum5+region_sum5;    all_sum6:=all_sum6+region_sum6;
    all_sum7:=all_sum7+region_sum7;    all_sum8:=all_sum8+region_sum8; all_sum9:=all_sum9+region_sum9 ;
  all_sum10:=all_sum10+region_sum10;  all_sum11 :=all_sum11+region_sum11;

        region_sum2:=0; region_sum3:=0; region_sum4:=0; region_sum5:=0; region_sum6:=0;
        region_sum7:=0; region_sum8:=0; region_sum9:=0; region_sum10:=0; region_sum11 :=0;
        inc(row);
//        inc(row);
        V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('REGION_NAM').asstring;
        old_region_nam:=CDS_DBBranch.fieldbyname('REGION_NAM').asstring
      end;

      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;
      inc(row);

      try
        sql_:=
          'select 0 a,'+
          ' nvl(sum(decode(sop.post_group_code,1,ot.quantity_post,0)),0) b,'+
          ' nvl(sum(decode(sop.post_group_code,2,ot.quantity_post,0)),0) c,'+
          ' nvl(sum(decode(sop.post_group_code,3,ot.quantity_post,0)),0) d,'+
          ' nvl(sum(decode(sop.post_group_code,4,ot.quantity_post,0)),0) e'+
          ' from '+fil_schema+'.ok_stat ot, ss_ok_post sop'+
          ' where ot.post_code=sop.post_code'+
          ' and ot.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)';


        loaddata(ExecPrc,sql_);
      except on e:exception
        do begin
          MemoProt.visible:=true;
          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
          showmessage('ошибка. '+#13+
            sql_+#13+
            e.Message+#13);
    //      exit;
        end;
      end;

      ExecPrc.First;

        V.Cells[row,1].Value :=
          CDS_DBBranch.fieldbyname('bank_id').asstring+' '+
          CDS_DBBranch.fieldbyname('bank_name').asstring;

        V.Cells[row,2].Value := floattostr(ExecPrc.Fields[1].AsFloat+
          ExecPrc.Fields[2].AsFloat+
          ExecPrc.Fields[3].AsFloat+
          ExecPrc.Fields[4].AsFloat ); //ExecPrc.Fields[0].FieldName;

        V.Cells[row,4].Value := Trim(ExecPrc.Fields[1].AsString); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,6].Value := Trim(ExecPrc.Fields[2].AsString); //ExecPrc.Fields[2].FieldName;
        V.Cells[row,8].Value := Trim(ExecPrc.Fields[3].AsString); //ExecPrc.Fields[3].FieldName;
        V.Cells[row,10].Value := Trim(ExecPrc.Fields[4].AsString); //ExecPrc.Fields[4].FieldName;


        region_sum2:=region_sum2+ ExecPrc.Fields[1].AsFloat+
              ExecPrc.Fields[2].AsFloat+
              ExecPrc.Fields[3].AsFloat+
              ExecPrc.Fields[4].AsFloat ;
        region_sum4:=region_sum4+ ExecPrc.Fields[1].AsFloat;
        region_sum6:=region_sum6+ ExecPrc.Fields[2].AsFloat;
        region_sum8:=region_sum8+ ExecPrc.Fields[3].AsFloat;
        region_sum10:=region_sum10+ ExecPrc.Fields[4].AsFloat;



      try
{
// по факту
select sop.post_group_code,count(op.post_code) from '+fil_schema+'.ok_personal op, ss_ok_post sop
where op.post_code=sop.post_code
and op.status_code=2
group by sop.post_group_code;
//
}
        sql_:=
//          'select nvl(sum(1),0) g,'+
          'select 0 g,'+
          ' nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h,'+
          ' nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i,'+
          ' nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,'+
          ' nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
          ' and op.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
          ' and op.status_code in(:p_1,:p_2)'; // (2,5)';

      ExecPrc.Close;
      with ExecPrc.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '2';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '5';
      end;

        loaddata(ExecPrc,sql_);
      except on e:exception
        do begin
          MemoProt.visible:=true;
          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
          showmessage('ошибка. '+#13+
            sql_+#13+
            e.Message+#13);
    //      exit;
        end;
      end;

      ExecPrc.First;
//        V.Cells[row,3].Value := Trim(ExecPrc.Fields[0].AsString); //ExecPrc.Fields[0].FieldName;
        V.Cells[row,3].Value := floattostr(ExecPrc.Fields[1].AsFloat+
          ExecPrc.Fields[2].AsFloat+
          ExecPrc.Fields[3].AsFloat+
          ExecPrc.Fields[4].AsFloat ); //ExecPrc.Fields[0].FieldName;

        V.Cells[row,5].Value := Trim(ExecPrc.Fields[1].AsString); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,7].Value := Trim(ExecPrc.Fields[2].AsString); //ExecPrc.Fields[2].FieldName;
        V.Cells[row,9].Value := Trim(ExecPrc.Fields[3].AsString); //ExecPrc.Fields[3].FieldName;
        V.Cells[row,11].Value := Trim(ExecPrc.Fields[4].AsString); //ExecPrc.Fields[4].FieldName;

    region_sum3:=region_sum3+ ExecPrc.Fields[1].AsFloat+
          ExecPrc.Fields[2].AsFloat+
          ExecPrc.Fields[3].AsFloat+
          ExecPrc.Fields[4].AsFloat ;
    region_sum5:=region_sum5+ ExecPrc.Fields[1].AsFloat;
    region_sum7:=region_sum7+ ExecPrc.Fields[2].AsFloat;
    region_sum9:=region_sum9+ ExecPrc.Fields[3].AsFloat;
    region_sum11 :=region_sum11+ ExecPrc.Fields[4].AsFloat;


    end;

    old_region_id :=CDS_DBBranch.fieldbyname('region_id').asstring;
    old_bank_id:=CDS_DBBranch.fieldbyname('bank_id').asstring;
    CDS_DBBranch.Next;
  end;
        inc(row);
        V.Cells[row,1].Value := 'Жами '+OLD_REGION_NAM;
        V.Cells[row,2].Value := floattostr(region_sum2); //ExecPrc.Fields[0].FieldName;
        V.Cells[row,3].Value := floattostr(region_sum3);
        V.Cells[row,4].Value := floattostr(region_sum4); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,5].Value := floattostr(region_sum5);
        V.Cells[row,6].Value := floattostr(region_sum6);
        V.Cells[row,7].Value := floattostr(region_sum7);
        V.Cells[row,8].Value := floattostr(region_sum8);
        V.Cells[row,9].Value := floattostr(region_sum9);
        V.Cells[row,10].Value := floattostr(region_sum10);
        V.Cells[row,11].Value := floattostr(region_sum11);

        all_sum2:=all_sum2+region_sum2;    all_sum3:=all_sum3+region_sum3; all_sum4:=all_sum4+region_sum4;
        all_sum5:=all_sum5+region_sum5;    all_sum6:=all_sum6+region_sum6;
        all_sum7:=all_sum7+region_sum7;    all_sum8:=all_sum8+region_sum8; all_sum9:=all_sum9+region_sum9 ;
        all_sum10:=all_sum10+region_sum10;  all_sum11 :=all_sum11+region_sum11;

//        region_sum2:=0; region_sum3:=0; region_sum4:=0; region_sum5:=0; region_sum6:=0;
//        region_sum7:=0; region_sum8:=0; region_sum9:=0; region_sum10:=0; region_sum11 :=0;

        inc(row);
//        inc(row);
        V.Cells[row,1].Value := 'ЖАМИ';
        V.Cells[row,2].Value := floattostr(all_sum2); //ExecPrc.Fields[0].FieldName;
        V.Cells[row,3].Value := floattostr(all_sum3);
        V.Cells[row,4].Value := floattostr(all_sum4); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,5].Value := floattostr(all_sum5);
        V.Cells[row,6].Value := floattostr(all_sum6);
        V.Cells[row,7].Value := floattostr(all_sum7);
        V.Cells[row,8].Value := floattostr(all_sum8);
        V.Cells[row,9].Value := floattostr(all_sum9);
        V.Cells[row,10].Value := floattostr(all_sum10);
        V.Cells[row,11].Value := floattostr(all_sum11);
///////////////////////////////////////////
//         all_sum2:=0; all_sum3:=0; all_sum4:=0; all_sum5:=0; all_sum6:=0;
//         all_sum7:=0; all_sum8:=0; all_sum9:=0; all_sum10:=0; all_sum11 :=0;

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
  Range.Select;
  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.ilova1_3Click(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 Range,V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema, old_region_id, old_bank_id, old_region_nam: String;
 region_sum2,region_sum3,region_sum4,region_sum5,region_sum6 : Double;
 region_sum7,region_sum8,region_sum9,region_sum10,region_sum11 : Double;
 all_sum2,all_sum3,all_sum4,all_sum5,all_sum6 : Double;
 all_sum7,all_sum8,all_sum9,all_sum10,all_sum11 : Double;
begin
//  showmessage( 'в шаблон илова9.doc');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(ilova1_3.caption);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.BRANCH,a.DB_ALIAS,a.NAME,a.USER_NAME,a.REGION,'+
    ' b.BANK_NAME,b.region_id,b.bank_id, c.REGION_NAM from ss_dblink_branch a,s_mfo b, s_region c'+
    ' where a.branch=b.bank_id'+ // ' and branch in'+
    ' and b.act=''A'' '+
//    '(''00666'',''00883'',''01032'') '+
//'(''00828'',''00826'',''00822'',''00641'',''00786'',''00687'',''00666'',''09006'',''00722'',''00699'','+
//' ''00657'',''00497'',''00830'',''00726'',''09014'',''00638'',''00283'',''00671'',''00741'','+
//' ''00773'',''01005'',''00670'',''00656'',''01032'',''00444'',''00883'',''00817'')'+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)'+
    ' and a.region=c.REGION_ID'+
    ' and b.REGION_ID=c.REGION_ID'+
    ' order by b.region_id,b.bank_id');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          Илова-1';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
  if headbranch='09006'
  then begin
    V.Cells[row,1].Value:='ДАВЛАТ-ТИЖОРАТ ХАЛК БАНКИ БОШКАРУВИ АППАРАТИ, КОРАКАЛПОГИСТОН РЕСПУБЛИКАСИ, ВИЛОЯТЛАР ВА';
  end else begin
    V.Cells[row,1].Value:='БОШКАРУВИ АППАРАТИ, КОРАКАЛПОГИСТОН РЕСПУБЛИКАСИ, ВИЛОЯТЛАР ВА';
  end;
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                               ТОШКЕНТ ШАХАР АППАРАТИ ВА ТУМАН (ШАХАР) ФИЛИАЛЛАРИДА';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                             ХОДИМЛАР СОНИ ВА ТАРКИБИ ТУГРИСИДА МАЪЛУМОТ';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' холатига';
  inc(row);
    row_j:=1;
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
    V.Cells[row,row_j].Value:='Умумий сони';
    inc(row_j);
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
     V.Cells[row,row_j].Value:='Рахбарият';
    inc(row_j);
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
     V.Cells[row,row_j].Value:='Мутахассислар';
    inc(row_j); //V.Cells[row,row_j].Value:='сислар';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
    V.Cells[row,row_j].Value:='Касса ходимлари';
    inc(row_j); //V.Cells[row,row_j].Value:='ходимлари';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
    V.Cells[row,row_j].Value:='Кичик хизмат ходимлари';
    inc(row_j); //V.Cells[row,row_j].Value:='хизмат';

    inc(row);
//    inc(row);  MyRange:= V.Range[numto(10)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,10].Value:='ходимлари'; //V.Cells[row,11].Value:='лари';

  V.Cells[row,1].Value:='       Т/р';
  inc(row);
    row_j:=0;
    while row_j<>10 //step 2
    do begin
      row_j:=row_j+2;
      V.Cells[row,row_j].Value  :='  '+'Штатсиз'+'  ';
      V.Cells[row+1,row_j].Value:=' '+'жадвалида'+' ';
      V.Cells[row,row_j+1].Value:='  '+'Амалда'+'   ';

      V.Cells[10,row_j-1].Value:='''     '+'     '+inttostr(row_j-1)+'     '+'     ';
      V.Cells[10,row_j].Value  :='''     '+'     '+inttostr(row_j)  +'     '+'     ';
    end;

    V.Cells[10,11].Value:='''     '+'     '+'11     '+'     ';

//			Штат		Штат		Штат		Штат
//Т/р	 жадвалида	амалда	 жадвалида	амалда	 жадвалида	амалда	 жадвалида	амалда	 жадвалида	амалда
//1	2	3	4	5	6	7	8	9	10	11

  row:=10;

//CDS_DBBranch.filter :='bank_id=''00394'' or bank_id=''00475''';
//CDS_DBBranch.filtered := true;

  old_region_id :='x';
  old_bank_id:='x';
  old_region_nam:='x';
 region_sum2:=0; region_sum3:=0; region_sum4:=0; region_sum5:=0; region_sum6:=0;
 region_sum7:=0; region_sum8:=0; region_sum9:=0; region_sum10:=0; region_sum11 :=0;
 all_sum2:=0; all_sum3:=0; all_sum4:=0; all_sum5:=0; all_sum6:=0;
 all_sum7:=0; all_sum8:=0; all_sum9:=0; all_sum10:=0; all_sum11 :=0;

  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
      if (old_region_id ='x')
      then begin
        inc(row);
//        inc(row);
        V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('REGION_NAM').asstring;
        old_region_nam:=CDS_DBBranch.fieldbyname('REGION_NAM').asstring
      end;
      if (old_region_id<>CDS_DBBranch.fieldbyname('region_id').asstring)
      and (old_region_id <>'x')
      then begin
        inc(row);
        V.Cells[row,1].Value := 'Жами '+old_region_nam;
        V.Cells[row,2].Value := floattostr(region_sum2); //ExecPrc.Fields[0].FieldName;
        V.Cells[row,3].Value := floattostr(region_sum3);
        V.Cells[row,4].Value := floattostr(region_sum4); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,5].Value := floattostr(region_sum5);
        V.Cells[row,6].Value := floattostr(region_sum6);
        V.Cells[row,7].Value := floattostr(region_sum7);
        V.Cells[row,8].Value := floattostr(region_sum8);
        V.Cells[row,9].Value := floattostr(region_sum9);
        V.Cells[row,10].Value := floattostr(region_sum10);
        V.Cells[row,11].Value := floattostr(region_sum11);

    all_sum2:=all_sum2+region_sum2;    all_sum3:=all_sum3+region_sum3; all_sum4:=all_sum4+region_sum4;
    all_sum5:=all_sum5+region_sum5;    all_sum6:=all_sum6+region_sum6;
    all_sum7:=all_sum7+region_sum7;    all_sum8:=all_sum8+region_sum8; all_sum9:=all_sum9+region_sum9 ;
  all_sum10:=all_sum10+region_sum10;  all_sum11 :=all_sum11+region_sum11;

        region_sum2:=0; region_sum3:=0; region_sum4:=0; region_sum5:=0; region_sum6:=0;
        region_sum7:=0; region_sum8:=0; region_sum9:=0; region_sum10:=0; region_sum11 :=0;
        inc(row);
//        inc(row);
        V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('REGION_NAM').asstring;
        old_region_nam:=CDS_DBBranch.fieldbyname('REGION_NAM').asstring
      end;

      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;
      inc(row);

      try
        sql_:=
          'select 0 a,'+
          ' nvl(sum(decode(sop.post_group_code,1,ot.quantity_post,0)),0) b,'+
          ' nvl(sum(decode(sop.post_group_code,2,ot.quantity_post,0)),0) c,'+
          ' nvl(sum(decode(sop.post_group_code,3,ot.quantity_post,0)),0) d,'+
          ' nvl(sum(decode(sop.post_group_code,4,ot.quantity_post,0)),0) e'+
          ' from '+fil_schema+'.ok_stat ot, ss_ok_post sop'+
          ' where ot.post_code=sop.post_code'+
          ' and ot.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)';


        loaddata(ExecPrc,sql_);
      except on e:exception
        do begin
          MemoProt.visible:=true;
          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
          showmessage('ошибка. '+#13+
            sql_+#13+
            e.Message+#13);
    //      exit;
        end;
      end;

      ExecPrc.First;

        V.Cells[row,1].Value :=
          CDS_DBBranch.fieldbyname('bank_id').asstring+' '+
          CDS_DBBranch.fieldbyname('bank_name').asstring;

        V.Cells[row,2].Value := floattostr(ExecPrc.Fields[1].AsFloat+
          ExecPrc.Fields[2].AsFloat+
          ExecPrc.Fields[3].AsFloat+
          ExecPrc.Fields[4].AsFloat ); //ExecPrc.Fields[0].FieldName;

        V.Cells[row,4].Value := Trim(ExecPrc.Fields[1].AsString); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,6].Value := Trim(ExecPrc.Fields[2].AsString); //ExecPrc.Fields[2].FieldName;
        V.Cells[row,8].Value := Trim(ExecPrc.Fields[3].AsString); //ExecPrc.Fields[3].FieldName;
        V.Cells[row,10].Value := Trim(ExecPrc.Fields[4].AsString); //ExecPrc.Fields[4].FieldName;


        region_sum2:=region_sum2+ ExecPrc.Fields[1].AsFloat+
              ExecPrc.Fields[2].AsFloat+
              ExecPrc.Fields[3].AsFloat+
              ExecPrc.Fields[4].AsFloat ;
        region_sum4:=region_sum4+ ExecPrc.Fields[1].AsFloat;
        region_sum6:=region_sum6+ ExecPrc.Fields[2].AsFloat;
        region_sum8:=region_sum8+ ExecPrc.Fields[3].AsFloat;
        region_sum10:=region_sum10+ ExecPrc.Fields[4].AsFloat;



      try
{
// по факту
select sop.post_group_code,count(op.post_code) from '+fil_schema+'.ok_personal op, ss_ok_post sop
where op.post_code=sop.post_code
and op.status_code=2
group by sop.post_group_code;
//
}
        sql_:=
//          'select nvl(sum(1),0) g,'+
          'select 0 g,'+
          ' nvl(sum(decode(sop.post_group_code,1,nvl(ZP_RATE_CODE,0)/8,0)),0) h,'+
          ' nvl(sum(decode(sop.post_group_code,2,nvl(ZP_RATE_CODE,0)/8,0)),0) i,'+
          ' nvl(sum(decode(sop.post_group_code,3,nvl(ZP_RATE_CODE,0)/8,0)),0) j,'+
          ' nvl(sum(decode(sop.post_group_code,4,nvl(ZP_RATE_CODE,0)/8,0)),0) k'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
          ' and op.DEPARTMENT_CODE in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
          ' and op.status_code in(:p_1,:p_2)'; // (2,5)';

      ExecPrc.Close;
      with ExecPrc.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '2';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '5';
      end;

        loaddata(ExecPrc,sql_);
      except on e:exception
        do begin
          MemoProt.visible:=true;
          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
          showmessage('ошибка. '+#13+
            sql_+#13+
            e.Message+#13);
    //      exit;
        end;
      end;

      ExecPrc.First;
//        V.Cells[row,3].Value := Trim(ExecPrc.Fields[0].AsString); //ExecPrc.Fields[0].FieldName;
        V.Cells[row,3].Value := floattostr(ExecPrc.Fields[1].AsFloat+
          ExecPrc.Fields[2].AsFloat+
          ExecPrc.Fields[3].AsFloat+
          ExecPrc.Fields[4].AsFloat ); //ExecPrc.Fields[0].FieldName;

        V.Cells[row,5].Value := Trim(ExecPrc.Fields[1].AsString); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,7].Value := Trim(ExecPrc.Fields[2].AsString); //ExecPrc.Fields[2].FieldName;
        V.Cells[row,9].Value := Trim(ExecPrc.Fields[3].AsString); //ExecPrc.Fields[3].FieldName;
        V.Cells[row,11].Value := Trim(ExecPrc.Fields[4].AsString); //ExecPrc.Fields[4].FieldName;

    region_sum3:=region_sum3+ ExecPrc.Fields[1].AsFloat+
          ExecPrc.Fields[2].AsFloat+
          ExecPrc.Fields[3].AsFloat+
          ExecPrc.Fields[4].AsFloat ;
    region_sum5:=region_sum5+ ExecPrc.Fields[1].AsFloat;
    region_sum7:=region_sum7+ ExecPrc.Fields[2].AsFloat;
    region_sum9:=region_sum9+ ExecPrc.Fields[3].AsFloat;
    region_sum11 :=region_sum11+ ExecPrc.Fields[4].AsFloat;


    end;

    old_region_id :=CDS_DBBranch.fieldbyname('region_id').asstring;
    old_bank_id:=CDS_DBBranch.fieldbyname('bank_id').asstring;
    CDS_DBBranch.Next;
  end;
        inc(row);
        V.Cells[row,1].Value := 'Жами '+OLD_REGION_NAM;
        V.Cells[row,2].Value := floattostr(region_sum2); //ExecPrc.Fields[0].FieldName;
        V.Cells[row,3].Value := floattostr(region_sum3);
        V.Cells[row,4].Value := floattostr(region_sum4); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,5].Value := floattostr(region_sum5);
        V.Cells[row,6].Value := floattostr(region_sum6);
        V.Cells[row,7].Value := floattostr(region_sum7);
        V.Cells[row,8].Value := floattostr(region_sum8);
        V.Cells[row,9].Value := floattostr(region_sum9);
        V.Cells[row,10].Value := floattostr(region_sum10);
        V.Cells[row,11].Value := floattostr(region_sum11);

        all_sum2:=all_sum2+region_sum2;    all_sum3:=all_sum3+region_sum3; all_sum4:=all_sum4+region_sum4;
        all_sum5:=all_sum5+region_sum5;    all_sum6:=all_sum6+region_sum6;
        all_sum7:=all_sum7+region_sum7;    all_sum8:=all_sum8+region_sum8; all_sum9:=all_sum9+region_sum9 ;
        all_sum10:=all_sum10+region_sum10;  all_sum11 :=all_sum11+region_sum11;

//        region_sum2:=0; region_sum3:=0; region_sum4:=0; region_sum5:=0; region_sum6:=0;
//        region_sum7:=0; region_sum8:=0; region_sum9:=0; region_sum10:=0; region_sum11 :=0;

        inc(row);
//        inc(row);
        V.Cells[row,1].Value := 'ЖАМИ';
        V.Cells[row,2].Value := floattostr(all_sum2); //ExecPrc.Fields[0].FieldName;
        V.Cells[row,3].Value := floattostr(all_sum3);
        V.Cells[row,4].Value := floattostr(all_sum4); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,5].Value := floattostr(all_sum5);
        V.Cells[row,6].Value := floattostr(all_sum6);
        V.Cells[row,7].Value := floattostr(all_sum7);
        V.Cells[row,8].Value := floattostr(all_sum8);
        V.Cells[row,9].Value := floattostr(all_sum9);
        V.Cells[row,10].Value := floattostr(all_sum10);
        V.Cells[row,11].Value := floattostr(all_sum11);
///////////////////////////////////////////
//         all_sum2:=0; all_sum3:=0; all_sum4:=0; all_sum5:=0; all_sum6:=0;
//         all_sum7:=0; all_sum8:=0; all_sum9:=0; all_sum10:=0; all_sum11 :=0;

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
  Range.Select;
  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.MakeScreenDetail2(whoami : integer);
var
  i, Offset,OffsetStart, LeftSet: Integer;
//  btnChoose: TButtonEx;
begin
  LeftSet:=8;
// НЕ УДАЛЯТЬ
  LockWindowUpdate(gbFieldsOBL.Handle);

  try

    with gbFieldsOBL
    do
      for i := ComponentCount - 1 downto 0
      do
        Components[i].Free;

//    Offset := 10;
    OffsetStart := 10;

    with cdbgOK_PERSONAL_OBL
    do
      for i := 0 to Columns.Count-1
      do begin
        LeftSet:=LeftSet+150;
        if (i=0) or (i=6) or (i=12) or (i=18) or (i=24)
        then begin
          OffsetStart := 50*(round(i/6))+10;
          LeftSet:=10;
        end;
        Offset:=OffsetStart;

        if not cdbgOK_PERSONAL_OBL.Columns[i].Visible then Continue;

        with TLabel.Create(gbFields) do begin
          Caption := cdbgOK_PERSONAL_OBL.Columns.Items[i].title.Caption + ':';
//          Font.Color :=  clRed;
          Left := LeftSet;
          Inc(Offset, 5);
          Top := Offset;
          Inc(Offset, 5+Height);
          Parent := gbFieldsOBL;
        end;

       with TDBEdit.Create(gbFieldsOBL) do
       begin
         DataSource := dsOKPersonalFiltr;
         DataField := Fields[i].FieldName;
         Left := LeftSet;
         Top := OffSet;
         Tag:=i;
//         Inc(Offset, Height-3);

{         if Fields[i].DataType = ftDateTime
         then
            Width := Canvas.TextWidth(StringOfChar('0', 10)) + 2
         else
           if Fields[i].DataType = ftFloat
           then
             Width := Canvas.TextWidth(StringOfChar('9', (Fields[i] as TFloatField).Precision))+10
           else
             if (Fields[i].Size = 20)
             then begin
               OnKeyPress := nil;
               Width := Canvas.TextWidth(StringOfChar('9', Fields[i].Size)) + 10;
             end
             else
               if Fields[i].Size = 1
               then
                 Width := Canvas.TextWidth(StringOfChar('9', Fields[i].Size)) + 10
               else
                 if Fields[i].Size < 10
                 then begin
                   OnKeyPress := nil;
                   Width := Canvas.TextWidth(StringOfChar('9', Fields[i].Size)) + 10;
                 end
                 else
                   if (Fields[i].Size > 60) and (Fields[i].Size <= 150)
                   then
                     Width := Canvas.TextWidth(StringOfChar('H', Fields[i].Size))-180
                   else
                     if (Fields[i].Size > 150)
                     then
                       Width := Canvas.TextWidth(StringOfChar('H', Fields[i].Size))-750
                     else
                       Width := Canvas.TextWidth(StringOfChar('H', Fields[i].Size));


         if width < 20 then width := 20;
         if width > 75 then width := 75;
}
         width := 120;
         Parent := gbFieldsOBL;
       end;//with TDBEdit.Create(ScrollBox) do

     end;//for i := 1 to Fields.Count - 1 do begin

  finally
    LockWindowUpdate(0);
  end;
end;

procedure TBOKEDBForm.MakeScreenDetail(whoami : integer);
var
  i, Offset,OffsetStart, LeftSet: Integer;
//  btnChoose: TButtonEx;
begin
  LeftSet:=8;
// НЕ УДАЛЯТЬ
  LockWindowUpdate(gbFields.Handle);

  try

    with gbFields
    do
      for i := ComponentCount - 1 downto 0
      do
        Components[i].Free;

//    Offset := 10;
    OffsetStart := 10;

    with cdbgOK_PERSONAL
    do
      for i := 0 to Columns.Count-1
      do begin
        LeftSet:=LeftSet+150;
        if (i=0) or (i=6) or (i=12) or (i=18) or (i=24)
        then begin
          OffsetStart := 50*(round(i/6))+10;
          LeftSet:=10;
        end;
        Offset:=OffsetStart;

        if not cdbgOK_PERSONAL.Columns[i].Visible then Continue;

        with TLabel.Create(gbFields) do begin
          Caption := cdbgOK_PERSONAL.Columns.Items[i].title.Caption + ':';
//          Font.Color :=  clRed;
          Left := LeftSet;
          Inc(Offset, 5);
          Top := Offset;
          Inc(Offset, 5+Height);
          Parent := gbFields;
        end;

       with TDBEdit.Create(gbFields) do
       begin
         DataSource := dsOKPersonalFiltr;
         DataField := Fields[i].FieldName;
         Left := LeftSet;
         Top := OffSet;
         Tag:=i;
//         Inc(Offset, Height-3);

{         if Fields[i].DataType = ftDateTime
         then
            Width := Canvas.TextWidth(StringOfChar('0', 10)) + 2
         else
           if Fields[i].DataType = ftFloat
           then
             Width := Canvas.TextWidth(StringOfChar('9', (Fields[i] as TFloatField).Precision))+10
           else
             if (Fields[i].Size = 20)
             then begin
               OnKeyPress := nil;
               Width := Canvas.TextWidth(StringOfChar('9', Fields[i].Size)) + 10;
             end
             else
               if Fields[i].Size = 1
               then
                 Width := Canvas.TextWidth(StringOfChar('9', Fields[i].Size)) + 10
               else
                 if Fields[i].Size < 10
                 then begin
                   OnKeyPress := nil;
                   Width := Canvas.TextWidth(StringOfChar('9', Fields[i].Size)) + 10;
                 end
                 else
                   if (Fields[i].Size > 60) and (Fields[i].Size <= 150)
                   then
                     Width := Canvas.TextWidth(StringOfChar('H', Fields[i].Size))-180
                   else
                     if (Fields[i].Size > 150)
                     then
                       Width := Canvas.TextWidth(StringOfChar('H', Fields[i].Size))-750
                     else
                       Width := Canvas.TextWidth(StringOfChar('H', Fields[i].Size));


         if width < 20 then width := 20;
         if width > 75 then width := 75;
}
         width := 120;
         Parent := gbFields;
       end;//with TDBEdit.Create(ScrollBox) do

     end;//for i := 1 to Fields.Count - 1 do begin

  finally
    LockWindowUpdate(0);
  end;

end;


procedure TBOKEDBForm.bbCheckPoStatuEdbClick(Sender: TObject);
var
//  MyRange: OLEVariant;
 //Range,
// V: Variant; // , Cell1, Cell2, ArrayData
// row,row_j, row_k:integer;  // begin_row,j,end_row, col,  ,nn
// NumFormat,DateFormat,StrFormat: String;
 Branch_os,fil_schema: String;
 Head_,sql_,sql_2 : string;
  cdsOKTEMP1  : TClientDataSet;
  cnt_ : integer;
  memotest: tmemo;
begin
//showmessage('доделать определение уровня филиала -район обл р-ка и добавить схему в название таблицы');
  memotest:= MemoProt;
  cdsOKTEMP1:=tclientdataset.Create(Self);

  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbCheckPoStatuEdb.hint);

      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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

  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
      fil_schema:= CDS_DBBranch.fieldbyname('user_name').asstring;
      Branch_os := CDS_DBBranch.fieldbyname('branch').asstring;
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
  memotest.LineS.Clear;
  MemoTest.lines.add(datetostr(now)+' '+TimeToStr(Time));
  application.processmessages;


//
// (определяется уровень- район,обл,р-ка)
//      BossLevel := '1'; Республика
//      BossLevel := '2'; FiltrLevel:= '2';      FiltrLevelName:='Область';
//      BossLevel := '3'; FiltrLevel:='3';      FiltrLevelName:='Район';

/////////////////////////////////////////////////////
  Head_ := VarToStr(getSqlResultpar('select value from '+fil_schema+'.ss_const where branch=:p_1 and id=:p_2',Branch_os,'23001'));
  if Head_ <> convert('Сейчас я в головном банке' +Branch_os) then
  begin

     sql_:='select * from s_mfo '+
        ' where bank_id=union_id '+
        ' and bank_id=:p_1'+ //'''+Branch_os+''' '+
        ' and header_id<>union_id '+
        ' and rownum<:p_2';

      cdsTempSource.Close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := Branch_os;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '2';
      end;
     loadData(cdsTempSource,sql_);
      BossLevel := '3';
     while not cdsTempSource.eof
     do begin
      BossLevel := '2';
      cdsTempSource.next;
     end;
     if Head_ = convert('Сейчас я в районном банке' +Branch_os)
     then begin
       BossLevel := '3';
     end;
     if Head_ = convert('Сейчас я в областном банке' +Branch_os)
     then begin
      BossLevel := '2';
     end;
     if Head_ = convert('Сейчас я в городском банке' +Branch_os)
     then begin
      BossLevel := '5';
     end;

  end else begin
    BossLevel := '1';
  end;

/////////////////////////////////////////////////////
// 1) у кого должность неактивна или отсутствует  в спр-ке
// 2) у кого отдел неактивен или отсутствует  в спр-ке
// 3) у кого специализация неактивна или отсутствует  в спр-ке
// 4) у кого должность + отдел + специализация не соответствует штату
      MemoTest.lines.add('Сотрудники');

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := Branch_os;
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
          ParamByName('p_9').Value := Branch_os;

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

      sql_ := 'select * from '+fil_schema+'.ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_4 and LEVEL_DEPARTMENT_CODE=:p_5)'+
              ' or post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_6 and LEVEL_DEPARTMENT_CODE=:p_7)'+
              ' or special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_8)'+
              ' or (department_code,post_code,special_code) not in (select department_code,post_code,special_code from '+fil_schema+'.ok_stat where branch=:p_9) '+
              ' or (department_code,post_code,special_code) in (select department_code,post_code,special_code from '+fil_schema+'.ok_stat where branch=:p_9 '+
                    ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_10 and LEVEL_DEPARTMENT_CODE=:p_11)'+
                         ' or post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_12 and LEVEL_DEPARTMENT_CODE=:p_13)'+
                         ' or special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_14)'+
                         ')'+
              ')) order by tabno';



      LoadData(cdsTempSource,sql_, True);

      While not cdsTempSource.Eof do
      Begin
        MemoTest.lines.add('');
        MemoTest.lines.add(' Таб.номер:'+cdsTempSource.fieldbyname('tabno').asstring+
          ' - Фамилия: '+cdsTempSource.fieldbyname('family').asstring);
//////////////////////////////////////////////////////
// отдел
        sql_2:='select count(tabno) from '+fil_schema+'.ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_4 and LEVEL_DEPARTMENT_CODE=:p_5)'+
              ')';
        cnt_:= getsqlresultpar(sql_2, Branch_os,'2','5','A',bosslevel
        );

        if cnt_>0 then begin
          MemoTest.lines.add('Проверьте Отдел:'+cdsTempSource.fieldbyname('department_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_DEPARTMENTNAME(:p_1) from dual',cdsTempSource.fieldbyname('department_code').asstring));
        end;
//////////////////////////////////////////////////////
// должность
        sql_2:='select count(tabno) from '+fil_schema+'.ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and (post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_4 and LEVEL_DEPARTMENT_CODE=:p_5)'+
              ')';
        cnt_:= getsqlresultpar(sql_2, Branch_os,'2','5','A',bosslevel
        );

        if cnt_>0 then begin
          MemoTest.lines.add('Проверьте Должность:'+cdsTempSource.fieldbyname('post_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_POSTNAME(:p_1) from dual',cdsTempSource.fieldbyname('post_code').asstring));
        end;
//////////////////////////////////////////////////////
// специализация
        sql_2:='select count(tabno) from '+fil_schema+'.ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and (special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_4)'+
              ')';
        cnt_:= getsqlresultpar(sql_2, Branch_os,'2','5','A'
        );

        if cnt_>0 then begin
          MemoTest.lines.add('Проверьте Специализацию:'+cdsTempSource.fieldbyname('special_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_SPECIALNAME(:p_1) from dual',cdsTempSource.fieldbyname('special_code').asstring));
        end;
//////////////////////////////////////////////////////
// Нет в штатном расписании
        sql_2:='select count(tabno) from '+fil_schema+'.ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and ( (department_code,post_code,special_code) not in (select department_code,post_code,special_code from '+fil_schema+'.ok_stat where branch=:p_4) '+
             ')';
        cnt_:= getsqlresultpar(sql_2, Branch_os,'2','5',Branch_os
        );

        if cnt_>0 then begin
          MemoTest.lines.add('Нет в штатном расписании:');
          MemoTest.lines.add('Отдел:'+cdsTempSource.fieldbyname('department_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_DEPARTMENTNAME(:p_1) from dual',cdsTempSource.fieldbyname('department_code').asstring));
          MemoTest.lines.add('Должность:'+cdsTempSource.fieldbyname('post_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_POSTNAME(:p_1) from dual',cdsTempSource.fieldbyname('post_code').asstring));
          MemoTest.lines.add('Специализация:'+cdsTempSource.fieldbyname('special_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_SPECIALNAME(:p_1) from dual',cdsTempSource.fieldbyname('special_code').asstring));
        end;
//////////////////////////////////////////////////////
        sql_2:='select count(tabno) from '+fil_schema+'.ok_personal where branch=:p_1 and status_code in (:p_2,:p_3)'+
        ' and (department_code,post_code,special_code) in (select department_code,post_code,special_code from '+fil_schema+'.ok_stat where branch=:p_4 '+
                    ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_5 and LEVEL_DEPARTMENT_CODE=:p_6)'+
                         ' or post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_7 and LEVEL_DEPARTMENT_CODE=:p_8)'+
                         ' or special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_9)'+
                         ')'+
              ')';
        cnt_:= getsqlresultpar(sql_2, Branch_os,'2','5',Branch_os,'A',bosslevel,'A',bosslevel,'A'
        );

        if cnt_>0 then begin
          MemoTest.lines.add('В штатном расписании указаны неактивный Отдел или Должность или Специализация');
          MemoTest.lines.add('Отдел:'+cdsTempSource.fieldbyname('department_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_DEPARTMENTNAME(:p_1) from dual',cdsTempSource.fieldbyname('department_code').asstring));
          MemoTest.lines.add('Должность:'+cdsTempSource.fieldbyname('post_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_POSTNAME(:p_1) from dual',cdsTempSource.fieldbyname('post_code').asstring));
          MemoTest.lines.add('Специализация:'+cdsTempSource.fieldbyname('special_code').asstring+
          ' - '+getsqlresultpar('select ok_service.GET_SPECIALNAME(:p_1) from dual',cdsTempSource.fieldbyname('special_code').asstring));
        end;
//////////////////////////////////////////////////////

        cdsTempSource.next;
      End;

      if cdsTempSource.recordcount=0
      then begin
        MemoTest.lines.add('OK');
      end;


// 5) в штатном найдены неактивные(отсутствующие) должность или отдел или специализация
      MemoTest.lines.add('');
      MemoTest.lines.add('Штатное расписание');

      cdsTempSource.close;
      with cdsTempSource.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := Branch_os;
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

      sql_ := 'select * from '+fil_schema+'.ok_stat where branch=:p_1 '+
        ' and (department_code not in (select department_code from ss_ok_department where STATE_NOTES=:p_2 and LEVEL_DEPARTMENT_CODE=:p_3)'+
              ' or post_code not in (select post_code from ss_ok_post where STATE_NOTES=:p_4 and LEVEL_DEPARTMENT_CODE=:p_5)'+
              ' or special_code not in (select special_code from ss_ok_special where STATE_NOTES=:p_6)'+
              ') order by department_code';

      LoadData(cdsTempSource,sql_, True);

      While not cdsTempSource.Eof do
      Begin
        MemoTest.lines.add('Неверные Отдел Код='+cdsTempSource.fieldbyname('department_code').asstring+' , Должность Код='+cdsTempSource.fieldbyname('post_code').asstring+' ,  Специализация Код='+cdsTempSource.fieldbyname('special_code').asstring);
        cdsTempSource.next;
      End;

      if cdsTempSource.recordcount=0
      then begin
        MemoTest.lines.add('OK');
      end;

  cdsOKTEMP1.close;

////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
    end;
    CDS_DBBranch.Next;
  end;


  cdsOKTEMP1.close;
  MemoTest.lines.add(datetostr(now)+' '+TimeToStr(Time));
  MemoTest.lines.SaveToFile('C:\NCI Bank\OK\Temp\err_stat2.txt');


        try
          WinExec('notepad C:\NCI Bank\OK\Temp\err_stat2.txt', SW_MAXIMIZE);
        except
          showmessage('Не удалось открыть в блокноте "notepad C:\NCI Bank\OK\Temp\err_stat2.txt"');
        end;

end;

procedure TBOKEDBForm.bbSpecialEDBClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn  , row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 department_code_old, code_,name_,count_stat_,count_fakt_ : string;
 itogo_count_stat_,itogo_count_fakt_ : double;
 ITOGOitogo_count_stat_,ITOGOitogo_count_fakt_ : double;
begin
//  showmessage( 'добавить колонку специализация сортировку оставить по должности');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbSpecialedb.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='Специализация';


    inc(row);
    inc(row);
    row_j:=1;

//    V.Cells[row,row_j].ColumnWidth := 5;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:='       N';
//    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' МФО ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Наименование ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По факту';
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

  ITOGOitogo_count_stat_ :=0;
  ITOGOitogo_count_fakt_ :=0;

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
        ' select sop.special_code,''11''||nvl(sop.special_name,''-''), sum(nvl(okp.zp_rate_code,8)/8) '+
        ' from ss_ok_special sop, '+fil_schema+'.ok_personal okp'+
//        ' where sop.special_code=okp.special_code (+)'+
        ' where sop.special_code=okp.special_code '+
        ' and okp.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sop.special_code,sop.special_name'+
        ' union all'+
        ' select sop.special_code,''00''||nvl(sop.special_name,''--''), sum(nvl(oks.quantity_post,0))'+
        ' from ss_ok_special sop, '+fil_schema+'.ok_stat oks'+
//        ' where sop.special_code=oks.special_code (+)'+
        ' where sop.special_code=oks.special_code '+
        ' and oks.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' group by sop.special_code,sop.special_name'+
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
        department_code_old :='--1';

        while not ExecPrc.eof
        do begin

          if copy( Trim(ExecPrc.Fields[1].AsString) ,1,2)='00'
          then begin
            // по штату
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
            // по факту
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
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// добавить игого
                inc(row);
                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'Итого';
                V.Cells[row,4].Value := itogo_count_stat_;
                V.Cells[row,5].Value := itogo_count_fakt_;
///////////////////////////////////////////

    ITOGOitogo_count_stat_ :=ITOGOitogo_count_stat_+itogo_count_stat_;
    ITOGOitogo_count_fakt_ :=ITOGOitogo_count_fakt_+itogo_count_fakt_;

    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// добавить ИГОГОигого
                inc(row);
//                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'ИТОГО';
                V.Cells[row,4].Value := ITOGOitogo_count_stat_;
                V.Cells[row,5].Value := ITOGOitogo_count_fakt_;
///////////////////////////////////////////
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.bbSpecial2edbClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn  , row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 special_code_old, department_code_old, code_,count_stat_,count_fakt_ : string; // name_,
 itogo_count_stat_,itogo_count_fakt_ : double;
 ITOGOitogo_count_stat_,ITOGOitogo_count_fakt_ : double;
begin
//  showmessage( 'добавить колонку специализация сортировку оставить по должности');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbSpecial2edb.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // ' and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='Специализация (вер.2)';


    inc(row);
    inc(row);
    row_j:=1;

//    V.Cells[row,row_j].ColumnWidth := 5;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:='       N';
//    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' МФО ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Наименование ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Наименование ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По факту';
    inc(row_j);

    row_j:=1;
    inc(row);


  CDS_DBBranch.First;

  ITOGOitogo_count_stat_ :=0;
  ITOGOitogo_count_fakt_ :=0;

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
        ' select ''11''||nvl(sos.special_name,''-'')||nvl(sop.post_name,''-'') sp, sos.special_code,sos.special_name,sop.post_code,sop.post_name, sum(nvl(okp.zp_rate_code,8)/8) zp '+
        ' from ss_ok_special sos, ss_ok_post sop, '+fil_schema+'.ok_personal okp'+
//        ' where sop.special_code=okp.special_code (+)'+
        ' where sos.special_code=okp.special_code '+
        ' and sop.post_code=okp.post_code '+
        ' and okp.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name'+
        ' union all'+
        ' select ''00''||nvl(sos.special_name,''-'')||nvl(sop.post_name,''-'') sp, sos.special_code,sos.special_name,sop.post_code,sop.post_name, sum(nvl(oks.quantity_post,0)) zp '+
        ' from ss_ok_special sos, ss_ok_post sop, '+fil_schema+'.ok_stat oks'+
//        ' where sop.special_code=oks.special_code (+)'+
        ' where sos.special_code=oks.special_code '+
        ' and sop.post_code=oks.post_code '+
        ' and oks.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name'+
        ' order by 2,4';

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
        department_code_old :='--1';
        special_code_old :='--1';

        while not ExecPrc.eof
        do begin

          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='00'
          then begin
            // по штату
              code_ := Trim(ExecPrc.fieldbyname('special_name').AsString)+'***'+Trim(ExecPrc.fieldbyname('post_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_stat_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_stat_ := itogo_count_stat_+  ExecPrc.fieldbyname('zp').AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;

                V.Cells[row,2].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('special_name').AsString;

                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;

                V.Cells[row,6].Value := count_stat_;
              end else begin
                V.Cells[row,6].Value := count_stat_;
              end;
          end;


          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='11'
          then begin
            // по факту
              code_ := Trim(ExecPrc.fieldbyname('special_name').AsString)+'***'+Trim(ExecPrc.fieldbyname('post_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_fakt_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_fakt_ := itogo_count_fakt_+  ExecPrc.fieldbyname('zp').AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;

                V.Cells[row,2].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('special_name').AsString;

                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;

                V.Cells[row,7].Value := count_fakt_;
              end else begin
                V.Cells[row,7].Value := count_fakt_;
              end;
          end;

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// добавить игого
                inc(row);
                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'Итого';
                V.Cells[row,6].Value := itogo_count_stat_;
                V.Cells[row,7].Value := itogo_count_fakt_;
///////////////////////////////////////////

    ITOGOitogo_count_stat_ :=ITOGOitogo_count_stat_+itogo_count_stat_;
    ITOGOitogo_count_fakt_ :=ITOGOitogo_count_fakt_+itogo_count_fakt_;

    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// добавить ИГОГОигого
                inc(row);
//                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'ИТОГО';
                V.Cells[row,6].Value := ITOGOitogo_count_stat_;
                V.Cells[row,7].Value := ITOGOitogo_count_fakt_;
///////////////////////////////////////////
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.bbStatEDBClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn  , row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 special_code_old, department_code_old, code_,count_stat_,count_fakt_ : string; // name_,
 itogo_count_stat_,itogo_count_fakt_ : double;
 ITOGOitogo_count_stat_,ITOGOitogo_count_fakt_ : double;
begin
//  showmessage( 'добавить колонку специализация сортировку оставить по должности');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbStatEDB.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // ' and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='Штатное расписание';


    inc(row);
    inc(row);
    row_j:=1;

//    V.Cells[row,row_j].ColumnWidth := 5;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:='       N';
//    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' МФО ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Отдел ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Должность ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Специализация ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По факту';
    inc(row_j);

    row_j:=1;
    inc(row);


  CDS_DBBranch.First;

  ITOGOitogo_count_stat_ :=0;
  ITOGOitogo_count_fakt_ :=0;

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
        ' select ''11''||nvl(sod.department_name,''-'')||nvl(sop.post_name,''-'')||nvl(sos.special_name,''-'') sp,'+
        ' sod.department_code,sod.department_name,'+
        ' sop.post_code,sop.post_name,'+
        ' sos.special_code,sos.special_name,'+
        ' sum(nvl(okp.zp_rate_code,8)/8) zp '+
        ' from ss_ok_special sos, ss_ok_post sop, ss_ok_department sod, '+fil_schema+'.ok_personal okp'+
//        ' where sop.special_code=okp.special_code (+)'+
        ' where sos.special_code=okp.special_code '+
        ' and sop.post_code=okp.post_code '+
        ' and sod.department_code=okp.department_code '+
        ' and okp.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name, sod.department_code,sod.department_name'+
        ' union all'+
        ' select ''00''||nvl(sod.department_name,''-'')||nvl(sop.post_name,''-'')||nvl(sos.special_name,''-'') sp,'+
        ' sod.department_code,sod.department_name,'+
        ' sop.post_code,sop.post_name,'+
        ' sos.special_code,sos.special_name,'+
        ' sum(nvl(oks.quantity_post,0)) zp '+
        ' from ss_ok_special sos, ss_ok_post sop, ss_ok_department sod, '+fil_schema+'.ok_stat oks'+
//        ' where sop.special_code=oks.special_code (+)'+
        ' where sos.special_code=oks.special_code '+
        ' and sop.post_code=oks.post_code '+
        ' and sod.department_code=oks.department_code '+
        ' and oks.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name, sod.department_code,sod.department_name'+
        ' order by 2,4,6';

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
        department_code_old :='--1';
        special_code_old :='--1';

        while not ExecPrc.eof
        do begin

          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='00'
          then begin
            // по штату
              code_ := Trim(ExecPrc.fieldbyname('department_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('post_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('special_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_stat_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_stat_ := itogo_count_stat_+  ExecPrc.fieldbyname('zp').AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
//                V.Cells[row,1].WrapText := true;

                V.Cells[row,2].Value := ExecPrc.fieldbyname('department_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('department_name').AsString;

                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;

                V.Cells[row,6].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,7].WrapText := true;
                V.Cells[row,7].Value := ExecPrc.fieldbyname('special_name').AsString;

                V.Cells[row,8].Value := count_stat_;
              end else begin
                V.Cells[row,8].Value := count_stat_;
              end;
          end;


          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='11'
          then begin
            // по факту
              code_ := Trim(ExecPrc.fieldbyname('department_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('post_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('special_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_fakt_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_fakt_ := itogo_count_fakt_+  ExecPrc.fieldbyname('zp').AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
//                V.Cells[row,1].WrapText := true;

                V.Cells[row,2].Value := ExecPrc.fieldbyname('department_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('department_name').AsString;

                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;

                V.Cells[row,6].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,7].WrapText := true;
                V.Cells[row,7].Value := ExecPrc.fieldbyname('special_name').AsString;

                V.Cells[row,9].Value := count_fakt_;
              end else begin
                V.Cells[row,9].Value := count_fakt_;
              end;
          end;

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// добавить игого
                inc(row);
                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'Итого';
                V.Cells[row,8].Value := itogo_count_stat_;
                V.Cells[row,9].Value := itogo_count_fakt_;
///////////////////////////////////////////

    ITOGOitogo_count_stat_ :=ITOGOitogo_count_stat_+itogo_count_stat_;
    ITOGOitogo_count_fakt_ :=ITOGOitogo_count_fakt_+itogo_count_fakt_;

    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// добавить ИГОГОигого
                inc(row);
//                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'ИТОГО';
                V.Cells[row,8].Value := ITOGOitogo_count_stat_;
                V.Cells[row,9].Value := ITOGOitogo_count_fakt_;
///////////////////////////////////////////
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.bbStatEDB_XBClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn  , row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 special_code_old, department_code_old, code_,count_stat_,count_fakt_ : string; // name_,
 itogo_count_stat_OKLAD_line_txt_,itogo_count_stat_OKLAD_txt_, count_stat_OKLAD_txt_ : string;
 itogo_count_stat_,itogo_count_fakt_ : double;
 ITOGOitogo_count_stat_,ITOGOitogo_count_fakt_ : double;
 itogo_count_stat_OKLAD_line_,count_stat_OKLAD_, itogo_count_stat_OKLAD_ : double;
 ITOGOitogo_count_stat_OKLAD_ : double;

  REP_mfo_category_type_code: string;
  REP_mfo_category_type_code_VAR : variant; // count_stat_OKLAD_var,

begin
//  showmessage( 'добавить колонку специализация сортировку оставить по должности');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbStatEDB_XB.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // ' and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='Штатное расписание';


    inc(row);
    inc(row);
    row_j:=1;

//    V.Cells[row,row_j].ColumnWidth := 5;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:='       N';
//    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' МФО ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Отдел ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Должность ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Специализация ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По факту';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Оклад По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Сумма Оклад По штату ';
    inc(row_j);

    row_j:=1;
    inc(row);


  CDS_DBBranch.First;

  ITOGOitogo_count_stat_ :=0;
  ITOGOitogo_count_fakt_ :=0;
  ITOGOitogo_count_stat_OKLAD_ :=0;


  while not CDS_DBBranch.eof
  do begin
    itogo_count_stat_ :=0;
    itogo_count_fakt_ :=0;
    itogo_count_stat_OKLAD_ :=0;

    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
//      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;

              REP_mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
                ' where branch=:p_1',CDS_DBBranch.fieldbyname('branch').asstring);
              if varisnull(REP_mfo_category_type_code_VAR)
              then begin
                REP_mfo_category_type_code :='0';
                showmessage('(7976)Укажите категорию филиала в халк банке.(заполните Справочник Категорий Филиалов)');
              end else begin
                REP_mfo_category_type_code :=vartostr(REP_mfo_category_type_code_VAR) ;
              end;


      try

        sql_:=
        ' select ''11''||nvl(sod.department_name,''-'')||nvl(sop.post_name,''-'')||nvl(sos.special_name,''-'') sp,'+
        ' sod.department_code,sod.department_name,'+
        ' sop.post_code,sop.post_name,'+
        ' sos.special_code,sos.special_name,'+
        ' sum(nvl(okp.zp_rate_code,8)/8) zp '+
        ' from ss_ok_special sos, ss_ok_post sop, ss_ok_department sod, '+fil_schema+'.ok_personal okp'+
//        ' where sop.special_code=okp.special_code (+)'+
        ' where sos.special_code=okp.special_code '+
        ' and sop.post_code=okp.post_code '+
        ' and sod.department_code=okp.department_code '+
        ' and okp.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name, sod.department_code,sod.department_name'+
        ' union all'+
        ' select ''00''||nvl(sod.department_name,''-'')||nvl(sop.post_name,''-'')||nvl(sos.special_name,''-'') sp,'+
        ' sod.department_code,sod.department_name,'+
        ' sop.post_code,sop.post_name,'+
        ' sos.special_code,sos.special_name,'+
        ' sum(nvl(oks.quantity_post,0)) zp '+
        ' from ss_ok_special sos, ss_ok_post sop, ss_ok_department sod, '+fil_schema+'.ok_stat oks'+
//        ' where sop.special_code=oks.special_code (+)'+
        ' where sos.special_code=oks.special_code '+
        ' and sop.post_code=oks.post_code '+
        ' and sod.department_code=oks.department_code '+
        ' and oks.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name, sod.department_code,sod.department_name'+
        ' order by 2,4,6';

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
        department_code_old :='--1';
        special_code_old :='--1';

        while not ExecPrc.eof
        do begin

          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='00'
          then begin
            // по штату
              code_ := Trim(ExecPrc.fieldbyname('department_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('post_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('special_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_stat_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_stat_ := itogo_count_stat_+  ExecPrc.fieldbyname('zp').AsFloat;

              // по категории филиала REP_mfo_category_type_code
              // и по коду должности вычислить оклад ExecPrc.fieldbyname('post_code').AsString
              try
              count_stat_OKLAD_ := getsqlresultpar('select soc.SALARY from ss_ok_category soc, ss_ok_post_category sopc'+
                ' where soc.CATEGORY_CODE=sopc.CATEGORY_CODE'+
                ' and sopc.MFO_CATEGORY_TYPE_CODE=:p_1'+
                ' and sopc.POST_CODE=:p_2',
                REP_mfo_category_type_code, ExecPrc.fieldbyname('post_code').AsString
              );
              except
                count_stat_OKLAD_ :=0;
              end;
              count_stat_OKLAD_txt_ := floattostr(count_stat_OKLAD_);

              itogo_count_stat_OKLAD_line_ := ExecPrc.fieldbyname('zp').AsFloat * count_stat_OKLAD_;
              itogo_count_stat_OKLAD_line_txt_ := floattostr(itogo_count_stat_OKLAD_line_);

              itogo_count_stat_OKLAD_ := itogo_count_stat_OKLAD_ + itogo_count_stat_OKLAD_line_;
              itogo_count_stat_OKLAD_txt_ := floattostr(itogo_count_stat_OKLAD_);


              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
//                V.Cells[row,1].WrapText := true;

                V.Cells[row,2].Value := ExecPrc.fieldbyname('department_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('department_name').AsString;

                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;

                V.Cells[row,6].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,7].WrapText := true;
                V.Cells[row,7].Value := ExecPrc.fieldbyname('special_name').AsString;

              end;
              // эти поля пишем в любом случае
                V.Cells[row,8].Value := count_stat_;
                ////////// 9 поле каунт факт - его тут не пишем
                V.Cells[row,10].Value :=       count_stat_OKLAD_txt_ ;
                V.Cells[row,11].Value := itogo_count_stat_OKLAD_line_txt_ ;

          end;


          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='11'
          then begin
            // по факту
              code_ := Trim(ExecPrc.fieldbyname('department_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('post_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('special_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_fakt_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_fakt_ := itogo_count_fakt_+  ExecPrc.fieldbyname('zp').AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
//                V.Cells[row,1].WrapText := true;

                V.Cells[row,2].Value := ExecPrc.fieldbyname('department_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('department_name').AsString;

                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;

                V.Cells[row,6].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,7].WrapText := true;
                V.Cells[row,7].Value := ExecPrc.fieldbyname('special_name').AsString;

                V.Cells[row,9].Value := count_fakt_;
              end else begin
                V.Cells[row,9].Value := count_fakt_;
              end;
          end;

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// добавить игого
                inc(row);
                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'Итого';
                V.Cells[row,8].Value := itogo_count_stat_;
                V.Cells[row,9].Value := itogo_count_fakt_;

                V.Cells[row,11].Value := itogo_count_stat_OKLAD_txt_;
///////////////////////////////////////////

    ITOGOitogo_count_stat_ :=ITOGOitogo_count_stat_+itogo_count_stat_;
    ITOGOitogo_count_fakt_ :=ITOGOitogo_count_fakt_+itogo_count_fakt_;
    ITOGOitogo_count_stat_OKLAD_ := ITOGOitogo_count_stat_OKLAD_  + itogo_count_stat_OKLAD_ ;

    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// добавить ИГОГОигого
                inc(row);
//                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'ИТОГО';
                V.Cells[row,8].Value := ITOGOitogo_count_stat_;
                V.Cells[row,9].Value := ITOGOitogo_count_fakt_;
                V.Cells[row,11].Value := ITOGOitogo_count_stat_OKLAD_ ;
///////////////////////////////////////////
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.bbStatEDB_XB_SUMClick(Sender: TObject);
var  sql_ ,department_code_,department_name_,post_code_,
     post_name_, special_code_,special_name_   :string;
  MyRange: OLEVariant;
 Range, ArrayData,V: Variant; // , Cell1, Cell2, ArrayData
 j,row,row_j:integer;  // begin_row,j,end_row, col,  ,nn  , row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 special_code_old, department_code_old, code_,count_stat_,count_fakt_ : string; // name_,
 itogo_count_stat_OKLAD_line_txt_,itogo_count_stat_OKLAD_txt_, count_stat_OKLAD_txt_ : string;
 itogo_count_stat_,itogo_count_fakt_ : double;
 ITOGOitogo_count_stat_,ITOGOitogo_count_fakt_ : double;
 itogo_count_stat_OKLAD_line_,count_stat_OKLAD_, itogo_count_stat_OKLAD_ : double;
 ITOGOitogo_count_stat_OKLAD_ : double;

  REP_mfo_category_type_code: string;
  REP_mfo_category_type_code_VAR : variant; // count_stat_OKLAD_var,

begin
//  showmessage( 'просуммировать по всему банку');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  execsql('delete from REP_TEMP where SES_ID=USERENV(''SESSIONID'')');
  execsql('commit');
  MemoProt.lines.add(bbStatEDB_XB_SUM.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // ' and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='Штатное расписание';


    inc(row);
    inc(row);
    row_j:=1;

//    V.Cells[row,row_j].ColumnWidth := 5;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:='       N';
//    inc(row_j);

//    V.Cells[row,row_j].ColumnWidth := 10;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:=' МФО ';
//    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Отдел ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Должность ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Специализация ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По факту';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Оклад По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Сумма Оклад По штату ';
    inc(row_j);

    row_j:=1;
    inc(row);


  CDS_DBBranch.First;

  ITOGOitogo_count_stat_ :=0;
  ITOGOitogo_count_fakt_ :=0;
  ITOGOitogo_count_stat_OKLAD_ :=0;


  while not CDS_DBBranch.eof
  do begin
    itogo_count_stat_ :=0;
    itogo_count_fakt_ :=0;
    itogo_count_stat_OKLAD_ :=0;

    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
//      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;

              REP_mfo_category_type_code_VAR := getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
                ' where branch=:p_1',CDS_DBBranch.fieldbyname('branch').asstring);
              if varisnull(REP_mfo_category_type_code_VAR)
              then begin
                REP_mfo_category_type_code :='0';
                showmessage('(8365)Укажите категорию филиала в халк банке.(заполните Справочник Категорий Филиалов)'+CDS_DBBranch.fieldbyname('branch').asstring);
              end else begin
                REP_mfo_category_type_code :=vartostr(REP_mfo_category_type_code_VAR) ;
              end;


      try

        sql_:=
        ' select ''11''||nvl(sod.department_name,''-'')||nvl(sop.post_name,''-'')||nvl(sos.special_name,''-'') sp,'+
        ' sod.department_code,sod.department_name,'+
        ' sop.post_code,sop.post_name,'+
        ' sos.special_code,sos.special_name,'+
        ' sum(nvl(okp.zp_rate_code,8)/8)*100 zp '+
        ' from ss_ok_special sos, ss_ok_post sop, ss_ok_department sod, '+fil_schema+'.ok_personal okp'+
//        ' where sop.special_code=okp.special_code (+)'+
        ' where sos.special_code=okp.special_code '+
        ' and sop.post_code=okp.post_code '+
        ' and sod.department_code=okp.department_code '+
        ' and okp.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name, sod.department_code,sod.department_name'+
        ' union all'+
        ' select ''00''||nvl(sod.department_name,''-'')||nvl(sop.post_name,''-'')||nvl(sos.special_name,''-'') sp,'+
        ' sod.department_code,sod.department_name,'+
        ' sop.post_code,sop.post_name,'+
        ' sos.special_code,sos.special_name,'+
        ' sum(nvl(oks.quantity_post,0))*100 zp '+
        ' from ss_ok_special sos, ss_ok_post sop, ss_ok_department sod, '+fil_schema+'.ok_stat oks'+
//        ' where sop.special_code=oks.special_code (+)'+
        ' where sos.special_code=oks.special_code '+
        ' and sop.post_code=oks.post_code '+
        ' and sod.department_code=oks.department_code '+
        ' and oks.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name, sod.department_code,sod.department_name'+
        ' order by 2,4,6';

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
        department_code_old :='--1';
        special_code_old :='--1';

        while not ExecPrc.eof
        do begin

          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='00'
          then begin
            // по штату
              code_ := Trim(ExecPrc.fieldbyname('department_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('post_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('special_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_stat_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_stat_ := itogo_count_stat_+  ExecPrc.fieldbyname('zp').AsFloat;

              // по категории филиала REP_mfo_category_type_code
              // и по коду должности вычислить оклад ExecPrc.fieldbyname('post_code').AsString
              try
              count_stat_OKLAD_ := getsqlresultpar('select soc.SALARY from ss_ok_category soc, ss_ok_post_category sopc'+
                ' where soc.CATEGORY_CODE=sopc.CATEGORY_CODE'+
                ' and sopc.MFO_CATEGORY_TYPE_CODE=:p_1'+
                ' and sopc.POST_CODE=:p_2',
                REP_mfo_category_type_code, ExecPrc.fieldbyname('post_code').AsString
              );
              except
                count_stat_OKLAD_ :=0;
              end;
              count_stat_OKLAD_txt_ := floattostr(count_stat_OKLAD_);

              itogo_count_stat_OKLAD_line_ := ExecPrc.fieldbyname('zp').AsFloat * count_stat_OKLAD_;
              itogo_count_stat_OKLAD_line_txt_ := floattostr(itogo_count_stat_OKLAD_line_);

              itogo_count_stat_OKLAD_ := itogo_count_stat_OKLAD_ + itogo_count_stat_OKLAD_line_;
              itogo_count_stat_OKLAD_txt_ := floattostr(itogo_count_stat_OKLAD_);


              if department_code_old<>code_
              then begin
                department_code_old := code_;
{                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;
                V.Cells[row,2].Value := ExecPrc.fieldbyname('department_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('department_name').AsString;
                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;
                V.Cells[row,6].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,7].WrapText := true;
                V.Cells[row,7].Value := ExecPrc.fieldbyname('special_name').AsString;
}
                department_code_ := ExecPrc.fieldbyname('department_code').AsString;
                department_name_ := ExecPrc.fieldbyname('department_name').AsString;
                post_code_       := ExecPrc.fieldbyname('post_code').AsString;
                post_name_       := ExecPrc.fieldbyname('post_name').AsString;
                special_code_    := ExecPrc.fieldbyname('special_code').AsString;
                special_name_    := ExecPrc.fieldbyname('special_name').AsString;

              end;
              // эти поля пишем в любом случае
              //  V.Cells[row,8].Value := count_stat_;
                ////////// 9 поле каунт факт - его тут не пишем
                count_fakt_:='0';
              //  V.Cells[row,10].Value :=       count_stat_OKLAD_txt_ ;
              //  V.Cells[row,11].Value := itogo_count_stat_OKLAD_line_txt_ ;
              execsqlpar('insert into rep_temp(SUMM_1, NAME_1, SUMM_2, NAME_2, SUMM_3, NAME_3, SUMM_4, SUMM_5, SUMM_6, SUMM_7)'+
                ' values(:p_1,:p_2,:p_3,:p_4,:p_5,:p_6,:p_7,:p_8,:p_9,:p_10)',
                department_code_,department_name_,post_code_,post_name_,special_code_,special_name_,count_stat_,
                count_fakt_,count_stat_OKLAD_txt_,itogo_count_stat_OKLAD_line_txt_
                );
          end;


          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='11'
          then begin
            // по факту
              code_ := Trim(ExecPrc.fieldbyname('department_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('post_name').AsString)+'***'+
                       Trim(ExecPrc.fieldbyname('special_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_fakt_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_fakt_ := itogo_count_fakt_+  ExecPrc.fieldbyname('zp').AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
{                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;

                V.Cells[row,2].Value := ExecPrc.fieldbyname('department_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('department_name').AsString;

                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;

                V.Cells[row,6].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,7].WrapText := true;
                V.Cells[row,7].Value := ExecPrc.fieldbyname('special_name').AsString;
}
                department_code_ := ExecPrc.fieldbyname('department_code').AsString;
                department_name_ := ExecPrc.fieldbyname('department_name').AsString;
                post_code_       := ExecPrc.fieldbyname('post_code').AsString;
                post_name_       := ExecPrc.fieldbyname('post_name').AsString;
                special_code_    := ExecPrc.fieldbyname('special_code').AsString;
                special_name_    := ExecPrc.fieldbyname('special_name').AsString;

                //V.Cells[row,9].Value := count_fakt_;
              end else begin
                //V.Cells[row,9].Value := count_fakt_;
              end;

                count_stat_:='0';

                count_stat_OKLAD_txt_:='0';
                itogo_count_stat_OKLAD_line_txt_:='0';

              execsqlpar('insert into rep_temp(SUMM_1, NAME_1, SUMM_2, NAME_2, SUMM_3, NAME_3, SUMM_4, SUMM_5, SUMM_6, SUMM_7)'+
                ' values(:p_1,:p_2,:p_3,:p_4,:p_5,:p_6,:p_7,:p_8,:p_9,:p_10)',
                department_code_,department_name_,post_code_,post_name_,special_code_,special_name_,
                count_stat_,count_fakt_,count_stat_OKLAD_txt_,itogo_count_stat_OKLAD_line_txt_
                );
          end;

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// по филиалу не делаем игого
//                inc(row);
//                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,3].WrapText := true;
//                V.Cells[row,3].Value := 'Итого';
//                V.Cells[row,8].Value := itogo_count_stat_;
//                V.Cells[row,9].Value := itogo_count_fakt_;
//                V.Cells[row,11].Value := itogo_count_stat_OKLAD_txt_;
///////////////////////////////////////////

    ITOGOitogo_count_stat_ :=ITOGOitogo_count_stat_+itogo_count_stat_;
    ITOGOitogo_count_fakt_ :=ITOGOitogo_count_fakt_+itogo_count_fakt_;
    ITOGOitogo_count_stat_OKLAD_ := ITOGOitogo_count_stat_OKLAD_  + itogo_count_stat_OKLAD_ ;

    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// тут селект  того что получилось в эксель

          loaddata(cdsTemp, ' select SUMM_1 s1, NAME_1 s2, SUMM_2 s3, NAME_2 s4, SUMM_3 s5, NAME_3 s6,'+
     ' sum(SUMM_4)/100 s7, sum(SUMM_5)/100 s8, sum(SUMM_6)/100 s9, sum(SUMM_7)/100 s10'+
     ' from rep_temp  where SES_ID=USERENV(''SESSIONID'')'+
     ' group by SUMM_1, NAME_1, SUMM_2, NAME_2, SUMM_3, NAME_3'+
     ' order by SUMM_1, NAME_1, SUMM_2, NAME_2, SUMM_3, NAME_3');


     ArrayData := VarArrayCreate([1, cdsTemp.recordcount+1, 1, 10], varVariant);//, 1, cdsNsi.FieldCount

     j:=0;
     cdsTemp.First;
     While not cdsTemp.EOF do
     begin
         inc(j);
         ArrayData[j, 1] := cdstemp.fieldbyname('s1').asstring;
         ArrayData[j, 2] := cdstemp.fieldbyname('s2').asstring;
         ArrayData[j, 3] := cdstemp.fieldbyname('s3').asstring;
         ArrayData[j, 4] := cdstemp.fieldbyname('s4').asstring;
         ArrayData[j, 5] := cdstemp.fieldbyname('s5').asstring;
         ArrayData[j, 6] := cdstemp.fieldbyname('s6').asstring;
         ArrayData[j, 7] := cdstemp.fieldbyname('s7').asstring;
         ArrayData[j, 8] := cdstemp.fieldbyname('s8').asstring;
         ArrayData[j, 9] := cdstemp.fieldbyname('s9').asstring;
         ArrayData[j, 10] := cdstemp.fieldbyname('s10').asstring;
         cdsTemp.next;
     end;

    // Область, в которую будем выводить данные
     Range := V.WorkSheets[1].Range[numto(1)+inttostr(row)+':'+numto(10)+inttostr(cdsTemp.recordcount+row)];
     Range.select;
     Range.clear;
     Range.Value := ArrayData;
     Range := V.WorkSheets[1].Range[numto(1)+inttostr(row-1)+':'+numto(10)+inttostr(cdsTemp.recordcount+row)];
     Range.columns.AutoFit;
     Application.ProcessMessages;

     row := row + cdsTemp.recordcount +1;
///////////////////////////////////////////
// добавить ИГОГОигого
                inc(row);
//                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,2].WrapText := true;
                V.Cells[row,2].Value := 'ИТОГО';
                V.Cells[row,7].Value := ITOGOitogo_count_stat_/100;
                V.Cells[row,8].Value := ITOGOitogo_count_fakt_/100;
                V.Cells[row,10].Value := ITOGOitogo_count_stat_OKLAD_/100 ;
///////////////////////////////////////////
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.BitBtn4Click(Sender: TObject);
begin
  edCOMMENTS.Text:='';
end;

procedure TBOKEDBForm.BitBtn7Click(Sender: TObject);
begin
  edCOMMENTS_obl.Text:='';

end;

procedure TBOKEDBForm.bbSpecial3edbClick(Sender: TObject);
var  sql2_, sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j,row_j2:integer;  // begin_row,j,end_row, col,  ,nn  , row_k
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
 special_code_old, department_code_old, code_,count_stat_,count_fakt_ : string; // name_,
 itogo_count_stat_,itogo_count_fakt_ : double;
 ITOGOitogo_count_stat_,ITOGOitogo_count_fakt_ : double;
begin
//  showmessage( 'добавить колонку специализация сортировку оставить по должности');
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbSpecial3edb.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // ' and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
    NumFormat := '# ##0.00_р_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_р_.';
    DateFormat := 'ДД.ММ.ГГГГ';
  end;

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='Специализация (вер.3)';


    inc(row);
    inc(row);
    row_j:=1;

//    V.Cells[row,row_j].ColumnWidth := 5;
//    V.Cells[row,row_j].WrapText := true;
//    V.Cells[row,row_j].Value:='       N';
//    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' МФО ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Наименование ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Код ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Наименование ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По штату ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' По факту';
    inc(row_j);


    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Таб.номер';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Ставка';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ФИО';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Таб.номер';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Ставка';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ФИО';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Таб.номер';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Ставка';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ФИО';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Таб.номер';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Ставка';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ФИО';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Таб.номер';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' Ставка';
    inc(row_j);
    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ФИО';
    inc(row_j);

    row_j:=1;
    inc(row);


  CDS_DBBranch.First;

  ITOGOitogo_count_stat_ :=0;
  ITOGOitogo_count_fakt_ :=0;

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
        ' select ''11''||nvl(sos.special_name,''-'')||nvl(sop.post_name,''-'') sp, sos.special_code,sos.special_name,sop.post_code,sop.post_name, sum(nvl(okp.zp_rate_code,8)/8) zp '+
        ' from ss_ok_special sos, ss_ok_post sop, '+fil_schema+'.ok_personal okp'+
//        ' where sop.special_code=okp.special_code (+)'+
        ' where sos.special_code=okp.special_code '+
        ' and sop.post_code=okp.post_code '+
        ' and okp.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name'+
        ' union all'+
        ' select ''00''||nvl(sos.special_name,''-'')||nvl(sop.post_name,''-'') sp, sos.special_code,sos.special_name,sop.post_code,sop.post_name, sum(nvl(oks.quantity_post,0)) zp '+
        ' from ss_ok_special sos, ss_ok_post sop, '+fil_schema+'.ok_stat oks'+
//        ' where sop.special_code=oks.special_code (+)'+
        ' where sos.special_code=oks.special_code '+
        ' and sop.post_code=oks.post_code '+
        ' and oks.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' group by sos.special_code,sos.special_name,sop.post_code,sop.post_name'+
        ' order by 2,4';

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
        department_code_old :='--1';
        special_code_old :='--1';

        while not ExecPrc.eof
        do begin

          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='00'
          then begin
            // по штату
              code_ := Trim(ExecPrc.fieldbyname('special_name').AsString)+'***'+Trim(ExecPrc.fieldbyname('post_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_stat_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_stat_ := itogo_count_stat_+  ExecPrc.fieldbyname('zp').AsFloat;
              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;

                V.Cells[row,2].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('special_name').AsString;

                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;

                V.Cells[row,6].Value := count_stat_;
              end else begin
                V.Cells[row,6].Value := count_stat_;
              end;
          end;


          if copy( Trim(ExecPrc.fieldbyname('sp').AsString) ,1,2)='11'
          then begin
            // по факту
              code_ := Trim(ExecPrc.fieldbyname('special_name').AsString)+'***'+Trim(ExecPrc.fieldbyname('post_name').AsString);
//              name_ :=  ExecPrc.fieldbyname('special_name').AsString;
              count_fakt_ := Trim(ExecPrc.fieldbyname('zp').AsString);
              itogo_count_fakt_ := itogo_count_fakt_+  ExecPrc.fieldbyname('zp').AsFloat;

              if department_code_old<>code_
              then begin
                department_code_old := code_;
                inc(row);
                V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('branch').asstring+
                                   ' '+ CDS_DBBranch.fieldbyname('BANK_NAME').asstring;

                V.Cells[row,2].Value := ExecPrc.fieldbyname('special_code').AsString;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := ExecPrc.fieldbyname('special_name').AsString;

                V.Cells[row,4].Value := ExecPrc.fieldbyname('post_code').AsString;
                V.Cells[row,5].WrapText := true;
                V.Cells[row,5].Value := ExecPrc.fieldbyname('post_name').AsString;

                V.Cells[row,7].Value := count_fakt_;

              end else begin
                V.Cells[row,7].Value := count_fakt_;
              end;

/////////////////////////////////
// добавочные колонки табномер,ставка,фамилия имя отчество
                sql2_:= 'select okp.tabno,nvl(okp.zp_rate_code,8)/8 zp,okp.family,okp.first_name,nvl(okp.PATRONYMIC,'' '') PATRONYMIC'+
                        ' ,special_code,post_code'+
                        ' from '+fil_schema+'.ok_personal okp'+
                        ' where okp.branch= :p_1'+
                        ' and okp.status_code in ( :p_2 , :p_3 )'+
                        ' and okp.post_code= :p_4 '+
                        ' and okp.special_code= :p_5 ';

                        cdstemp.Close;
                        with cdstemp.Params
                        do begin
                            clear;
                            CreateParam(ftString,'p_1' ,ptInput);
                            ParamByName('p_1').Value :=CDS_DBBranch.fieldbyname('branch').asstring;;
                            CreateParam(ftString,'p_2' ,ptInput);
                            ParamByName('p_2').Value :='2';
                            CreateParam(ftString,'p_3' ,ptInput);
                            ParamByName('p_3').Value :='5';
                            CreateParam(ftString,'p_4' ,ptInput);
                            ParamByName('p_4').Value :=ExecPrc.fieldbyname('post_code').AsString;
                            CreateParam(ftString,'p_5' ,ptInput);
                            ParamByName('p_5').Value :=ExecPrc.fieldbyname('special_code').AsString;


                        end;
                //
                        loaddata(cdstemp,sql2_);
                        cdstemp.First;
                          row_j2:=7;
                        while not cdstemp.Eof
                        do begin
                          inc(row_j2); V.Cells[row,row_j2].Value :=cdstemp.fieldbyname('tabno').AsString;
                          inc(row_j2); V.Cells[row,row_j2].Value :=cdstemp.fieldbyname('zp').AsString;
                          inc(row_j2); V.Cells[row,row_j2].Value :=cdstemp.fieldbyname('family').AsString+' '+
                           cdstemp.fieldbyname('first_name').AsString+' '+
                           cdstemp.fieldbyname('patronymic').AsString;
                       //    +' sp('+cdstemp.fieldbyname('special_code').AsString+') post('+cdstemp.fieldbyname('post_code').AsString+')';
                          cdstemp.next;
                        end;
//////////////////


          end;

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(sql2_);
          MemoProt.lines.add(e.Message);
//          showmessage('ошибка. '+#13+
  //          sql_+#13+
    //        e.Message+#13);
    //      exit;
        end;
      end;



    end;
///////////////////////////////////////////
// добавить игого
                inc(row);
                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'Итого';
                V.Cells[row,6].Value := itogo_count_stat_;
                V.Cells[row,7].Value := itogo_count_fakt_;
///////////////////////////////////////////

    ITOGOitogo_count_stat_ :=ITOGOitogo_count_stat_+itogo_count_stat_;
    ITOGOitogo_count_fakt_ :=ITOGOitogo_count_fakt_+itogo_count_fakt_;

    CDS_DBBranch.Next;
  end;
///////////////////////////////////////////
// добавить ИГОГОигого
                inc(row);
//                V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
//                V.Cells[row,2].Value := ;
                V.Cells[row,3].WrapText := true;
                V.Cells[row,3].Value := 'ИТОГО';
                V.Cells[row,6].Value := ITOGOitogo_count_stat_;
                V.Cells[row,7].Value := ITOGOitogo_count_fakt_;
///////////////////////////////////////////
///////////////////////////////////////////

  Application.ProcessMessages;
//  V.Cells.Select;
//  V.Columns.AutoFit;
//*  Range := V.Range[numto(1)+'8:'+numto(11)+inttostr(row+1)];
//*  Range.Select;
//*  Range.Columns.AutoFit;
 Finally
  V.Visible := True; //так быстрее
 End;
  MemoProt.lines.add(TimeToStr(Time));


end;

procedure TBOKEDBForm.BitBtn8Click(Sender: TObject);
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

procedure TBOKEDBForm.BitBtn9Click(Sender: TObject);
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

  cdbgOK_PERSONAL_obl.DataSource.Dataset.DisableControls;
  cdbgOK_PERSONAL_obl.DataSource.Dataset.First;

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
  nn:=cdbgOK_PERSONAL_obl.Columns.Count-1;
  i:=1;
  // формирование шапки для текстового файла
  for col:=0 to nn
  do begin
    if cdbgOK_PERSONAL_obl.Columns.Items[col].Visible then
    begin
      V.Cells[row, i ].Value := cdbgOK_PERSONAL_obl.Columns.Items[col].title.Caption;
//          rpad(cdbgSSOK.Columns.Items[i].title.Caption, cdbgSSOK.Columns.Items[i].Width div 6)  + '|';
      inc(i);
    end;
  end;

  inc(row);
  While not cdbgOK_PERSONAL_obl.DataSource.Dataset.Eof
  do begin
    i := 1;
    For col:=0 To nn
    Do Begin

      if cdbgOK_PERSONAL_obl.Columns.Items[col].Visible
      then begin
        case cdbgOK_PERSONAL_obl.DataSource.Dataset.Fields[col].DataType Of
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
        V.Cells[row, i ].Value := Trim(cdbgOK_PERSONAL_obl.DataSource.Dataset.Fields.FieldByName(cdbgOK_PERSONAL_obl.Columns.Items[col].FieldName).AsString );
        inc(i);
      end;

    End;

    inc(row);
    cdbgOK_PERSONAL_obl.DataSource.Dataset.Next;
    Application.ProcessMessages;
  end;

  V.Cells.Select;
  V.Columns.AutoFit;
  V.Visible := True; //так быстрее
  cdbgOK_PERSONAL_obl.DataSource.Dataset.ENableControls;
 FINALLY
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 END;

end;

procedure TBOKEDBForm.bbSifatTarkibiClick(Sender: TObject);
var   App,WorkBook: Variant;
  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V_FIELD, V: Variant; // , Cell1, Cell2, ArrayData
  tr_, row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 filial_name_,D_MMM,NumFormat,DateFormat,StrFormat: String;
// fil_schema: String;
  post_name_, text7a, field_ : string; // , code_,name_,count_stat_,count_fakt_ department_code_old
// itogo_count_stat_,itogo_count_fakt_ : double;
 qq_, okp_tr,quantity_ :Double;
 i_num_filial_ : integer;
 filial_branch_ : string;
begin
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbSifatTarkibi.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
//


  try
      App := CreateOLEObject('Excel.Application');
      WorkBook:=App.Workbooks.Open(ROOT_DIR+'OK\TEMPLATES\rep.xls');
      App.Visible := false;

      Application.ProcessMessages;

        StrFormat  := '@';
        try
          WorkBook.WorkSheets[1].Cells[row,3].NumberFormat := '00.0';
          NumFormat := '# ##0.00_р_.';
          DateFormat := 'dd.mm.yyyy';
          D_MMM := 'D MMM';
        except
          NumFormat := '# ##0,00_р_.';
          DateFormat := 'ДД.ММ.ГГГГ';
          D_MMM := 'Д МММ';
        end;

      CDS_DBBranch.First;
      while not CDS_DBBranch.Eof
      do begin
        if i_num_filial_=0
        then begin
          i_num_filial_ := i_num_filial_ +1;
          WorkBook.WorkSheets[i_num_filial_].name := ' '+CDS_DBBranch.fieldbyname('branch').AsString+' ';
        end else begin
          i_num_filial_ := i_num_filial_ +1;
//          WorkBook.WorkSheets.add;
          WorkBook.WorkSheets[i_num_filial_].name := ' '+CDS_DBBranch.fieldbyname('branch').AsString+' ';
        end;

///////////////////////////////////
        filial_branch_  := CDS_DBBranch.fieldbyname('branch').AsString;
        if headbranch_='09004'
        then begin
          filial_name_ := '"Агробанк" акциядорлик тижорат банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
            'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
            'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
        end else begin
          if headbranch_='09006'
          then begin
            filial_name_ := '"Халкбанк" банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end else begin
            filial_name_ := getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end;
        end;

        row:=1;
        V := WorkBook.WorkSheets[i_num_filial_];
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].ColumnWidth := 37/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,2].ColumnWidth := 225/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,3].ColumnWidth := 177/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,4].ColumnWidth := 88/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,5].ColumnWidth := 175/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6].ColumnWidth := 124/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+1].ColumnWidth := 268/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+2].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+3].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+4].ColumnWidth := 77/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+5].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+6].ColumnWidth := 18;

        MyRange:= V.Range[numto(1)+inttostr(1)+':'+numto(12)+inttostr(1)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[1,1].Value:= filial_name_ +' ходимларининг  '+bankdate+'  холатига';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;
        inc(row); MyRange:= V.Range[numto(1)+inttostr(2)+':'+numto(12)+inttostr(2)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[2,1].Value:='С И Ф А Т   Т А Р К И Б И';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;
        inc(row); MyRange:= V.Range[numto(1)+inttostr(3)+':'+numto(12)+inttostr(3)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[3,1].Value:=' ';


          inc(row);
          row_j:=1;

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Т/Р';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Фамилияси, исми, отасининг исми';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Лавозими';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Миллати';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Тугилган йили ва жойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);


          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Маълумоти';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
          inc(row_j);


          WorkBook.WorkSheets[i_num_filial_].Cells[6,6].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[6,6].Value:='Маълумоти (ўрта, ўрта-махсус,  олий,  магистр)';
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 6 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 6 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 6 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[6,7].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[6,7].Value:='Олий таълим муассасини  тугатган йили, олий таълим муассаси  номи ва мутахассислиги';
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 7 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 7 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 7 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[4,8].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[4,8].Value:='Иш стажи';
        WorkBook.WorkSheets[i_num_filial_].Cells[4, 8 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[4, 8 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[4, 8 ].Font.Bold := True;
          MyRange:= V.Range[numto(8)+inttostr(4)+':'+numto(11)+inttostr(4)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[5,10].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[5,10].Value:='Лавозимида';
        WorkBook.WorkSheets[i_num_filial_].Cells[5, 10 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[5, 10 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[5, 10 ].Font.Bold := True;
          MyRange:= V.Range[numto(10)+inttostr(5)+':'+numto(11)+inttostr(5)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[5,8].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[5,8].Value:='Уму- мий';
        WorkBook.WorkSheets[i_num_filial_].Cells[5, 8 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[5, 8 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[5, 8 ].Font.Bold := True;
          MyRange:= V.Range[numto(8)+inttostr(5)+':'+numto(8)+inttostr(6)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[5,9].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[5,9].Value:='Банк тизи- мида';
        WorkBook.WorkSheets[i_num_filial_].Cells[5, 9 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[5, 9 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[5, 9 ].Font.Bold := True;
          MyRange:= V.Range[numto(9)+inttostr(5)+':'+numto(9)+inttostr(6)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[6,10].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[6,10].Value:='Санаси ва ойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 10 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 10 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 10 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[6,11].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[6,11].Value:='Йили';
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 11 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 11 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[6, 11 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[4,12].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[4,12].Value:='Изох';
        WorkBook.WorkSheets[i_num_filial_].Cells[4, 12 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[4, 12 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[4, 12 ].Font.Bold := True;
          MyRange:= V.Range[numto(12)+inttostr(4)+':'+numto(12)+inttostr(6)];  MyRange.Merge;

          row:=7;

              sql_ :='select count(*) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_personal where branch=:p_1 and status_code=:p_2';
              pb1.Max := getsqlresultpar(sql_,filial_branch_,'2') ;
              pb1.Position := 0;

          tr_ :=1;


        try

            cdsTempSOD.Close;
            with cdsTempSOD.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value :=filial_branch_;
            end;
            sql_:='select sod.high_dep_code, sod.department_code, sod.department_name'+
              ' from ss_ok_department sod'+
              ' where sod.department_code in (select ok_stat.department_code from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_stat where branch=:p_1)'+
                ' connect by sod.high_dep_code = prior sod.department_code'+
                ' start with sod.high_dep_code is null';
            loaddata(cdsTempSOD, sql_    );

            cdsTempSOD.First;

            while not cdsTempSOD.eof
            do begin

              ExecPrc.Close;
              with ExecPrc.Params
              do begin
                  clear;
                  CreateParam(ftString,'p_1' ,ptInput);
                  ParamByName('p_1').Value :=filial_branch_;
                  CreateParam(ftString,'p_2' ,ptInput);
                  ParamByName('p_2').Value :=cdsTempSOD.fieldbyname('department_code').AsString;;
              end;
              sql_:=
              ' select soc.category_rate, sop.post_code, sop.post_name, os.quantity_post,'+
              ' sod.department_code, sod.department_name, os.special_code'+
              ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_stat os, ss_ok_post sop, ss_ok_category soc, ss_ok_department sod'+
              ' where os.branch=:p_1'+
              ' and os.department_code=:p_2'+
              ' and os.post_code=sop.post_code'+
              ' and os.department_code=sod.department_code'+
              ' and sop.category_code=soc.category_code'+
              ' order by soc.category_rate desc,sop.post_code';
              loaddata(ExecPrc,sql_);


              ExecPrc.First;

              while not ExecPrc.eof
              do begin
                v_field := ExecPrc.Fieldbyname('quantity_post').AsVariant;
                if varisnull(v_field)
                then quantity_ :=0
                else quantity_ := strtofloat(vartostr(v_field));
                okp_tr :=0;
                cdsTemp.Close;
                with cdsTemp.Params
                do begin
                    clear;
                    CreateParam(ftString,'p_1' ,ptInput);
                    ParamByName('p_1').Value :=filial_branch_;
                    CreateParam(ftString,'p_2' ,ptInput);
                    ParamByName('p_2').Value :='2';
                    CreateParam(ftString,'p_3' ,ptInput);
                    ParamByName('p_3').Value :=ExecPrc.fieldbyname('post_code').AsString;
                    CreateParam(ftString,'p_4' ,ptInput);
                    ParamByName('p_4').Value :=ExecPrc.fieldbyname('department_code').AsString;
                    CreateParam(ftString,'p_5' ,ptInput);
                    ParamByName('p_5').Value :=ExecPrc.fieldbyname('special_code').AsString;
                end;
                sql_ := 'select branch,personal_code,FAMILY,FIRST_NAME,nvl(PATRONYMIC,'' '') PATRONYMIC, nvl(ok_service.GET_NATIONALITYNAME(NATIONALITY_CODE),'' '') NATIONALITY, '+
                ' to_char(birthday,''yyyy'') birthyear,'+
                ' ok_service.GET_REGIONNAME(region_id) region_,region_id,cod_obl_prim,'+
                ' ok_service.GET_DISTRNAME(distr) distr_,distr,cod_place_birth_prim,'+
                ' Education_Title_CODE,nvl(ok_service.GET_EDUCATIONTITLENAME(Education_Title_CODE),'' '') Education_Title_'+
                ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_personal okp'+
                ' where okp.branch=:p_1'+
                ' and okp.status_code=:p_2'+
                ' and okp.post_code=:p_3'+
                ' and okp.department_code=:p_4'+
                ' and okp.special_code=:p_5';
                loaddata(cdsTemp,sql_);
                cdsTemp.First;

                while not cdsTemp.eof
                do begin
                  row_j:=1;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := tr_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('FAMILY').asstring+' '+
                                          cdsTemp.fieldbyname('FIRST_NAME').asstring+' '+
                                          cdsTemp.fieldbyname('PATRONYMIC').asstring ;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  post_name_ := ExecPrc.fieldbyname('post_name').AsString;
                  if (pos('РАХБАРИЯТ',ANSIuppercase(ExecPrc.fieldbyname('department_name').AsString))=0)
                  then post_name_ := ExecPrc.fieldbyname('department_name').AsString + ' ' + post_name_;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := post_name_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('NATIONALITY').asstring;
      // birthyear
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  field_ := cdsTemp.fieldbyname('birthyear').asstring+' йил, ';
                  if cdsTemp.fieldbyname('region_id').isnull
                  then begin
                    field_ := field_ + cdsTemp.fieldbyname('cod_obl_prim').asstring+', ';
                  end else begin
                    field_ := field_ + cdsTemp.fieldbyname('region_').asstring+', ';
                  end;
                  if cdsTemp.fieldbyname('distr').isnull
                  then begin
                    field_ := field_ + cdsTemp.fieldbyname('cod_place_birth_prim').asstring+' ';
                  end else begin
                    field_ := field_ + cdsTemp.fieldbyname('distr_').asstring+' ';
                  end;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := field_;

      // Education_Title_
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('Education_Title_').asstring;

      ////////////
                  sql_:='select nvl(to_char(a.END_DATE),'' '')||'' й. '' ||nvl(b.institution_name,'' '')||'', ''||'+
                            ' nvl(a.profession_personal,'' '') all_data1'+
                            ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_education a, ss_ok_institution b'+
                            ' where a.branch=:p_1'+
                            ' and a.personal_code=:p_2'+
                            ' and a.institution_code = b.institution_code'+
                            ' and b.state_notes=:p_3'+
                            ' order by a.end_date';

                  cdsTempSource.close;
                  with cdsTempSource.Params
                  do begin
                      clear;
                      CreateParam(ftString,'p_1' ,ptInput);
                      ParamByName('p_1').Value := cdsTemp.FieldByName('branch').AsString;
                      CreateParam(ftString,'p_2' ,ptInput);
                      ParamByName('p_2').Value := cdsTemp.FieldByName('personal_code').AsString;
                      CreateParam(ftString,'p_3' ,ptInput);
                      ParamByName('p_3').Value := 'A';
                  end;
                  LoadData(cdsTempSource,sql_, True);

                  text7a := '';
                  While not cdsTempSource.Eof do
                  Begin
                    if text7a = ''
                    then Text7a:= cdsTempSource.fieldbyname('all_data1').asstring
                    else Text7a:= text7a+'   '+cdsTempSource.fieldbyname('all_data1').asstring;

                    cdsTempSource.next;
                  End;


                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := text7a;

      /////////////
      // умумий стаж
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2';
                  V_FIELD := getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString
                  );
                  if (not varisnull(V_FIELD))
                  then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

      /////////////
      // банк тизимида 2
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;

                  sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2 and TYPE_PERIOD_CODE in (:p_3,:p_4)';
                  V_FIELD := getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString,
                       '2','3'
                  );
                  if (not varisnull(V_FIELD))
                  then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

      /////////////
      // лавозимида
                  sql_ :='select to_char(max(in_office_date),''dd.mm.yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2 and out_office_date is null';
                  v_field:= getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString
                  );

                  if (not varisnull(V_FIELD))
                  then field_ := vartostr(V_FIELD)
                  else field_ :='            ';

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
      //            WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].NumberFormat := D_MMM;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := ''''+copy(field_,1,2)+' '+numtomonth3(copy(field_,4,2));
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := copy(field_,7,4);
      /////////////


                  inc(row);
                  inc(tr_);
                  okp_tr:=okp_tr+1;
                  pb1.Position := pb1.Position +1;
                  cdsTemp.next;
                end;

                qq_:=quantity_-okp_tr;
                while ( qq_>0)
                do begin
                // ВАКАНТ
                  row_j:=1;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := tr_;

                  WorkBook.WorkSheets[i_num_filial_].Cells[row,2].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 2 ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 2 ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 2 ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,2].Value := 'В А К А Н Т' ;

                  WorkBook.WorkSheets[i_num_filial_].Cells[row,3].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 3 ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 3 ].HorizontalAlignment := 3;
                  post_name_ := ExecPrc.fieldbyname('post_name').AsString;
                  if (pos('РАХБАРИЯТ',ANSIuppercase(ExecPrc.fieldbyname('department_name').AsString))=0)
                  then post_name_ := ExecPrc.fieldbyname('department_name').AsString + ' ' + post_name_;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,3].Value := post_name_;


                  if (qq_<1) and (qq_>0)
                  then begin
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,12].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, 12 ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, 12 ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,12].Value := (qq_);
                  end;
                  inc(row);
                  inc(tr_);
                  qq_ := qq_ -1;
                end;
                ExecPrc.next;
              end;
            cdsTempSOD.next;
          End;

        except on e:exception
          do begin
      //          MemoProt.visible:=true;
      //          MemoProt.clear;
      //          MemoProt.lines.add(sql_);
      //        MemoProt.lines.add(e.Message);
            showmessage('ошибка. '+#13+
              sql_+#13+
              e.Message+#13);
      //      exit;
          end;
        end;




        Application.ProcessMessages;


///////////////////////////////////
        CDS_DBBranch.Next;
      end;


      WorkBook.WorkSheets[1].Select;
  finally;
      App.Visible:=true;
      App:=unassigned;
      cdsTemp.close;
      cdsTempSOD.close;


  end;

end;

procedure TBOKEDBForm.BitBtn10Click(Sender: TObject);
VAR i_num_filial_ : integer;
   App,WorkBook: Variant;
begin
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbStatEDB.hint);

  i_num_filial_:=0;

      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
      end;
  loaddata(CDS_DBBranch,'select * from s_mfo b'+
        ' where bank_type=''006'' and bank_id<>''09006'' and b.act=''A'''+
        ' order by region_id,bank_id');

  CDS_DBBranch.filtered := false;

  try
      App := CreateOLEObject('Excel.Application');
      WorkBook:=App.Workbooks.Open(ROOT_DIR+'OK\TEMPLATES\rep.xls');
      App.Visible := false;

      Application.ProcessMessages;

      WorkBook.WorkSheets[1].Cells[3,2].Value:= '01';

      CDS_DBBranch.First;
      while not CDS_DBBranch.Eof
      do begin
        if i_num_filial_=0
        then begin
          i_num_filial_ := i_num_filial_ +1;
          WorkBook.WorkSheets[i_num_filial_].name := CDS_DBBranch.fieldbyname('bank_id').AsString;
        end else begin
          i_num_filial_ := i_num_filial_ +1;
//          WorkBook.WorkSheets.add;
          WorkBook.WorkSheets[i_num_filial_].name := CDS_DBBranch.fieldbyname('bank_id').AsString;
        end;
        CDS_DBBranch.Next;
      end;


      WorkBook.WorkSheets[1].Select;
  finally;
      App.Visible:=true;
      App:=unassigned;
      cdsTemp.close;


  end;

end;

procedure TBOKEDBForm.BitBtn11Click(Sender: TObject);
var   App,WorkBook: Variant;
  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V_FIELD, V: Variant; // , Cell1, Cell2, ArrayData
  tr_, row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 filial_name_,D_MMM,NumFormat,DateFormat,StrFormat: String;
// fil_schema: String;
  post_name_, text7a, field_ : string; // , code_,name_,count_stat_,count_fakt_ department_code_old
// itogo_count_stat_,itogo_count_fakt_ : double;
 qq_, okp_tr,quantity_ :Double;
 i_num_filial_, FILIAL_counter_ : integer;
 filial_branch_ : string;
begin
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbSifatTarkibi.hint);
  row:=1;
  i_num_filial_ :=1; // НА ОДИН ЛИСТ
  FILIAL_counter_:=0;

      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
//


  try
      App := CreateOLEObject('Excel.Application');
      WorkBook:=App.Workbooks.Open(ROOT_DIR+'OK\TEMPLATES\rep2.xls');
      App.Visible := false;

      Application.ProcessMessages;

        StrFormat  := '@';
        try
          WorkBook.WorkSheets[1].Cells[row,3].NumberFormat := '00.0';
          NumFormat := '# ##0.00_р_.';
          DateFormat := 'dd.mm.yyyy';
          D_MMM := 'D MMM';
        except
          NumFormat := '# ##0,00_р_.';
          DateFormat := 'ДД.ММ.ГГГГ';
          D_MMM := 'Д МММ';
        end;

      CDS_DBBranch.First;
      while not CDS_DBBranch.Eof
      do begin
        FILIAL_counter_:=FILIAL_counter_+1;
//        if i_num_filial_=0
//        then begin
//          i_num_filial_ := i_num_filial_ +1;
//          WorkBook.WorkSheets[i_num_filial_].name := ' '+CDS_DBBranch.fieldbyname('branch').AsString+' ';
//        end else begin
//          i_num_filial_ := i_num_filial_ +1;
//          WorkBook.WorkSheets[i_num_filial_].name := ' '+CDS_DBBranch.fieldbyname('branch').AsString+' ';
//        end;
///////////////////////////////////
        filial_branch_  := CDS_DBBranch.fieldbyname('branch').AsString;
        if headbranch_='09004'
        then begin
          filial_name_ := '"Агробанк" акциядорлик тижорат банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
            'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
            'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
        end else begin
          if headbranch_='09006'
          then begin
            filial_name_ := '"Халкбанк" банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end else begin
            filial_name_ := getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end;
        end;

        inc(row); //:=1;

        if FILIAL_counter_=1
        then begin
          V := WorkBook.WorkSheets[i_num_filial_];
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].ColumnWidth := 37/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,2].ColumnWidth := 225/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,3].ColumnWidth := 177/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,4].ColumnWidth := 88/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,5].ColumnWidth := 175/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6].ColumnWidth := 124/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+1].ColumnWidth := 268/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+2].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+3].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+4].ColumnWidth := 77/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+5].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+6].ColumnWidth := 18;
        end;

        MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:= filial_name_ +' ходимларининг  '+bankdate+'  холатига';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;

        inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:='С И Ф А Т   Т А Р К И Б И';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;

        inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:=' ';


          inc(row);
          row_j:=1;

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Т/Р';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Фамилияси, исми, отасининг исми';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Лавозими';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Миллати';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Тугилган йили ва жойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);


          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Маълумоти';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
          inc(row_j);



        row:=row-3;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,6].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,6].Value:='Маълумоти (ўрта, ўрта-махсус,  олий,  магистр)';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,7].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,7].Value:='Олий таълим муассасини  тугатган йили, олий таълим муассаси  номи ва мутахассислиги';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,8].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,8].Value:='Иш стажи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 ].Font.Bold := True;
          MyRange:= V.Range[numto(8)+inttostr(row+3)+':'+numto(11)+inttostr(row+3)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,10].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,10].Value:='Лавозимида';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 ].Font.Bold := True;
          MyRange:= V.Range[numto(10)+inttostr(row+4)+':'+numto(11)+inttostr(row+4)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,8].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,8].Value:='Уму- мий';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 ].Font.Bold := True;
          MyRange:= V.Range[numto(8)+inttostr(row+4)+':'+numto(8)+inttostr(row+5)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,9].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,9].Value:='Банк тизи- мида';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 ].Font.Bold := True;
          MyRange:= V.Range[numto(9)+inttostr(row+4)+':'+numto(9)+inttostr(row+5)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,10].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,10].Value:='Санаси ва ойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,11].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,11].Value:='Йили';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,12].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,12].Value:='Изох';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 ].Font.Bold := True;
          MyRange:= V.Range[numto(12)+inttostr(row+3)+':'+numto(12)+inttostr(row+5)];  MyRange.Merge;

        row:=row+6;

              sql_ :='select count(*) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_personal where branch=:p_1 and status_code=:p_2';
              pb1.Max := getsqlresultpar(sql_,filial_branch_,'2') ;
              pb1.Position := 0;

          tr_ :=1;


        try

            cdsTempSOD.Close;
            with cdsTempSOD.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value :=filial_branch_;
            end;
            sql_:='select sod.high_dep_code, sod.department_code, sod.department_name'+
              ' from ss_ok_department sod'+
              ' where sod.department_code in (select ok_stat.department_code from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_stat where branch=:p_1)'+
                ' connect by sod.high_dep_code = prior sod.department_code'+
                ' start with sod.high_dep_code is null';
            loaddata(cdsTempSOD, sql_    );

            cdsTempSOD.First;

            while not cdsTempSOD.eof
            do begin

              ExecPrc.Close;
              with ExecPrc.Params
              do begin
                  clear;
                  CreateParam(ftString,'p_1' ,ptInput);
                  ParamByName('p_1').Value :=filial_branch_;
                  CreateParam(ftString,'p_2' ,ptInput);
                  ParamByName('p_2').Value :=cdsTempSOD.fieldbyname('department_code').AsString;;
              end;
              sql_:=
              ' select soc.category_rate, sop.post_code, sop.post_name, os.quantity_post,'+
              ' sod.department_code, sod.department_name, os.special_code'+
              ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_stat os, ss_ok_post sop, ss_ok_category soc, ss_ok_department sod'+
              ' where os.branch=:p_1'+
              ' and os.department_code=:p_2'+
              ' and os.post_code=sop.post_code'+
              ' and os.department_code=sod.department_code'+
              ' and sop.category_code=soc.category_code'+
              ' order by soc.category_rate desc,sop.post_code';
              loaddata(ExecPrc,sql_);


              ExecPrc.First;

              while not ExecPrc.eof
              do begin
                v_field := ExecPrc.Fieldbyname('quantity_post').AsVariant;
                if varisnull(v_field)
                then quantity_ :=0
                else quantity_ := strtofloat(vartostr(v_field));
                okp_tr :=0;
                cdsTemp.Close;
                with cdsTemp.Params
                do begin
                    clear;
                    CreateParam(ftString,'p_1' ,ptInput);
                    ParamByName('p_1').Value :=filial_branch_;
                    CreateParam(ftString,'p_2' ,ptInput);
                    ParamByName('p_2').Value :='2';
                    CreateParam(ftString,'p_3' ,ptInput);
                    ParamByName('p_3').Value :=ExecPrc.fieldbyname('post_code').AsString;
                    CreateParam(ftString,'p_4' ,ptInput);
                    ParamByName('p_4').Value :=ExecPrc.fieldbyname('department_code').AsString;
                    CreateParam(ftString,'p_5' ,ptInput);
                    ParamByName('p_5').Value :=ExecPrc.fieldbyname('special_code').AsString;
                end;
                sql_ := 'select branch,personal_code,FAMILY,FIRST_NAME,nvl(PATRONYMIC,'' '') PATRONYMIC, nvl(ok_service.GET_NATIONALITYNAME(NATIONALITY_CODE),'' '') NATIONALITY, '+
                ' to_char(birthday,''yyyy'') birthyear,'+
                ' ok_service.GET_REGIONNAME(region_id) region_,region_id,cod_obl_prim,'+
                ' ok_service.GET_DISTRNAME(distr) distr_,distr,cod_place_birth_prim,'+
                ' Education_Title_CODE,nvl(ok_service.GET_EDUCATIONTITLENAME(Education_Title_CODE),'' '') Education_Title_'+
                ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_personal okp'+
                ' where okp.branch=:p_1'+
                ' and okp.status_code=:p_2'+
                ' and okp.post_code=:p_3'+
                ' and okp.department_code=:p_4'+
                ' and okp.special_code=:p_5';
                loaddata(cdsTemp,sql_);
                cdsTemp.First;

                while not cdsTemp.eof
                do begin
                  row_j:=1;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := tr_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('FAMILY').asstring+' '+
                                          cdsTemp.fieldbyname('FIRST_NAME').asstring+' '+
                                          cdsTemp.fieldbyname('PATRONYMIC').asstring ;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  post_name_ := ExecPrc.fieldbyname('post_name').AsString;
                  if (pos('РАХБАРИЯТ',ANSIuppercase(ExecPrc.fieldbyname('department_name').AsString))=0)
                  then post_name_ := ExecPrc.fieldbyname('department_name').AsString + ' ' + post_name_;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := post_name_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('NATIONALITY').asstring;
      // birthyear
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  field_ := cdsTemp.fieldbyname('birthyear').asstring+' йил, ';
                  if cdsTemp.fieldbyname('region_id').isnull
                  then begin
                    field_ := field_ + cdsTemp.fieldbyname('cod_obl_prim').asstring+', ';
                  end else begin
                    field_ := field_ + cdsTemp.fieldbyname('region_').asstring+', ';
                  end;
                  if cdsTemp.fieldbyname('distr').isnull
                  then begin
                    field_ := field_ + cdsTemp.fieldbyname('cod_place_birth_prim').asstring+' ';
                  end else begin
                    field_ := field_ + cdsTemp.fieldbyname('distr_').asstring+' ';
                  end;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := field_;

      // Education_Title_
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('Education_Title_').asstring;

      ////////////
                  sql_:='select nvl(to_char(a.END_DATE),'' '')||'' й. '' ||nvl(b.institution_name,'' '')||'', ''||'+
                            ' nvl(a.profession_personal,'' '') all_data1'+
                            ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_education a, ss_ok_institution b'+
                            ' where a.branch=:p_1'+
                            ' and a.personal_code=:p_2'+
                            ' and a.institution_code = b.institution_code'+
                            ' and b.state_notes=:p_3'+
                            ' order by a.end_date';

                  cdsTempSource.close;
                  with cdsTempSource.Params
                  do begin
                      clear;
                      CreateParam(ftString,'p_1' ,ptInput);
                      ParamByName('p_1').Value := cdsTemp.FieldByName('branch').AsString;
                      CreateParam(ftString,'p_2' ,ptInput);
                      ParamByName('p_2').Value := cdsTemp.FieldByName('personal_code').AsString;
                      CreateParam(ftString,'p_3' ,ptInput);
                      ParamByName('p_3').Value := 'A';
                  end;
                  LoadData(cdsTempSource,sql_, True);

                  text7a := '';
                  While not cdsTempSource.Eof do
                  Begin
                    if text7a = ''
                    then Text7a:= cdsTempSource.fieldbyname('all_data1').asstring
                    else Text7a:= text7a+'   '+cdsTempSource.fieldbyname('all_data1').asstring;

                    cdsTempSource.next;
                  End;


                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := text7a;

      /////////////
      // умумий стаж
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2';
                  V_FIELD := getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString
                  );
                  if (not varisnull(V_FIELD))
                  then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

      /////////////
      // банк тизимида 2
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;

                  sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2 and TYPE_PERIOD_CODE in (:p_3,:p_4)';
                  V_FIELD := getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString,
                       '2','3'
                  );
                  if (not varisnull(V_FIELD))
                  then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

      /////////////
      // лавозимида
                  sql_ :='select to_char(max(in_office_date),''dd.mm.yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2 and out_office_date is null';
                  v_field:= getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString
                  );

                  if (not varisnull(V_FIELD))
                  then field_ := vartostr(V_FIELD)
                  else field_ :='            ';

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
      //            WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].NumberFormat := D_MMM;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := ''''+copy(field_,1,2)+' '+numtomonth3(copy(field_,4,2));
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := copy(field_,7,4);
      /////////////


                  inc(row);
                  inc(tr_);
                  okp_tr:=okp_tr+1;
                  pb1.Position := pb1.Position +1;
                  cdsTemp.next;
                end;

                qq_:=quantity_-okp_tr;
                while ( qq_>0)
                do begin
                // ВАКАНТ
                  row_j:=1;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := tr_;

                  WorkBook.WorkSheets[i_num_filial_].Cells[row,2].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 2 ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 2 ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 2 ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,2].Value := 'В А К А Н Т' ;

                  WorkBook.WorkSheets[i_num_filial_].Cells[row,3].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 3 ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, 3 ].HorizontalAlignment := 3;
                  post_name_ := ExecPrc.fieldbyname('post_name').AsString;
                  if (pos('РАХБАРИЯТ',ANSIuppercase(ExecPrc.fieldbyname('department_name').AsString))=0)
                  then post_name_ := ExecPrc.fieldbyname('department_name').AsString + ' ' + post_name_;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,3].Value := post_name_;


                  if (qq_<1) and (qq_>0)
                  then begin
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,12].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, 12 ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, 12 ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,12].Value := (qq_);
                  end;
                  inc(row);
                  inc(tr_);
                  qq_ := qq_ -1;
                end;
                ExecPrc.next;
              end;
            cdsTempSOD.next;
          End;

        except on e:exception
          do begin
      //          MemoProt.visible:=true;
      //          MemoProt.clear;
      //          MemoProt.lines.add(sql_);
      //        MemoProt.lines.add(e.Message);
            showmessage('ошибка. '+#13+
              sql_+#13+
              e.Message+#13);
      //      exit;
          end;
        end;



{        inc(row);
        MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];
        MyRange.Merge;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Value:= filial_name_ ;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;
        inc(row);
}
        Application.ProcessMessages;


///////////////////////////////////
        CDS_DBBranch.Next;
      end;


      WorkBook.WorkSheets[1].Select;
  finally;
      App.Visible:=true;
      App:=unassigned;
      cdsTemp.close;
      cdsTempSOD.close;


  end;

end;

procedure TBOKEDBForm.BitBtn12Click(Sender: TObject);
var   App,WorkBook: Variant;
  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V_FIELD, V: Variant; // , Cell1, Cell2, ArrayData
  tr_, row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 D_MMM,NumFormat,DateFormat,StrFormat: String;
// fil_schema: String;
  post_name_, text7a, field_ : string; // , code_,name_,count_stat_,count_fakt_ department_code_old
// itogo_count_stat_,itogo_count_fakt_ : double;
 qq_, okp_tr,quantity_ :Double;
 i_num_filial_, FILIAL_counter_ : integer;
 filial_branch_ , filial_name_, viloyat_name_, s_mfo_filial_name_ : string;
begin
  MemoProt.lines.add('Начало '+TimeToStr(Time));
  MemoProt.lines.add(bbSifatTarkibi.hint);
  row:=1;
  i_num_filial_ :=1; // НА ОДИН ЛИСТ
  FILIAL_counter_:=0;

      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
//


  try
      App := CreateOLEObject('Excel.Application');
      WorkBook:=App.Workbooks.Open(ROOT_DIR+'OK\TEMPLATES\rep2.xls');
      App.Visible := false;

      Application.ProcessMessages;

        StrFormat  := '@';
        try
          WorkBook.WorkSheets[1].Cells[row,3].NumberFormat := '00.0';
          NumFormat := '# ##0.00_р_.';
          DateFormat := 'dd.mm.yyyy';
          D_MMM := 'D MMM';
        except
          NumFormat := '# ##0,00_р_.';
          DateFormat := 'ДД.ММ.ГГГГ';
          D_MMM := 'Д МММ';
        end;

      CDS_DBBranch.First;
      while not CDS_DBBranch.Eof
      do begin
        FILIAL_counter_:=FILIAL_counter_+1;
//        if i_num_filial_=0
//        then begin
//          i_num_filial_ := i_num_filial_ +1;
//          WorkBook.WorkSheets[i_num_filial_].name := ' '+CDS_DBBranch.fieldbyname('branch').AsString+' ';
//        end else begin
//          i_num_filial_ := i_num_filial_ +1;
//          WorkBook.WorkSheets[i_num_filial_].name := ' '+CDS_DBBranch.fieldbyname('branch').AsString+' ';
//        end;
///////////////////////////////////
        filial_branch_  := CDS_DBBranch.fieldbyname('branch').AsString;
        s_mfo_filial_name_ := getsqlresultpar('select bank_name '+
            'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
        viloyat_name_ :=getsqlresultpar('select ok_service.GET_REGIONNAME(region_id) n_ '+
            'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
        if headbranch_='09004'
        then begin
          filial_name_ := '"Агробанк" акциядорлик тижорат банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
            'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
            'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
        end else begin
          if headbranch_='09006'
          then begin
            filial_name_ := '"Халкбанк" банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end else begin
            filial_name_ := getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end;
        end;

        inc(row); //:=1;

        if FILIAL_counter_=1
        then begin
          V := WorkBook.WorkSheets[i_num_filial_];
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].ColumnWidth := 37/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,2].ColumnWidth := 225/10; // вилоят
          WorkBook.WorkSheets[i_num_filial_].Cells[row,2+1].ColumnWidth := 88/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,3+1].ColumnWidth := 225/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,4+1].ColumnWidth := 225/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,5+1].ColumnWidth := 177/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+1].ColumnWidth := 88/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,7+1].ColumnWidth := 175/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,8+1].ColumnWidth := 124/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,9+1].ColumnWidth := 268/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,10+1].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,11+1].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,12+1].ColumnWidth := 77/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,13+1].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,14+1].ColumnWidth := 18;
        end;

        MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(15)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:= filial_name_ +' ходимларининг  '+bankdate+'  холатига';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;

        inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(15)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:='С И Ф А Т   Т А Р К И Б И';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;

        inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(15)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:=' ';


          inc(row);
          row_j:=1;

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Т/Р';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Вилоят';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='МФО';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Филиал';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Фамилияси, исми, отасининг исми';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Лавозими';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Миллати';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Тугилган йили ва жойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);


          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Маълумоти';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
          inc(row_j);



        row:=row-3;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,6+2+1].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,6+2+1].Value:='Маълумоти (ўрта, ўрта-махсус,  олий,  магистр)';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 +2+1].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 +2+1].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 +2+1].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,7+2+1].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,7+2+1].Value:='Олий таълим муассасини  тугатган йили, олий таълим муассаси  номи ва мутахассислиги';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 +2+1].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 +2+1].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 +2+1].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,8+2+1].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,8+2+1].Value:='Иш стажи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 +2].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 +2+1].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 +2+1].Font.Bold := True;
          MyRange:= V.Range[numto(8+2+1)+inttostr(row+3)+':'+numto(11+2+1)+inttostr(row+3)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,10+2+1].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,10+2+1].Value:='Лавозимида';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 +2+1].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 +2+1].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 +2+1].Font.Bold := True;
          MyRange:= V.Range[numto(10+2+1)+inttostr(row+4)+':'+numto(11+2+1)+inttostr(row+4)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,8+2+1].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,8+2+1].Value:='Уму- мий';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 +2+1].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 +2+1].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 +2+1].Font.Bold := True;
          MyRange:= V.Range[numto(8+2+1)+inttostr(row+4)+':'+numto(8+2+1)+inttostr(row+5)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,9+2+1].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,9+2+1].Value:='Банк тизи- мида';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 +2+1].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 +2+1].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 +2+1].Font.Bold := True;
          MyRange:= V.Range[numto(9+2+1)+inttostr(row+4)+':'+numto(9+2+1)+inttostr(row+5)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,10+2+1].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,10+2+1].Value:='Санаси ва ойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 +2+1].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 +2+1].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 +2+1].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,11+2+1].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,11+2+1].Value:='Йили';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 +2+1].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 +2+1].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 +2+1].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,12+2+1].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,12+2+1].Value:='Изох';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 +2+1].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 +2+1].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 +2+1].Font.Bold := True;
          MyRange:= V.Range[numto(12+2+1)+inttostr(row+3)+':'+numto(12+2+1)+inttostr(row+5)];  MyRange.Merge;

        row:=row+6;

              sql_ :='select count(*) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_personal where branch=:p_1 and status_code=:p_2';
              pb1.Max := getsqlresultpar(sql_,filial_branch_,'2') ;
              pb1.Position := 0;

          tr_ :=1;


        try

            cdsTempSOD.Close;
            with cdsTempSOD.Params
            do begin
                clear;
                CreateParam(ftString,'p_1' ,ptInput);
                ParamByName('p_1').Value :=filial_branch_;
            end;
            sql_:='select sod.high_dep_code, sod.department_code, sod.department_name'+
              ' from ss_ok_department sod'+
              ' where sod.department_code in (select ok_stat.department_code from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_stat where branch=:p_1)'+
                ' connect by sod.high_dep_code = prior sod.department_code'+
                ' start with sod.high_dep_code is null';
            loaddata(cdsTempSOD, sql_    );

            cdsTempSOD.First;

            while not cdsTempSOD.eof
            do begin

              ExecPrc.Close;
              with ExecPrc.Params
              do begin
                  clear;
                  CreateParam(ftString,'p_1' ,ptInput);
                  ParamByName('p_1').Value :=filial_branch_;
                  CreateParam(ftString,'p_2' ,ptInput);
                  ParamByName('p_2').Value :=cdsTempSOD.fieldbyname('department_code').AsString;;
              end;
              sql_:=
              ' select soc.category_rate, sop.post_code, sop.post_name, os.quantity_post,'+
              ' sod.department_code, sod.department_name, os.special_code'+
              ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_stat os, ss_ok_post sop, ss_ok_category soc, ss_ok_department sod'+
              ' where os.branch=:p_1'+
              ' and os.department_code=:p_2'+
              ' and os.post_code=sop.post_code'+
              ' and os.department_code=sod.department_code'+
              ' and sop.category_code=soc.category_code'+
              ' order by soc.category_rate desc,sop.post_code';
              loaddata(ExecPrc,sql_);


              ExecPrc.First;

              while not ExecPrc.eof
              do begin
                v_field := ExecPrc.Fieldbyname('quantity_post').AsVariant;
                if varisnull(v_field)
                then quantity_ :=0
                else quantity_ := strtofloat(vartostr(v_field));
                okp_tr :=0;
                cdsTemp.Close;
                with cdsTemp.Params
                do begin
                    clear;
                    CreateParam(ftString,'p_1' ,ptInput);
                    ParamByName('p_1').Value :=filial_branch_;
                    CreateParam(ftString,'p_2' ,ptInput);
                    ParamByName('p_2').Value :='2';
                    CreateParam(ftString,'p_3' ,ptInput);
                    ParamByName('p_3').Value :=ExecPrc.fieldbyname('post_code').AsString;
                    CreateParam(ftString,'p_4' ,ptInput);
                    ParamByName('p_4').Value :=ExecPrc.fieldbyname('department_code').AsString;
                    CreateParam(ftString,'p_5' ,ptInput);
                    ParamByName('p_5').Value :=ExecPrc.fieldbyname('special_code').AsString;
                end;
                sql_ := 'select branch,personal_code,FAMILY,FIRST_NAME,nvl(PATRONYMIC,'' '') PATRONYMIC, nvl(ok_service.GET_NATIONALITYNAME(NATIONALITY_CODE),'' '') NATIONALITY, '+
                ' to_char(birthday,''yyyy'') birthyear,'+
                ' ok_service.GET_REGIONNAME(region_id) region_,region_id,cod_obl_prim,'+
                ' ok_service.GET_DISTRNAME(distr) distr_,distr,cod_place_birth_prim,'+
                ' Education_Title_CODE,nvl(ok_service.GET_EDUCATIONTITLENAME(Education_Title_CODE),'' '') Education_Title_'+
                ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_personal okp'+
                ' where okp.branch=:p_1'+
                ' and okp.status_code=:p_2'+
                ' and okp.post_code=:p_3'+
                ' and okp.department_code=:p_4'+
                ' and okp.special_code=:p_5';
                loaddata(cdsTemp,sql_);
                cdsTemp.First;

                while not cdsTemp.eof
                do begin
                  row_j:=1;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := tr_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := viloyat_name_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := ''''+filial_branch_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := s_mfo_filial_name_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('FAMILY').asstring+' '+
                                          cdsTemp.fieldbyname('FIRST_NAME').asstring+' '+
                                          cdsTemp.fieldbyname('PATRONYMIC').asstring ;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  post_name_ := ExecPrc.fieldbyname('post_name').AsString;
                  if (pos('РАХБАРИЯТ',ANSIuppercase(ExecPrc.fieldbyname('department_name').AsString))=0)
                  then post_name_ := ExecPrc.fieldbyname('department_name').AsString + ' ' + post_name_;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := post_name_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('NATIONALITY').asstring;
      // birthyear
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  field_ := cdsTemp.fieldbyname('birthyear').asstring+' йил, ';
                  if cdsTemp.fieldbyname('region_id').isnull
                  then begin
                    field_ := field_ + cdsTemp.fieldbyname('cod_obl_prim').asstring+', ';
                  end else begin
                    field_ := field_ + cdsTemp.fieldbyname('region_').asstring+', ';
                  end;
                  if cdsTemp.fieldbyname('distr').isnull
                  then begin
                    field_ := field_ + cdsTemp.fieldbyname('cod_place_birth_prim').asstring+' ';
                  end else begin
                    field_ := field_ + cdsTemp.fieldbyname('distr_').asstring+' ';
                  end;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := field_;

      // Education_Title_
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('Education_Title_').asstring;

      ////////////
                  sql_:='select nvl(to_char(a.END_DATE),'' '')||'' й. '' ||nvl(b.institution_name,'' '')||'', ''||'+
                            ' nvl(a.profession_personal,'' '') all_data1'+
                            ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_education a, ss_ok_institution b'+
                            ' where a.branch=:p_1'+
                            ' and a.personal_code=:p_2'+
                            ' and a.institution_code = b.institution_code'+
                            ' and b.state_notes=:p_3'+
                            ' order by a.end_date';

                  cdsTempSource.close;
                  with cdsTempSource.Params
                  do begin
                      clear;
                      CreateParam(ftString,'p_1' ,ptInput);
                      ParamByName('p_1').Value := cdsTemp.FieldByName('branch').AsString;
                      CreateParam(ftString,'p_2' ,ptInput);
                      ParamByName('p_2').Value := cdsTemp.FieldByName('personal_code').AsString;
                      CreateParam(ftString,'p_3' ,ptInput);
                      ParamByName('p_3').Value := 'A';
                  end;
                  LoadData(cdsTempSource,sql_, True);

                  text7a := '';
                  While not cdsTempSource.Eof do
                  Begin
                    if text7a = ''
                    then Text7a:= cdsTempSource.fieldbyname('all_data1').asstring
                    else Text7a:= text7a+'   '+cdsTempSource.fieldbyname('all_data1').asstring;

                    cdsTempSource.next;
                  End;


                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := text7a;

      /////////////
      // умумий стаж
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2';
                  V_FIELD := getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString
                  );
                  if (not varisnull(V_FIELD))
                  then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

      /////////////
      // банк тизимида 2
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;

                  sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2 and TYPE_PERIOD_CODE in (:p_3,:p_4)';
                  V_FIELD := getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString,
                       '2','3'
                  );
                  if (not varisnull(V_FIELD))
                  then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

      /////////////
      // лавозимида
                  sql_ :='select to_char(max(in_office_date),''dd.mm.yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2 and out_office_date is null';
                  v_field:= getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString
                  );

                  if (not varisnull(V_FIELD))
                  then field_ := vartostr(V_FIELD)
                  else field_ :='            ';

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
      //            WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].NumberFormat := D_MMM;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := ''''+copy(field_,1,2)+' '+numtomonth3(copy(field_,4,2));
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := copy(field_,7,4);
      /////////////


                  inc(row);
                  inc(tr_);
                  okp_tr:=okp_tr+1;
                  pb1.Position := pb1.Position +1;
                  cdsTemp.next;
                end;

                qq_:=quantity_-okp_tr;
                while ( qq_>0)
                do begin
                // ВАКАНТ
                  row_j:=1;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := tr_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := viloyat_name_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := ''''+filial_branch_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := s_mfo_filial_name_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := 'В А К А Н Т' ;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  post_name_ := ExecPrc.fieldbyname('post_name').AsString;
                  if (pos('РАХБАРИЯТ',ANSIuppercase(ExecPrc.fieldbyname('department_name').AsString))=0)
                  then post_name_ := ExecPrc.fieldbyname('department_name').AsString + ' ' + post_name_;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := post_name_;


                  if (qq_<1) and (qq_>0)
                  then begin
                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Value := (qq_);
                  end;
                  inc(row);
                  inc(tr_);
                  qq_ := qq_ -1;
                end;
                ExecPrc.next;
              end;
            cdsTempSOD.next;
          End;

        except on e:exception
          do begin
      //          MemoProt.visible:=true;
      //          MemoProt.clear;
      //          MemoProt.lines.add(sql_);
      //        MemoProt.lines.add(e.Message);
            showmessage('ошибка. '+#13+
              sql_+#13+
              e.Message+#13);
      //      exit;
          end;
        end;



{        inc(row);
        MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];
        MyRange.Merge;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Value:= filial_name_ ;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;
        inc(row);
}
        Application.ProcessMessages;


///////////////////////////////////
        CDS_DBBranch.Next;
      end;


      WorkBook.WorkSheets[1].Select;
  finally;
      App.Visible:=true;
      App:=unassigned;
      cdsTemp.close;
      cdsTempSOD.close;


  end;

end;

procedure TBOKEDBForm.BitBtn16Click(Sender: TObject);
var   App,WorkBook: Variant;
  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V_min_in_office_date_ , V_FIELD, V: Variant; // , Cell1, Cell2, ArrayData
  tr_, row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 filial_name_,D_MMM,NumFormat,DateFormat,StrFormat: String;
// fil_schema: String;
  post_name_, text7a, field_ : string; // , text8a, text9a, code_,name_,count_stat_,count_fakt_ department_code_old
// itogo_count_stat_,itogo_count_fakt_ : double;
  okp_tr :Double;     // qq_,   ,quantity_
   i_num_filial_ : integer;     // ne_v_banke_,
  min_in_office_date_, popal_v_otchet_, filial_branch_ : string; // in_office_date_,
begin
//          WorkBook.WorkSheets[i_num_filial_].Cells[2,1].Value:=datetostr(dtpFrom.Date)+' - '+datetostr(dtpTo.Date)+' Ишга олинган ';
//          WorkBook.WorkSheets[i_num_filial_].Cells[2,1].Value:=datetostr(dtpFrom.Date)+' - '+datetostr(dtpTo.Date)+' Ишдан бушатилган ';

  MemoProt.lines.add('Начало '+TimeToStr(Time));
//  MemoProt.lines.add(bbSifatTarkibi.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id and b.act=''A'' '+ // and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
//


  try
      App := CreateOLEObject('Excel.Application');
      WorkBook:=App.Workbooks.Open(ROOT_DIR+'OK\TEMPLATES\rep2.xls');
      App.Visible := false;

      Application.ProcessMessages;

        StrFormat  := '@';
        try
          WorkBook.WorkSheets[1].Cells[row,3].NumberFormat := '00.0';
          NumFormat := '# ##0.00_р_.';
          DateFormat := 'dd.mm.yyyy';
          D_MMM := 'D MMM';
        except
          NumFormat := '# ##0,00_р_.';
          DateFormat := 'ДД.ММ.ГГГГ';
          D_MMM := 'Д МММ';
        end;

        i_num_filial_ := 1;
        row:=1;
        V := WorkBook.WorkSheets[i_num_filial_];

          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].ColumnWidth := 37/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,2].ColumnWidth := 225/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,3].ColumnWidth := 177/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,4].ColumnWidth := 88/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,5].ColumnWidth := 175/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6].ColumnWidth := 124/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+1].ColumnWidth := 268/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+2].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+3].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+4].ColumnWidth := 77/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+5].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+6].ColumnWidth := 18;


      CDS_DBBranch.First;
      while not CDS_DBBranch.Eof
      do begin
///////////////////////////////////
        filial_branch_  := CDS_DBBranch.fieldbyname('branch').AsString;
        if headbranch_='09004'
        then begin
          filial_name_ := '"Агробанк" акциядорлик тижорат банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
            'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
            'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
        end else begin
          if headbranch_='09006'
          then begin
            filial_name_ := '"Халкбанк" банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end else begin
            filial_name_ := getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end;
        end;



        inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:=' ';

        MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:= filial_name_ +' '+ datetostr(dtpFrom.Date)+' - '+datetostr(dtpTo.Date)+' ишга олинган ';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;


//          inc(row);
//        MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];  MyRange.Merge;
//          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:= CDS_DBBranch.fieldbyname('branch').AsString+' '+filial_name_ ;
//        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
//        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
//        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;


          inc(row);
          row_j:=1;

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Т/Р';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Фамилияси, исми, отасининг исми';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Лавозими';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Миллати';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Тугилган йили ва жойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);


          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Маълумоти';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
          inc(row_j);



        row:=row-3;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,6].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,6].Value:='Маълумоти (ўрта, ўрта-махсус,  олий,  магистр)';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,7].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,7].Value:='Олий таълим муассасини  тугатган йили, олий таълим муассаси  номи ва мутахассислиги';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,8].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,8].Value:='Иш стажи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 ].Font.Bold := True;
          MyRange:= V.Range[numto(8)+inttostr(row+3)+':'+numto(11)+inttostr(row+3)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,10].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,10].Value:='Ишга олинган (Лавозимига)';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 ].Font.Bold := True;
          MyRange:= V.Range[numto(10)+inttostr(row+4)+':'+numto(11)+inttostr(row+4)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,8].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,8].Value:='Уму- мий';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 ].Font.Bold := True;
          MyRange:= V.Range[numto(8)+inttostr(row+4)+':'+numto(8)+inttostr(row+5)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,9].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,9].Value:='Банк тизи- мида';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 ].Font.Bold := True;
          MyRange:= V.Range[numto(9)+inttostr(row+4)+':'+numto(9)+inttostr(row+5)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,10].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,10].Value:='Санаси ва ойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,11].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,11].Value:='Йили';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,12].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,12].Value:='Изох';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 ].Font.Bold := True;
          MyRange:= V.Range[numto(12)+inttostr(row+3)+':'+numto(12)+inttostr(row+5)];  MyRange.Merge;

        row:=row+6;

              sql_ :='select count(*) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_personal where branch=:p_1 and status_code=:p_2';
              pb1.Max := getsqlresultpar(sql_,filial_branch_,'2') ;
              pb1.Position := 0;

          tr_ :=1;


        try


                okp_tr :=0;

                cdsTemp.Close;
                with cdsTemp.Params
                do begin
                    clear;
                    CreateParam(ftString,'p_1' ,ptInput);
                    ParamByName('p_1').Value :=filial_branch_;
                    CreateParam(ftString,'p_2' ,ptInput);
                    ParamByName('p_2').Value :='2';
                    CreateParam(ftString,'p_3' ,ptInput);
                    ParamByName('p_3').Value :='5';
                    CreateParam(ftString,'p_4' ,ptInput);
                    ParamByName('p_4').Value :=filial_branch_;
                    CreateParam(ftString,'p_5' ,ptInput);
                    ParamByName('p_5').Value :=datetostr(dtpfrom.date);
                    CreateParam(ftString,'p_6' ,ptInput);
                    ParamByName('p_6').Value :='dd.mm.yyyy';
                    CreateParam(ftString,'p_7' ,ptInput);
                    ParamByName('p_7').Value :=datetostr(dtpTO.date);
                    CreateParam(ftString,'p_8' ,ptInput);
                    ParamByName('p_8').Value :='dd.mm.yyyy';
                 //   CreateParam(ftString,'p_9' ,ptInput);
                 //   ParamByName('p_9').Value :='3';
                 //   CreateParam(ftString,'p_10' ,ptInput);
                 //   ParamByName('p_10').Value :=filial_branch_;
                end;

                sql_ := 'Select pp.branch, pp.personal_code, PP.FAMILY , PP.FIRST_NAME , nvl(pp.PATRONYMIC,'' '') PATRONYMIC,'+
                  'nvl(ok_service.GET_NATIONALITYNAME(pp.NATIONALITY_CODE),'' '') NATIONALITY,'+
                  ' to_char(pp.birthday,''yyyy'') birthyear,'+
                  ' ok_service.GET_REGIONNAME(pp.region_id) region_,pp.region_id,pp.cod_obl_prim,'+
                  ' ok_service.GET_DISTRNAME(pp.distr) distr_,pp.distr,pp.cod_place_birth_prim,'+
                  ' pp.Education_Title_CODE,nvl(ok_service.GET_EDUCATIONTITLENAME(pp.Education_Title_CODE),'' '') Education_Title_,pp.tabno'+
                  ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.OK_PERSONAL PP'+
                  ' Where pp.branch=:p_1  And PP.Status_code in(:p_2,:p_3)'+
                  ' and personal_code in (select personal_code from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.OK_PERIOD'+
                       ' where branch=:p_4'+
                       ' and in_office_date>=to_date(:p_5,:p_6)'+
                       ' and in_office_date<=to_date(:p_7,:p_8)'+
                  //     ' and type_period_code=:p_9'+
                  //     ' and cod_bank=:p_10'+
                       ' )';


                loaddata(cdsTemp,sql_);
                cdsTemp.First;

                while not cdsTemp.eof
                do begin
                // проверка что это первое принятие на работу - по селекту из зарплаты 05.11.2015
                  popal_v_otchet_ :='0';
//                  in_office_date_ :=''; // дата принятия на работу
{
                  ne_v_banke_ := getsqlresultpar('select count(*) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2 and type_period_code<>:p_3'
                    ,filial_branch_,cdsTemp.fieldbyname('personal_code').asstring,'3'
                  );


                  if (ne_v_banke_>0)
                  then begin
                  // был не в банке

                    V_min_in_office_date_ := getsqlresultpar('select min(in_office_date) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                      ' where branch=:p_1 and personal_code=:p_2'+
                      ' and in_office_date>(select max(in_office_date) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_3 and personal_code=:p_4 and type_period_code<>:p_5)'
                      ,filial_branch_,cdsTemp.fieldbyname('personal_code').asstring
                      ,filial_branch_,cdsTemp.fieldbyname('personal_code').asstring,'3'
                    );

                    if varisnull(V_min_in_office_date_)
                    then begin
                      // нету
                    end else begin
                      min_in_office_date_ := vartostr(V_min_in_office_date_);
                      if  (strtodate(min_in_office_date_)>=dtpFrom.DateTime)
                      and (strtodate(min_in_office_date_)<=dtpTO.DateTime)
                      then begin
                        popal_v_otchet_ :='1';
                      end;
                    end;


                  end else begin
                  // был только в банке
                    V_min_in_office_date_ := getsqlresultpar('select min(in_office_date) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                      ' where branch=:p_1 and personal_code=:p_2',filial_branch_,cdsTemp.fieldbyname('personal_code').asstring
                    );

                    if varisnull(V_min_in_office_date_)
                    then begin
                      // нету
                    end else begin
                      min_in_office_date_ := vartostr(V_min_in_office_date_);
                      if  (strtodate(min_in_office_date_)>=dtpFrom.DateTime)
                      and (strtodate(min_in_office_date_)<=dtpTO.DateTime)
                      then begin
                        popal_v_otchet_ :='1';
                      end;
                    end;

                  end;
}
   // an_id=5
   // p_id,--таб номер
   // vd-дата приема на работу
   // select vd from z_an where an_id=5 and p_id=975
                    V_min_in_office_date_ := getsqlresultpar('select vd from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.z_an'+
                      ' where an_id=:p_1 and p_id=:p_2','5',cdsTemp.fieldbyname('tabno').asstring
                    );



                    if varisnull(V_min_in_office_date_)
                    then begin
                      // нету
                    end else begin
                      min_in_office_date_ := vartostr(V_min_in_office_date_);
                      if  (strtodate(min_in_office_date_)>=dtpFrom.DateTime)
                      and (strtodate(min_in_office_date_)<=dtpTO.DateTime)
                      then begin
                        popal_v_otchet_ :='1';
                      end;
                    end;


                  if popal_v_otchet_ ='1'
                  then begin
                    row_j:=1;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := tr_;

                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('FAMILY').asstring+' '+
                       cdsTemp.fieldbyname('FIRST_NAME').asstring+' '+cdsTemp.fieldbyname('PATRONYMIC').asstring ;

         ////////////
                    sql_:='select ESTABLISHED_DEPARTMENT department_name, '+
                              ' ESTABLISHED_POST post_name'+
                              ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period a'+
                              ' where a.branch=:p_1'+
                              ' and a.personal_code=:p_2'+
                              ' and a.in_office_date=to_date(:p_3,:p_4)';

                    cdsTempSource.close;
                    with cdsTempSource.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := cdsTemp.FieldByName('branch').AsString;
                        CreateParam(ftString,'p_2' ,ptInput);
                        ParamByName('p_2').Value := cdsTemp.FieldByName('personal_code').AsString;
                        CreateParam(ftString,'p_3' ,ptInput);
                        ParamByName('p_3').Value := min_in_office_date_;
                        CreateParam(ftString,'p_4' ,ptInput);
                        ParamByName('p_4').Value := 'dd.mm.yyyy';
                    end;
                    LoadData(cdsTempSource,sql_, True);

                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    post_name_ := cdsTempSource.fieldbyname('post_name').AsString;
                    if (pos('РАХБАРИЯТ',ANSIuppercase(cdsTempSource.fieldbyname('department_name').AsString))=0)
                    then post_name_ := cdsTempSource.fieldbyname('department_name').AsString + ' ' + post_name_;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := post_name_;

                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('NATIONALITY').asstring;
        // birthyear
                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    field_ := cdsTemp.fieldbyname('birthyear').asstring+' йил, ';
                    if cdsTemp.fieldbyname('region_id').isnull
                    then begin
                      field_ := field_ + cdsTemp.fieldbyname('cod_obl_prim').asstring+', ';
                    end else begin
                      field_ := field_ + cdsTemp.fieldbyname('region_').asstring+', ';
                    end;
                    if cdsTemp.fieldbyname('distr').isnull
                    then begin
                      field_ := field_ + cdsTemp.fieldbyname('cod_place_birth_prim').asstring+' ';
                    end else begin
                      field_ := field_ + cdsTemp.fieldbyname('distr_').asstring+' ';
                    end;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := field_;

        // Education_Title_
                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('Education_Title_').asstring;

        ////////////
                    sql_:='select nvl(to_char(a.END_DATE),'' '')||'' й. '' ||nvl(b.institution_name,'' '')||'', ''||'+
                              ' nvl(a.profession_personal,'' '') all_data1'+
                              ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_education a, ss_ok_institution b'+
                              ' where a.branch=:p_1'+
                              ' and a.personal_code=:p_2'+
                              ' and a.institution_code = b.institution_code'+
                              ' and b.state_notes=:p_3'+
                              ' order by a.end_date';

                    cdsTempSource.close;
                    with cdsTempSource.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := cdsTemp.FieldByName('branch').AsString;
                        CreateParam(ftString,'p_2' ,ptInput);
                        ParamByName('p_2').Value := cdsTemp.FieldByName('personal_code').AsString;
                        CreateParam(ftString,'p_3' ,ptInput);
                        ParamByName('p_3').Value := 'A';
                    end;
                    LoadData(cdsTempSource,sql_, True);

                    text7a := '';
                    While not cdsTempSource.Eof do
                    Begin
                      if text7a = ''
                      then Text7a:= cdsTempSource.fieldbyname('all_data1').asstring
                      else Text7a:= text7a+'   '+cdsTempSource.fieldbyname('all_data1').asstring;

                      cdsTempSource.next;
                    End;


                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := text7a;

        /////////////
        // умумий стаж
                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                      ' where branch=:p_1 and personal_code=:p_2';
                    V_FIELD := getsqlresultpar(sql_,
                         cdsTemp.FieldByName('branch').AsString,
                         cdsTemp.FieldByName('personal_code').AsString
                    );
                    if (not varisnull(V_FIELD))
                    then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

        /////////////
        // банк тизимида 2
                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;

                    sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                      ' where branch=:p_1 and personal_code=:p_2 and TYPE_PERIOD_CODE in (:p_3,:p_4)';
                    V_FIELD := getsqlresultpar(sql_,
                         cdsTemp.FieldByName('branch').AsString,
                         cdsTemp.FieldByName('personal_code').AsString,
                         '2','3'
                    );
                    if (not varisnull(V_FIELD))
                    then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

        /////////////
        // лавозимида
                    field_ :=min_in_office_date_;

                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        //            WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].NumberFormat := D_MMM;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := ''''+copy(field_,1,2)+' '+numtomonth3(copy(field_,4,2));
                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := copy(field_,7,4);
        /////////////



                    inc(row);
                    inc(tr_);
                    okp_tr:=okp_tr+1;
                  end; // if popal_v_otchet_='1'
                  pb1.Position := pb1.Position +1;
                  cdsTemp.next;
                end;


        except on e:exception
          do begin

            showmessage('ошибка. '+#13+
              sql_+#13+
              e.Message+#13);

          end;
        end;




        Application.ProcessMessages;


///////////////////////////////////
        CDS_DBBranch.Next;
      end;


      WorkBook.WorkSheets[1].Select;
  finally;
      App.Visible:=true;
      App:=unassigned;
      cdsTemp.close;
      cdsTempSOD.close;


  end;

end;

procedure TBOKEDBForm.BitBtn17Click(Sender: TObject);
var   App,WorkBook: Variant;
  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 v_out_office_date_, V_FIELD, V: Variant; // , Cell1, Cell2, ArrayData
  tr_, row,row_j:integer;  // begin_row,j,end_row, col,  ,nn , row_k
 filial_name_,D_MMM,NumFormat,DateFormat,StrFormat: String;
// fil_schema: String;
  post_name_, text7a, field_ : string; // , code_,name_,count_stat_,count_fakt_ department_code_old
// itogo_count_stat_,itogo_count_fakt_ : double;
  okp_tr :Double;
 i_num_filial_ : integer;
  popal_v_otchet_,  out_office_date_, filial_branch_ : string;
begin
//          WorkBook.WorkSheets[i_num_filial_].Cells[2,1].Value:=datetostr(dtpFrom.Date)+' - '+datetostr(dtpTo.Date)+' Ишга олинган ';
//          WorkBook.WorkSheets[i_num_filial_].Cells[2,1].Value:=datetostr(dtpFrom.Date)+' - '+datetostr(dtpTo.Date)+' Ишдан бушатилган ';

  MemoProt.lines.add('Начало '+TimeToStr(Time));
//  MemoProt.lines.add(bbSifatTarkibi.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+ // and branch=''00883'' '+
    ' and b.act=''A'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


  CDS_DBBranch.filtered := false;


// фильтр если они напишут об этом

  if (cbRGN.ItemIndex=0) and (CBII.ItemIndex=0)
  then begin
// без фильтра
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
//


  try
      App := CreateOLEObject('Excel.Application');
      WorkBook:=App.Workbooks.Open(ROOT_DIR+'OK\TEMPLATES\rep2.xls');
      App.Visible := false;

      Application.ProcessMessages;

        StrFormat  := '@';
        try
          WorkBook.WorkSheets[1].Cells[row,3].NumberFormat := '00.0';
          NumFormat := '# ##0.00_р_.';
          DateFormat := 'dd.mm.yyyy';
          D_MMM := 'D MMM';
        except
          NumFormat := '# ##0,00_р_.';
          DateFormat := 'ДД.ММ.ГГГГ';
          D_MMM := 'Д МММ';
        end;

        i_num_filial_ := 1;
        row:=1;
        V := WorkBook.WorkSheets[i_num_filial_];

          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].ColumnWidth := 37/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,2].ColumnWidth := 225/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,3].ColumnWidth := 177/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,4].ColumnWidth := 88/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,5].ColumnWidth := 175/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6].ColumnWidth := 124/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+1].ColumnWidth := 268/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+2].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+3].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+4].ColumnWidth := 77/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+5].ColumnWidth := 60/10;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,6+6].ColumnWidth := 18;




      CDS_DBBranch.First;
      while not CDS_DBBranch.Eof
      do begin
///////////////////////////////////
        filial_branch_  := CDS_DBBranch.fieldbyname('branch').AsString;
        if headbranch_='09004'
        then begin
          filial_name_ := '"Агробанк" акциядорлик тижорат банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
            'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
            'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
        end else begin
          if headbranch_='09006'
          then begin
            filial_name_ := '"Халкбанк" банкининг '+getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end else begin
            filial_name_ := getsqlresultpar('select decode(bank_id,union_id,'''',ok_service.GET_REGIONNAME(region_id)||'' бошкармаси '')||'+
              'INITCAP(substr(bank_name,instr(bank_name,''НИНГ'')+5)) name_ '+
              'from s_mfo where bank_id=:p_1', CDS_DBBranch.fieldbyname('branch').AsString);
          end;
        end;


        inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:=' ';

        inc(row);
        MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(12)+inttostr(row)];  MyRange.Merge;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,1].Value:= filial_name_ +' '+datetostr(dtpFrom.Date)+' - '+datetostr(dtpTo.Date)+' Ишдан бушатилган ';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, 1 ].Font.Bold := True;



          inc(row);
          row_j:=1;

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Т/Р';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Фамилияси, исми, отасининг исми';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Лавозими';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Миллати';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Тугилган йили ва жойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+2)];  MyRange.Merge;
          inc(row_j);


          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value:='Маълумоти';
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
          MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
          inc(row_j);



        row:=row-3;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,6].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,6].Value:='Маълумоти (ўрта, ўрта-махсус,  олий,  магистр)';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 6 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,7].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,7].Value:='Олий таълим муассасини  тугатган йили, олий таълим муассаси  номи ва мутахассислиги';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 7 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,8].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,8].Value:='Иш стажи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 8 ].Font.Bold := True;
          MyRange:= V.Range[numto(8)+inttostr(row+3)+':'+numto(11)+inttostr(row+3)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,10].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,10].Value:='Ишдан бушатилган (Лавозимидан)';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 10 ].Font.Bold := True;
          MyRange:= V.Range[numto(10)+inttostr(row+4)+':'+numto(11)+inttostr(row+4)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,8].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,8].Value:='Уму- мий';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 8 ].Font.Bold := True;
          MyRange:= V.Range[numto(8)+inttostr(row+4)+':'+numto(8)+inttostr(row+5)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,9].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+4,9].Value:='Банк тизи- мида';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+4, 9 ].Font.Bold := True;
          MyRange:= V.Range[numto(9)+inttostr(row+4)+':'+numto(9)+inttostr(row+5)];  MyRange.Merge;
          inc(row_j);

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,10].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,10].Value:='Санаси ва ойи';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 10 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,11].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+5,11].Value:='Йили';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+5, 11 ].Font.Bold := True;

          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,12].WrapText := true;
          WorkBook.WorkSheets[i_num_filial_].Cells[row+3,12].Value:='Изох';
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 ].VerticalAlignment := 2;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 ].HorizontalAlignment := 3;
        WorkBook.WorkSheets[i_num_filial_].Cells[row+3, 12 ].Font.Bold := True;
          MyRange:= V.Range[numto(12)+inttostr(row+3)+':'+numto(12)+inttostr(row+5)];  MyRange.Merge;

        row:=row+6;

              sql_ :='select count(*) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_personal where branch=:p_1 and status_code=:p_2';
              pb1.Max := getsqlresultpar(sql_,filial_branch_,'2') ;
              pb1.Position := 0;

          tr_ :=1;


        try


                okp_tr :=0;

                cdsTemp.Close;
                with cdsTemp.Params
                do begin
                    clear;
                    CreateParam(ftString,'p_1' ,ptInput);
                    ParamByName('p_1').Value :=filial_branch_;
                    CreateParam(ftString,'p_2' ,ptInput);
                    ParamByName('p_2').Value :='4';
               //     CreateParam(ftString,'p_3' ,ptInput);
               //     ParamByName('p_3').Value :='4';
               //     CreateParam(ftString,'p_4' ,ptInput);
               //     ParamByName('p_4').Value :='3';

                    CreateParam(ftString,'p_5' ,ptInput);
                    ParamByName('p_5').Value :=datetostr(dtpfrom.date);
                    CreateParam(ftString,'p_6' ,ptInput);
                    ParamByName('p_6').Value :='dd.mm.yyyy';

                    CreateParam(ftString,'p_7' ,ptInput);
                    ParamByName('p_7').Value :=datetostr(dtpTO.date);
                    CreateParam(ftString,'p_8' ,ptInput);
                    ParamByName('p_8').Value :='dd.mm.yyyy';
                end;


                sql_ := 'Select pp.branch, pp.personal_code, PP.FAMILY,PP.FIRST_NAME,nvl(pp.PATRONYMIC,'' '') PATRONYMIC,'+
                ' nvl(ok_service.GET_NATIONALITYNAME(pp.NATIONALITY_CODE),'' '') NATIONALITY, '+
                ' to_char(pp.birthday,''yyyy'') birthyear,'+
                ' ok_service.GET_REGIONNAME(pp.region_id) region_,pp.region_id,pp.cod_obl_prim,'+
                ' ok_service.GET_DISTRNAME(pp.distr) distr_,pp.distr,pp.cod_place_birth_prim,'+
                ' pp.Education_Title_CODE,nvl(ok_service.GET_EDUCATIONTITLENAME(pp.Education_Title_CODE),'' '') Education_Title_,'+
                        ' max(PR.OUT_OFFICE_DATE) FF1'+
                        ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.OK_PERSONAL PP,'+
                        ' '+CDS_DBBranch.fieldbyname('user_name').AsString+'.OK_PERIOD PR '+
                        ' Where pp.branch=:p_1  And PP.Status_code in(:p_2)'+
                        ' And PP.branch = PR.branch and PP.personal_code=PR.personal_code'+
                     //   ' And PR.TYPE_PERIOD_CODE=:p_4'+
                        ' And PR.OUT_OFFICE_DATE >= to_date(:p_5,:p_6)'+
                        ' And PR.OUT_OFFICE_DATE <= to_date(:p_7,:p_8)'+
                        ' group by pp.branch, pp.personal_code,PP.FAMILY , PP.FIRST_NAME , PP.PATRONYMIC, '+
                        ' pp.NATIONALITY_CODE,pp.birthday,pp.region_id,pp.cod_obl_prim,'+
                        ' pp.distr,pp.cod_place_birth_prim,pp.Education_Title_CODE';

                loaddata(cdsTemp,sql_);
                cdsTemp.First;

                while not cdsTemp.eof
                do begin
                  popal_v_otchet_ := '0';
                  v_out_office_date_ := getsqlresultpar('select max(out_office_date) from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2',filial_branch_,cdsTemp.fieldbyname('personal_code').asstring);

                  if varisnull(v_out_office_date_)
                  then begin
                  end else begin
                    out_office_date_ := vartostr(v_out_office_date_);
                    if (out_office_date_=cdsTemp.fieldbyname('FF1').asstring)
                    then begin
                      popal_v_otchet_ := '1';
                    end;
                  end;

                  if popal_v_otchet_ = '1' //(out_office_date_=cdsTemp.fieldbyname('FF1').asstring)
                  then begin
                    row_j:=1;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j].Value := tr_;

                    inc(row_j);
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                    WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].Font.Bold := True;
                    // PP.FAMILY , PP.FIRST_NAME , PP.PATRONYMIC
                    WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('FAMILY').asstring+' '+
                         cdsTemp.fieldbyname('FIRST_NAME').asstring+' '+cdsTemp.fieldbyname('PATRONYMIC').asstring;

         ////////////
                    sql_:='select ESTABLISHED_DEPARTMENT,'+
                              ' ESTABLISHED_POST'+
                              ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period a'+
                              ' where a.branch=:p_1'+
                              ' and a.personal_code=:p_2'+
                              ' and a.out_office_date=to_date(:p_3,:p_4)';

                    cdsTempSource.close;
                    with cdsTempSource.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := cdsTemp.FieldByName('branch').AsString;
                        CreateParam(ftString,'p_2' ,ptInput);
                        ParamByName('p_2').Value := cdsTemp.FieldByName('personal_code').AsString;
                        CreateParam(ftString,'p_3' ,ptInput);
                        ParamByName('p_3').Value := out_office_date_;
                        CreateParam(ftString,'p_4' ,ptInput);
                        ParamByName('p_4').Value := 'dd.mm.yyyy';
                    end;
                    LoadData(cdsTempSource,sql_, True);



                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  post_name_ := cdsTempSource.fieldbyname('ESTABLISHED_POST').AsString;
                  if (pos('РАХБАРИЯТ',ANSIuppercase(cdsTempSource.fieldbyname('ESTABLISHED_DEPARTMENT').AsString))=0)
                  then post_name_ := cdsTempSource.fieldbyname('ESTABLISHED_DEPARTMENT').AsString + ' ' + post_name_;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := post_name_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('NATIONALITY').asstring;
      // birthyear
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  field_ := cdsTemp.fieldbyname('birthyear').asstring+' йил, ';
                  if cdsTemp.fieldbyname('region_id').isnull
                  then begin
                    field_ := field_ + cdsTemp.fieldbyname('cod_obl_prim').asstring+', ';
                  end else begin
                    field_ := field_ + cdsTemp.fieldbyname('region_').asstring+', ';
                  end;
                  if cdsTemp.fieldbyname('distr').isnull
                  then begin
                    field_ := field_ + cdsTemp.fieldbyname('cod_place_birth_prim').asstring+' ';
                  end else begin
                    field_ := field_ + cdsTemp.fieldbyname('distr_').asstring+' ';
                  end;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := field_;

      // Education_Title_
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := cdsTemp.fieldbyname('Education_Title_').asstring;

      ////////////
                  sql_:='select nvl(to_char(a.END_DATE),'' '')||'' й. '' ||nvl(b.institution_name,'' '')||'', ''||'+
                            ' nvl(a.profession_personal,'' '') all_data1'+
                            ' from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_education a, ss_ok_institution b'+
                            ' where a.branch=:p_1'+
                            ' and a.personal_code=:p_2'+
                            ' and a.institution_code = b.institution_code'+
                            ' and b.state_notes=:p_3'+
                            ' order by a.end_date';

                  cdsTempSource.close;
                  with cdsTempSource.Params
                  do begin
                      clear;
                      CreateParam(ftString,'p_1' ,ptInput);
                      ParamByName('p_1').Value := cdsTemp.FieldByName('branch').AsString;
                      CreateParam(ftString,'p_2' ,ptInput);
                      ParamByName('p_2').Value := cdsTemp.FieldByName('personal_code').AsString;
                      CreateParam(ftString,'p_3' ,ptInput);
                      ParamByName('p_3').Value := 'A';
                  end;
                  LoadData(cdsTempSource,sql_, True);

                  text7a := '';
                  While not cdsTempSource.Eof do
                  Begin
                    if text7a = ''
                    then Text7a:= cdsTempSource.fieldbyname('all_data1').asstring
                    else Text7a:= text7a+'   '+cdsTempSource.fieldbyname('all_data1').asstring;

                    cdsTempSource.next;
                  End;


                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := text7a;

      /////////////
      // умумий стаж
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2';
                  V_FIELD := getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString
                  );
                  if (not varisnull(V_FIELD))
                  then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

      /////////////
      // банк тизимида 2
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;

                  sql_ :='select to_char(min(in_office_date),''yyyy'') from '+CDS_DBBranch.fieldbyname('user_name').AsString+'.ok_period'+
                    ' where branch=:p_1 and personal_code=:p_2 and TYPE_PERIOD_CODE in (:p_3,:p_4)';
                  V_FIELD := getsqlresultpar(sql_,
                       cdsTemp.FieldByName('branch').AsString,
                       cdsTemp.FieldByName('personal_code').AsString,
                       '2','3'
                  );
                  if (not varisnull(V_FIELD))
                  then WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := V_FIELD;

      /////////////
      // лавозимида
                  field_ :=out_office_date_;

                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
      //            WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].NumberFormat := D_MMM;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := ''''+copy(field_,1,2)+' '+numtomonth3(copy(field_,4,2));
                  inc(row_j);
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].WrapText := true;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].VerticalAlignment := 2;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row, row_j ].HorizontalAlignment := 3;
                  WorkBook.WorkSheets[i_num_filial_].Cells[row,row_j].Value := copy(field_,7,4);
      /////////////

        ////////////

                    inc(row);
                    inc(tr_);
                    okp_tr:=okp_tr+1;
                  end;
                  pb1.Position := pb1.Position +1;
                  cdsTemp.next;
                end;


        except on e:exception
          do begin

            showmessage('ошибка. '+#13+
              sql_+#13+
              e.Message+#13);

          end;
        end;




        Application.ProcessMessages;


///////////////////////////////////
        CDS_DBBranch.Next;
      end;


      WorkBook.WorkSheets[1].Select;
  finally;
      App.Visible:=true;
      App:=unassigned;
      cdsTemp.close;
      cdsTempSOD.close;


  end;

end;

initialization
  RegisterClass(TBOKEDBForm);
finalization
  UnRegisterClass(TBOKEDBForm);

end.
