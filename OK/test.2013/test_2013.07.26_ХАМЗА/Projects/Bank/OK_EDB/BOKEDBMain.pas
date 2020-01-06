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
    Label10: TLabel;
    edMFO: TEdit;
    bbGoToFilial: TBitBtn;
    ActGoToFilial: TAction;
    cdsTemp: TClientDataSet;
    MemoProt: TMemo;
    ilova1: TBitBtn;
    CDS_DBBranch: TClientDataSet;
    ExecPrc: TClientDataSet;
    bbMutahassislar: TButton;
    ilova3: TBitBtn;
    cdsssokpost: TClientDataSet;
    chbTEST: TCheckBox;
    cbRGN: TComboBox;
    CBII: TComboBox;
    Label1: TLabel;
    ilova4: TBitBtn;
    ilova2: TBitBtn;
    Label2: TLabel;
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
    bbSudimosti: TBitBtn;
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
    bbNeuvolennie: TBitBtn;
    chbfiltr: TCheckBox;
    chbfiltrOBL: TCheckBox;
    BitBtn4: TBitBtn;
    cdsTempSource: TClientDataSet;
    BitBtn7: TBitBtn;
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
    bbDoljnosti: TBitBtn;
    bbDep: TBitBtn;
    procedure ActaboutExecute(Sender: TObject);
    procedure MakeScreenDetail(whoami : integer);
    procedure MakeScreenDetail2(whoami : integer);
    procedure ActGoToFilialExecute(Sender: TObject);
    procedure edMFOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ilova1Click(Sender: TObject);
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
    procedure bbSudimostiClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure bbFiltrOBLClick(Sender: TObject);
    procedure cdbgOK_PERSONAL_OBLDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure bbNeuvolennieClick(Sender: TObject);
    procedure chbfiltrOBLClick(Sender: TObject);
    procedure chbfiltrClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbRGN_2Select(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bClearClick(Sender: TObject);
    procedure bbDoljnostiClick(Sender: TObject);
    procedure bbDepClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetSQLResultPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = ''; Par6:String = ''; Par7:String = ''; Par8:String = ''; Par9:String = ''; Par10:String = ''; Par11:String = '') : Variant;
    function ExecSQLPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = '') : Integer;
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
  is_EDB : boolean;

implementation

{$R *.dfm}
uses BOKMain;
const go_user_code='9050';

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

function TBOKEDBForm.ExecSQLPar(SQLText:String; Par1:String = ''; Par2:String = ''; Par3:String = ''; Par4:String = ''; Par5:String = '') : Integer;
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
    SQLParams.ParamByName('p_1').Value:=Par1;
    SQLParams.ParamByName('p_2').Value:=Par2;
    SQLParams.ParamByName('p_3').Value:=Par3;
    SQLParams.ParamByName('p_4').Value:=Par4;
    SQLParams.ParamByName('p_5').Value:=Par5;
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

procedure TBOKEDBForm.MakeScreenDetail2(whoami : integer);
var
  i, Offset,OffsetStart, LeftSet: Integer;
//  btnChoose: TButtonEx;
begin
  LeftSet:=8;
// ScrollBoxDetail1
  LockWindowUpdate(gbFieldsOBL.Handle);

  try

    with gbFieldsOBL
    do
      for i := ComponentCount - 1 downto 0
      do
        Components[i].Free;

    Offset := 10;
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
          Parent := gbFields;
        end;

       with TDBEdit.Create(gbFieldsOBL) do
       begin
         DataSource := dsOKPersonalFiltr;
         DataField := Fields[i].FieldName;
         Left := LeftSet;
         Top := OffSet;
         Tag:=i;
         Inc(Offset, Height-3);

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
// ScrollBoxDetail1
  LockWindowUpdate(gbFields.Handle);

  try

    with gbFields
    do
      for i := ComponentCount - 1 downto 0
      do
        Components[i].Free;

    Offset := 10;
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
         Inc(Offset, Height-3);

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

procedure TBOKEDBForm.ActGoToFilialExecute(Sender: TObject);
var filial_branch,  filial_schema, old_schema, old_branch, old_bankdate, sql_:string;
  k,j:integer;
  GoRefuse,     GOPodtverdit,     GoUtverdit,     GOsubmitDismiss,     GOtoVveden : boolean;
begin
  filial_branch:=  edMFO.Text;
  old_schema:= CurrentSchema;
  old_branch:=branch;
  old_bankdate := bankdate;

//  memoprot.lines.add('��������� ��������');
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
//214,'���������'
//222,'�����������'
//233,'���������'
//206,'��������� �������'
//201,'������� ������'
    if cdstemp.fieldbyname('ID').asInteger=214 then GoRefuse        :=true;
    if cdstemp.fieldbyname('ID').asInteger=222 then GOPodtverdit    :=true;
    if cdstemp.fieldbyname('ID').asInteger=233 then GoUtverdit      :=true;
    if cdstemp.fieldbyname('ID').asInteger=206 then GOsubmitDismiss :=true;
    if cdstemp.fieldbyname('ID').asInteger=201 then GOtoVveden      :=true;
    cdstemp.next;

  end;
  if j<1 then memoprot.lines.add(datetimetostr(now)+')'+'��� ��������� �������� - ����� ����� � �����������������.');

  j:=0;
//  memoprot.lines.add('��������� �������');
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
  if j<1 then memoprot.lines.add(datetimetostr(now)+')'+'��� ��������� �������� - ����� ����� � �����������������.');


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
  ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)'); //10)');
  filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
  if filial_schema=''
  then begin
    showmessage('��� ������� ��� �� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
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
    memoProt.lines.add(datetimetostr(now)+' ) ������ '+branch);

     with TBOKForm.Create(self) do
     try
//**        gb_go.visible := true;
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

        bbStatNew.visible:=true;
        bbStatUndo.visible:=true;
        bbStatSave.visible:=true;
        bbStatDelete.visible:=true;
        bbStatNew.enabled:=true;
        bbStatUndo.enabled:=true;
        bbStatSave.enabled:=true;
        bbStatDelete.enabled:=true;
        lbFilial.caption:='(EDB) ����������� ������������� ������� ����������';

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
//** ��� � ��� ������� ����� �����    ExecSQLpar('begin info.initbranch(:p_1); end;',old_branch);
//** ������ ��� ��� ����� ������� �� ���� ����-�����
//**    ExecSQL('alter session set NLS_DATE_FORMAT ='+''''+'dd.mm.yyyy'+'''');
    execsql('COMMIT');
    branch := old_branch;
    bankdate := old_bankdate ;

    memoProt.lines.add(datetimetostr(now)+' ) ������ '+filial_branch+' �����.');
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

  PC_main.Pages[3].TabVisible:=false;
  if (HeadBranch_<>'09006') and (HeadBranch_<>'09049')
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
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)'+
    ' and b.bank_id=b.union_id'+
    ' and b.act=:p_2'+
    ' union all'+
    ' select * from'+
     ' (select a.*,b.bank_id,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
     ' where a.branch=b.bank_id'+ // ' and branch=''00974'' '+
     ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_3)'+
     ' and b.bank_id<>b.union_id'+
     ' and b.act=:p_4'+
     ' order by b.bank_id)');

    gb_EDB_.Visible := false;
    gb_obl.Visible := false;


  memoprot.lines.add(datetimetostr(now)+')'+'��������� ��������:');
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
    cdstemp.next;
  end;

  if ((HeadBranch_ ='09006') or (HeadBranch_ ='09004')) // 08.11.2012 ������ � � ���� ������������� � ��
  or (HeadBranch_='09049')
//  if (HeadBranch_ ='09006')
  and (j<1) then memoprot.lines.add(datetimetostr(now)+')'+'��� ��������� �������� - ����� ����� � �����������������.');

  memoprot.lines.add('');
  j:=0;
  memoprot.lines.add(datetimetostr(now)+')'+'��������� �������:');
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
  end;
  if j<1
  then begin
    gb_Obl.Visible:=false;
    memoprot.lines.add(datetimetostr(now)+')'+'��� ��������� �������� - ����� ����� � �����������������.');
  end else begin
    gb_Obl.Visible:=true;
  end;


  if j=14
  then begin
    memoprot.lines.add('14 ��������');
    is_EDB := true;

    gb_EDB_.Visible := true;
  end else begin
    is_EDB := false;
    gb_EDB_.Visible := false;

  end;

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

  if (HeadBranch_ <>'09006')  // ������ ����� � ���� �� ����
  then begin

    ilova1.visible:=false;
    ilova2.visible:=false;
    ilova3.visible:=false;
    ilova4.visible:=false;
    label2.visible:=false;
    bbMutahassislar.visible:=false;
  end else begin

      cdsOKPersonal.close;
      with cdsOKPersonal.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '29';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '30';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '22';
      end;

      cdsOKPersonal_OBL.close;
      with cdsOKPersonal_OBL.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '29';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '30';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '22';
      end;

    if is_EDB
    then begin
      sql_ :='select * from okedb_appoints where state_code in (:p_1,:p_2,:p_3)'+
        ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1))';
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
      gb_EDB_.Visible := false;
      // ��������� ������ �� ��������� �������� � ��������� ����������
    end;

    try
      LoadData(cdsOKPersonal_OBL,'select * from okedb_appoints where state_code in (:p_1,:p_2,:p_3)'+
        ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code >1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code >1))'+
        ' and branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))'
        );

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

end;

