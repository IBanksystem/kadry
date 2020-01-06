unit OKRezerv;

interface                                              

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls, Grids, DBGrids, DBActns, ActnList, ComObj,OleCtnrs,errDlg,
  Buttons;

type
  TfmOKRezerv = class(TForm)
    OpenCenterPanel: TPanel;
    gbPassport: TGroupBox;
    gbPersonal: TGroupBox;
    ActionList: TActionList;
    cdbgOKRezervDetail: TClientDBGrid;
    GroupBox1: TGroupBox;
    bRezervNotepad: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    actAnketaRez: TAction;
    actLichKartaRez: TAction;
    actObiektivkaRez: TAction;
    cdbgokRezerv: TClientDBGrid;
    Button1: TButton;
    bRezervFind: TButton;
    bRezervNew: TButton;
    bRezervSave: TButton;
    bRezervCancel: TButton;
    bRezervDelete: TButton;
    chbMfo: TCheckBox;
    chbDep: TCheckBox;
    chbPost: TCheckBox;
    chbPers: TCheckBox;
    chbMfoDetail: TCheckBox;
    chbDepDetail: TCheckBox;
    chbPostDetail: TCheckBox;
    chbFamiliyDetail: TCheckBox;
    chbFirstNameDetail: TCheckBox;
    chbPatronymicDetail: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button8: TButton;
    edMfo: TEdit;
    edDep: TEdit;
    edPost: TEdit;
    edPers: TEdit;
    edMfoDetail: TEdit;
    edDepDetail: TEdit;
    edPostDetail: TEdit;
    edFamiliyDetail: TEdit;
    edFirstNameDetail: TEdit;
    edPatronymicDetail: TEdit;
    cbMfo: TComboBox;
    cbDep: TComboBox;
    cbPost: TComboBox;
    cbPers: TComboBox;
    cbMfoDetail: TComboBox;
    cbDepDetail: TComboBox;
    cbPostDetail: TComboBox;
    bExit: TButton;
    lbCheckBox11: TLabel;
    lbCheckBox12: TLabel;
    lbCheckBox13: TLabel;
    lbCheckBox14: TLabel;
    dbEdMfo: TDBEdit;
    dbEdDep: TDBEdit;
    dbedPost: TDBEdit;
    dbEdPers: TDBEdit;
    dblcbmfo: TDBLookupComboBox;
    dblcbDep: TDBLookupComboBox;
    dblcbPost: TDBLookupComboBox;
    dblcbPers: TDBLookupComboBox;
    lbCheckBox15: TLabel;
    lbCheckBox16: TLabel;
    lbCheckBox17: TLabel;
    lbCheckBox18: TLabel;
    lbCheckBox19: TLabel;
    lbCheckBox20: TLabel;
    dbEdMfoDetail: TDBEdit;
    dbEdDepDetail: TDBEdit;
    dbedPostDetail: TDBEdit;
    dbEdFamilydetail: TDBEdit;
    dbEdFirstNameDetail: TDBEdit;
    dbEdPatronymicDetail: TDBEdit;
    dblcbmfoDetail: TDBLookupComboBox;
    dblcbDepDetail: TDBLookupComboBox;
    dblcbPostDetail: TDBLookupComboBox;
    actRezervNew: TAction;
    actRezervDetailNew: TAction;
    actRezervSave: TAction;
    actRezervCancel: TAction;
    actRezervDelete: TAction;
    actRezervDetailSave: TAction;
    actRezervDetailCancel: TAction;
    actRezervDetailDelete: TAction;
    rg: TRadioGroup;
    actRezervFind: TAction;
    BitBtn80: TBitBtn;
    BitBtn77: TBitBtn;
    BitBtn78: TBitBtn;
    BitBtn79: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure edNumKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bRezervDeleteClick(Sender: TObject);
    procedure bRezervNotepadClick(Sender: TObject);
    procedure actAnketaRezExecute(Sender: TObject);
    procedure actLichKartaRezExecute(Sender: TObject);
    procedure actObiektivkaRezExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure actRezervNewExecute(Sender: TObject);
    procedure actRezervSaveExecute(Sender: TObject);
    procedure actRezervCancelExecute(Sender: TObject);
    procedure actRezervDeleteExecute(Sender: TObject);
    procedure actRezervDetailNewExecute(Sender: TObject);
    procedure actRezervDetailSaveExecute(Sender: TObject);
    procedure actRezervDetailCancelExecute(Sender: TObject);
    procedure actRezervDetailDeleteExecute(Sender: TObject);
    procedure dblcbPostCloseUp(Sender: TObject);
    procedure RefreshTarget;
    procedure cbChange(Sender: TObject);
    procedure edChange(Sender: TObject);
    procedure actRezervFindExecute(Sender: TObject);
    procedure BitBtn80Click(Sender: TObject);
    procedure BitBtn78Click(Sender: TObject);
    procedure BitBtn77Click(Sender: TObject);
    procedure BitBtn79Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);

  private
    { Private declarations }
  public
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
  TData3 = class
  private
    FId: string;
    FName: string;
    FFileName: string;
  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
    property FileName: string read FFileName write FFileName;
  end;
  TData5 = class
  private
    FId: string;
    FName: string;
    FFamily: string;
    FFirstName: string;
    FPatronymic: string;
  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
    property Family: string read FFamily write FFamily;
    property FirstName: string read FFirstName write FFirstName;
    property Patronymic: string read FPatronymic write FPatronymic;
  end;

const
  SQL_Pers = 'select branch, personal_code, '+
    ' family||'' ''||first_name||'' ''||patronymic fio'+
    ' from ok_personal where status_code=2';
  SQL_Pers_source = 'select branch, to_char(personal_code) id, '+
    ' family||'' ''||first_name||'' ''||patronymic name,'+
    ' family, first_name, patronymic'+
    ' from ok_personal where status_code=2';

  SQL_SMfo ='select bank_id , bank_name  from s_mfo '+
           ' where header_id in ' +
           '(select header_id from s_mfo where bank_id=info.getbranch)';
  SQL_SMfo_source ='select bank_id id, bank_name name from s_mfo '+
           ' where header_id in ' +
           '(select header_id from s_mfo where bank_id=info.getbranch)';

  SQL_RezervDepartment = 'select * from ss_ok_department where state_notes=''A'' ';
  SQL_RezervDepartment_source = 'select to_char(department_code) id, department_name name '+
    ' from ss_ok_department where state_notes=''A'' ';

  SQL_RezervPost = 'select * from ss_ok_post where state_notes=''A'' ';
  SQL_RezervPost_source = 'select to_char(post_code) id, post_name name '+
    ' from ss_ok_post where state_notes=''A'' ';

var
  fmOKRezerv : TfmOKRezerv;
//  IsNotChange : boolean;
implementation

uses BOKMain;

{$R *.dfm}

procedure TfmOKRezerv.edNumKeyPress(Sender: TObject; var Key: Char);
begin
//  If not (Key in ['0'..'9',#8]) Then
//    Begin Key := #0; MessageBeep(0); End;
end;

procedure TfmOKRezerv.FormCreate(Sender: TObject);
begin

  BOKForm := TBOKForm(owner);

  if     BOKmain.BossLevel = '0'
  then begin
    actRezervNew.Enabled := False;
    actRezervDetailNew.enabled := False;
    actRezervSave.enabled := False;
    actRezervCancel.enabled := False;
    actRezervDelete.enabled := False;
    actRezervDetailSave.enabled := False;
    actRezervDetailCancel.enabled := False;
    actRezervDetailDelete.enabled := False;
  end;

