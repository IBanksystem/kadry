unit OKAppoint;
{ номер кадров 23 (двадцать третий)}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls, Grids, DBGrids, DBActns, ActnList, errDlg;

type
  TfmOKAppoint = class(TForm)
    OpenCenterPanel: TPanel;
    gbAddress: TGroupBox;
    bClear: TButton;
    bCancel: TButton;
    medAppointmentDate: TMaskEdit;
    medBasisDate: TMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edBasisNum: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CBDepDown: TComboBox;
    CBPostDown: TComboBox;
    Label14: TLabel;
    Label12: TLabel;
    Button4: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    cbBaseMove: TComboBox;
    Button1: TButton;
    Label11: TLabel;
    Label13: TLabel;
    edDepDown: TEdit;
    edPostDown: TEdit;
    edBaseMove: TEdit;
    edOfficeName: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edOfficeAddressNow: TEdit;
    Label5: TLabel;
    edSpecial: TEdit;
    CBSpecial: TComboBox;
    procedure edNumKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RefreshTarget(Target: String);
    procedure CBDepDownChange(Sender: TObject);
    procedure edDepDownChange(Sender: TObject);
    procedure edPostDownChange(Sender: TObject);
    procedure edBaseMoveChange(Sender: TObject);
    procedure EdArticleChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure bClearClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edSpecialChange(Sender: TObject);
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

const
{ номер кадров 23 (двадцать третий)}
{
  SQL_AllVacancy = 'select a.stat_code,a.post_code,a.department_code,d.department_name, p.post_name, a.salary_fact, b.vacancy_date '+
                '  from ok_stat a, ok_stat_salary b, ss_ok_post p, ss_ok_department d '+
                ' where a.stat_code = b.stat_code '+
                '   and a.post_code = p.post_code '+
                '   and a.department_code = d.department_code ';
}                
  IsVacantCode = '1'; // select * from ss_ok_vacancy
{
and a.vacancy_code = (вакантно_)
and a.branch = (branch_)
and b.branch = (branch_)
and d.branch = (branch_)
}
var
  fmOKAppoint: TfmOKAppoint;
//  SQL_AboutVacancy,  SQL_Vacancy: string;
implementation

uses BOKMain;

{$R *.dfm}