procedure TBOKEDBForm.ilova1Click(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 Range,V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
begin
//  showmessage( '� ������ �����9.doc');
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(ilova1.caption);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


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

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          �����-1';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='������-������� ���� ����� ��������� ��������, ��������������� ������������, ��������� ��';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                               ������� ����� �������� �� ����� (�����) ������������';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                             �������� ���� �� ������� ��������� ��������';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' ��������';
  inc(row);
    row_j:=1;
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
    V.Cells[row,row_j].Value:='������ ����';
    inc(row_j);
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
     V.Cells[row,row_j].Value:='���������';
    inc(row_j);
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
     V.Cells[row,row_j].Value:='�������������';
    inc(row_j); //V.Cells[row,row_j].Value:='������';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
    V.Cells[row,row_j].Value:='����� ���������';
    inc(row_j); //V.Cells[row,row_j].Value:='���������';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
    V.Cells[row,row_j].Value:='����� ������ ���������';
    inc(row_j); //V.Cells[row,row_j].Value:='������';

    inc(row);
//    inc(row);  MyRange:= V.Range[numto(10)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,10].Value:='���������'; //V.Cells[row,11].Value:='����';

  V.Cells[row,1].Value:='       �/�';
  inc(row);
    row_j:=0;
    while row_j<>10 //step 2
    do begin
      row_j:=row_j+2;
      V.Cells[row,row_j].Value  :='  '+'����'+'     ';
      V.Cells[row+1,row_j].Value:=' '+'���������'+' ';
      V.Cells[row,row_j+1].Value:='  '+'������'+'   ';

      V.Cells[10,row_j-1].Value:='''     '+'     '+inttostr(row_j-1)+'     '+'     ';
      V.Cells[10,row_j].Value  :='''     '+'     '+inttostr(row_j)  +'     '+'     ';
    end;

    V.Cells[10,11].Value:='''     '+'     '+'11     '+'     ';

//			����		����		����		����
//�/�	 ���������	������	 ���������	������	 ���������	������	 ���������	������	 ���������	������
//1	2	3	4	5	6	7	8	9	10	11

  row:=10;

//CDS_DBBranch.filter :='bank_id=''00394'' or bank_id=''00475''';
//CDS_DBBranch.filtered := true;

  CDS_DBBranch.First;
  while not CDS_DBBranch.eof
  do begin
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
//      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;

      inc(row);

      try
{
// �� �����
select sop.post_group_code,sum(ot.quantity_post) from '+fil_schema+'.ok_stat ot, ss_ok_post sop
where ot.post_code=sop.post_code
group by sop.post_group_code;
}
        sql_:=
//          'select nvl(sum(ot.quantity_post),0) a,'+
          'select 0 a,'+
          ' nvl(sum(decode(sop.post_group_code,1,ot.quantity_post,0)),0) b,'+
          ' nvl(sum(decode(sop.post_group_code,2,ot.quantity_post,0)),0) c,'+
          ' nvl(sum(decode(sop.post_group_code,3,ot.quantity_post,0)),0) d,'+
          ' nvl(sum(decode(sop.post_group_code,4,ot.quantity_post,0)),0) e'+
          ' from '+fil_schema+'.ok_stat ot, ss_ok_post sop'+
          ' where ot.post_code=sop.post_code';


        loaddata(ExecPrc,sql_);
      except on e:exception
        do begin
          MemoProt.visible:=true;
          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
          showmessage('������. '+#13+
            sql_+#13+
            e.Message+#13);
    //      exit;
        end;
      end;

      ExecPrc.First;

        V.Cells[row,1].Value := CDS_DBBranch.fieldbyname('bank_name').asstring;
//        V.Cells[row,2].Value := Trim(ExecPrc.Fields[0].AsString); //ExecPrc.Fields[0].FieldName;
        V.Cells[row,2].Value := floattostr(ExecPrc.Fields[1].AsFloat+
          ExecPrc.Fields[2].AsFloat+
          ExecPrc.Fields[3].AsFloat+
          ExecPrc.Fields[4].AsFloat ); //ExecPrc.Fields[0].FieldName;

        V.Cells[row,4].Value := Trim(ExecPrc.Fields[1].AsString); //ExecPrc.Fields[1].FieldName;
        V.Cells[row,6].Value := Trim(ExecPrc.Fields[2].AsString); //ExecPrc.Fields[2].FieldName;
        V.Cells[row,8].Value := Trim(ExecPrc.Fields[3].AsString); //ExecPrc.Fields[3].FieldName;
        V.Cells[row,10].Value := Trim(ExecPrc.Fields[4].AsString); //ExecPrc.Fields[4].FieldName;

//*      for col:=0 to nn do
//*        Begin
//*           V.Range[numto(col+1)+inttostr(begin_row)+':'+numto(col+1)+inttostr(end_row)].Select;
//*           case ExecPrc.Fields[col].DataType Of
//*           ftString :     V.Selection.NumberFormat := StrFormat;
//*           ftFloat  :     V.Selection.NumberFormat := NumFormat;
//*           ftDateTime:    V.Selection.NumberFormat := DateFormat;
//*        end;
//*      end;



      try
{
// �� �����
select sop.post_group_code,count(op.post_code) from '+fil_schema+'.ok_personal op, ss_ok_post sop
where op.post_code=sop.post_code
and op.status_code=2
group by sop.post_group_code;
//
}
        sql_:=
//          'select nvl(sum(1),0) g,'+
          'select 0 g,'+
          ' nvl(sum(decode(sop.post_group_code,1,1,0)),0) h,'+
          ' nvl(sum(decode(sop.post_group_code,2,1,0)),0) i,'+
          ' nvl(sum(decode(sop.post_group_code,3,1,0)),0) j,'+
          ' nvl(sum(decode(sop.post_group_code,4,1,0)),0) k'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
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
          showmessage('������. '+#13+
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

//*      for col:=0 to nn do
//*        Begin
//*           V.Range[numto(col+1)+inttostr(begin_row)+':'+numto(col+1)+inttostr(end_row)].Select;
//*           case ExecPrc.Fields[col].DataType Of
//*           ftString :     V.Selection.NumberFormat := StrFormat;
//*           ftFloat  :     V.Selection.NumberFormat := NumFormat;
//*           ftDateTime:    V.Selection.NumberFormat := DateFormat;
//*        end;
//*      end;


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
  V.Visible := True; //��� �������
 End;
  MemoProt.lines.add(TimeToStr(Time));

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
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(bbMutahassislar.caption);

  CDS_DBBranch.filtered := false;

//����� ������� ������ ���� ��� ������� �� ����

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
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          �����-?';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='������-������� ���� ����� ��������� ��������, ��������������� ������������, ��������� ��';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                               ������� ����� �������� �� ����� (�����) ������������';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                             ������������� ���� �� ������� ��������� ��������';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' ��������';

  inc(row);

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];
  MyRange.Borders.LineStyle := 1;
  MyRange.Borders.Weight := 2;
  MyRange.Borders.ColorIndex := 1;

    MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,3].Value:='';   // ����� �������� ���� �����
    MyRange:= V.Range[numto(12)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,12].Value:='���������� ���';
    MyRange:= V.Range[numto(20)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,20].Value:='������';

  inc(row);

  V.Cells[row,1].Value:='�/�';
  V.Cells[row,1].VerticalAlignment := 2;
  V.Cells[row,2].Value:='���';
  V.Cells[row,2].VerticalAlignment := 2;
  V.Cells[row,2].HorizontalAlignment := 3;

  MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Orientation := 90;
  V.Cells[row,3].WrapText := True; V.Cells[row,3].Value:='���� ������� ������ ������������� ����';
  V.Cells[row,4].WrapText := True; V.Cells[row,4].Value:='�������� 0,5 ���������� ������� ����';
  V.Cells[row,5].Value:='���������� �������';
  V.Cells[row,6].WrapText := True; V.Cells[row,6].Value:='�������� 0,5 ���������� ������� ����';

  row_j:=7;   V.Cells[row,row_j].Value:='��� ����������';
  inc(row_j); V.Cells[row,row_j].Value:='30 ���������';
  inc(row_j); V.Cells[row,row_j].Value:='50 ���������';
  inc(row_j); V.Cells[row,row_j].Value:='50 ����� ��������';
  inc(row_j); V.Cells[row,row_j].Value:='�����';
  inc(row_j); V.Cells[row,row_j].Value:='����';
  inc(row_j); V.Cells[row,row_j].Value:='��������';
  inc(row_j); V.Cells[row,row_j].Value:='�������';
  inc(row_j); V.Cells[row,row_j].Value:='�������� �������';
  inc(row_j); V.Cells[row,row_j].Value:='���� ������';
  inc(row_j); V.Cells[row,row_j].Value:='�������� �������';

  V.Cells[row,18].WrapText := True; V.Cells[row,18].Value:='���-��������, ������- ������';
  row_j:=19;   V.Cells[row,row_j].Value:='������ ����';
  inc(row_j); V.Cells[row,row_j].Value:='���� ���� ���������'; // 20
  inc(row_j); V.Cells[row,row_j].Value:='2-�� ���������� ������';
  inc(row_j); V.Cells[row,row_j].Value:='����-������ ���� ���-��';
  inc(row_j); V.Cells[row,row_j].Value:='2-�� ���������� ������';
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
// �� ����� ����������� post_group_code=2

      // p_4_ �� ��� �� ��������� - � ������� ��� ���� "������" ��������� � �.�.
      // ��� ������ �������� ���������� �� ��������� !!!

// �� ����� �����������   post_group_code=2
        p_5_ := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
          ' and op.status_code in(:p_1,:p_2)'+
          ' and op.branch=:p_3'+
          ' and sop.post_group_code=:p_4','2','5',CDS_DBBranch.fieldbyname('branch').asstring,'2');
        V.Cells[row,5].Value := p_5_;
        // p_6_ �� ��� �� ���������
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


        // ��� ���������� - ��������� ��������
        V.Cells[row,7].Value := p_3_ - p_5_;

        // �� ����� �����������   post_group_code=2 �� 30 ���
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

        // �� ����� �����������   post_group_code=2   � 30 �� 50 ���
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

        // �� ����� �����������   post_group_code=2   � 50 ���
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

        // �� ����� �����������   post_group_code=2   ����� �
        V.Cells[row,11].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op, ss_ok_post sop'+
          ' where op.post_code=sop.post_code'+
          ' and op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and sop.post_group_code=:p_4'+
          ' and gender_code=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2','2' );

        // ���������� ���
          // 1 ����
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
        // �� ��� ���� �������
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
        // 21 ������ �� 2 ����-�� ����
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
        // 23 ������ �� 2 ����-�� ��.����
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
  V.Visible := True; //��� �������
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
//  showmessage( '� ������ �����9.doc');
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(ilova3.caption);






  CDS_DBBranch.filtered := false;