end;

procedure TfmOKRezerv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  SourceFieldName, ThatFieldName,sql_ : string;
  i : integer;
  CDS : TDataset;
  CB : TComboBox;

begin
  Case Key of
    VK_RETURN: SelectNext(ActiveControl, True, True);
{
object edMfo:
object edDep:
object edPost:
object edPers:
object cbPers:
object cbPost:
object cbDep:
object cbMfo:
object edMfoDetail:
object edDepDetail:
object edPostDetail:
object cbPostDetail:
object cbDepDetail:
object cbMfoDetail:
object edFamiliyDetail:
object edFirstNameDetail:
object edPatronymicDetail:

object dbEdMfo:
object dbEdDep:
object dbedPost:
object dbEdPers:
object dblcbPers:
object dblcbPost:
object dblcbDep:
object dblcbmfo:
object dbEdMfoDetail:
object dblcbmfoDetail:
object dblcbDepDetail:
object dbEdDepDetail:
object dbedPostDetail:
object dblcbPostDetail:
object dbEdFamilydetail:
object dbEdFirstNameDetail:
object dbEdPatronymicDetail:
}

    VK_F9:
      Begin
        SourceFieldName := 'name';
        cds := BOKForm.cdsOKRezerv;

        IF (Sender = edMfo )
        or (Sender = edDep )
        or (Sender = edPost )
        or (Sender = edPers )
        or (Sender = cbPers )
        or (Sender = cbPost )
        or (Sender = cbDep )
        or (Sender = cbMfo )
        or (Sender = edMfoDetail )
        or (Sender = edDepDetail )
        or (Sender = edPostDetail )
        or (Sender = cbPostDetail )
        or (Sender = cbDepDetail )
        or (Sender = cbMfoDetail )
        or (Sender = edFamiliyDetail )
        or (Sender = edFirstNameDetail )
        or (Sender = edPatronymicDetail )
        or (Sender = dbEdMfo )
        or (Sender = dbEdDep )
        or (Sender = dbedPost )
        or (Sender = dbEdPers )
        or (Sender = dblcbPers )
        or (Sender = dblcbPost )
        or (Sender = dblcbDep )
        or (Sender = dblcbmfo )
        or (Sender = dbEdMfoDetail )
        or (Sender = dblcbmfoDetail )
        or (Sender = dblcbDepDetail )
        or (Sender = dbEdDepDetail )
        or (Sender = dbedPostDetail )
        or (Sender = dblcbPostDetail )
        or (Sender = dbEdFamilydetail )
        or (Sender = dbEdFirstNameDetail )
        or (Sender = dbEdPatronymicDetail )
        THEN BEGIN

          if       (Sender = edMfo )
                or (Sender = cbMfo )
          then begin
            sql_:= SQL_SMfo_source;
            ThatFieldName := 'branch_show';
          end;

          if       (Sender = dbEdMfo )
                or (Sender = dblcbmfo )
          then begin
            sql_:= SQL_SMfo_source;
            ThatFieldName := 'branch_show';
            SourceFieldName := 'id';
          end;

          if       (Sender = edMfoDetail )
                or (Sender = cbMfoDetail )
          then begin
            sql_:= SQL_SMfo_source;
            ThatFieldName := 'branch_show';
            cds := BOKForm.cdsOKRezervDetail;
          end;

          if       (Sender = dbEdMfoDetail )
                or (Sender = dblcbmfoDetail )
          then begin
            sql_:= SQL_SMfo_source;
            ThatFieldName := 'branch_show';
            cds := BOKForm.cdsOKRezervDetail;
            SourceFieldName := 'id';
          end;

          if       (Sender = edDep )
                or (Sender = cbDep )
          then begin
            sql_:= SQL_RezervDepartment_source;
            ThatFieldName := 'department_code';
          end;

          if       (Sender = dbEdDep )
                or (Sender = dblcbDep )
          then begin
            sql_:= SQL_RezervDepartment_source;
            ThatFieldName := 'department_code';
            SourceFieldName := 'id';
          end;

          if       (Sender = edDepDetail )
                or (Sender = cbDepDetail )
          then begin
            sql_:= SQL_RezervDepartment_source;
            ThatFieldName := 'department_code';
            cds := BOKForm.cdsOKRezervDetail;
          end;

          if       (Sender = dblcbDepDetail )
                or (Sender = dbEdDepDetail )
          then begin
            sql_:= SQL_RezervDepartment_source;
            ThatFieldName := 'department_code';
            cds := BOKForm.cdsOKRezervDetail;
            SourceFieldName := 'id';
          end;

          if       (Sender = edPost )
                or (Sender = cbPost )
          then begin
            sql_:= SQL_RezervPost_source;
            ThatFieldName := 'post_code';
          end;

          if       (Sender = dbedPost )
                or (Sender = dblcbPost )
          then begin
            sql_:= SQL_RezervPost_source;
            ThatFieldName := 'post_code';
            SourceFieldName := 'id';
          end;

          if       (Sender = edPostDetail )
                or (Sender = cbPostDetail )
          then begin
            sql_:= SQL_RezervPost_source;
            ThatFieldName := 'post_code';
            cds := BOKForm.cdsOKRezervDetail;
          end;

          if       (Sender = dbedPostDetail )
                or (Sender = dblcbPostDetail )
          then begin
            sql_:= SQL_RezervPost_source;
            ThatFieldName := 'post_code';
            cds := BOKForm.cdsOKRezervDetail;
            SourceFieldName := 'id';
          end;

          if       (Sender = dbEdPers )
                or (Sender = dblcbPers )
          then begin
            sql_:= SQL_Pers_source;
            ThatFieldName := 'personal_code';
            SourceFieldName := 'id';
          end;

          if       (Sender = edPers )
                or (Sender = cbPers )
          then begin
            sql_:= SQL_Pers_source;
            ThatFieldName := 'personal_code';
          end;

          if       (Sender = edFamiliyDetail    )
                or (Sender = edFirstNameDetail  )
                or (Sender = edPatronymicDetail )
          then begin
            sql_:= SQL_Pers_source;
            ThatFieldName := 'personal_code';
            cds := BOKForm.cdsOKRezervDetail;
            SourceFieldName := 'personal_fio';
          end;

          if       (Sender = dbEdFamilydetail     )
                or (Sender = dbEdFirstNameDetail  )
                or (Sender = dbEdPatronymicDetail )
          then begin
            sql_:= SQL_Pers_source;
            ThatFieldName := 'personal_code';
            cds := BOKForm.cdsOKRezervDetail;
            SourceFieldName := 'personal_fio';
          end;

          BOKForm.LoadData(BOKForm.Source, sql_ ,True);
          BOKForm.Source.Edit;

          With TSelectDialog.CreateEx(Self, BOKForm.Source, BOKForm.Source, BOKForm.Source.FindField('id').Index) do
          Try
           If ShowModal = mrOk
           Then begin