procedure TfmOKAppoint.edNumKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in ['0'..'9',#8]) Then
    Begin Key := #0; MessageBeep(0); End;
end;

procedure TfmOKAppoint.FormCreate(Sender: TObject);
//var v : variant;
//    d : TData;
begin
  BOKForm := TBOKForm(owner);
//  bClearClick(nil);
{
  For i := 0 to ComponentCount-1 do
  Begin
      If Components[i].ClassType = TEdit Then
        TEdit(Components[i]).Clear
      else If Components[i].ClassType = TMaskEdit Then
        TMaskEdit(Components[i]).Clear
      else If Components[i].ClassType = TComboBox Then
        TComboBox(Components[i]).ItemIndex := 0
      else If Components[i].ClassType = TCheckBox Then
        TCheckBox(Components[i]).Checked := False;
  End;
}
  RefreshTarget('ALL');
  edOfficeAddressNow.Text := bOKform.edOfficeAddress.Text;
  edOfficeName.Text := bOKform.edFILIAL.Text;

end;

procedure TfmOKAppoint.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  d: tdata;
begin

//  showmessage(sender.ClassName);

  Case Key of
    VK_RETURN:
        SelectNext(ActiveControl, True, True);
    VK_F1:
      begin
          If (Sender.ClassType = TCombobox) then
          begin
            if (TCombobox(Sender).Tag <> 0) and (TCombobox(Sender).Tag <> 21)
            then bOKForm.ViewRef( TCombobox(Sender).Tag );
            if (TCombobox(Sender).Tag = 21)
            then bOKForm.ViewRef( 0 );
          end;

          If (Sender.ClassType = TDBCombobox) Then
          begin
            if (TDBCombobox(Sender).Tag <> 0) and (TDBCombobox(Sender).Tag <> 21)
            then bOKForm.ViewRef( TDBCombobox(Sender).Tag );
            if (TDBCombobox(Sender).Tag = 21)
            then bOKForm.ViewRef( 0 );
          end;

          If (Sender.ClassType = TDBLookUpCombobox) Then
          begin
            if (TDBLookUpCombobox(Sender).Tag <> 0) and (TDBLookUpCombobox(Sender).Tag <> 21)
            then bOKForm.ViewRef( TDBLookUpCombobox(Sender).Tag );
            if (TDBLookUpCombobox(Sender).Tag = 21)
            then bOKForm.ViewRef( 0 );
          end;

      end;

//  End;

  VK_F9:
    Begin
      IF (Sender = CBDepDown) or (Sender = edDepDown)
        or (Sender = CBPostDown) or (Sender = edPostDown)
        or (Sender = cbBaseMove) or (Sender = edBaseMove)
//        or (Sender = cbArticle) or (Sender = edArticle)
      THEN BEGIN
                 If (Sender = CBDepDown) or (Sender = edDepDown)
                 Then BOKForm.LoadData(BOKForm.Source,'SELECT to_char(department_code) id,'+
                 ' department_name name'+
                     ' FROM ss_ok_department'+
                     ' WHERE branch='+Branch+
                     ' and level_department_code='+BossLevel+
                     ' AND state_notes = ''A'''+
                     ' and department_code in ('+
                      ' select department_code from ok_stat'+
                     ' )'+
                     ' order by department_code',True);
                 If (Sender = CBPostDown) or (Sender = edPostDown)
                 Then BOKForm.LoadData(BOKForm.Source,'SELECT to_char(post_code) id,'+
                     ' post_name name'+
                     ' FROM ss_ok_post'+
                     ' WHERE state_notes = ''A'''+
                     ' and level_department_code in('+BossLevel+',4)'+
                     ' order by post_code',True);
                 If (Sender = cbBaseMove) or (Sender = edBaseMove)
                 Then BOKForm.LoadData(BOKForm.Source,'SELECT to_char(base_move_code) id,'+
                        ' base_move_name name'+
                        ' FROM ss_ok_base_move'+
                        ' WHERE state_notes = ''A'''+
                        ' order by base_move_code',True);

                 If (Sender = cbSpecial) or (Sender = edSpecial)
                 Then BOKForm.LoadData(BOKForm.Source,'SELECT to_char(Special_code) id,'+
                        ' Special_name name'+
                        ' FROM ss_ok_Special'+
                        ' WHERE state_notes = ''A'''+
                        ' order by Special_code',True);

                 BOKForm.Source.Edit;
                 With TSelectDialog.CreateEx(Self, BOKForm.Source, BOKForm.Source, BOKForm.Source.FindField('id').Index) do
                  Try
                    If ShowModal = mrOk Then begin

                      If (Sender = CBDepDown) or (Sender = edDepDown)
                      Then begin
                        D := TData.Create;
                        with D do
                        begin
                          Id := BOKForm.Source.FieldByName('id').AsString;
                          Name := BOKForm.Source.FieldByName('name').AsString;
                        end;
                        CBDepDown.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
                        CBDepDown.ItemIndex := CBDepDown.Items.Count-1;
                      end;

                      If (Sender = CBSpecial) or (Sender = edSpecial)
                      Then begin
                        D := TData.Create;
                        with D do
                        begin
                          Id := BOKForm.Source.FieldByName('id').AsString;
                          Name := BOKForm.Source.FieldByName('name').AsString;
                        end;
                        CBSpecial.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
                        CBSpecial.ItemIndex := CBSpecial.Items.Count-1;
                      end;


                      If (Sender = CBPostDown) or (Sender = edPostDown)
                      Then begin
                        D := TData.Create;
                        with D do
                        begin
                          Id := BOKForm.Source.FieldByName('id').AsString;
                          Name := BOKForm.Source.FieldByName('name').AsString;
                        end;
                        CBPostDown.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
                        CBPostDown.ItemIndex := CBPostDown.Items.Count-1;
                      end;

                      If (Sender = cbBaseMove) or (Sender = edBaseMove)
                      then begin
                        D := TData.Create;
                        with D do
                        begin
                          Id := BOKForm.Source.FieldByName('id').AsString;
                          Name := BOKForm.Source.FieldByName('name').AsString;
                        end;
                        CBBaseMove.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
                        cbBaseMove.ItemIndex := cbBaseMove.Items.Count-1;

                      end;
                    end;
                    CBDepDownChange(nil);
                  Finally
                    Destination.Filtered:=false;
                    Free;
                  End;
               End;
      END;
  End;

end;

procedure TfmOKAppoint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  If ModalResult = mrCancel Then Exit;
end;

procedure TfmOKAppoint.RefreshTarget(Target: String);
var d: tdata;
begin
//
//  if (Target='TOP') or (Target='ALL')
//  then LoadData(cdsOKVacancy,SQL_Vacancy);

    BOKForm.LoadData(BOKForm.Source,'select a.department_code id,'+
      ' lpad(to_char(a.department_code),3,'' '')||'') ''||a.department_name name '+
      ' from ss_ok_department a '+
      ' where a.department_code in (select department_code from ok_stat)'+
      ' and a.state_notes=''A'' and a.level_department_code='+BossLevel+
      ' order by a.department_code',True);

  CBDepDown.clear;
  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      if (Target='DOWN') or (Target='ALL')
      then CBDepDown.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

  BOKForm.LoadData(BOKForm.Source,'select a.post_code id, '+
  ' a.post_code||'') ''||a.post_name name '+
  ' from ss_ok_post a where'+
  ' a.state_notes=''A'' and level_department_code in ('+BossLevel+',4)',True);

  CBPostDown.clear;
  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBPostDown.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

//
//
  BOKForm.LoadData(BOKForm.Source,'select a.base_move_code id,'+
  ' lpad(to_char(a.base_move_code),3,'' '')||'') ''||a.base_move_name name '+
  ' from ss_ok_base_move a where'+
  ' a.state_notes=''A'' ',True);

  CBBaseMove.clear;
  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      if (Target='DOWN') or (Target='ALL')
      then CBBaseMove.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

//
//
  BOKForm.LoadData(BOKForm.Source,'select a.special_code id,'+
  ' lpad(to_char(a.special_code),4,'' '')||'') ''||a.special_name name '+
  ' from ss_ok_special a where'+
  ' a.state_notes=''A'' ',True);

  CBspecial.clear;
  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBspecial.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;


end;

procedure TfmOKAppoint.CBDepDownChange(Sender: TObject);
var d: tdata;
//var    PostCode, DepCode, SalaryFact: string;
//       v: variant;
begin

  if (sender= CBDepDown) and (CBDepDown.ItemIndex<>-1)
  then begin
    edDepDown.text  := TData(CBDepDown.Items.Objects[CBDepDown.ItemIndex]).Id;

    BOKForm.LoadData(BOKForm.Source,'select a.post_code id, '+
          ' a.post_code||'') ''||a.post_name name '+
          ' from ss_ok_post a where'+
          ' a.state_notes=''A'' and a.level_department_code in ('+BossLevel+',4)'+
          ' and a.post_code in (select post_code from ok_stat where department_code='+edDepDown.text+
          ')',True);

    CBPostDown.clear;
    while not BOKForm.Source.Eof do
    begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBPostDown.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
    end;

  end;

  if (sender=CBPostDown) and (CBPostDown.ItemIndex<>-1)
  then begin
    edPostDown.text := TData(CBPostDown.Items.Objects[CBPostDown.ItemIndex]).Id;

   if edDepDown.text<>''
   then begin

    BOKForm.LoadData(BOKForm.Source,'select a.special_code id,'+
          ' lpad(to_char(a.special_code),4,'' '')||'') ''||a.special_name name '+
          ' from ss_ok_special a where'+
          ' a.state_notes=''A'' '+
          ' and a.special_code in (select special_code'+
          ' from ok_stat where department_code='+  edDepDown.text+
          ' and post_code='+ edPostDown.text +
          ')',True);

    CBspecial.clear;
    while not BOKForm.Source.Eof do
    begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBspecial.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
    end;

   end;
  end;

  if (CBBaseMove.ItemIndex<>-1)
  then
    edBaseMove.text := TData(CBBaseMove.Items.Objects[CBBaseMove.ItemIndex]).Id;

  if (CBSpecial.ItemIndex<>-1)
  then
    edSpecial.text := TData(CBSpecial.Items.Objects[CBSpecial.ItemIndex]).Id;

end;

procedure TfmOKAppoint.edDepDownChange(Sender: TObject);
var i : integer;
    is_found : boolean;
 D : TData;
begin

  is_found := false;

  for i:=1 to CBDepDown.Items.Count
  do begin

    if edDepDown.text = TData(CBDepDown.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CBDepDown.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CBDepDown.ItemIndex := -1;
  end else begin
    BOKForm.LoadData(BOKForm.Source,'select a.post_code id, '+
          ' a.post_code||'') ''||a.post_name name '+
          ' from ss_ok_post a where'+
          ' a.state_notes=''A'' and a.level_department_code in ('+BossLevel+',4)'+
          ' and a.post_code in (select post_code from ok_stat where department_code='+edDepDown.text+
          ')',True);

    CBPostDown.clear;
    while not BOKForm.Source.Eof do
    begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBPostDown.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
    end;
  
  end;

end;

procedure TfmOKAppoint.edPostDownChange(Sender: TObject);
var i : integer;
    is_found : boolean;
 D : TData;
begin

  is_found := false;

  for i:=1 to CBPostDown.Items.Count
  do begin

    if edPostDown.text = TData(CBPostDown.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CBPostDown.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CBPostDown.ItemIndex := -1;
  end else begin
   if edDepDown.text<>''
   then begin

    BOKForm.LoadData(BOKForm.Source,'select a.special_code id,'+
          ' lpad(to_char(a.special_code),4,'' '')||'') ''||a.special_name name '+
          ' from ss_ok_special a where'+
          ' a.state_notes=''A'' '+
          ' and a.special_code in (select special_code'+
          ' from ok_stat where department_code='+  edDepDown.text+
          ' and post_code='+ edPostDown.text +
          ')',True);

    CBspecial.clear;
    while not BOKForm.Source.Eof do
    begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBspecial.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
    end;

   end;

  end;

end;

procedure TfmOKAppoint.edBaseMoveChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  is_found := false;

  for i:=1 to CBBaseMove.Items.Count
  do begin

    if edBaseMove.text = TData(CBBaseMove.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CBBaseMove.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CBBaseMove.ItemIndex := -1;
  end;


end;

procedure TfmOKAppoint.EdArticleChange(Sender: TObject);
//var i : integer;
//    is_found : boolean;
begin
{
  is_found := false;

  for i:=1 to CBArticle.Items.Count
  do begin

    if edArticle.text = TData(CBarticle.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CBArticle.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CBarticle.ItemIndex := -1;
  end;
}
end;

procedure TfmOKAppoint.Button4Click(Sender: TObject);
begin
  RefreshTarget('ALL');
end;

procedure TfmOKAppoint.bClearClick(Sender: TObject);
begin
    edBasisNum.Clear;
  medBasisDate.Clear;
//  edAppointmentMotive.Clear;
  medAppointmentDate.Clear;

//  edDepDown.Clear;
//  edPostDown.Clear;
  CBDepDown.Clear;
  CBPostDown.Clear;
  CBBaseMove.Clear;
  edDepDown.Clear;
  edPostDown.Clear;
  edBaseMove.Clear;
  RefreshTarget('DOWN');

end;

procedure TfmOKAppoint.Button1Click(Sender: TObject);
var ErMessage : string;
    Specialcode, ArticleCode, BaseMoveCode, PostCode, DepCode: string;
    PersonalCode_: string;
const
  ERROR_NO = 'ORA-20000: ';
begin

  ErMessage := '';

// проверка валидности даты перемещения
  try
    strtodate(medAppointmentDate.EditText);
  except
    ErMessage := ErMessage +'Дату перемещения'+#10#13;
  end;

  if edOfficeAddressNow.Text = '' then
  begin
    ErMessage := ErMessage +'Адрес офиса'+#10#13;
  end;

  if edOfficeName.Text = '' then
  begin
    ErMessage := ErMessage +'Наименование офиса' +#10#13;
  end;

// проверка валидности Дата приказа/осн-я:
  try
    strtodate(medBasisDate.EditText);
  except
    ErMessage := ErMessage +'Дату приказа/основания'+#10#13;
  end;

// проверка заполнения поля ввода Номер приказа:
  if edBasisNum.Text = '' then
  begin
    ErMessage := ErMessage +'Номер приказа '+#10#13;
  end;


  if CBPostDown.ItemIndex = -1 then
  begin
    ErMessage := ErMessage +'Должность'+#10#13;
  end;

  if (CBSpecial.ItemIndex = -1) and (CBSpecial.visible) then
  begin
    ErMessage := ErMessage +'Специализация'+#10#13;
  end;

  if CBBaseMove.ItemIndex = -1 then
  begin
    ErMessage := ErMessage +'Основание перемещения'+#10#13;
  end;

  if CBDepDown.ItemIndex  = -1 then
  begin
    ErMessage := ErMessage +'Подразделение'+#10#13;
  end;

  if ErMessage <> ''  then
  begin
    ShowMessage('Пожалуйста, укажите '+#10#13+ErMessage);
    exit;
  end;

  PostCode := TData(CBPostDown.Items.Objects[CBPostDown.ItemIndex]).Id;
  SpecialCode := TData(CBSpecial.Items.Objects[CBSpecial.ItemIndex]).Id;
  DepCode  := TData(CBDepDown.Items.Objects[CBDepDown.ItemIndex]).Id;
  BaseMoveCode := TData(CBBaseMove.Items.Objects[CBBaseMove.ItemIndex]).Id;

//  if (CBArticle.visible)
//  then begin
//    ArticleCode := TData(CBArticle.Items.Objects[CBArticle.ItemIndex]).Id;
//  end else begin
    ArticleCode := '';
//  end;

// Назначение параметров и запуск процедуры (штатное расписание проверяется в процедуре)
  try
{
  OFFICE_NAME_ OK_Period.OFFICE_NAME%type := param.getparam('OFFICE_NAME'),
  OFFICE_ADDRESS_ OK_Period.OFFICE_ADDRESS%type := param.getparam('OFFICE_ADDRESS'),
  branch_          OK_PERSONAL.BRANCH%type := param.getparam('BRANCH'),
  personal_code_   OK_PERSONAL.PERSONAL_CODE%type := param.getparam('PERSONAL_CODE'),
  department_code_   OK_PERSONAL.department_CODE%type := param.getparam('DEPARTMENT_CODE'),
  post_code_   OK_PERSONAL.post_CODE%type := param.getparam('POST_CODE'),
  IN_OFFICE_DATE_   OK_PERIOD.IN_OFFICE_DATE%type := param.getparam('IN_OFFICE_DATE'),
  base_move_code_ OK_period.base_move_code%type := param.getparam('BASE_MOVE_CODE'),

  basis_num_   OK_Period.BASIS_NUM%type := param.getparam('BASIS_NUM'),
  basis_date_  OK_Period.BASIS_DATE%type := param.getparam('BASIS_DATE'),
  status_code_   OK_PERSONAL.status_CODE%type := param.getparam('STATUS_CODE'),
  ARTICLE_CODE_ OK_PERIOD.ARTICLE_CODE%type := param.getparam('ARTICLE_CODE'),
  emp_code_        OK_PERSONAL.EMP_CODE%type := param.getparam('EMP_CODE')

}
//    BOKForm.execSQL('begin Param.SaveParam(1); end;');
    BOKForm.execSQL('begin param.ClearParam; end;');

//
    BOKForm.execSQL('begin Param.SetParam(''OFFICE_NAME'','''+ edOfficeName.Text +'''); end;');
//\\
//
    BOKForm.execSQL('begin Param.SetParam(''OFFICE_ADDRESS'','''+ edOfficeAddressNow.Text +'''); end;');
//\\
    BOKForm.execSQL('begin Param.SetParam(''BRANCH'','''+Branch+'''); end;');
    PersonalCode_ := BOKForm.cdsOKPersonal.FieldByName('personal_code').AsString;
    BOKForm.execSQL('begin Param.SetParam(''PERSONAL_CODE'','+ personalcode_ +'); end;');
    BOKForm.execSQL('begin Param.SetParam(''DEPARTMENT_CODE'','+ DepCode +'); end;');
    BOKForm.execSQL('begin Param.SetParam(''POST_CODE'','+ PostCode +'); end;');
    BOKForm.execSQL('begin Param.SetParam(''SPECIAL_CODE'','+ SpecialCode +'); end;');
    BOKForm.execSQL('begin Param.SetParam(''IN_OFFICE_DATE'','''+ medAppointmentDate.EditText + '''); end;');
    BOKForm.execSQL('begin Param.SetParam(''BASE_MOVE_CODE'','''+ BaseMoveCode + '''); end;');
    BOKForm.execSQL('begin Param.SetParam(''BASIS_DATE'','''+ medBasisDate.EditText + '''); end;');
    BOKForm.execSQL('begin Param.SetParam(''BASIS_NUM'','''+ edBasisNum.Text + '''); end;');
//
    BOKForm.execSQL('begin Param.SetParam(''STATUS_CODE'','''+ bokform.cdsOKPersonal.FieldByName('status_code').AsString + '''); end;');
//\\
//
    BOKForm.execSQL('begin Param.SetParam(''ARTICLE_CODE'','''+ Articlecode + '''); end;');
//\\
    BOKForm.execSQL('begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;');

    BOKForm.execSQL('begin OK_SERVICE.APPOINT_COLLEAGUE; end;');

//    BOKForm.execSQL('begin Param.ClearParam; end;');
//    BOKForm.execSQL('begin Param.LoadParam(1); end;');

    BOKForm.ExecSQL('COMMIT');
//    BOKForm.cdsOKPersonal.Refresh;
    if bokform.cdsOKPeriod.Active
    then begin
      bokform.cdsOKPeriod.refresh;
    end;

  except
    on E: Exception do
    Begin
      BOKForm.ExecSQL('ROLLBACK');
      If Pos(ERROR_NO, E.Message) <> 0 Then
      Begin
        erMessage := Copy(E.Message, Pos(ERROR_NO, E.Message) + Length(ERROR_NO), Length(E.Message));
        erMessage := Copy(erMessage, 1, Pos(#10, erMessage) - 1);
        E.Message := StringReplace(E.Message, #13, '', [rfReplaceAll]);
        E.Message := StringReplace(E.Message, #10, #13#10, [rfReplaceAll]);
        ShowErrorBox(erMessage,E.Message,Self.Caption);
      End
      Else  ShowMessage(e.Message);
              exit;
    End;
  end;

  RefreshTarget('ALL');

  BOKForm.LoadData(BOKForm.Source,'SELECT family,first_name,patronymic,'+
                 ' ok_service.get_departmentname(department_code) department_show,'+
                 ' ok_service.get_postname(post_code) post_show,'+
                 ' ok_service.get_specialname(special_code) special_show'+
                     ' FROM ok_personal'+
                     ' WHERE branch='+curBranch+
                     ' and personal_code='+personalcode_,True);

  showmessage(
        'Фамилия:   '+  BOKForm.Source.FieldByName('family').AsString+#13+
        'Имя:       '+  BOKForm.Source.FieldByName('first_name').AsString+#13+
        'Отчество:  '+  BOKForm.Source.FieldByName('patronymic').AsString+#13+
        'Отдел:     '+  BOKForm.Source.FieldByName('department_show').AsString+#13+
        'Должность: '+  BOKForm.Source.FieldByName('post_show').AsString+#13+
        'Специализация: '+  BOKForm.Source.FieldByName('special_show').AsString
        );
  bCancel.click;

end;

procedure TfmOKAppoint.edSpecialChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  is_found := false;

  for i:=1 to CBSpecial.Items.Count
  do begin

    if edSpecial.text = TData(CBSpecial.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CBSpecial.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CBSpecial.ItemIndex := -1;
  end;

end;

end.