//����� ������� ������ ���� ��� ������� �� ����

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

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          �����-3';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='������-������� ���� ����� ��������� ����� �������, ����� (�����) ���������� �������������';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                  ���� �� �������� ������� ��������� ���������� ��������';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' ��������';

  inc(row);
  MyRange:= V.Range[numto(5)+inttostr(row)+':'+numto(14)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,5].HorizontalAlignment := 3;
    V.Cells[row,5].Value:='��������';
  MyRange:= V.Range[numto(15)+inttostr(row)+':'+numto(19)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,15].WrapText := True;
    V.Cells[row,15].HorizontalAlignment := 3;
    V.Cells[row,15].Value:='���� �� ���� ������ ���� ��������� ���� ����������';

  inc(row);
  inc(row);
  MyRange:= V.Range[numto(5)+inttostr(row)+':'+numto(7)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,5].HorizontalAlignment := 3;
    V.Cells[row,5].Value:='����';
  MyRange:= V.Range[numto(8)+inttostr(row)+':'+numto(10)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,8].HorizontalAlignment := 3;
    V.Cells[row,8].Value:='����-������';
  MyRange:= V.Range[numto(11)+inttostr(row)+':'+numto(14)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,11].WrapText := True;
    V.Cells[row,11].HorizontalAlignment := 3;
    V.Cells[row,11].Value:='���� ��� ����-������ ���������� ��� �����������';
  MyRange:= V.Range[numto(16)+inttostr(row)+':'+numto(17)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,16].WrapText := True;
    V.Cells[row,16].HorizontalAlignment := 3;
    V.Cells[row,16].Value:='���� ���� ���������';
  MyRange:= V.Range[numto(18)+inttostr(row)+':'+numto(19)+inttostr(row+1)];
  MyRange.Merge;
    V.Cells[row,18].WrapText := True;
    V.Cells[row,18].HorizontalAlignment := 3;
    V.Cells[row,18].Value:='����-������ ���� ���������';

  inc(row);
  inc(row);


    row_j:=0;
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='�/�';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='�������������� ����';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='���� ������� ������ ���� �������� ����';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='������ �������� �������� ����';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='� � � �';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='���� ��������� �����- ����� ��� ���������';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='���� ��������� �����- ����� ��� ���- ��������';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='� � � �';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='����-������ ��������� �����- ����� ��� ���������';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='����-������ ��������� �����- ����� ��� ���- ��������';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='� � � �';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='���� ���� �����- ����';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='���� ������ ���� �����- ����';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='��� ������ �����- �����- ���';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row-2)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row-2,row_j].WrapText := True; V.Cells[row-2,row_j].HorizontalAlignment := 3;
    V.Cells[row-2,row_j].Value:='���� �� ���� ������ ���� ��������� ���� ����������';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='� � � �';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='������ 2-����- ������- ��� ������';

    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='� � � �';
    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j)+inttostr(row+5)];  MyRange.Merge;
    V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].HorizontalAlignment := 3;
    V.Cells[row,row_j].Value:='������ 2-����- ������- ��� ������';

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
         datarow[row_j] := datarow[row_j] +     // 15 ��������� ���� �� ����-������
           getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code in (:p_4,:p_5)'+
          ' and op.post_code=:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6','7',
          cdsSSokPost.fieldbyname('post_code').asstring);

        inc(row_j);       // ���� ����
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

        inc(row_j);      // ���� ���� 2-����������
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

        inc(row_j);   //   ����-������
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

        inc(row_j);  //   ����-������ 2-����������
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
  V.Visible := True; //��� �������
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
 column_counts: integer; // ���������� ������� � ������
begin
 column_counts:=23; // ���������� ������� � ������
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(ilova4.caption);

  CDS_DBBranch.filtered := false;

//����� ������� ������ ���� ��� ������� �� ����

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
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          �����-4';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='������-������� ���� ����� ��������� ��������, ��������������� ������������, ��������� ��';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                               ������� ����� �������� �� ����� (�����) ������������';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                             ������������� ���� �� ������� ��������� ��������';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' ��������';

  inc(row);


    MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,24].Value:='���� ����� �������';
    MyRange:= V.Range[numto(12)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,31].Value:='����� ���������';
  row_j:=2;


  MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(column_counts)+inttostr(row)];
  MyRange.Orientation := 90;
  MyRange.VerticalAlignment := 2;
  MyRange.HorizontalAlignment := 3;

  inc(row_j); V.Cells[row,row_j].Value:='����';
  inc(row_j); V.Cells[row,row_j].Value:='�����';
  inc(row_j); V.Cells[row,row_j].Value:='���� ������������';
  inc(row_j); V.Cells[row,row_j].Value:='�������� �������';
  inc(row_j); V.Cells[row,row_j].Value:='����-������ ��������';
  inc(row_j); V.Cells[row,row_j].Value:='�������� �������';
  inc(row_j); V.Cells[row,row_j].Value:='������ ����';
// 6-������������� ���� (�������� ��������)
  inc(row_j); V.Cells[row,row_j].Value:='������������� ���� (�������� ��������)';
// 7-������������� ���� ������ (������ ��������)
  inc(row_j); V.Cells[row,row_j].Value:='������������� ���� ������ (������ ��������)';
  inc(row_j); V.Cells[row,row_j].Value:='����';
  inc(row_j); V.Cells[row,row_j].Value:='�����';
//*  inc(row_j); V.Cells[row,row_j].Value:='�� �������� ����';
//*  inc(row_j); V.Cells[row,row_j].Value:='���� ��������� �������';
//*  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='������ 100-����� 2,3,4 ����';

  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='�� �������� ����';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='�������� ���������� ����';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='������ ���������� ������� ������ ���������� �����';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='��������� ������ ���������� �����';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='������ ���������� ��� ����� ����� ������� ���������� ����';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='�������� ������ ���������� �����';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='��� ��������� ������� ����� ���������� ���������� �����';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='������ ���������� �������� ���������� ����';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='���������� �������� ������ ������������ �������';
  inc(row_j); V.Cells[row,row_j].WrapText := True; V.Cells[row,row_j].Value:='�����';


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
  // ��������
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
        // � �����

        datarow[3] := datarow[3]+1; // ����

        if ExecPrc.FieldByName('gender_code').asstring='2'
        then begin
          datarow[4] := datarow[4]+1; // �����
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='1')
        or (ExecPrc.FieldByName('Education_Title_Code').asstring='4')
        or (ExecPrc.FieldByName('Education_Title_Code').asstring='5')
        then begin
          datarow[5] := datarow[5]+1; // ���� ������������� (1-���� 4-�������� 5-�������)
          if (ExecPrc.FieldByName('bank_spec').asstring='1')
          then begin
            datarow[6] := datarow[6]+1; // (����) �������� �������
          end;
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='1')
        or (ExecPrc.FieldByName('Education_Title_Code').asstring='4')
        or (ExecPrc.FieldByName('Education_Title_Code').asstring='5')
        then begin
          datarow[5] := datarow[5]+1; // ���� ������������� (1-���� 4-�������� 5-�������)
          if (ExecPrc.FieldByName('bank_spec').asstring='1')
          then begin
            datarow[6] := datarow[6]+1; // (����) �������� �������
          end;
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='2')
        then begin
          datarow[7] := datarow[7]+1; // 2-���� ������
          if (ExecPrc.FieldByName('bank_spec').asstring='1')
          then begin
            datarow[8] := datarow[8]+1; // (2-���� ������) �������� �������
          end;
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='3')
        then begin
          datarow[9] := datarow[9]+1; // 3-����
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='6')
        then begin
          datarow[10] := datarow[10]+1; // 6-������������� ���� (�������� ��������)
        end;

        if (ExecPrc.FieldByName('Education_Title_Code').asstring='7')
        then begin
          datarow[11] := datarow[11]+1; // 7-������������� ���� ������ (������ ��������)
        end;

    {
     // ���������
     // ������� � ����
     ������ (11:24:20 7/11/2011)
    ������ ������ ��� ������� ����������
    � ����������� �� ����:
    01	�� �������� ����
    02	�������� ���������� ����
    03	������ ���������� ������� ������ ���������� �����
    04	��������� ������ ���������� �����
    05	������ ���������� ��� ����� ����� ������� ���������� ����
    06	�������� ������ ���������� �����
    07	��� ��������� ������� ����� ���������� ���������� �����
    08	������ ���������� �������� ���������� ����
    09	���������� �������� ������ ������������ �������
    99	�����

    � � ������ :
    1)	�� �������� ����
    2)���� ��������� �������
    3) ������ 100-����� 2,3,4 ����

    � ���� ��������, ����� ������� ��� � ���� ���������, ��� ����� ���� ���������� �������� � ������,
    ����� ��������������� ����������� ��

    08.11.2011 ���� �� ��������, ������ ��� � ����������� ��.
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
  V.Visible := True; //��� �������
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
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(ilova2.caption);

  CDS_DBBranch.filtered := false;
  CDS_DBBranch.filtered := false;


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

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          �����-2';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='������-������� ���� ����� ��������� ��������, ��������������� ������������, ��������� ��';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                               ������� ����� �������� �� ����� (�����) ������������';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                             ������������� ���� �� ������� ��������� ��������';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' ��������';

  inc(row);

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(23)+inttostr(row)];
  MyRange.Borders.LineStyle := 1;
  MyRange.Borders.Weight := 2;
  MyRange.Borders.ColorIndex := 1;

    MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,3].Value:='';   // ����� �������� ���� �����
    MyRange:= V.Range[numto(12)+inttostr(row)+':'+numto(19)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,12].Value:='���������� ���';
    MyRange:= V.Range[numto(20)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,20].Value:='������';

  inc(row);

  V.Cells[row,1].Value:='�/�';
  V.Cells[row,1].VerticalAlignment := 2;
  V.Cells[row,2].Value:='���';
  V.Cells[row,2].VerticalAlignment := 2;
  V.Cells[row,2].HorizontalAlignment := 3;

  MyRange:= V.Range[numto(3)+inttostr(row)+':'+numto(23)+inttostr(row)];  MyRange.Orientation := 90;
  V.Cells[row,3].WrapText := True; V.Cells[row,3].Value:='���� ������� ������ ������������� ����';
  V.Cells[row,4].WrapText := True; V.Cells[row,4].Value:='�������� 0,5 ���������� ������� ����';
  V.Cells[row,5].Value:='���������� �������';
  V.Cells[row,6].WrapText := True; V.Cells[row,6].Value:='�������� 0,5 ���������� ������� ����';

  row_j:=7;   V.Cells[row,row_j].Value:='��� ����������';
  inc(row_j); V.Cells[row,row_j].Value:='30 ���������';
  inc(row_j); V.Cells[row,row_j].Value:='50 ���������';
  inc(row_j); V.Cells[row,row_j].Value:='50 ����� ��������';
  inc(row_j); V.Cells[row,row_j].Value:='�����';
  inc(row_j); V.Cells[row,row_j].Value:='����';
  inc(row_j); V.Cells[row,row_j].Value:='��������';
  inc(row_j); V.Cells[row,row_j].Value:='�������';
  inc(row_j); V.Cells[row,row_j].Value:='�������� �������';
  inc(row_j); V.Cells[row,row_j].Value:='���� ������';
  inc(row_j); V.Cells[row,row_j].Value:='�������� �������';

  V.Cells[row,18].WrapText := True; V.Cells[row,18].Value:='���-��������, ������- ������';
  row_j:=19;   V.Cells[row,row_j].Value:='������ ����';
  inc(row_j); V.Cells[row,row_j].Value:='���� ���� ���������'; // 20
  inc(row_j); V.Cells[row,row_j].Value:='2-�� ���������� ������';
  inc(row_j); V.Cells[row,row_j].Value:='����-������ ���� ���-��';
  inc(row_j); V.Cells[row,row_j].Value:='2-�� ���������� ������';
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
          ' from '+fil_schema+'.ok_stat ot'+
          ' where ot.branch=:p_1',CDS_DBBranch.fieldbyname('branch').asstring);
      V.Cells[row,3].Value := p_3_;