// для дб обьектов
           IF (Sender = dbEdMfo )
                or (Sender = dbEdDep )
                or (Sender = dbedPost )
                or (Sender = dbEdPers )
                or (Sender = dblcbPers )
                or (Sender = dblcbPost )
                or (Sender = dblcbDep )
                or (Sender = dblcbmfo )
                or (Sender = dbEdMfoDetail )
                or (Sender = dblcbmfoDetail )
                or (Sender = dblcbDepDetail )
                or (Sender = dbEdDepDetail )
                or (Sender = dbedPostDetail )
                or (Sender = dblcbPostDetail )
                or (Sender = dbEdFamilydetail )
                or (Sender = dbEdFirstNameDetail )
                or (Sender = dbEdPatronymicDetail )
            THEN BEGIN
//            CDS := 'соответствующий датасет';
              if not (cds.State in [dsEdit, dsInsert])
              then cds.Edit;

              if SourceFieldName='personal_fio'
              then begin
                cds.FieldByName( 'FAMILY' ).AsString :=
                  Source.FieldByName( 'FAMILY' ).AsString;
                cds.FieldByName( 'FIRST_NAME' ).AsString :=
                  Source.FieldByName( 'FIRST_NAME' ).AsString;
                cds.FieldByName( 'PATRONYMIC' ).AsString :=
                  Source.FieldByName( 'PATRONYMIC' ).AsString;
              end else begin
                cds.FieldByName( ThatFieldName ).AsString :=
                  Source.FieldByName( SourceFieldName ).AsString;
              end;
            END;
// END для дб обьектов

// для не дб обьектов (комбобокс-едит)
            if     (Sender = edFamiliyDetail )
                or (Sender = edFirstNameDetail )
                or (Sender = edPatronymicDetail )
            then begin
                  edFamiliyDetail.Text :=
                    Source.FieldByName( 'FAMILY' ).AsString;
                  edFirstNameDetail.Text :=
                    Source.FieldByName( 'FIRST_NAME' ).AsString;
                  edPatronymicDetail.Text :=
                    Source.FieldByName( 'PATRONYMIC' ).AsString;

            end;
//            CB := 'соответствующий комбобокс';
//              CB := OKRezerv.fmOKRezerv.findComponent( , );
           IF (Sender = edMfo )
                or (Sender = edDep )
                or (Sender = edPost )
                or (Sender = edPers )
                or (Sender = cbPers )
                or (Sender = cbPost )
                or (Sender = cbDep )
                or (Sender = cbMfo )
                or (Sender = edMfoDetail )
                or (Sender = edDepDetail )
                or (Sender = edPostDetail )
                or (Sender = cbPostDetail )
                or (Sender = cbDepDetail )
                or (Sender = cbMfoDetail )
           THEN BEGIN
              if Sender.ClassType=TComboBox
              then CB := TComboBox(Sender)
//              if Sender.ClassType=TEdit
//              then //CB := TCombobox(findcomponent('cb'+ copy( TEdit(Sender).name ,3,length( TEdit(Sender).name )-2)));
//showmessage ( IntToStr(length( TEdit(Sender).name ))+#13+TEdit(Sender).name+#13+ copy( TEdit(Sender).name ,3,length( TEdit(Sender).name )-2) );
//showmessage (TCombobox(findcomponent('cb'+ copy( TEdit(Sender).name ,3,length( TEdit(Sender).name )-2))).name);
//showmessage(           'cb'+ copy( TEdit(Sender).name ,3,length( TEdit(Sender).name )-2) );
//showmessage( 'cb'+copy( TEdit(Sender).name ,3,length( TEdit(Sender).name )-2)  );
              else
                CB := TCombobox(self.findcomponent( 'cb'+ copy( TEdit(Sender).name ,3,length( TEdit(Sender).name )-2) ));

            for i:=1 to CB.Items.Count
            do begin
              if BOKForm.Source.FieldByName('id').AsString =
                   TData(CB.Items.Objects[ i-1 ]).Id
              then begin
                CB.ItemIndex := i-1;
                cbChange( CB );
              end;
            end;

           END;

// END для не дб обьектов (комбобокс-едит)

           end;
          Finally
            Destination.Filtered:=false;
            Free;
          End;

        END;
      End;
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

  End;

end;

procedure TfmOKRezerv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  If ModalResult = mrCancel Then Exit;
end;

procedure TfmOKRezerv.FormShow(Sender: TObject);
var sql_ : string;
begin

  RefreshTarget;
// загрузка наборов данных для look-up полей
  Try
    sql_ :=  SQL_SMfo;
    bokmain.BOKForm.LoadData( bokmain.BOKForm.cdsSMfo1, SQL_SMfo);
    bokmain.BOKForm.LoadData( bokmain.BOKForm.cdsSMfo2, SQL_Smfo);

    sql_ := SQL_RezervDepartment;
    bokmain.BOKForm.LoadData( bokmain.BOKForm.cdsOKRezervDep1, SQL_RezervDepartment);
    bokmain.BOKForm.LoadData( bokmain.BOKForm.cdsOKRezervDep2, SQL_RezervDepartment);

    sql_ := SQL_RezervPost;
    bokmain.BOKForm.LoadData( bokmain.BOKForm.cdsOKRezervPost1, SQL_RezervPost);
    bokmain.BOKForm.LoadData( bokmain.BOKForm.cdsOKRezervPost2, SQL_RezervPost);

    sql_ := SQL_Pers;
    bokmain.BOKForm.LoadData( bokmain.BOKForm.cdsPers, SQL_Pers);
// END загрузка наборов данных для look-up полей

    sql_ := bokmain.SQL_OKRezerv;
    bokmain.BOKForm.LoadData(bokmain.BOKForm.cdsOKRezerv,      bokmain.SQL_OKRezerv +' where p.branch = '+''''+curBranch +'''' );
  Except
  on E: Exception do
    Begin
      ShowMessage(sql_+#13+E.Message);
//      ShowMessage(SQL_OKRezerv+' where '+ PersonalCode+
//        PostCode+Branchcode+DepartmentCode+#13+E.Message);
    End;
  End;
  bokmain.BOKForm.cdsOKRezerv.Close;

  bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezerv, bokmain.BOKForm.cdsOKRezervDep1,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);

  bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezerv, bokmain.BOKForm.cdsOKRezervPost1,
                'post_show', 'post_code',
                'post_code', 'post_name', False);

  bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezerv, bokmain.BOKForm.cdspers,
                'fio', 'personal_code',
                'personal_code', 'fio', False);

  bokmain.BOKForm.cdsOKRezerv.Open;
  bokmain.BOKForm.cdsOKRezerv.EnableControls;

  if bokmain.BossLevel<>'0'
  then begin
    bokmain.BOKForm.cdsOKRezerv.edit;
    bokmain.BOKForm.cdsOKRezerv.Cancel;
  end;

  Try
    bokmain.BOKForm.LoadData(bokmain.BOKForm.cdsOKRezervDetail,
          bokmain.SQL_OKRezervDetail );
//    LoadData(cdsOKRezerv,      SQL_OKRezerv+' where '+ PersonalCode+
//        PostCode+Branchcode+DepartmentCode);
  Except
  on E: Exception do
    Begin
      ShowMessage(bokmain.SQL_OKRezervDetail+#13+E.Message);
//      ShowMessage(SQL_OKRezerv+' where '+ PersonalCode+
//        PostCode+Branchcode+DepartmentCode+#13+E.Message);
    End;
  End;
  bokmain.BOKForm.cdsOKRezervDetail.Close;

  bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezervDetail, bokmain.BOKForm.cdsOKRezervDep2,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);

  bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezervDetail, bokmain.BOKForm.cdsOKRezervPost2,
                'post_show', 'post_code',
                'post_code', 'post_name', False);
  bokmain.BOKForm.cdsOKRezervDetail.Open;
  bokmain.BOKForm.cdsOKRezervDetail.EnableControls;

  if bokmain.BossLevel<>'0'
  then begin
    bokmain.BOKForm.cdsOKRezervDetail.edit;
    bokmain.BOKForm.cdsOKRezervDetail.Cancel;
  end;