// �� ����� ����������� post_group_code=2

      // p_4_ �� ��� �� ��������� - � ������� ��� ���� "������" ��������� � �.�.
      // ��� ������ �������� ���������� �� ��������� !!!

// �� ����� �����������   post_group_code=2
        p_5_ := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.status_code in(:p_1,:p_2)'+
          ' and op.branch=:p_3',
          '2','5',CDS_DBBranch.fieldbyname('branch').asstring);
        V.Cells[row,5].Value := p_5_;
        // p_6_ �� ��� �� ���������
        V.Cells[row,6].Value :=  getsqlresultpar(
          'select count(*) from '+fil_schema+'.ok_zp_rate where zp_rate_code=:p_1'+
          ' and zp_rate_date<=to_date(:p_2,:p_3)'+
          ' and (zp_rate_date_end is null or zp_rate_date_end>=to_date(:p_4,:p_5))'+
          ' and (branch,personal_code) '+
          ' in (select branch,personal_code from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_6 and op.status_code in(:p_7,:p_8) )',
          '4',bankdate,'dd.mm.yyyy',bankdate,'dd.mm.yyyy',
          CDS_DBBranch.fieldbyname('branch').asstring, '2','5'
          );


        // ��� ���������� - ��������� ��������
        V.Cells[row,7].Value := p_3_ - p_5_;

        // �� ����� �����������   post_group_code=2 �� 30 ���
        p_8_ := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and (months_between(to_date(:p_4,:p_5),op.birthday)/12)<:p_6',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          bankdate,'dd.mm.yyyy','30' );
        V.Cells[row,8].Value := p_8_;

        // �� ����� �����������   post_group_code=2   � 30 �� 50 ���
        V.Cells[row,9].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and (months_between(to_date(:p_4,:p_5),op.birthday)/12)>=:p_6'+ // 30
          ' and (months_between(to_date(:p_7,:p_8),op.birthday)/12)<:p_9',  // 50
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          bankdate,'dd.mm.yyyy','30' ,bankdate,'dd.mm.yyyy','50');

        // �� ����� �����������   post_group_code=2   � 50 ���
        V.Cells[row,10].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and (months_between(to_date(:p_4,:p_5),op.birthday)/12)>=:p_6', // 50
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5',
          bankdate,'dd.mm.yyyy','50' );

        // �� ����� �����������   post_group_code=2   ����� �
        V.Cells[row,11].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in(:p_2,:p_3)'+
          ' and gender_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2' );

        // ���������� ���
          // 1 ����
        V.Cells[row,12].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','1' );
        V.Cells[row,13].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','4'  );
        V.Cells[row,14].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','5'  );
        // �� ��� ���� �������
        V.Cells[row,15].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code in(:p_4,:p_5,:p_6)'+
          ' and bank_spec=:p_7',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','1','4','5','1'  );

        V.Cells[row,16].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2'  );
        V.Cells[row,17].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and bank_spec=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','2','1'  );

        V.Cells[row,18].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and bank_spec=:p_5',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','3','1'  );
        V.Cells[row,19].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and (bank_spec is null or bank_spec=:p_5)',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','3','2',  );

        V.Cells[row,20].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6'  );
        // 21 ������ �� 2 ����-�� ����
        V.Cells[row,21].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4'+
          ' and spec_ikki=:p_5' ,
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','6','1'  );

        V.Cells[row,22].Value := getsqlresultpar(
          'select count(1) g'+
          ' from '+fil_schema+'.ok_personal op'+
          ' where op.branch=:p_1'+
          ' and op.status_code in (:p_2,:p_3)'+
          ' and education_title_code=:p_4',
          CDS_DBBranch.fieldbyname('branch').asstring,'2','5','7'  );
        // 23 ������ �� 2 ����-�� ��.����
        V.Cells[row,23].Value := getsqlresultpar(
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
  Range := V.Range[numto(1)+'7:'+numto(23)+inttostr(row+1)];
  Range.Select;
  Range.Columns.AutoFit;
  Range.Borders.LineStyle := 1;
  Range.Borders.Weight := 2;
  Range.Borders.ColorIndex := 1;
 Finally
  V.Visible := True; //��� �������
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

//  memoprot.lines.add('��������� ��������');
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
//214,'���������'
//222,'�����������'
//233,'���������'
//206,'��������� �������'
//201,'������� ������'
    if cdstemp.fieldbyname('ID').asInteger=214 then GoRefuse        :=true;
    if cdstemp.fieldbyname('ID').asInteger=222 then GOPodtverdit    :=true;
    if cdstemp.fieldbyname('ID').asInteger=233 then GoUtverdit      :=true;
    if cdstemp.fieldbyname('ID').asInteger=206 then GOsubmitDismiss :=true;
    if cdstemp.fieldbyname('ID').asInteger=201 then GOtoVveden      :=true;
    cdstemp.next;

  end;
  if j<1 then memoprot.lines.add(datetimetostr(now)+')'+'��� ��������� �������� - ����� ����� � �����������������.');

  j:=0;
//  memoprot.lines.add('��������� �������');
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
  if j<1 then memoprot.lines.add(datetimetostr(now)+')'+'��� ��������� �������� - ����� ����� � �����������������.');


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
  ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
  filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
  if filial_schema=''
  then begin
    showmessage('��� ������� ��� �� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
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
    memoProt.lines.add(datetimetostr(now)+' ) ������ '+branch);

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
//        -- ������� ��� ��������
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

    memoProt.lines.add(datetimetostr(now)+' ) ������ '+filial_branch+' �����.');
   end;
  end;

end;

procedure TBOKEDBForm.bbUtvClick(Sender: TObject);
var
  go_personal_code_, state_code_, department_code_new_, post_code_new_, id_: string;
begin
  if  (gb_EDB_.caption= ' (�����) ������������� � �� (�����)')
  or  (gb_Obl.caption= ' (�����) ������������� � ������� (�����)')
  then begin
    showmessage('����� - ������ ��� ���������'+#13+'����������� ������ ��� ������� "�����"');
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
    ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
    filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
    if filial_schema=''
    then begin
      showmessage('��� ������� ��� �� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
    end else begin
      if (state_code_<>'22')
      then begin
        showmessage('������ ��������� ���������� - ��������� ���������� ������ ���� 22-����������� ('+cdsOKPersonal.fieldbyname('state_code').asstring+')');
      end else begin
        try
          execsqlpar('update '+filial_schema+'.ok_personal '+
            ' set reply_date=sysdate, gosubmit_code=:p_1,'+ // 33 ��������� ��
            ' department_code_new=:p_2,post_code_new=:p_3'+
            ' where branch=:p_4'+
            ' and personal_code=:p_5'
          ,'33',department_code_new_,
                post_code_new_,
          filial_branch,go_personal_code_
          );
            execsqlpar('update okedb_appoints '+
              ' set reply_date=sysdate,state_code=:p_1,'+
            ' INS_DATE_UTV=sysdate, EMP_NAME_UTV=info.GetUserFullName(info.GetEmpId,info.getbranch)'+ // 33 ��������� ��
              ' where branch=:p_2'+
              ' and personal_code=:p_3'+
              ' and id=:p_4'
            ,'33', filial_branch,go_personal_code_,
              id_
            );
            execsql('commit');
        except
        on e:exception
          do begin
            execsql('rollback');
            showmessage('(2439) �� ������� ��������� ���������� '+e.Message);
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
  go_personal_code_, state_code_, department_code_new_, post_code_new_, id_: string;
begin

  if  (gb_EDB_.caption= ' (�����) ������������� � �� (�����)')
  or  (gb_Obl.caption= ' (�����) ������������� � ������� (�����)')
  then begin
    showmessage('����� - ������ ��� ���������'+#13+'����������� ������ ��� ������� "�����"');
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
      ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
      filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
      if filial_schema=''
      then begin
        showmessage('��� ������� ��� �� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
      end else begin
        if (state_code_<>'29')
        and (state_code_<>'14')
        then begin
          showmessage('������ ����������� - ��������� ���������� ������ ���� 29-��������� � �� ��� 14-�������� ��');
        end else begin
          try
            execsqlpar('update '+filial_schema+'.ok_personal '+
              ' set gosubmit_code=:p_1,'+ // 22 ����������� ��
              ' department_code_new=:p_2,post_code_new=:p_3'+
              ' where branch=:p_4'+
              ' and personal_code=:p_5'
            ,'22',department_code_new_,
            post_code_new_,
            filial_branch,go_personal_code_
            );
            execsqlpar('update okedb_appoints '+
              ' set state_code=:p_1,'+
              ' INS_DATE_POD=sysdate, EMP_NAME_POD=info.GetUserFullName(info.GetEmpId,info.getbranch)'+ // 22 ����������� ��
              ' where branch=:p_2'+
              ' and personal_code=:p_3'+
              ' and id=:p_4'
            ,'22', filial_branch,go_personal_code_,
              id_
            );
            execsql('commit');
          except
          on e:exception
            do begin
              execsql('rollback');
              showmessage('(2475) �� ������� �����������'+e.Message);
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
  go_personal_code_, state_code_, department_code_new_, post_code_new_, id_: string;
begin

  if  (gb_EDB_.caption= ' (�����) ������������� � �� (�����)')
  or  (gb_Obl.caption= ' (�����) ������������� � ������� (�����)')
  then begin
    showmessage('����� - ������ ��� ���������'+#13+'����������� ������ ��� ������� "�����"');
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
    ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
    filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
    if filial_schema=''
    then begin
      showmessage('��� ������� ��� �� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
    end else begin
        try
          execsqlpar('update '+filial_schema+'.ok_personal '+
            ' set reply_date=sysdate,gosubmit_code=:p_1,'+ // 6 ��������� ������� ��
            ' department_code_new=:p_2,post_code_new=:p_3'+
            ' where branch=:p_4'+
            ' and personal_code=:p_5'
          ,'6',department_code_new_,
          post_code_new_,
          filial_branch,go_personal_code_
          );
            execsqlpar('update okedb_appoints '+
              ' set reply_date=sysdate,state_code=:p_1,'+
            ' INS_DATE_UVOL=sysdate, EMP_NAME_UVOL=info.GetUserFullName(info.GetEmpId,info.getbranch)'+ // 6
              ' where branch=:p_2'+
              ' and personal_code=:p_3'+
              ' and id=:p_4'
            ,'6', filial_branch,go_personal_code_,
              id_
            );
            execsql('commit');
        except
        on e:exception
          do begin
            execsql('rollback');
            showmessage('(2543) �� ������� ��������� ������� '+e.Message);
          end;
        end;
    end;
    if cdsOKPersonal.active     then cdsOKPersonal.Refresh;
    if cdsOKPersonal_OBL.active then cdsOKPersonal_OBL.Refresh;
  end;
  
end;

procedure TBOKEDBForm.bbOtkazClick(Sender: TObject);
var
  go_personal_code_, state_code_, department_code_new_, post_code_new_, id_: string;
begin

  if  (gb_EDB_.caption= ' (�����) ������������� � �� (�����)')
  or  (gb_Obl.caption= ' (�����) ������������� � ������� (�����)')
  then begin
    showmessage('����� - ������ ��� ���������'+#13+'����������� ������ ��� ������� "�����"');
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
    ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)');
    filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
    if filial_schema=''
    then begin
      showmessage('��� ������� ��� �� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
    end else begin
        try
          execsqlpar('update '+filial_schema+'.ok_personal '+
            ' set reply_date=sysdate,gosubmit_code=:p_1,'+ // 14 �������� ��
            ' department_code_new=:p_2,post_code_new=:p_3'+
            ' where branch=:p_4'+
            ' and personal_code=:p_5'
          ,'14',department_code_new_,
          post_code_new_,
          filial_branch,go_personal_code_
          );
              execsqlpar('update okedb_appoints '+
                ' set reply_date=sysdate,state_code=:p_1,'+
              ' INS_DATE_OTKAZ=sysdate, EMP_NAME_OTKAZ=info.GetUserFullName(info.GetEmpId,info.getbranch)'+ // 6
                ' where branch=:p_2'+
                ' and personal_code=:p_3'+
                ' and id=:p_4'
              ,'14', filial_branch,go_personal_code_,
                id_
              );
            execsql('commit');
        except
        on e:exception
          do begin
            execsql('rollback');
            showmessage('(2543) �� ������� �������� '+e.Message);
          end;
        end;

      end;
      if cdsOKPersonal.active     then cdsOKPersonal.Refresh;
      if cdsOKPersonal_OBL.active then cdsOKPersonal_OBL.Refresh;
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
6	��������� �������
14	��������� ��
22	����������� ��
29	��������� � ��
30	������ �� ����������
33	�������� ��
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

  if (HeadBranch_ <>'09006')
  then begin
    ilova1.visible:=false;
    ilova2.visible:=false;
    ilova3.visible:=false;
    ilova4.visible:=false;
    label2.visible:=false;
    bbMutahassislar.visible:=false;
  end;

  if ((HeadBranch_ ='09006') or (HeadBranch_ ='09004'))  // 08.11.2012 ������ � � ���� ������������� ��
  or (HeadBranch_='09049')
  then begin

//    LoadData(cdsOKPersonal,'select * from okedb_appoints');
      cdsOKPersonal.close;
      with cdsOKPersonal.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '29';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '30';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '22';
      end;

      cdsOKPersonal_OBL.close;
      with cdsOKPersonal_OBL.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '29';
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '30';
          CreateParam(ftString,'p_3' ,ptInput);
          ParamByName('p_3').Value := '22';
      end;

    if is_EDB
    then begin

        if (chbfiltr.checked) or (chbfiltrOBL.checked)
        then begin
          sql_ :='select b.gosubmit_name state_name ,a.* from okedb_appoints_arh a, ss_ok_gosubmit b where a.state_code=b.gosubmit_code and'+
            ' state_code in (:p_1,:p_2,:p_3)'+
            ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1))';
          LoadData(cdsOKPersonal,sql_);
          gb_EDB_.caption:= ' (�����) ������������� � �� (�����)';
          gb_Obl.caption:= ' (�����) ������������� � ������� (�����)';
          chbfiltr.checked   := true;
          chbfiltrOBL.checked:= true;

        end else begin
          LoadData(cdsOKPersonal,'select * from okedb_appoints where state_code in (:p_1,:p_2,:p_3)'+
            ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1))'
            );
          gb_EDB_.caption:= ' ������������� � �� ';
          gb_Obl.caption:= ' ������������� � ������� ';
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

//      gb_EDB_.Visible := true;
    end else begin
      gb_EDB_.Visible := false;
      // ��������� ������ �� ��������� �������� � ��������� ����������
    end;

        if (chbfiltr.checked) or (chbfiltrOBL.checked)
        then begin
          sql_ :='select b.gosubmit_name state_name ,a.* from okedb_appoints_arh a, ss_ok_gosubmit b where a.state_code=b.gosubmit_code and'+
            ' state_code in (:p_1,:p_2,:p_3)'+
            ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code >1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code >1))'+
            ' and branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))';
          LoadData(cdsOKPersonal_OBL,sql_);

          gb_EDB_.caption:= ' (�����) ������������� � �� (�����)';
          gb_Obl.caption:= ' (�����) ������������� � ������� (�����)';
          chbfiltr.checked   := true;
          chbfiltrOBL.checked:= true;

        end else begin
          LoadData(cdsOKPersonal_OBL,'select * from okedb_appoints where state_code in (:p_1,:p_2,:p_3)'+
            ' and (POST_CODE in (select post_code from ss_ok_post where confirm_code >1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code >1))'+
            ' and branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))'
            );
          gb_EDB_.caption:= ' ������������� � �� ';
          gb_Obl.caption:= ' ������������� � ������� ';
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
  sql_ : string;
begin
//  sql_ := 'select * from okedb_appoints ';
  if (chbfiltr.checked) or (chbfiltrOBL.checked)
  then begin
    sql_ :='select b.gosubmit_name state_name ,a.* from okedb_appoints_arh a, ss_ok_gosubmit b where a.state_code=b.gosubmit_code and'+
//    sql_ := 'select * from okedb_appoints_arh where '+
        ' (POST_CODE in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1))'
       ;
    gb_EDB_.caption:= ' (�����) ������������� � �� (�����)';
    gb_Obl.caption:= ' (�����) ������������� � ������� (�����)';
    chbfiltr.checked   := true;
    chbfiltrOBL.checked:= true;

  end else begin
    sql_ := 'select * from okedb_appoints where '+
        ' (POST_CODE in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code is null or confirm_code=1))'
       ;
    gb_EDB_.caption:= ' ������������� � �� ';
    gb_Obl.caption:= ' ������������� � ������� ';
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
      end;

      LoadData(cdsOKPersonal,sql_);

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

procedure TBOKEDBForm.bbSudimostiClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j, row_k:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
begin
//  showmessage( '� ������ �����9.doc');
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(bbSudimosti.caption);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


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

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='                                                                                                                                                                                                                          �����-1';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:=datetostr(dtp_To4.date)+' �������� ������ ������������ �� ������ ����������� �������� ������� �������� ������� ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='�������� ��������� ����������� ������ ������ ���������';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='                                                             ��������';


    inc(row);
    inc(row);
    row_j:=1;

    V.Cells[row,row_j].ColumnWidth := 5;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='       N';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='������ �� ����������� ���� ��������� �.�.�. �� ��������';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='������ ��� ������� ��������� ����� �����������';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='������ ��� ����������� ����';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='������ ��� ������������� ����� ������ ������������� ������ (������ ����������� �������)';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='������ ��� ������ ������ ��� ������� �������� (������������ ������ ��� ������� ������� ������ ����������� �������)';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='���� ��������� �������� ����';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 25;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='������������ ������ ���� ������������� ��� ������ ������ ���� ������������ �������� ����� ����� �����������';

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
//          showmessage('������. '+#13+
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
  V.Visible := True; //��� �������
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.BitBtn13Click(Sender: TObject);
var i:integer;
  sql_ : string;
begin
//  sql_ := 'select * from okedb_appoints ';
  if (chbfiltr.checked) or (chbfiltrOBL.checked)
  then begin
    sql_ :='select b.gosubmit_name state_name ,a.* from okedb_appoints_arh a, ss_ok_gosubmit b where a.state_code=b.gosubmit_code and'+
        ' (POST_CODE in (select post_code from ss_ok_post where confirm_code >1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code >1))'+
        ' and branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))';
    gb_EDB_.caption:= ' (�����) ������������� � �� (�����)';
    gb_Obl.caption:= ' (�����) ������������� � ������� (�����)';
    chbfiltr.checked   := true;
    chbfiltrOBL.checked:= true;
  end else begin
    sql_ :='select * from okedb_appoints where '+
        ' (POST_CODE in (select post_code from ss_ok_post where confirm_code >1) or POST_CODE_NEW in (select post_code from ss_ok_post where confirm_code >1))'+
        ' and branch in (select bank_id from s_mfo where region_id in (select id from V_TRANS_OK where DEAL_ID=10))';
    gb_EDB_.caption:= ' ������������� � �� ';
    gb_Obl.caption:= ' ������������� � ������� ';
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
      end;

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
6	��������� �������
14	��������� ��
22	����������� ��
29	��������� � ��
30	������ �� ����������
33	�������� ��
    }
            cdbgOK_PERSONAL_OBL.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

  end;

end;

procedure TBOKEDBForm.bbNeuvolennieClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j, row_k:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
begin
//  showmessage( '� ������ �����9.doc');
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(bbNeuvolennie.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


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

//  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
//  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
//    V.Cells[row,2].Value:=' ';
  inc(row); MyRange:= V.Range[numto(2)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,2].Value:='����������� ���������� � ��������� ������, ���������� ���������';


    inc(row);
    inc(row);
    row_j:=1;

    V.Cells[row,row_j].ColumnWidth := 5;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:='       N';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 10;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 15;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ���.����� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ������� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ��� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 35;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' �������� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ���� ���������� ';
    inc(row_j);

    V.Cells[row,row_j].ColumnWidth := 20;
    V.Cells[row,row_j].WrapText := true;
    V.Cells[row,row_j].Value:=' ��������� ';

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
        'select chr(39)||okpl.branch f1,okpl.tabno f2,okpl.family f3,okpl.first_name f4,okpl.patronymic f5,max(okpd.out_office_date) f6,''������'' f7 '+
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
//          showmessage('������. '+#13+
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
  V.Visible := True; //��� �������
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

procedure TBOKEDBForm.BitBtn4Click(Sender: TObject);
var
 Save_Cursor:TCursor;
 V: Variant; // ,Range
 i, col,row:integer; // ,nn
 sql_,sql2_,NumFormat,DateFormat,StrFormat,sum2_,olddepname, mfo_: String;
  total_count:integer;
  total_sum:double;
begin

  mfo_ := edMFO.Text;
  cdstemp.close;
      with cdstemp.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := mfo_;
          CreateParam(ftString,'p_2' ,ptInput);
          ParamByName('p_2').Value := '10';
      end;
  loaddata(cdstemp,'select * from ss_dblink_branch where branch=:p_1'+
  ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)'); //10)');
  filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
  if filial_schema=''
  then begin
     showmessage('��� ������� ��� �� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
  end else begin

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
            ' where b.DEPARTMENT_CODE in (select distinct DEPARTMENT_CODE from '+filial_schema+'.ok_stat'+
                ' where branch=:p_1)'+
            ' and b.state_notes=:p_2' + //''A'' '+
            ' connect by b.high_dep_code = prior b.department_code'+
            ' start with b.high_dep_code is null';

          cdsTempSource.close;
          with cdsTempSource.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := mfo_;
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
      V.Cells[row, i ].Value := '�������';
      inc(i);
      V.Cells[row, i ].Value := '�������';
      inc(i);
      V.Cells[row, i ].Value := '����';
      inc(i);
      V.Cells[row, i ].Value := '�������';
      inc(i);
      V.Cells[row, i ].Value := '���������';
      inc(i);
      V.Cells[row, i ].Value := '�� ��������';

      inc(row);
      i:=1;
      V.Cells[row, i ].Value := '�.�.';
      inc(i);
      V.Cells[row, i ].Value := '����';

      inc(i);
      V.Cells[row, i ].Value := '����';

      inc(i);
      V.Cells[row, i ].Value := '�����';
      inc(i);
      V.Cells[row, i ].Value := '�����������';

      inc(i);
      V.Cells[row, i ].Value := '����� �����';

{      inc(row);
      i:=1;
      V.Cells[row, i ].Value := ' ';
//      inc(i);
//      V.Cells[row, i ].Value := ' ';
      inc(i);
      V.Cells[row, i ].Value := ' ';
      inc(i);
      V.Cells[row, i ].Value := ' ';
      inc(i);
      V.Cells[row, i ].Value := ' ';
      inc(i);
      V.Cells[row, i ].Value := ' ';
}
      V.Range['A'+inttostr(row-3)+':'+'F'+inttostr(row)].Select;
      V.Columns.AutoFit;
    //  selection.autofit;


      total_count:=0;
      total_sum:=0;

      olddepname:='x';

      While not cdsTempSource.Eof
      do begin
        sql_:='select '+
           ' d.category_code,c.post_name field1 ,'+ // substr( d.category_name,1,decode((instr(d.category_name,''.'')-1),-1, length(d.category_name) ,instr(d.category_name,''.'')-1))  field2,'+
           ' quantity_post,salary_fact, null,round(quantity_post*salary_fact,2) field5,'+
           ' b.department_name'+
           ' from '+filial_schema+'.ok_stat a, ss_ok_department b, ss_ok_post c, ss_ok_category d'+
           ' where a.branch=:p_1'+ //''''+curBranch +''''+
           ' and a.department_code=:p_2'+ //cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring+
           ' and a.department_code=b.department_code'+
           ' and b.state_notes=:p_3'+ //''A'' '+
           ' and a.post_code=c.post_code'+
           ' and c.category_code=d.category_code (+)'+
           ' order by d.category_code';
          cdsTemp.close;
          with cdsTemp.Params
          do begin
              clear;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := mfo_;
              CreateParam(ftString,'p_2' ,ptInput);
              ParamByName('p_2').Value := cdsTempSource.fieldbyname('DEPARTMENT_CODE').asstring ;
              CreateParam(ftString,'p_3' ,ptInput);
              ParamByName('p_3').Value := 'A';
          end;
        loaddata(cdsTemp,sql_);
        While not cdsTemp.Eof
        do begin

            if (olddepname <>cdsTemp.Fieldbyname('department_name').AsString)
            then begin
              inc(row);
              inc(row);
              V.Cells[row, 2 ].NumberFormat := StrFormat;
              V.Cells[row, 2 ].Value := cdsTemp.Fieldbyname('department_name').AsString;
            end;
            olddepname :=cdsTemp.Fieldbyname('department_name').AsString;

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
                if col=2
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
          V.Cells[row, 1 ].Value := '����� �� �������';

          sum2_:=inttostr(total_count);
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
          sum2_:=inttostr(total_count);
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

end;

procedure TBOKEDBForm.BitBtn7Click(Sender: TObject);
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
    showmessage('������� �������');
  end else begin
    rgn_:=TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id;
    try
      App := CreateOLEObject('Excel.Application');
      WorkBook:=App.Workbooks.Open(ROOT_DIR+'OK\TEMPLATES\stat'+TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'.xls');
      MemoProt.lines.add(TimeToStr(Time)+') '+ROOT_DIR+'OK\TEMPLATES\stat'+TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'.xls');
      App.Visible := false;
//      App.Visible := true; // ��� ����� ����� ������ �� ��� �����������
      Application.ProcessMessages;
      // ��� ��
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
// 1 ���� - ���.���������
// 2 ���� - �����.���������
      loaddata(cdsTemp,
        'select a.post_code,a.post_name,nvl(b.category_name,''0'') category_name,'+
        ' nvl(b.category_rate,''0'') category_rate from ss_ok_post a, ss_ok_category b'+
        ' where a.category_code=b.category_code(+)'+
        ' order by a.post_code');


      line_ :=7;
      begin_row:=line_;
      end_row:=line_+cdsTemp.recordcount+1;
      nn:=cdsTemp.FieldCount-1;

  // ������� ���������� ������, ������� �������� ��������� �������
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


    // �������, � ������� ����� �������� ������
     Range := WorkBook.WorkSheets[1].Range[numto(1)+inttostr(begin_row)+':'+numto(5)+inttostr(end_row)];
     Range.select;
     Range.clear;
     Range.Value := ArrayData;
     Range := WorkBook.WorkSheets[1].Range[numto(1)+inttostr(begin_row-1)+':'+numto(5)+inttostr(end_row)];
     Range.columns.AutoFit;
     Application.ProcessMessages;

     MemoProt.lines.add(TimeToStr(Time)+') '+WorkBook.WorkSheets[1].name);

     WorkBook.WorkSheets[2].Select;

    // �������, � ������� ����� �������� ������
     Range := WorkBook.WorkSheets[2].Range[numto(1)+inttostr(begin_row)+':'+numto(5)+inttostr(end_row)];
     Range.select;
     Range.Value := ArrayData;
     Range := WorkBook.WorkSheets[2].Range[numto(1)+inttostr(begin_row-1)+':'+numto(5)+inttostr(end_row)];
     Range.columns.AutoFit;
     Application.ProcessMessages;

      MemoProt.lines.add(TimeToStr(Time)+') '+WorkBook.WorkSheets[2].name);

      CDS_DBBranchStat.filter :='region='''+ TData(cbRGN.Items.Objects[cbRGN.ItemIndex]).Id+'''';
      CDS_DBBranchStat.filtered := true;
      k:=2; // ����� ��������
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
        // ����� �� ������� ������� ��� ���� ����
        // ����� ��_����
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
          ' and region in (select id from V_TRANS_OK where DEAL_ID=:p_2)'); //10)');
          filial_schema  :=  cdstemp.fieldbyname('user_name').asstring; // filial_schema; // CurrentSchema;
          if filial_schema=''
          then begin
            MemoProt.lines.add(TimeToStr(Time)+') '+'��� ������� ��� �� ������� ��� "'+filial_branch+'" � ������� ss_dblink_branch');
          end else begin
            k:=k+1;
            MemoProt.lines.add(TimeToStr(Time)+') '+filial_schema);
            try
              WorkBook.WorkSheets[k].Select;
            except on e:exception
              do begin
                MemoProt.lines.add(TimeToStr(Time)+') '+'� ������� �� ������� ����� ��� ��� "'+filial_branch+'" ');
                MemoProt.lines.add(e.Message);
                WorkBook.WorkSheets[k].Select;
              end;
            end;
            WorkBook.WorkSheets[k].Cells[1,1].Value:=filial_branch;
           try
          // ������ �������  cdsTempSource
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
            end_row:= begin_row + 2*(cdsTempSource.recordcount) + kolvo_doljn_ ; // ������ + ����� ����� ���������� + 2*����� ����� ������� + 1

          // ������� ���������� ������, ������� �������� ��������� �������
            ArrayData := VarArrayCreate([1, (2*(cdsTempSource.recordcount) + kolvo_doljn_ + 1), 1, 6], varVariant);//, 1, cdsNsi.FieldCount
            j:=0; // ������� ������ �������
            line_ := 14; // ������� ������ �������� ������

            cdsTempSource.first;
            LAST_level := cdsTempSource.fieldbyname('level').AsString;
            if 1<>1 // LAST_level<>'1'
            then begin
              MemoProt.lines.add(filial_schema+') �� ��������� ������������� 1 ������. ���������� ������� ������� ����������.');
            end else begin

              LAST_DEPARTMENT_CODE := cdsTempSource.fieldbyname('DEPARTMENT_CODE').AsString;
              LAST_department_name := ' '+cdsTempSource.fieldbyname('department_name').AsString;

              LAST_level_1_name := ' ';
              LAST_level_2_name := ' ';
              LAST_level_3_name := ' ';

              if LAST_level='1' then LAST_level_1_name := LAST_department_name;
              if LAST_level='2' then LAST_level_2_name := LAST_department_name;
              if LAST_level='3' then LAST_level_3_name := LAST_department_name;
              // ����� ��������� LAST_department_name
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
            // �� �������
              CUR_level := cdsTempSource.fieldbyname('level').AsString;
              CUR_DEPARTMENT_CODE := cdsTempSource.fieldbyname('DEPARTMENT_CODE').AsString;
              CUR_department_name := cdsTempSource.fieldbyname('department_name').AsString;
              if LAST_level ='1'
              then begin
                if  (CUR_DEPARTMENT_CODE<>LAST_DEPARTMENT_CODE)
                then begin
                // ������ ��� ������
                  if  CUR_level='1'
                  then begin
                  // ����� �� LAST_DEPARTMENT_CODE � �������� ����� level_1
                    // ����� ����� LAST_level_1
                    inc(j); inc(line_);
                    ArrayData[j, 1] :=' '; // �����
                    if rgn_='26' // �������
                    then begin
                      ArrayData[j, 2] :=' ���� '+LAST_level_1_name; // ������� ����
                    end else begin
                      ArrayData[j, 2] :=' ���� '; // ������� ����
                    end;
                    ArrayData[j, 3] :=LAST_level_1_col_3; // ���� ����
                    ArrayData[j, 4] :=LAST_level_1_col_4; // ������� �����
                    ArrayData[j, 5] :=LAST_level_1_col_5; // ��������� �����������
                    ArrayData[j, 6] :=LAST_level_1_col_6; // �� ��������  ����� �����
                     if (filial_branch='00394') or (filial_branch='00883')
                     then begin
                     // ��� 394 � 883 ������������ �� ����� ������ �������
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
                    // ���������� 1 ������,
                    // ���������� ��� ������ �����
                  end;
                  // ����� ��������� ����� ���������� ������
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
                // ������ ��� ������
                  if  (CUR_level='1') or (CUR_level='2')
                  then begin
                  // ����� �� LAST_DEPARTMENT_CODE � �������� ����� level_1 ��� level_2
                    // ����� �����
                    inc(j); inc(line_);
                    ArrayData[j, 1] :=' '; // �����
                    ArrayData[j, 2] :=' ���� '+LAST_level_2_name; // ������� ����
                    ArrayData[j, 3] :=LAST_level_2_col_3; // ���� ����
                    ArrayData[j, 4] :=LAST_level_2_col_4; // ������� �����
                    ArrayData[j, 5] :=LAST_level_2_col_5; // ��������� �����������
                    ArrayData[j, 6] :=LAST_level_2_col_6; // �� ��������  ����� �����

                    LAST_level_2_col_3:='=';
                    LAST_level_2_col_4:='=';
                    LAST_level_2_col_5:='=';
                    LAST_level_2_col_6:='=';
                    LAST_level_2_name := '(4685)����='+LAST_level_2_name;

                    if (CUR_level='2')
                    then begin
                      LAST_level_2_name := CUR_department_name;
                    end;

                    if (CUR_level='1')
                    then begin
                      // �������� � ������� 1, �������� ����� �� ����������� ������ 1
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_1_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_1_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_1_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_1_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_1_col_6; // �� ��������  ����� �����
                       if (filial_branch='00394') or (filial_branch='00883')
                       then begin
                       // ��� 394 � 883 ������������ �� ����� ������ �������
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

//                  LAST_level_3_name :='(4713)����='+LAST_level_3_name;
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
                    // ���������� 2 ������,
                    // ���������� ��� ������ �����
                  end;
                  // ����� ��������� ����� ���������� ������
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
                // ������ ��� ������
                  if  (CUR_level='1') or (CUR_level='2') or (CUR_level='3')
                  then begin
                  // ����� �� LAST_DEPARTMENT_CODE � �������� ����� level_1 ��� level_2 ��� level_3
                    if  (CUR_level='1')
                    then begin
                   // ����� �� 3 LAST_DEPARTMENT_CODE
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_3_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_3_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_3_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_3_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_3_col_6; // �� ��������  ����� �����
                   // ����� �� 2
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_2_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_2_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_2_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_2_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_2_col_6; // �� ��������  ����� �����
                   // ����� �� 1
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_1_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_1_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_1_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_1_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_1_col_6; // �� ��������  ����� �����
                       if (filial_branch='00394') or (filial_branch='00883')
                       then begin
                       // ��� 394 � 883 ������������ �� ����� ������ �������
                            LAST_level_0_col_3:=LAST_level_0_col_3+'+C'+inttostr(line_);
                            LAST_level_0_col_4:=LAST_level_0_col_4+'+D'+inttostr(line_);
                            LAST_level_0_col_5:=LAST_level_0_col_5+'+E'+inttostr(line_);
                            LAST_level_0_col_6:=LAST_level_0_col_6+'+F'+inttostr(line_);
                       end;
                   // � �������� ����� level_1
                      LAST_level_1_name :=CUR_department_name;
                      LAST_level_1_col_3:='=';
                      LAST_level_1_col_4:='=';
                      LAST_level_1_col_5:='=';
                      LAST_level_1_col_6:='=';

//                      LAST_level_2_name :='(4762)����';
                      LAST_level_2_col_3:='=';
                      LAST_level_2_col_4:='=';
                      LAST_level_2_col_5:='=';
                      LAST_level_2_col_6:='=';

//                      LAST_level_3_name :='(4768)����';
                      LAST_level_3_col_3:='=';
                      LAST_level_3_col_4:='=';
                      LAST_level_3_col_5:='=';
                      LAST_level_3_col_6:='=';

                    end;
                    if  (CUR_level='2')
                    then begin
                   // ����� �� 3 LAST_DEPARTMENT_CODE
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_3_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_3_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_3_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_3_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_3_col_6; // �� ��������  ����� �����
                   // ����� �� 2
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_2_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_2_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_2_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_2_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_2_col_6; // �� ��������  ����� �����
                   // � �������� ����� level_2
                      LAST_level_2_name := CUR_department_name;
                      LAST_level_2_col_3:='=';
                      LAST_level_2_col_4:='=';
                      LAST_level_2_col_5:='=';
                      LAST_level_2_col_6:='=';

//                      LAST_level_3_name :='(4840)����';
                      LAST_level_3_col_3:='=';
                      LAST_level_3_col_4:='=';
                      LAST_level_3_col_5:='=';
                      LAST_level_3_col_6:='=';
                    end;

                    if  (CUR_level='3')
                    then begin
                   // ����� �� 3 LAST_DEPARTMENT_CODE
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_3_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_3_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_3_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_3_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_3_col_6; // �� ��������  ����� �����
                   // � �������� ����� level_3
                      LAST_level_3_name :=CUR_department_name;
                      LAST_level_3_col_3:='=';
                      LAST_level_3_col_4:='=';
                      LAST_level_3_col_5:='=';
                      LAST_level_3_col_6:='=';
                    end;


                  end;
                  if  CUR_level='4'
                  then begin
                    // ���������� 3 ������,
                    // ���������� ��� ������ �����
                  end;
                  // ����� ��������� ����� ���������� ������
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
// ����� ����������
// ������ �� ��� � ���� ������ �� OK_STAT
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
                ArrayData[j, 1] :=cdsTempDoljn.fieldbyname('post_code').asstring; // ��� ���������
                ArrayData[j, 2] :=cdsTempDoljn.fieldbyname('post_name').asstring; // ������� ����
                ArrayData[j, 3] :=cdsTempDoljn.fieldbyname('quantity_post').asstring; // ���� ����
//memoprot.lines.add(cdsTempDoljn.fieldbyname('post_code').asstring+' '+cdsTempDoljn.fieldbyname('post_name').asstring);
//memoprot.lines.add('=���(A'+inttostr(line_)+';��������!A:E;5;����)');
//                dur_line := Format('=���(A'+inttostr(line_)+';��������!A:E%s5%s����)',[ListSeparator,ListSeparator]);
//                dur_line := '���(A'+inttostr(line_)+';������!A:E;5;����)';
//memoprot.lines.add('1)'+dur_line);
//                ArrayData[j, 4] := dur_line;
                // ������� �����  =���(A176;������!A:E;5;����)
// %s
                ArrayData[j, 4] := cdsTempDoljn.fieldbyname('SALARY').asstring;
//memoprot.lines.add(cdsTempDoljn.fieldbyname('post_code').asstring+'|'+
//cdsTempDoljn.fieldbyname('post_name').asstring+'|'+
//cdsTempDoljn.fieldbyname('quantity_post').asstring+'|'+
//'SALARY='+cdsTempDoljn.fieldbyname('SALARY').asstring);
                ArrayData[j, 5] :='=+��������!L'+inttostr(nomer_filiala_po_poryadku+7); // ��������� �����������  L8 - ������ ������, L9 ������ � �.�.
                ArrayData[j, 6] :='=(D'+inttostr(line_)+'+E'+inttostr(line_)+')*C'+inttostr(line_); // �� ��������  ����� �����
                // � � �������� ��������������
                 //
                 if (filial_branch='00394') or (filial_branch='00883')
                 then begin
                 // ��� 394 � 883 ������������ �� ����� ������ �������
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

          // ����� �������,
          // ���� ��������� 3 �� ����� 3,2,1,F
          if (LAST_level='3')
          then begin
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_3_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_3_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_3_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_3_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_3_col_6; // �� ��������  ����� �����

          end;
          // ���� ��������� 2 �� ����� 2,1,F
          if (LAST_level='3') or (LAST_level='2')
          then begin
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_2_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_2_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_2_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_2_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_2_col_6; // �� ��������  ����� �����

          end;
          // ���� ��������� 1 �� ����� 1,F
          if (LAST_level='3') or (LAST_level='2') or (LAST_level='1')
          then begin
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '+LAST_level_1_name; // ������� ����
                      ArrayData[j, 3] :=LAST_level_1_col_3; // ���� ����
                      ArrayData[j, 4] :=LAST_level_1_col_4; // ������� �����
                      ArrayData[j, 5] :=LAST_level_1_col_5; // ��������� �����������
                      ArrayData[j, 6] :=LAST_level_1_col_6; // �� ��������  ����� �����

                 if (filial_branch='00394') or (filial_branch='00883')
                 then begin
                 // ��� 394 � 883 ������������ �� ����� ������ �������
                      LAST_level_0_col_3:=LAST_level_0_col_3+'+C'+inttostr(line_);
                      LAST_level_0_col_4:=LAST_level_0_col_4+'+D'+inttostr(line_);
                      LAST_level_0_col_5:=LAST_level_0_col_5+'+E'+inttostr(line_);
                      LAST_level_0_col_6:=LAST_level_0_col_6+'+F'+inttostr(line_);
                 end;
                      // ����� �����
                      inc(j); inc(line_);
                      ArrayData[j, 1] :=' '; // �����
                      ArrayData[j, 2] :=' ���� '; // ������� ����
                        ArrayData[j, 3] :=LAST_level_0_col_3; // ���� ����
                        ArrayData[j, 4] :=LAST_level_0_col_4; // ������� �����
                        ArrayData[j, 5] :=LAST_level_0_col_5; // ��������� �����������
                        ArrayData[j, 6] :=LAST_level_0_col_6; // �� ��������  ����� �����

                      ITOGO_line_:= line_;
          end;


            // �������, � ������� ����� �������� ������
             Range := WorkBook.WorkSheets[k].Range[numto(1)+inttostr(begin_row)+':'+numto(6)+inttostr(end_row)];
             Range.select;
             Range.Value := ArrayData;

// ����� ��������������
//             Range := WorkBook.WorkSheets[k].Range[numto(1)+inttostr(begin_row-1)+':'+numto(6)+inttostr(end_row)];
//             Range.columns.AutoFit;


          MyRange := WorkBook.WorkSheets[k].Range[numto(2)+inttostr(16)+':'+numto(2)+inttostr(ITOGO_line_)];
          MyRange.WrapText:=True;

          for cycle_:=15 to (ITOGO_line_-1)
          do begin
//            memoprot.lines.add(copy(ArrayData[cycle_-14,4],1,3)+')'+ArrayData[cycle_-14,4]);

            if ArrayData[cycle_-14,1]='' //
            then begin                                          // // Format('=������(A1*B1%s 2)', [ListSeparator]);
//            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=��������!M26';
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

          // ��� ������ ������
            inc(line_);
            inc(line_);

                      // � B '=��������!M'+inttostr(5+k)
            inc(line_);

               MyRange:= WorkBook.WorkSheets[k].Range[numto(2)+inttostr(line_)+':'+numto(6)+inttostr(line_)];
               MyRange.WrapText:=True;
               MyRange.select;
               MyRange.Merge;
            WorkBook.WorkSheets[k].Rows[line_].rowheight:=40;
            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=��������!M'+inttostr(5+k);

                      // ������ ������
            inc(line_);

                      // � B '=��������!S'+inttostr(5+k)
            inc(line_);
               MyRange:= WorkBook.WorkSheets[k].Range[numto(2)+inttostr(line_)+':'+numto(6)+inttostr(line_)];
               MyRange.WrapText:=True;
               MyRange.select;
               MyRange.Merge;
            WorkBook.WorkSheets[k].Rows[line_].rowheight:=40;
            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=��������!S'+inttostr(5+k);

                      // ������ ������
            inc(line_);

                      // BD '=��������!M26'   '=��������!O26'
            inc(line_);
            WorkBook.WorkSheets[k].Rows[line_].rowheight:=40;
            WorkBook.WorkSheets[k].Cells[line_,2].Font.Bold := True;
            WorkBook.WorkSheets[k].Cells[line_,2].WrapText:=True;
            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=��������!V1';

            WorkBook.WorkSheets[k].Cells[line_,4].Font.Bold := True;
            WorkBook.WorkSheets[k].Cells[line_,4].Value:='=��������!X1';

                      // ������ ������
            inc(line_);

                      // BD '=��������!M28'   '=��������!O28'
            inc(line_);
            WorkBook.WorkSheets[k].Rows[line_].rowheight:=40;
            WorkBook.WorkSheets[k].Cells[line_,2].Font.Bold := True;
            WorkBook.WorkSheets[k].Cells[line_,2].WrapText:=True;
            WorkBook.WorkSheets[k].Cells[line_,2].Value:='=��������!V3';

            WorkBook.WorkSheets[k].Cells[line_,4].Font.Bold := True;
            WorkBook.WorkSheets[k].Cells[line_,4].Value:='=��������!X3';
                      // ������ ������

            inc(line_);
          // ����� �������� �������� ����� � 7:4 � ����� � 6:6
            WorkBook.WorkSheets[k].Cells[7,4].Value:='=C'+ inttostr(ITOGO_line_);
            WorkBook.WorkSheets[k].Cells[6,6].Value:='=F'+ inttostr(ITOGO_line_);

             Application.ProcessMessages;
            MemoProt.lines.add(TimeToStr(Time)+') '+WorkBook.WorkSheets[k].name);
           end;

          except on e:exception
            do begin
              MemoProt.lines.add(TimeToStr(Time)+') '+WorkBook.WorkSheets[k].name+' �����='+inttostr(line_));
            end;  
          end;

         end;
        end;
        CDS_DBBranchStat.Next;
      end;



      // � �����
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
var  sql_  :string;
  MyRange: OLEVariant;
 Range,V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
begin

  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(ilova1.caption);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


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
    NumFormat := '# ##0.00_�_.';
    DateFormat := 'dd.mm.yyyy';
  except
    NumFormat := '# ##0,00_�_.';
    DateFormat := '��.��.����';
  end;

  MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:='                                                                                                                                                                                                                          �����-1';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=' ';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=' ';
  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=' ';

  inc(row); MyRange:= V.Range[numto(1)+inttostr(row)+':'+numto(11)+inttostr(row)];  MyRange.Merge;
    V.Cells[row,1].Value:=BANKDATE+' ��������';
  inc(row);
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//    V.Cells[row,row_j].Value:='������ ����';
//    inc(row_j);
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//     V.Cells[row,row_j].Value:='���������';
//    inc(row_j);
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//     V.Cells[row,row_j].Value:='�������������';
//    inc(row_j); //V.Cells[row,row_j].Value:='������';
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//    V.Cells[row,row_j].Value:='����� ���������';
//    inc(row_j); //V.Cells[row,row_j].Value:='���������';
//    inc(row_j);    MyRange:= V.Range[numto(row_j)+inttostr(row)+':'+numto(row_j+1)+inttostr(row+1)];  MyRange.Merge;
//    V.Cells[row,row_j].Value:='����� ������ ���������';
//    inc(row_j); //V.Cells[row,row_j].Value:='������';

    inc(row);

  row_j:=1;
  V.Cells[row,row_j].Value:='       �/�';
  inc(row_j);
  V.Cells[row,row_j].Value:='���';
  inc(row_j);
  V.Cells[row,row_j].Value:='���.�.';
  inc(row_j);
  V.Cells[row,row_j].Value:='�������';
  inc(row_j);
  V.Cells[row,row_j].Value:='���';
  inc(row_j);
  V.Cells[row,row_j].Value:='��������';
  inc(row_j);
  V.Cells[row,row_j].Value:='�����';
  inc(row_j);
  V.Cells[row,row_j].Value:='���������';
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
  V.Visible := True; //��� �������
 End;
  MemoProt.lines.add(TimeToStr(Time));
//
end;

procedure TBOKEDBForm.bClearClick(Sender: TObject);
begin
//

end;

procedure TBOKEDBForm.bbDoljnostiClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j, row_k:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
  code_,name_,count_stat_,count_fakt_ : string;
begin
//  showmessage( '� ������ �����9.doc');
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(bbDoljnosti.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


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
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
//      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;


      try

        sql_:=
        ' select sop.post_code,sop.post_name, count(okp.post_code) '+
        ' from ss_ok_post sop, '+fil_schema+'.ok_personal okp'+
        ' where sop.post_code=okp.post_code (+)'+
        ' and okp.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sop.post_code,sop.post_name'+
        ' union all'+
        ' select sop.post_code,'' !!''||sop.post_name, sum(nvl(oks.quantity_post,0))'+
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

        while not ExecPrc.eof
        do begin

          code_ := Trim(ExecPrc.Fields[0].AsString);
          name_ := copy( Trim(ExecPrc.Fields[1].AsString) ,3, length(Trim(ExecPrc.Fields[1].AsString)) );
          count_stat_ := Trim(ExecPrc.Fields[2].AsString);
          ExecPrc.next;
          // � ��������� ������ ����� �� �����
          count_fakt_ := Trim(ExecPrc.Fields[2].AsString);

          if (count_stat_<>'0') or (count_fakt_<>'0')
          then begin
            inc(row);
            V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
            V.Cells[row,2].Value := code_;
            V.Cells[row,3].WrapText := true;
            V.Cells[row,3].Value := name_;
            V.Cells[row,4].Value := count_stat_; //ExecPrc.Fields[1].FieldName;
            V.Cells[row,5].Value := count_fakt_; //ExecPrc.Fields[1].FieldName;
          end;

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('������. '+#13+
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
  V.Visible := True; //��� �������
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

procedure TBOKEDBForm.bbDepClick(Sender: TObject);
var  sql_  :string;
  MyRange: OLEVariant;
 //Range,
 V: Variant; // , Cell1, Cell2, ArrayData
 row,row_j, row_k:integer;  // begin_row,j,end_row, col,  ,nn
 NumFormat,DateFormat,StrFormat: String;
 fil_schema: String;
  code_,name_,count_stat_,count_fakt_ : string;
begin
//  showmessage( '� ������ �����9.doc');
  MemoProt.lines.add('������ '+TimeToStr(Time));
  MemoProt.lines.add(bbDep.hint);



      CDS_DBBranch.Close;
      with CDS_DBBranch.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := '10';
      end;
  loaddata(CDS_DBBranch,'select a.*,b.BANK_NAME from ss_dblink_branch a,s_mfo b'+
    ' where a.branch=b.bank_id'+  /////' and branch=''00974'' '+
    ' and a.region in (select id from V_TRANS_OK where DEAL_ID=:p_1)');


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
    if (copy(CDS_DBBranch.fieldbyname('branch').asstring,1,2))<>'09'
    then begin
//      rep_branch_:=''''+CDS_DBBranch.fieldbyname('branch').asstring+'''';
      fil_schema:=    CDS_DBBranch.fieldbyname('user_name').asstring;


      try

        sql_:=
        ' select sop.department_code,sop.department_name, count(okp.department_code) '+
        ' from ss_ok_department sop, '+fil_schema+'.ok_personal okp'+
        ' where sop.department_code=okp.department_code (+)'+
        ' and sop.DEPARTMENT_CODE NOT in (select DEPARTMENT_CODE from ss_ok_stat_over)'+
        ' and (okp.branch= :p_1 or okp.branch is null)'+
        ' and (okp.status_code in ( :p_2 , :p_3 ) or okp.status_code is null)'+
        ' group by sop.department_code,sop.department_name'+
        ' union all'+
        ' select sop.department_code,'' !!''||sop.department_name, sum(nvl(oks.quantity_post,0))'+
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

        while not ExecPrc.eof
        do begin

          code_ := Trim(ExecPrc.Fields[0].AsString);
          name_ := copy( Trim(ExecPrc.Fields[1].AsString) ,3, length(Trim(ExecPrc.Fields[1].AsString)) );
          count_stat_ := Trim(ExecPrc.Fields[2].AsString);
          ExecPrc.next;
          // � ��������� ������ ����� �� �����
          count_fakt_ := Trim(ExecPrc.Fields[2].AsString);

          if (count_stat_<>'0') or (count_fakt_<>'0')
          then begin
            inc(row);
            V.Cells[row,1].Value := ''''+CDS_DBBranch.fieldbyname('branch').asstring;
            V.Cells[row,2].Value := code_;
            V.Cells[row,3].WrapText := true;
            V.Cells[row,3].Value := name_;
            V.Cells[row,4].Value := count_stat_; //ExecPrc.Fields[1].FieldName;
            V.Cells[row,5].Value := count_fakt_; //ExecPrc.Fields[1].FieldName;
          end;

          ExecPrc.next;
        end;

      except on e:exception
        do begin
//          MemoProt.visible:=true;
//          MemoProt.clear;
          MemoProt.lines.add(sql_);
          MemoProt.lines.add(e.Message);
//          showmessage('������. '+#13+
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
  V.Visible := True; //��� �������
 End;
  MemoProt.lines.add(TimeToStr(Time));

end;

initialization
  RegisterClass(TBOKEDBForm);
finalization
  UnRegisterClass(TBOKEDBForm);

end.