{
  if not cdsEdPost.active
  then begin
    LoadData(cdsEdPost,'SELECT /*+ INDEX (d ss_ok_post_pk)*/ b.branch,'+
       ' b.salary_code id, d.post_name name, c.post_code, c.department_code'+
                ' from ok_stat_salary b, ok_stat c, ss_ok_post d'+
                ' where b.branch=c.branch'+
                ' and b.stat_code=c.stat_code'+
                ' and c.post_code=d.post_code'+
                ' and d.rezerv_code=2'+
                ' and d.state_notes like ''A'' ',True);
  end;
}
{
  if not cdsSmfo.active
  then begin
    LoadData(cdsSmfo,'select a.bank_id id, a.bank_name name'+
          ' from s_mfo a where a.header_id=(select b.header_id from s_mfo b where b.bank_id='''+Branch+''') ',True);
  end;
}
{
  Try
    if not cdsPost.Active then LoadData(cdsPost, SQL_Post);
  Except
    on E: Exception do
    Begin
      ShowMessage(SQL_Post+#13+E.Message);
    End;
  End;
}
{
  if not cdsDepartment.Active Then LoadData(cdsDepartment,'select a.department_code id, a.department_name name'+
                  ' from ss_ok_department a ');

  if not cdsSalaryDepartment.Active then LoadData(cdsSalaryDepartment, SQL_SalaryDepartment);

  if not cdsSalaryPost.Active then LoadData(cdsSalaryPost, SQL_SalaryPost);

  if not cdsSalaryPersonal.Active then LoadData(cdsSalaryPersonal, SQL_SalaryPersonal);

  if not cdsPersonalDepartment.Active then LoadData(cdsPersonalDepartment, SQL_PersonalDepartment);

  if not cdsPersonalPost.Active then LoadData(cdsPersonalPost, SQL_PersonalPost);

  if not cdsPersonal.Active then LoadData(cdsPersonal, SQL_Personal);
}
{
  cdsOKRezerv.DisableControls;
  LoadData(cdsOKRezerv,      SQL_OKRezerv);
  cdsOKRezerv.Close;
}

// добавление смотрящих-выше-полей

// ключ branch;salary_code
// department_code_show из branch;salary_code
//- post_show из branch;salary_code
//+- personal_code_show из branch;salary_code

// ключ branch;personal_code (rezerv_branch;rezerv_personal_code)
// rezerv_department_code_show из rezerv_branch;ok_personal.salary_code
//- rezerv_post_show
//+- rezerv_personal_code_show
{
  BOKForm.addLookUpField(cdsOKRezerv, cdsSalaryDepartment, 'department_show', 'branch;salary_code', 'branch;salary_code', 'department_name', True);
//  BOKForm.addLookUpField(cdsOKRezerv, cdsSalaryDepartment, 'department_show', 'salary_code', 'salary_code', 'department_name', True);

  BOKForm.addLookUpField(cdsOKRezerv, cdsSalaryPost, 'post_show', 'branch;salary_code', 'branch;salary_code', 'post_name', False);
  BOKForm.addLookUpField(cdsOKRezerv, cdsSalaryPersonal, 'personal_show', 'branch;salary_code', 'branch;salary_code', 'personal_data', False);
  BOKForm.addLookUpField(cdsOKRezerv, cdsSalaryPersonal, 'personal', 'branch;salary_code', 'branch;salary_code', 'personal_code', False);

  BOKForm.addLookUpField(cdsOKRezerv, cdsPersonalDepartment, 'rezerv_department_show', 'rezerv_branch;rezerv_personal_code', 'branch;personal_code', 'department_name', False);
  BOKForm.addLookUpField(cdsOKRezerv, cdsPersonalPost, 'rezerv_post_show', 'rezerv_branch;rezerv_personal_code', 'branch;personal_code', 'post_name', False);
  BOKForm.addLookUpField(cdsOKRezerv, cdsPersonal, 'rezerv_personal_show', 'rezerv_branch;rezerv_personal_code', 'branch;id', 'personal_data', False);

  cdsOKRezerv.Open;
  cdsOKRezerv.EnableControls;

  cdsPoisk.Close;
  LoadData(cdsPoisk,      SQL_Poisk_EMPTY);
  cdsPoisk.Open;
  cdsPoisk.Insert;
}
end;

procedure TfmOKRezerv.bRezervDeleteClick(Sender: TObject);
begin
  cdbgOKRezerv.Focused;
  bokForm.cdsOKRezerv.Delete;
//  bokForm.cdsOKREZERVAfterPost(dsOKRezerv.DataSet);

end;

procedure TfmOKRezerv.bRezervNotepadClick(Sender: TObject);
begin
  BOKForm.GetRef(cdbgOKRezerv);
end;

procedure TfmOKRezerv.actAnketaRezExecute(Sender: TObject);
var where_clause : string;
begin

  if bokform.cdsOKRezervDetail.FieldByName('patronymic').AsString=''
  then begin
    where_clause :=
        ' where p.branch='''+bokform.cdsOKRezervDetail.FieldByName('branch_show').AsString+''''+
        ' and p.department_code='''+bokform.cdsOKRezervDetail.FieldByName('department_code').AsString+''''+
        ' and p.post_code='''+bokform.cdsOKRezervDetail.FieldByName('post_code').AsString+''''+
        ' and p.FAMILY='''+bokform.cdsOKRezervDetail.FieldByName('family').AsString+''''+
        ' and p.first_name='''+bokform.cdsOKRezervDetail.FieldByName('first_name').AsString+'''';
  end else begin
    where_clause :=
        ' where p.branch='''+bokform.cdsOKRezervDetail.FieldByName('branch_show').AsString+''''+
        ' and p.department_code='''+bokform.cdsOKRezervDetail.FieldByName('department_code').AsString+''''+
        ' and p.post_code='''+bokform.cdsOKRezervDetail.FieldByName('post_code').AsString+''''+
        ' and p.FAMILY='''+bokform.cdsOKRezervDetail.FieldByName('family').AsString+''''+
        ' and p.first_name='''+bokform.cdsOKRezervDetail.FieldByName('first_name').AsString+''''+
        ' and p.patronymic='''+bokform.cdsOKRezervDetail.FieldByName('patronymic').AsString+'''';
  end;

  bokmain.BOKForm.cdsOKPersonal.BeforePost := nil;
  bokmain.BOKForm.cdsOKPersonal.DisableControls;

  try
    bokmain.BOKForm.LoadData(  bokmain.BOKForm.cdsOKPersonal,    bokmain.SQL_OKPersonal+where_clause);
  Except
    on E: Exception do
    Begin
      ShowMessage(bokmain.SQL_OKPersonal+where_clause+#13+E.Message);
    End;
  End;

  bokmain.BOKForm.cdsOKPersonal.Close;

// добавление смотрящих-выше-полей
  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOKDepartment_RO,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOKPost_SET,
                'post_show', 'post_code',
                'post_code', 'post_name', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOKmotive_SET,
                'motive_show', 'motive_dismissial_code',
                'motive_dismissial_code', 'motive_dismissial_name', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSokgender_Set,
    'GENDER_SHOW', 'GENDER_CODE',
    'GENDER_CODE', 'GENDER_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSDistrRO2,
    'DISTR_SHOW', 'DISTR',
    'DISTR', 'DISTR_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkNationality_Set,
    'NATIONALITY_SHOW', 'NATIONALITY_CODE',
    'NATIONALITY_CODE', 'NATIONALITY_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkFamilyStatus_Set,
    'FAMILY_STATUS_SHOW', 'FAMILY_STATUS_CODE',
    'FAMILY_STATUS_CODE', 'FAMILY_STATUS_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkRegType_Set,
    'REG_TYPE_SHOW', 'REG_TYPE_CODE',
    'REG_TYPE_CODE', 'REG_TYPE_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkSTATUS_Set,
    'STATUS_SHOW', 'STATUS_CODE',
    'STATUS_CODE', 'STATUS_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkProfmember_Set,
    'Profmember_SHOW', 'Profmember',
    'Profmember', 'Profmember_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsUsers,
    'emp_name', 'emp_code',
    'emp_code', 'emp_NAME', False);

// END добавление смотрящих-выше-полей

  bokmain.BOKForm.cdsOKPersonal.Open;
  bokmain.BOKForm.cdsOKPersonal.EnableControls;

  bokmain.BOKForm.cdsOKPersonal.BeforePost :=   bokmain.BOKForm.cdsOK_BeforePost;

  if bokmain.BOKForm.cdsOKPersonal.IsEmpty
  then begin
    showmessage('Нет данных по МФО '+bokform.cdsOKRezervDetail.FieldByName('branch_show').AsString+#13+
        ' по сотруднику'+#13+
        ' Фамилия  '+bokform.cdsOKRezervDetail.FieldByName('family').AsString+#13+
        ' Имя      '+bokform.cdsOKRezervDetail.FieldByName('first_name').AsString+#13+
        ' Отчество '+bokform.cdsOKRezervDetail.FieldByName('patronymic').AsString);
  end else begin
    bokmain.BOKForm.actAnketa.Execute;
  end;

end;

procedure TfmOKRezerv.actLichKartaRezExecute(Sender: TObject);
//var where_clause : string;
begin
{
  where_clause :=
        ' where FAMILY='''+bokform.cdsOKRezerv.FieldByName('rezerv_personal_family').AsString+''''+
        ' and first_name='+bokform.cdsOKRezerv.FieldByName('rezerv_personal_name').AsString+''''+
        ' and patronymic='+bokform.cdsOKRezerv.FieldByName('rezerv_personal_patronymic').AsString+'''';

  bokmain.BOKForm.cdsOKPersonal.BeforePost := nil;
  bokmain.BOKForm.cdsOKPersonal.DisableControls;

  LoadData(  bokmain.BOKForm.cdsOKPersonal,    bokmain.SQL_OKPersonal+where_clause);
  bokmain.BOKForm.cdsOKPersonal.Close;

// добавление смотрящих-выше-полей
  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOKDepartment_RO,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOKPost_SET,
                'post_show', 'post_code',
                'post_code', 'post_name', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOKmotive_SET,
                'motive_show', 'motive_dismissial_code',
                'motive_dismissial_code', 'motive_dismissial_name', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSokgender_Set,
    'GENDER_SHOW', 'GENDER_CODE',
    'GENDER_CODE', 'GENDER_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSDistrRO2,
    'DISTR_SHOW', 'DISTR',
    'DISTR', 'DISTR_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkNationality_Set,
    'NATIONALITY_SHOW', 'NATIONALITY_CODE',
    'NATIONALITY_CODE', 'NATIONALITY_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkFamilyStatus_Set,
    'FAMILY_STATUS_SHOW', 'FAMILY_STATUS_CODE',
    'FAMILY_STATUS_CODE', 'FAMILY_STATUS_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkRegType_Set,
    'REG_TYPE_SHOW', 'REG_TYPE_CODE',
    'REG_TYPE_CODE', 'REG_TYPE_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkSTATUS_Set,
    'STATUS_SHOW', 'STATUS_CODE',
    'STATUS_CODE', 'STATUS_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkProfmember_Set,
    'Profmember_SHOW', 'Profmember',
    'Profmember', 'Profmember_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsUsers,
    'emp_name', 'emp_code',
    'emp_code', 'emp_NAME', False);

// END добавление смотрящих-выше-полей

  bokmain.BOKForm.cdsOKPersonal.Open;
  bokmain.BOKForm.cdsOKPersonal.EnableControls;

  bokmain.BOKForm.cdsOKPersonal.BeforePost :=   bokmain.BOKForm.cdsOKPersonalBeforePost;

  bokmain.BOKForm.actLichKartaA.Execute;
  bokmain.BOKForm.actLichKartaB.Execute;
}
end;

procedure TfmOKRezerv.actObiektivkaRezExecute(Sender: TObject);
var where_clause : string;
begin

  if bokform.cdsOKRezervDetail.FieldByName('patronymic').AsString=''
  then begin
    where_clause :=
        ' where p.branch='''+bokform.cdsOKRezervDetail.FieldByName('branch_show').AsString+''''+
        ' and p.department_code='''+bokform.cdsOKRezervDetail.FieldByName('department_code').AsString+''''+
        ' and p.post_code='''+bokform.cdsOKRezervDetail.FieldByName('post_code').AsString+''''+
        ' and p.FAMILY='''+bokform.cdsOKRezervDetail.FieldByName('family').AsString+''''+
        ' and p.first_name='''+bokform.cdsOKRezervDetail.FieldByName('first_name').AsString+'''';
  end else begin
    where_clause :=
        ' where p.branch='''+bokform.cdsOKRezervDetail.FieldByName('branch_show').AsString+''''+
        ' and p.department_code='''+bokform.cdsOKRezervDetail.FieldByName('department_code').AsString+''''+
        ' and p.post_code='''+bokform.cdsOKRezervDetail.FieldByName('post_code').AsString+''''+
        ' and p.FAMILY='''+bokform.cdsOKRezervDetail.FieldByName('family').AsString+''''+
        ' and p.first_name='''+bokform.cdsOKRezervDetail.FieldByName('first_name').AsString+''''+
        ' and p.patronymic='''+bokform.cdsOKRezervDetail.FieldByName('patronymic').AsString+'''';
  end;

  bokmain.BOKForm.cdsOKPersonal.BeforePost := nil;
  bokmain.BOKForm.cdsOKPersonal.DisableControls;

  bokmain.BOKForm.LoadData(  bokmain.BOKForm.cdsOKPersonal,    bokmain.SQL_OKPersonal+where_clause);
  bokmain.BOKForm.cdsOKPersonal.Close;

// добавление смотрящих-выше-полей
  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOKDepartment_RO,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOKPost_SET,
                'post_show', 'post_code',
                'post_code', 'post_name', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOKmotive_SET,
                'motive_show', 'motive_dismissial_code',
                'motive_dismissial_code', 'motive_dismissial_name', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSokgender_Set,
    'GENDER_SHOW', 'GENDER_CODE',
    'GENDER_CODE', 'GENDER_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSDistrRO2,
    'DISTR_SHOW', 'DISTR',
    'DISTR', 'DISTR_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkNationality_Set,
    'NATIONALITY_SHOW', 'NATIONALITY_CODE',
    'NATIONALITY_CODE', 'NATIONALITY_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkFamilyStatus_Set,
    'FAMILY_STATUS_SHOW', 'FAMILY_STATUS_CODE',
    'FAMILY_STATUS_CODE', 'FAMILY_STATUS_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkRegType_Set,
    'REG_TYPE_SHOW', 'REG_TYPE_CODE',
    'REG_TYPE_CODE', 'REG_TYPE_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkSTATUS_Set,
    'STATUS_SHOW', 'STATUS_CODE',
    'STATUS_CODE', 'STATUS_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsSSOkProfmember_Set,
    'Profmember_SHOW', 'Profmember',
    'Profmember', 'Profmember_NAME', False);

  bokmain.BOKForm.addLookUpField(
    bokmain.BOKForm.cdsOKPersonal,
    bokmain.BOKForm.cdsUsers,
    'emp_name', 'emp_code',
    'emp_code', 'emp_NAME', False);

// END добавление смотрящих-выше-полей

  bokmain.BOKForm.cdsOKPersonal.Open;
  bokmain.BOKForm.cdsOKPersonal.EnableControls;

  bokmain.BOKForm.cdsOKPersonal.BeforePost :=   bokmain.BOKForm.cdsOK_BeforePost;

  if bokmain.BOKForm.cdsOKPersonal.IsEmpty
  then begin
    showmessage('Нет данных по МФО '+bokform.cdsOKRezervDetail.FieldByName('branch_show').AsString+#13+
        ' по сотруднику'+#13+
        ' Фамилия  '+bokform.cdsOKRezervDetail.FieldByName('family').AsString+#13+
        ' Имя      '+bokform.cdsOKRezervDetail.FieldByName('first_name').AsString+#13+
        ' Отчество '+bokform.cdsOKRezervDetail.FieldByName('patronymic').AsString);
  end else begin
    bokmain.BOKForm.actObiektivka.Execute;
  end;

end;

procedure TfmOKRezerv.Button1Click(Sender: TObject);
begin
  BOKForm.GetRef(cdbgOKRezervDetail);

end;

procedure TfmOKRezerv.actRezervNewExecute(Sender: TObject);
begin
//
  bokmain.BOKForm.cdsOKRezerv.Insert;
end;

procedure TfmOKRezerv.actRezervSaveExecute(Sender: TObject);
var v : variant;
    i : integer;
    ErMes : string;
begin

  ErMes := '';
  
  if    (BOKForm.cdsOKRezerv.fieldByname('branch_show').asstring<>'')
    and (BOKForm.cdsOKRezerv.fieldByname('department_code').asstring<>'')
    and (BOKForm.cdsOKRezerv.fieldByname('post_code').asstring<>'')
  then begin

    v := BOKForm.GetSqlResult('select personal_code from ok_personal '+
      ' where branch='''+BOKForm.cdsOKRezerv.fieldByname('branch_show').asstring+''' '+
      ' and department_code='+BOKForm.cdsOKRezerv.fieldByname('department_code').asstring+
      ' and post_code='+BOKForm.cdsOKRezerv.fieldByname('post_code').asstring+
      ' and status_code=2'+
      ' and rownum=1');
    if not varisnull(v)
    then begin
      i:=v;
      BOKForm.cdsOKRezerv.fieldByname('personal_code').asstring := IntToStr(i);
    end else begin
      showmessage('Не найден сотрудник в'+#13+
        'МФО : '+ BOKForm.cdsOKRezerv.fieldByname('branch_show').asstring+#13+
        'Отдел : '+ BOKForm.cdsOKRezerv.fieldByname('department_show').asstring +#13+
        'Должность : '+BOKForm.cdsOKRezerv.fieldByname('post_show').asstring);
    end;

  end else begin

    if    (BOKForm.cdsOKRezerv.fieldByname('branch_show').asstring='')
    then begin
      ErMes := ErMes+#13+'МФО '+BOKForm.cdsOKRezerv.fieldByname('branch_show').asstring;
    end;

    if    (BOKForm.cdsOKRezerv.fieldByname('department_code').asstring<>'')
    then begin
      ErMes := ErMes+#13+'Отдел '+BOKForm.cdsOKRezerv.fieldByname('department_show').asstring;
    end;

    if    (BOKForm.cdsOKRezerv.fieldByname('post_code').asstring<>'')
    then begin
      ErMes := ErMes+#13+'Должность '+BOKForm.cdsOKRezerv.fieldByname('post_show').asstring;
    end;

    showmessage('Не указаны необходимые данные '+ErMes);
    exit;
  end;

  bokmain.BOKForm.cdsOKRezerv.Post;

end;

procedure TfmOKRezerv.actRezervCancelExecute(Sender: TObject);
begin
  bokmain.BOKForm.cdsOKRezerv.Cancel;
end;

procedure TfmOKRezerv.actRezervDeleteExecute(Sender: TObject);
begin
  bokmain.BOKForm.cdsOKRezerv.Delete;
end;

procedure TfmOKRezerv.actRezervDetailNewExecute(Sender: TObject);
begin
  bokmain.BOKForm.cdsOKRezervDetail.Insert;
end;

procedure TfmOKRezerv.actRezervDetailSaveExecute(Sender: TObject);
var sql_ : string;
  k : integer;
begin

  k:=999;
  sql_:='select count(1) from ok_rezerv_detail'+
    ' where master_id<>'+bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('master_id').asstring+
    ' and upper(family)=upper('''+  bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('family').asstring+''')'+
    ' and upper(first_name)=upper('''+bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('first_name').asstring+''')'+
    ' and upper(patronymic)=upper('''+bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('patronymic').asstring+''')';
  try
    k:=bokmain.BOKForm.getsqlresult(sql_);
  except
    showmessage('Ошибка в запросе: '+sql_);
  end;

  if k=0
  then begin
    bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('family').asstring :=
      ANSIuppercase(bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('family').asstring);

    bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('first_name').asstring:=
      ANSIuppercase(bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('first_name').asstring);

    bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('patronymic').asstring:=
      ANSIuppercase(bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('patronymic').asstring);
//showmessage('!');
    bokmain.BOKForm.cdsOKRezervDetail.Post;
    
  end else begin
    if k<>999
    then showmessage( bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('family').asstring+' '+
      bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('first_name').asstring+' '+
      bokmain.BOKForm.cdsOKRezervDetail.fieldbyname('patronymic').asstring+' '+
      'уже состоит в резерве!');
  end;

end;

procedure TfmOKRezerv.actRezervDetailCancelExecute(Sender: TObject);
begin
  bokmain.BOKForm.cdsOKRezervDetail.Cancel;
end;

procedure TfmOKRezerv.actRezervDetailDeleteExecute(Sender: TObject);
begin
  bokmain.BOKForm.cdsOKRezervDetail.Delete;
end;

procedure TfmOKRezerv.dblcbPostCloseUp(Sender: TObject);
var v:variant;
    i:integer;
begin
//

  if    (BOKForm.cdsOKRezerv.fieldByname('branch_show').asstring<>'')
    and (BOKForm.cdsOKRezerv.fieldByname('department_code').asstring<>'')
    and (BOKForm.cdsOKRezerv.fieldByname('post_code').asstring<>'')
  then begin
    v := BOKForm.GetSqlResult('select personal_code from ok_personal '+
      ' where branch='''+BOKForm.cdsOKRezerv.fieldByname('branch_show').asstring+''' '+
      ' and department_code='+BOKForm.cdsOKRezerv.fieldByname('department_code').asstring+
      ' and post_code='+BOKForm.cdsOKRezerv.fieldByname('post_code').asstring+
      ' and status_code=2'+
      ' and rownum=1');
    if not varisnull(v)
    then begin
      i:=v;
      BOKForm.cdsOKRezerv.fieldByname('personal_code').asstring := IntToStr(i);
    end;
  end;

end;

procedure TfmOKRezerv.RefreshTarget;
var d: tdata;
    sql_ : string;
begin

 try
  sql_:= SQL_SMfo_source;
  BOKForm.LoadData(BOKForm.Source,sql_,True);
  CBMfo.clear;
  CBMfoDetail.clear;
  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBMfo.Items.AddObject( d.id+') '+BOKForm.Source.FieldByName('name').AsString, D);
      CBMfoDetail.Items.AddObject( d.id+') '+BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

  sql_:= SQL_Pers_source;
  BOKForm.LoadData(BOKForm.Source,sql_,True);
  CBPers.clear;
  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBPers.Items.AddObject( d.id+') '+BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

  sql_:= SQL_RezervDepartment_source+' and level_department_code in('+bokmain.BossLevel+')';
  BOKForm.LoadData(BOKForm.Source,sql_,True);
  CBDep.clear;
  CBDepDetail.clear;
  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBDep.Items.AddObject( d.id+') '+BOKForm.Source.FieldByName('name').AsString, D);
      CBDepDetail.Items.AddObject( d.id+') '+BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

  sql_:= SQL_RezervPost_source+' and level_department_code in('+bokmain.BossLevel+',4)';
  BOKForm.LoadData(BOKForm.Source,sql_,True);
  CBPost.clear;
  CBPostDetail.clear;
  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBPost.Items.AddObject( d.id+') '+BOKForm.Source.FieldByName('name').AsString, D);
      CBPostDetail.Items.AddObject( d.id+') '+BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

 except
   showmessage(sql_);
 end;

end;

procedure TfmOKRezerv.cbChange(Sender: TObject);
begin

  if (sender=CBMfo)
  and (CBMfo.ItemIndex<>-1)
  then begin
    edMfo.text  := TData(CBMfo.Items.Objects[CBMfo.ItemIndex]).Id;
    rg.ItemIndex :=0;
    ChBMfo.checked := true;
    exit;
  end
  else
  if (CBMfoDetail.ItemIndex<>-1)
  and (sender=CBMfoDetail)
  then begin
    edMfoDetail.text  := TData(CBMfoDetail.Items.Objects[CBMfoDetail.ItemIndex]).Id;
    rg.ItemIndex :=1;
    ChBMfoDetail.checked := true;
    exit;
  end
  else
  if (CBDep.ItemIndex<>-1)
  and (sender=CBDep)
  then begin
    edDep.text  := TData(CBDep.Items.Objects[CBDep.ItemIndex]).Id;
    rg.ItemIndex :=0;
    ChBdep.checked := true;
    exit;
  end
  else
  if (CBDepDetail.ItemIndex<>-1)
  and (sender=CBDepDetail)
  then begin
    edDepDetail.text  := TData(CBDepDetail.Items.Objects[CBDepDetail.ItemIndex]).Id;
    rg.ItemIndex :=1;
    ChBdepDetail.checked := true;
    exit;
  end
  else
  if (CBPost.ItemIndex<>-1)
  and (sender=CBpost)
  then begin
    edPost.text  := TData(CBPost.Items.Objects[CBPost.ItemIndex]).Id;
    rg.ItemIndex :=0;
    ChBpost.checked := true;
    exit;
  end
  else
  if (CBPostDetail.ItemIndex<>-1)
  and (sender=CBpostDetail)
  then begin
    edPostDetail.text  := TData(CBPostDetail.Items.Objects[CBPostDetail.ItemIndex]).Id;
    rg.ItemIndex :=1;
    ChBpostDetail.checked := true;
    exit;
  end
  else
  if (CBPers.ItemIndex<>-1)
  and (sender=CBpers)
  then begin
    edPers.text  := TData(CBPers.Items.Objects[CBPers.ItemIndex]).Id;
    rg.ItemIndex :=0;
    ChBpers.checked := true;
  end;

end;

procedure TfmOKRezerv.edChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  if Sender= edFamiliyDetail
  then begin
    ChBFamiliyDetail.checked := true;
    rg.ItemIndex :=1;
    exit;
  end;
  
  if Sender= edFirstNameDetail
  then begin
    ChBFirstNameDetail.checked := true;
    rg.ItemIndex :=1;
    exit;
  end;

  if Sender= edPatronymicDetail
  then begin
    ChBPatronymicDetail.checked := true;
    rg.ItemIndex :=1;
    exit;
  end;

//
  if Sender= edmfo
  then begin
    is_found := false;
    for i:=1 to CBmfo.Items.Count
    do begin
      if TEdit(Sender).text = TData(CBmfo.Items.Objects[ i-1 ]).Id
      then begin
        is_found := true;
        CBmfo.ItemIndex := i-1;
      end;
    end;
    if not is_found
    then begin
      CBmfo.ItemIndex := -1;
    end;
    ChBmfo.checked := true;
    rg.ItemIndex :=0;
    exit;
  end;

//
  if Sender= edmfoDetail
  then begin
    is_found := false;
    for i:=1 to CBmfoDetail.Items.Count
    do begin
      if TEdit(Sender).text = TData(CBmfoDetail.Items.Objects[ i-1 ]).Id
      then begin
        is_found := true;
        CBmfoDetail.ItemIndex := i-1;
      end;
    end;
    if not is_found
    then begin
      CBmfoDetail.ItemIndex := -1;
    end;
    ChBmfoDetail.checked := true;
    rg.ItemIndex :=1;
    exit;
  end;

//
  if Sender= edDep
  then begin
    is_found := false;
    for i:=1 to CBDep.Items.Count
    do begin
      if TEdit(Sender).text = TData(CBDep.Items.Objects[ i-1 ]).Id
      then begin
        is_found := true;
        CBDep.ItemIndex := i-1;
      end;
    end;
    if not is_found
    then begin
      CBDep.ItemIndex := -1;
    end;
    ChBDep.checked := true;
    rg.ItemIndex :=0;
    exit;
  end;

//
  if Sender= edDepDetail
  then begin
    is_found := false;
    for i:=1 to CBDepDetail.Items.Count
    do begin
      if TEdit(Sender).text = TData(CBDepDetail.Items.Objects[ i-1 ]).Id
      then begin
        is_found := true;
        CBDepDetail.ItemIndex := i-1;
      end;
    end;
    if not is_found
    then begin
      CBDepDetail.ItemIndex := -1;
    end;
    ChBDepDetail.checked := true;
    rg.ItemIndex :=1;
    exit;
  end;

//
  if Sender= edPost
  then begin
    is_found := false;
    for i:=1 to CBPost.Items.Count
    do begin
      if TEdit(Sender).text = TData(CBPost.Items.Objects[ i-1 ]).Id
      then begin
        is_found := true;
        CBPost.ItemIndex := i-1;
      end;
    end;
    if not is_found
    then begin
      CBPost.ItemIndex := -1;
    end;
    ChBPost.checked := true;
    rg.ItemIndex :=0;
    exit;
  end;

//
  if Sender= edPostDetail
  then begin
    is_found := false;
    for i:=1 to CBPostDetail.Items.Count
    do begin
      if TEdit(Sender).text = TData(CBPostDetail.Items.Objects[ i-1 ]).Id
      then begin
        is_found := true;
        CBPostDetail.ItemIndex := i-1;
      end;
    end;
    if not is_found
    then begin
      CBPostDetail.ItemIndex := -1;
    end;
    ChBPostDetail.checked := true;
    rg.ItemIndex :=1;
    exit;
  end;

//
  if Sender= edPers
  then begin
    is_found := false;
    for i:=1 to CBPers.Items.Count
    do begin
      if TEdit(Sender).text = TData(CBPers.Items.Objects[ i-1 ]).Id
      then begin
        is_found := true;
        CBPers.ItemIndex := i-1;
      end;
    end;
    if not is_found
    then begin
      CBPers.ItemIndex := -1;
    end;
    ChBPers.checked := true;
    rg.ItemIndex :=0;
    exit;
  end;



end;

procedure TfmOKRezerv.actRezervFindExecute(Sender: TObject);
var
  PostCode,BranchCode,DepartmentCode, Personalcode1 : string;
  sql_, Personalcode2 : string;
  Personalcode3 : string;
begin

//  actRezervFind.Enabled := false;

  if rg.ItemIndex=0
  then begin

    if chbMfo.Checked
    then Branchcode:= ' branch_show='''+TData(CBMfo.Items.Objects[CBMfo.ItemIndex]).Id+''' '
    else Branchcode:= ' 1=1 ';

    if chbDep.Checked
    then Departmentcode:= ' and department_code='+TData(CBdep.Items.Objects[CBdep.ItemIndex]).Id+' '
    else Departmentcode:='';

    if chbPost.Checked
    then postcode:=' and post_code='+TData(CBpost.Items.Objects[CBpost.ItemIndex]).Id+' '
    else postcode:='';

    if chbpers.Checked
    then personalcode1:=' and personal_code='+TData(CBpers.Items.Objects[CBpers.ItemIndex]).Id+' '
    else personalcode1:='';

    sql_ := SQL_OKRezerv+' where '+ Branchcode+
        DepartmentCode+PostCode+PersonalCode1;

  end else begin

    if chbMfoDetail.Checked
    then Branchcode:= ' branch_show='''+TData(CBMfoDetail.Items.Objects[CBMfoDetail.ItemIndex]).Id+''' '
    else Branchcode:= ' 1=1 ';

    if chbDepDetail.Checked
    then Departmentcode:= ' and department_code='+TData(CBdepDetail.Items.Objects[CBdepDetail.ItemIndex]).Id+' '
    else Departmentcode:='';

    if chbPostdetail.Checked
    then postcode:=' and post_code='+TData(CBpostDetail.Items.Objects[CBpostDetail.ItemIndex]).Id+' '
    else postcode:='';

    if chbFamiliyDetail.Checked
    then personalcode1:=' and family like '''+edFamiliyDetail.Text+''' '
    else personalcode1:='';

    if chbFirstNameDetail.Checked
    then personalcode2:=' and first_name like '''+edfirstnameDetail.Text+''' '
    else personalcode2:='';

    if chbPatronymicDetail.Checked
    then personalcode3:=' and patronymic like '''+edpatronymicDetail.Text+''' '
    else personalcode3:='';

    sql_ := SQL_OKRezervDetail+
      ' where '+ Branchcode+
        DepartmentCode + PostCode + PersonalCode1 + PersonalCode2 + PersonalCode3;

    Try
      bokmain.BOKForm.LoadData(bokmain.BOKForm.cdsOKRezervDetail, sql_ );
    Except
    on E: Exception do
      Begin
        ShowMessage(SQL_+#13+E.Message);
      End;
    End;
    bokmain.BOKForm.cdsOKRezervDetail.Close;

    bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezervDetail, bokmain.BOKForm.cdsOKRezervDep2,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);

    bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezervDetail, bokmain.BOKForm.cdsOKRezervPost2,
                'post_show', 'post_code',
                'post_code', 'post_name', False);
    bokmain.BOKForm.cdsOKRezervDetail.Open;
    bokmain.BOKForm.cdsOKRezervDetail.EnableControls;

//    bokmain.BOKForm.cdsOKRezervDetail.edit;
//    bokmain.BOKForm.cdsOKRezervDetail.Cancel;

    sql_ := SQL_OKRezerv+' where master_id in (select master_id from ok_rezerv_detail'+
      ' where '+ Branchcode+
        DepartmentCode + PostCode + PersonalCode1 + PersonalCode2 + PersonalCode3+')';


  end;

  Try
    bokmain.BOKForm.LoadData( bokmain.BOKForm.cdsOKRezerv, sql_ );
  Except
  on E: Exception do
    Begin
      ShowMessage(SQL_+#13+E.Message);
    End;
  End;

  bokmain.BOKForm.cdsOKRezerv.Close;

  bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezerv, bokmain.BOKForm.cdsOKRezervDep1,
                'department_show', 'department_code',
                'department_code', 'department_name', TRUE);

  bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezerv, bokmain.BOKForm.cdsOKRezervPost1,
                'post_show', 'post_code',
                'post_code', 'post_name', False);

  bokmain.BOKForm.addLookUpField(bokmain.BOKForm.cdsOKRezerv, bokmain.BOKForm.cdspers,
                'fio', 'personal_code',
                'personal_code', 'fio', False);

  bokmain.BOKForm.cdsOKRezerv.Open;
  bokmain.BOKForm.cdsOKRezerv.EnableControls;

//  bokmain.BOKForm.cdsOKRezerv.edit;
//  bokmain.BOKForm.cdsOKRezerv.Cancel;
//  actRezervFind.Enabled := true;

end;

procedure TfmOKRezerv.BitBtn80Click(Sender: TObject);
begin
  BOKForm.cdsOKRezerv.first;
end;

procedure TfmOKRezerv.BitBtn78Click(Sender: TObject);
begin
  BOKForm.cdsOKRezerv.next;
end;

procedure TfmOKRezerv.BitBtn77Click(Sender: TObject);
begin
  BOKForm.cdsOKRezerv.prior;
end;

procedure TfmOKRezerv.BitBtn79Click(Sender: TObject);
begin
  BOKForm.cdsOKRezerv.last;
end;

procedure TfmOKRezerv.BitBtn1Click(Sender: TObject);
begin
  BOKForm.cdsOKRezervDetail.first;
end;

procedure TfmOKRezerv.BitBtn2Click(Sender: TObject);
begin
  BOKForm.cdsOKRezervDetail.prior;
end;

procedure TfmOKRezerv.BitBtn3Click(Sender: TObject);
begin
  BOKForm.cdsOKRezervDetail.next;
end;

procedure TfmOKRezerv.BitBtn4Click(Sender: TObject);
begin
  BOKForm.cdsOKRezervDetail.last;
end;

end.
