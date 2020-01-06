unit OKOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls, Grids, DBGrids, DBActns, ActnList, ComObj,OleCtnrs,errDlg;

type
  TfmOKOrder = class(TBaseForm)
    OpenCenterPanel: TPanel;
    gbPassport: TGroupBox;
    gbPersonal: TGroupBox;
    lbStatus: TLabel;
    ActionList: TActionList;
    Label14: TLabel;
    CB9: TComboBox;
    Label12: TLabel;
    CB10: TComboBox;
    Label13: TLabel;
    CB8: TComboBox;
    CB11: TComboBox;
    CB12: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    edText15: TEdit;
    edText14: TEdit;
    edText17: TEdit;
    edText18: TEdit;
    lbSalaryFact: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    edText16: TEdit;
    bCancel: TButton;
    Button4: TButton;
    bClear: TButton;
    bOk: TButton;
    CB6: TComboBox;
    CB7: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edText21: TEdit;
    edText20: TEdit;
    edText19: TEdit;
    edAmount13: TEdit;
    CB1: TComboBox;
    CB2: TComboBox;
    CB5: TComboBox;
    ed4: TEdit;
    ed3: TEdit;
    ed1: TEdit;
    ed2: TEdit;
    ed9: TEdit;
    ed10: TEdit;
    ed11: TEdit;
    ed12: TEdit;
    ed5: TEdit;
    ed6: TEdit;
    ed7: TEdit;
    ed8: TEdit;
    Label17: TLabel;
    Label21: TLabel;
    EdFamily3: TEdit;
    edName3: TEdit;
    edPatronymic3: TEdit;
    CheckBox3: TCheckBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    q: TClientDataSetEx;
    dsCOMMANDTYPE: TDataSource;
    cdsCOMMANDTYPE: TClientDataSetEx;
    dsTEMPLATECOMMAND: TDataSource;
    cdsTEMPLATECOMMAND: TClientDataSetEx;
    CB3: TComboBox;
    CB4: TComboBox;
    CB_COMMANDTYPE: TComboBox;
    CB_TEMPLATECOMMAND: TComboBox;
    Button1: TButton;
    Memo_temp: TMemo;
    actTempPreview: TAction;
    Memo2: TMemo;
    Source: TClientDataSetEx;
    actTempOk: TAction;
    actTempClear: TAction;
    procedure edNumKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RefreshOrderTarget(Target: String);
    procedure CB_COMMANDTYPEChange(Sender: TObject);
    procedure PreviewTemplate(FileName: String);
//    function PrepareOle(FileName: String; TypeApp: String): Variant;
    procedure CB_TEMPLATECOMMANDChange(Sender: TObject);
    procedure actTempPreviewExecute(Sender: TObject);
    procedure InMemoReplace(FindText: String; ReplaceText: String);
    procedure actTempOkExecute(Sender: TObject);
    procedure ed1Change(Sender: TObject);
    procedure ed2Change(Sender: TObject);
    procedure ed3Change(Sender: TObject);
    procedure ed4Change(Sender: TObject);
    procedure ed5Change(Sender: TObject);
    procedure ed6Change(Sender: TObject);
    procedure actTempClearExecute(Sender: TObject);
    procedure ed7Change(Sender: TObject);
    procedure ed8Change(Sender: TObject);
    procedure ed9Change(Sender: TObject);
    procedure ed10Change(Sender: TObject);
    procedure ed11Change(Sender: TObject);
    procedure ed12Change(Sender: TObject);

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
  SQL_COMMANDTYPE = 'select a.command_type_code id, a.command_type_name name from ss_ok_command_type a where'+
          ' a.state_notes=''A''';
  SQL_TEMPLATECOMMAND = 'select a.template_command_code id, a.template_command_name name, a.template_command_fname fname  from ss_ok_template_command a where'+
          ' a.state_notes=''A''';

var
  fmOKOrder : TfmOKOrder;
  words_all : string;
  IsNotChange : boolean;
implementation

uses BOKMain;

{$R *.dfm}

procedure TfmOKOrder.edNumKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in ['0'..'9',#8]) Then
    Begin Key := #0; MessageBeep(0); End;
end;

procedure TfmOKOrder.FormCreate(Sender: TObject);
begin
  BOKForm := TBOKForm(owner);
{
  SQL_AboutVacancy := ' and b.vacancy_code = '+IsVacantCode+' '+
                ' and a.branch ='''+ branch+''' '+
                ' and b.branch ='''+ branch+''' '+
                ' and d.branch ='''+ branch+''' ';
  SQL_Vacancy := SQL_AllVacancy+' and a.branch is null and rownum=1';
}
  RefreshOrderTarget('ALL');
  words_all := '';

end;

procedure TfmOKOrder.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    VK_RETURN: SelectNext(ActiveControl, True, True);
        VK_F9: Begin
                 If (Sender = ed1) or (Sender = ed2) or (Sender = ed3) 
                 Then   LoadData(Source,'select a.personal_code id, a.family||'' ''||a.first_name||'' ''||a.patronymic name'+
                  ' from ok_personal a where'+
                  ' a.branch='''+Branch+'''',True);

                 If (Sender = ed4) or (Sender = ed5)
                 Then     LoadData(Source,'select a.department_code id, a.department_name name from ss_ok_department a where'+
                  ' a.state_notes=''A'' and branch='+Branch,True);

                 If Sender = ed6
                 Then     LoadData(Source,'select a.institution_code id, a.institution_name name, a.institution_abbreviation abbr from ss_ok_institution a where'+
                  ' a.state_notes=''A''',True);

                 If (Sender = ed7) or (Sender = ed8)
                 Then     LoadData(Source,'select a.article_code id, a.article_name name, a.article_num anum from ss_ok_article a where'+
                  ' a.state_notes=''A''',True);

                 If (Sender = ed9) or (Sender = ed10)
                 Then     LoadData(Source,'select a.bank_id id, a.bank_name name from s_mfo a where'+
                  ' a.act=''A''',True);

                 If (Sender = ed11) or (Sender = ed12)
                 Then   LoadData(Source,'select a.post_code id, a.post_name name from ss_ok_post a where'+
                  ' a.state_notes=''A'' ',True);

                 Source.Edit;
                 With TSelectDialog.CreateEx(Self, Source, Source, Source.FindField('id').Index) do
                  Try
                    If ShowModal = mrOk Then
                      TEdit(Sender).Text := Source.FieldByName('ID').AsString;
{
                      If Sender = ed1
                      Then lbDepartment.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = ed2
                      Then lbPost.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = ed3
                      Then lbEducation.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = ed4
                      Then lbBasis.Caption := Source.FieldByName('NAME').AsString;
}
                  Finally
                    Destination.Filtered:=false;
                    Free;
                  End;
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

procedure TfmOKOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  If ModalResult = mrCancel Then Exit;
end;

procedure TfmOKOrder.RefreshOrderTarget(Target: String);
var d: tdata;
   d3: tdata3;
   d5: tdata5;
begin

// SS_OK_COMMAND_TYPE           CB_COMMANDTYPE
  LoadData(q,SQL_COMMANDTYPE,True);

  while not q.Eof do
  begin
    D := TData.Create;
    with D do
    begin
      Id := q.FieldByName('id').AsString;
      Name := q.FieldByName('name').AsString;
    end;
    CB_COMMANDTYPE.Items.AddObject(q.FieldByName('name').AsString, D);
    q.Next;
  end;

// SS_OK_TEMPLATE_COMMAND       CB_TEMPLATECOMMAND
  LoadData(q,SQL_TEMPLATECOMMAND,True);

  while not q.Eof do
  begin
    D := TData.Create;
    with D do
    begin
      Id := q.FieldByName('id').AsString;
      Name := q.FieldByName('name').AsString;
    end;
    CB_TEMPLATECOMMAND.Items.AddObject(q.FieldByName('name').AsString, D);
    q.Next;
  end;

// 1,2,3
  LoadData(q,'select a.personal_code id, a.family||'' ''||a.first_name||'' ''||a.patronymic name,'+
          ' a.family, a.first_name firstname, a.patronymic '+
          ' from ok_personal a where'+
          ' a.branch='''+Branch+'''',True);

  while not q.Eof do
  begin
    D5 := TData5.Create;
    with D5 do
    begin
      Id := q.FieldByName('id').AsString;
      Name := q.FieldByName('name').AsString;
      Family := q.FieldByName('family').AsString;
      FirstName := q.FieldByName('firstname').AsString;
      Patronymic := q.FieldByName('patronymic').AsString;
    end;
    CB1.Items.AddObject(q.FieldByName('name').AsString, D5);
    CB2.Items.AddObject(q.FieldByName('name').AsString, D5);
    CB3.Items.AddObject(q.FieldByName('name').AsString, D5);

    if q.FieldByName('id').AsString = BOKForm.cdsOKPersonal.FieldByName('personal_code').AsString
    then begin
      CB1.ItemIndex := CB1.Items.Count-1;
    end;

    q.Next;
  end;

// 4,5
    LoadData(q,'select a.department_code id, a.department_name name from ss_ok_department a where'+
  ' a.state_notes=''A'' and branch='+Branch,True);

  while not q.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
      end;
      CB4.Items.AddObject(q.FieldByName('name').AsString, D);
      CB5.Items.AddObject(q.FieldByName('name').AsString, D);
      q.Next;
  end;

// 6
    LoadData(q,'select a.institution_code id, a.institution_name name, a.institution_abbreviation abbr from ss_ok_institution a where'+
  ' a.state_notes=''A''',True);

  while not q.Eof do
  begin
      D3 := TData3.Create;
      with D3 do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
        FileName := q.FieldByName('abbr').AsString;
      end;
      CB6.Items.AddObject(q.FieldByName('name').AsString, D3);
      q.Next;
  end;

// 7,8
    LoadData(q,'select a.article_code id, a.article_name name, a.article_num anum from ss_ok_article a where'+
  ' a.state_notes=''A''',True);

  while not q.Eof do
  begin
      D3 := TData3.Create;
      with D3 do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
        FileName := q.FieldByName('anum').AsString;
      end;
      CB7.Items.AddObject(q.FieldByName('name').AsString, D3);
      CB8.Items.AddObject(q.FieldByName('name').AsString, D3);
      q.Next;
  end;

// 9,10
    LoadData(q,'select a.bank_id id, a.bank_name name from s_mfo a where'+
  ' a.act=''A''',True);

  while not q.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
      end;
      CB9.Items.AddObject(q.FieldByName('name').AsString, D);
      CB10.Items.AddObject(q.FieldByName('name').AsString, D);
      q.Next;
  end;

// 11,12
  LoadData(q,'select a.post_code id, a.post_name name from ss_ok_post a where'+
  ' a.state_notes=''A'' ',True);

  while not q.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
      end;
      CB11.Items.AddObject(q.FieldByName('name').AsString, D);
      CB12.Items.AddObject(q.FieldByName('name').AsString, D);
      q.Next;
  end;

end;

procedure TfmOKOrder.CB_COMMANDTYPEChange(Sender: TObject);
var d3 : tdata3;

begin
  CB_TEMPLATECOMMAND.Clear;

  LoadData(q, SQL_TEMPLATECOMMAND+
  ' and a.command_type_code='+TData(CB_COMMANDTYPE.Items.Objects[CB_COMMANDTYPE.ItemIndex]).Id,True);
  while not q.Eof do
  begin
      D3 := TData3.Create;
      with D3 do
      begin
       Id := q.FieldByName('id').AsString;
       Name := q.FieldByName('name').AsString;
       FileName := q.FieldByName('fname').AsString;
      end;
       CB_TEMPLATECOMMAND.Items.AddObject(q.FieldByName('name').AsString, D3);
    q.Next;
  end;
end;

procedure TfmOKOrder.PreviewTemplate(FileName: String);
var App:      Variant;
      i:      integer;
    one_word, words: string;
begin

  Memo_temp.Clear;
  Memo2.Clear;
//  App := PrepareOle('C:\NCI Bank\Ok\Templates\15.doc','Word.Application');
//  App := PrepareOle('15.doc','Word.Application');

  App := BOKForm.PrepareOle(FileName,'Word.Application');

  If VarIsNull(App) Then Exit;

  words_all := '';
  words := '';

  for i := 1 to App.ActiveDocument.Words.Count
  do begin
    one_word := App.ActiveDocument.Words.Item(i);

    if (one_word <> #10) and (one_word <> #13)
    then words := words + one_word ;

    if one_word = #13
    then begin
      Memo_temp.Lines.Add(words);
      Memo2.Lines.Add(words);
      if words_all = ''
      then words_all := words
      else words_all := words_all + #13 + words;
      words :='';
    end;

  end;

//  Memo_temp.Lines.Add(words_all);

// ЭТО РАБОТАЕТ !!!!
//  App.Selection.Find.Execute('<OFFICE_NAME1>', false, false, false, false, false,
//                             true, 1, false, '>"OFFICE NAME 1"<', 2);

// до этой команды ворд работает в фоновом режиме
//  App.Visible:=true;

//  App.Close;
  App.Application.Quit(false);
  App:=unassigned;

end;
{
function TfmOKOrder.PrepareOle(FileName: String; TypeApp: String): Variant;
var fname, curdir:           String;
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
  If not DirectoryExists('C:\NCI Bank\Ok\Temp\') Then ForceDirectories('C:\NCI Bank\Ok\Temp\');

  Buffer     := nil;
  iBytesRead := 0;

  If not FileExists(curdir+'\'+FileName) Then
    Begin
      ShowMessage('Не найден файл '+curdir+'\'+FileName);
      Exit;
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
}
procedure TfmOKOrder.CB_TEMPLATECOMMANDChange(Sender: TObject);
begin

  PreviewTemplate( TData3(CB_TEMPLATECOMMAND.Items.Objects[CB_TEMPLATECOMMAND.ItemIndex]).FileName );
  IsNotChange := true;
end;

procedure TfmOKOrder.actTempPreviewExecute(Sender: TObject);
var i : integer;
begin
//  InMemoReplace('',);

  if not IsNotChange then
  begin
    Memo_temp.Clear;
    for i :=0 to Memo2.Lines.Count do
    begin
      Memo_temp.Lines.Add(Memo2.Lines[i]);
    end;
  end;

  IsNotChange := False;

  if CB1.ItemIndex <> -1 then
  begin
    InMemoReplace('<FAMILY1>', TData5(CB1.Items.Objects[CB1.ItemIndex]).Family);
    InMemoReplace('<F1>', copy(TData5(CB1.Items.Objects[CB1.ItemIndex]).Family,0,1) );
    InMemoReplace('<NAME1>', TData5(CB1.Items.Objects[CB1.ItemIndex]).FirstName);
    InMemoReplace('<N1>', copy(TData5(CB1.Items.Objects[CB1.ItemIndex]).FirstName,0,1) );
    InMemoReplace('<PATRONYMIC1>', TData5(CB1.Items.Objects[CB1.ItemIndex]).Patronymic);
    InMemoReplace('<P1>', copy(TData5(CB1.Items.Objects[CB1.ItemIndex]).Patronymic,0,1) );
  end;

  if CB2.ItemIndex <> -1 then
  begin
    InMemoReplace('<FAMILY2>', TData5(CB2.Items.Objects[CB2.ItemIndex]).Family);
    InMemoReplace('<F2>', copy(TData5(CB2.Items.Objects[CB2.ItemIndex]).Family,0,1) );
    InMemoReplace('<NAME2>', TData5(CB2.Items.Objects[CB2.ItemIndex]).FirstName);
    InMemoReplace('<N2>', copy(TData5(CB2.Items.Objects[CB2.ItemIndex]).FirstName,0,1) );
    InMemoReplace('<PATRONYMIC2>', TData5(CB2.Items.Objects[CB2.ItemIndex]).Patronymic);
    InMemoReplace('<P2>', copy(TData5(CB2.Items.Objects[CB2.ItemIndex]).Patronymic,0,1) );
  end;

  if CheckBox3.Checked then
  begin
    if (EdFamily3.Text <>'') or (edName3.Text<>'') or (edPatronymic3.Text <>'') then
    begin
      InMemoReplace('<FAMILY3>', EdFamily3.Text);
      InMemoReplace('<F3>', copy(EdFamily3.Text,0,1) );
      InMemoReplace('<NAME3>', edName3.Text);
      InMemoReplace('<N3>', copy(edName3.Text,0,1) );
      InMemoReplace('<PATRONYMIC3>', edPatronymic3.Text);
      InMemoReplace('<P3>', copy(edPatronymic3.Text,0,1) );
    end;
  end else
  begin
    if CB3.ItemIndex <> -1 then
    begin
      InMemoReplace('<FAMILY3>', TData5(CB3.Items.Objects[CB3.ItemIndex]).Family);
      InMemoReplace('<F3>', copy(TData5(CB3.Items.Objects[CB3.ItemIndex]).Family,0,1) );
      InMemoReplace('<NAME3>', TData5(CB3.Items.Objects[CB3.ItemIndex]).FirstName);
      InMemoReplace('<N3>', copy(TData5(CB3.Items.Objects[CB3.ItemIndex]).FirstName,0,1) );
      InMemoReplace('<PATRONYMIC3>', TData5(CB3.Items.Objects[CB3.ItemIndex]).Patronymic);
      InMemoReplace('<P3>', copy(TData5(CB3.Items.Objects[CB3.ItemIndex]).Patronymic,0,1) );
    end;
  end;

  if CB4.ItemIndex <> -1 then
  begin
    InMemoReplace('<DEPARTMENT_NAME4>', TData(CB4.Items.Objects[CB4.ItemIndex]).Name);
  end;

  if CB5.ItemIndex <> -1 then
  begin
    InMemoReplace('<DEPARTMENT_NAME5>', TData(CB5.Items.Objects[CB5.ItemIndex]).Name);
  end;

  if CB6.ItemIndex <> -1 then
  begin
    InMemoReplace('<INSTITUTION_NAME6>', TData3(CB6.Items.Objects[CB6.ItemIndex]).Name);
    InMemoReplace('<INSTITUTION_ABBREVIATION6>', TData3(CB6.Items.Objects[CB6.ItemIndex]).FileName);
  end;

  if CB7.ItemIndex <> -1 then
  begin
    InMemoReplace('<ARTICLE_NUM7>', TData3(CB7.Items.Objects[CB7.ItemIndex]).FileName);
    InMemoReplace('<ARTICLE_NAME7>', TData3(CB7.Items.Objects[CB7.ItemIndex]).Name);
  end;

  if CB8.ItemIndex <> -1 then
  begin
    InMemoReplace('<ARTICLE_NUM8>', TData3(CB8.Items.Objects[CB8.ItemIndex]).FileName);
    InMemoReplace('<ARTICLE_NAME8>', TData3(CB8.Items.Objects[CB8.ItemIndex]).Name);
  end;

  if CB9.ItemIndex <> -1 then
  begin
    InMemoReplace('<BANK_NAME9>', TData(CB9.Items.Objects[CB9.ItemIndex]).Name);
  end;

  if CB10.ItemIndex <> -1 then
  begin
    InMemoReplace('<BANK_NAME10>', TData(CB10.Items.Objects[CB10.ItemIndex]).Name);
  end;

  if CB11.ItemIndex <> -1 then
  begin
    InMemoReplace('<POST_NAME11>', TData(CB11.Items.Objects[CB11.ItemIndex]).Name);
  end;

  if CB12.ItemIndex <> -1 then
  begin
    InMemoReplace('<POST_NAME12>', TData(CB12.Items.Objects[CB12.ItemIndex]).Name);
  end;

  if edAmount13.Text <> '' then
  begin
    InMemoReplace('<AMOUNT13>', edAmount13.Text);
  end;

  if edText14.Text <> '' then
  begin
    InMemoReplace('<TEXT14>', edText14.Text);
  end;

  if edText15.Text <> '' then
  begin
    InMemoReplace('<TEXT15>', edText15.Text);
  end;

  if edText16.Text <> '' then
  begin
    InMemoReplace('<TEXT16>', edText16.Text);
  end;

  if edText17.Text <> '' then
  begin
    InMemoReplace('<TEXT17>', edText17.Text);
  end;

  if edText18.Text <> '' then
  begin
    InMemoReplace('<TEXT18>', edText18.Text);
  end;

  if edText19.Text <> '' then
  begin
    InMemoReplace('<TEXT19>', edText19.Text);
  end;

  if edText20.Text <> '' then
  begin
    InMemoReplace('<TEXT20>', edText20.Text);
  end;

  if edText21.Text <> '' then
  begin
    InMemoReplace('<TEXT21>', edText21.Text);
  end;

end;

procedure TfmOKOrder.InMemoReplace(FindText:string; ReplaceText:string);
var
  SelPos, I: Integer;
begin
  { Perform a global case-sensitive search for FindText in Memo }
  for i :=0 to 3 do
// Три раза если параметр встречается трижды...
  begin
    SelPos := Pos(FindText, Memo_temp.Lines.Text);
    if SelPos > 0 then
    begin
      Memo_temp.SelStart := SelPos - 1;
      Memo_temp.SelLength := Length(FindText);
      { Replace selected text with ReplaceText }
      Memo_temp.SelText := ReplaceText;
    end;
  end;

end;

procedure TfmOKOrder.actTempOkExecute(Sender: TObject);
var App:      Variant;
      i:      integer;
begin


  App := BOKForm.PrepareOle( TData3(CB_TEMPLATECOMMAND.Items.Objects[CB_TEMPLATECOMMAND.ItemIndex]).FileName ,'Word.Application');

  If VarIsNull(App) Then Exit;

// ЭТО РАБОТАЕТ !!!!

  if CB1.ItemIndex <> -1 then
  begin
    App.Selection.Find.Execute('<FAMILY1>', false, false, false, false, false,
           true, 1, false, TData5(CB1.Items.Objects[CB1.ItemIndex]).Family, 2);

    App.Selection.Find.Execute('<F1>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB1.Items.Objects[CB1.ItemIndex]).Family,0,1), 2);

    App.Selection.Find.Execute('<NAME1>', false, false, false, false, false,
           true, 1, false, TData5(CB1.Items.Objects[CB1.ItemIndex]).FirstName, 2);

    App.Selection.Find.Execute('<N1>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB1.Items.Objects[CB1.ItemIndex]).FirstName,0,1), 2);

    App.Selection.Find.Execute('<PATRONYMIC1>', false, false, false, false, false,
           true, 1, false, TData5(CB1.Items.Objects[CB1.ItemIndex]).Patronymic, 2);

    App.Selection.Find.Execute('<P1>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB1.Items.Objects[CB1.ItemIndex]).Patronymic,0,1), 2);
  end;

  if CB2.ItemIndex <> -1 then
  begin
    App.Selection.Find.Execute('<FAMILY2>', false, false, false, false, false,
           true, 1, false, TData5(CB2.Items.Objects[CB2.ItemIndex]).Family, 2);

    App.Selection.Find.Execute('<F2>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB2.Items.Objects[CB2.ItemIndex]).Family,0,1), 2);

    App.Selection.Find.Execute('<NAME2>', false, false, false, false, false,
           true, 1, false, TData5(CB2.Items.Objects[CB2.ItemIndex]).FirstName, 2);

    App.Selection.Find.Execute('<N2>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB2.Items.Objects[CB2.ItemIndex]).FirstName,0,1), 2);

    App.Selection.Find.Execute('<PATRONYMIC2>', false, false, false, false, false,
           true, 1, false, TData5(CB2.Items.Objects[CB2.ItemIndex]).Patronymic, 2);

    App.Selection.Find.Execute('<P2>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB2.Items.Objects[CB2.ItemIndex]).Patronymic,0,1), 2);
  end;

  if CheckBox3.Checked then
  begin
    if (EdFamily3.Text <>'') or (edName3.Text<>'') or (edPatronymic3.Text <>'') then
    begin
      App.Selection.Find.Execute('<FAMILY3>', false, false, false, false, false,
           true, 1, false, TData5(CB3.Items.Objects[CB3.ItemIndex]).Family, 2);

      App.Selection.Find.Execute('<F3>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB3.Items.Objects[CB3.ItemIndex]).Family,0,1), 2);

      App.Selection.Find.Execute('<NAME3>', false, false, false, false, false,
           true, 1, false, TData5(CB3.Items.Objects[CB3.ItemIndex]).FirstName, 2);

      App.Selection.Find.Execute('<N3>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB3.Items.Objects[CB3.ItemIndex]).FirstName,0,1), 2);

      App.Selection.Find.Execute('<PATRONYMIC3>', false, false, false, false, false,
           true, 1, false, TData5(CB3.Items.Objects[CB3.ItemIndex]).Patronymic, 2);

      App.Selection.Find.Execute('<P3>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB3.Items.Objects[CB3.ItemIndex]).Patronymic,0,1), 2);
    end;
  end else
  begin
    if CB3.ItemIndex <> -1 then
    begin
      App.Selection.Find.Execute('<FAMILY3>', false, false, false, false, false,
           true, 1, false, TData5(CB3.Items.Objects[CB3.ItemIndex]).Family, 2);

      App.Selection.Find.Execute('<F3>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB3.Items.Objects[CB3.ItemIndex]).Family,0,1), 2);

      App.Selection.Find.Execute('<NAME3>', false, false, false, false, false,
           true, 1, false, TData5(CB3.Items.Objects[CB3.ItemIndex]).FirstName, 2);

      App.Selection.Find.Execute('<N3>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB3.Items.Objects[CB3.ItemIndex]).FirstName,0,1), 2);

      App.Selection.Find.Execute('<PATRONYMIC3>', false, false, false, false, false,
           true, 1, false, TData5(CB3.Items.Objects[CB3.ItemIndex]).Patronymic, 2);

      App.Selection.Find.Execute('<P3>', false, false, false, false, false,
           true, 1, false, copy(TData5(CB3.Items.Objects[CB3.ItemIndex]).Patronymic,0,1), 2);
    end;
  end;

  if CB4.ItemIndex <> -1 then
  begin
      App.Selection.Find.Execute('<DEPARTMENT_NAME4>', false, false, false, false, false,
           true, 1, false, TData(CB4.Items.Objects[CB4.ItemIndex]).Name, 2);
  end;

  if CB5.ItemIndex <> -1 then
  begin
      App.Selection.Find.Execute('<DEPARTMENT_NAME5>', false, false, false, false, false,
           true, 1, false, TData(CB5.Items.Objects[CB5.ItemIndex]).Name, 2);
  end;

  if CB6.ItemIndex <> -1 then
  begin
      App.Selection.Find.Execute('<INSTITUTION_NAME6>', false, false, false, false, false,
           true, 1, false, TData3(CB6.Items.Objects[CB6.ItemIndex]).Name, 2);

      App.Selection.Find.Execute('<INSTITUTION_ABBREVIATION6>', false, false, false, false, false,
           true, 1, false, TData3(CB6.Items.Objects[CB6.ItemIndex]).FileName, 2);
  end;

  if CB7.ItemIndex <> -1 then
  begin
      App.Selection.Find.Execute('<ARTICLE_NUM7>', false, false, false, false, false,
           true, 1, false, TData3(CB7.Items.Objects[CB7.ItemIndex]).FileName, 2);

      App.Selection.Find.Execute('<ARTICLE_NAME7>', false, false, false, false, false,
           true, 1, false, TData3(CB7.Items.Objects[CB7.ItemIndex]).Name, 2);
  end;

  if CB8.ItemIndex <> -1 then
  begin
      App.Selection.Find.Execute('<ARTICLE_NUM8>', false, false, false, false, false,
           true, 1, false, TData3(CB8.Items.Objects[CB8.ItemIndex]).FileName, 2);

      App.Selection.Find.Execute('<ARTICLE_NAME8>', false, false, false, false, false,
           true, 1, false, TData3(CB8.Items.Objects[CB8.ItemIndex]).Name, 2);
  end;

  if CB9.ItemIndex <> -1 then
  begin
      App.Selection.Find.Execute('<BANK_NAME9>', false, false, false, false, false,
           true, 1, false, TData(CB9.Items.Objects[CB9.ItemIndex]).Name, 2);
  end;

  if CB10.ItemIndex <> -1 then
  begin
//    InMemoReplace('<BANK_NAME10>', TData(CB10.Items.Objects[CB10.ItemIndex]).Name);
      App.Selection.Find.Execute('<BANK_NAME10>', false, false, false, false, false,
           true, 1, false, TData(CB10.Items.Objects[CB10.ItemIndex]).Name, 2);
  end;

  if CB11.ItemIndex <> -1 then
  begin
//    InMemoReplace('<POST_NAME11>', TData(CB11.Items.Objects[CB11.ItemIndex]).Name);
      App.Selection.Find.Execute('<POST_NAME11>', false, false, false, false, false,
           true, 1, false, TData(CB11.Items.Objects[CB11.ItemIndex]).Name, 2);
  end;

  if CB12.ItemIndex <> -1 then
  begin
//    InMemoReplace('<POST_NAME12>', TData(CB12.Items.Objects[CB12.ItemIndex]).Name);
      App.Selection.Find.Execute('<POST_NAME12>', false, false, false, false, false,
           true, 1, false, TData(CB12.Items.Objects[CB12.ItemIndex]).Name, 2);
  end;

  if edAmount13.Text <> '' then
  begin
//    InMemoReplace('<AMOUNT13>', edAmount13.Text);
      App.Selection.Find.Execute('<AMOUNT13>', false, false, false, false, false,
           true, 1, false, edAmount13.Text, 2);
  end;

  if edText14.Text <> '' then
  begin
//    InMemoReplace('<TEXT14>', edText14.Text);
      App.Selection.Find.Execute('<TEXT14>', false, false, false, false, false,
           true, 1, false, edTEXT14.Text, 2);
  end;

  if edText15.Text <> '' then
  begin
//    InMemoReplace('<TEXT15>', edText15.Text);
      App.Selection.Find.Execute('<TEXT15>', false, false, false, false, false,
           true, 1, false, edTEXT15.Text, 2);
  end;

  if edText16.Text <> '' then
  begin
//    InMemoReplace('<TEXT16>', edText16.Text);
      App.Selection.Find.Execute('<TEXT16>', false, false, false, false, false,
           true, 1, false, edTEXT16.Text, 2);
  end;

  if edText17.Text <> '' then
  begin
//    InMemoReplace('<TEXT17>', edText17.Text);
      App.Selection.Find.Execute('<TEXT17>', false, false, false, false, false,
           true, 1, false, edTEXT17.Text, 2);
  end;

  if edText18.Text <> '' then
  begin
//    InMemoReplace('<TEXT18>', edText18.Text);
      App.Selection.Find.Execute('<TEXT18>', false, false, false, false, false,
           true, 1, false, edTEXT18.Text, 2);
  end;

  if edText19.Text <> '' then
  begin
//    InMemoReplace('<TEXT19>', edText19.Text);
      App.Selection.Find.Execute('<TEXT19>', false, false, false, false, false,
           true, 1, false, edTEXT19.Text, 2);
  end;

  if edText20.Text <> '' then
  begin
//    InMemoReplace('<TEXT20>', edText20.Text);
      App.Selection.Find.Execute('<TEXT20>', false, false, false, false, false,
           true, 1, false, edTEXT20.Text, 2);
  end;

  if edText21.Text <> '' then
  begin
//    InMemoReplace('<TEXT21>', edText21.Text);
      App.Selection.Find.Execute('<TEXT21>', false, false, false, false, false,
           true, 1, false, edTEXT21.Text, 2);
  end;

// до этой команды ворд работает в фоновом режиме
  App.Visible:=true;

//  App.Application.Quit;
  App:=unassigned;

end;

procedure TfmOKOrder.ed1Change(Sender: TObject);
var d5 : tdata5;
    sub_query : string;
begin

  CB1.Clear;

  if ed1.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.personal_code='+ed1.Text;

// 1,2,3
  LoadData(q,'select a.personal_code id, a.family||'' ''||a.first_name||'' ''||a.patronymic name,'+
          ' a.family, a.first_name firstname, a.patronymic '+
          ' from ok_personal a where'+
            sub_query+
          ' and a.branch='''+Branch+'''',True);

  while not q.Eof do
  begin
    D5 := TData5.Create;
    with D5 do
    begin
      Id := q.FieldByName('id').AsString;
      Name := q.FieldByName('name').AsString;
      Family := q.FieldByName('family').AsString;
      FirstName := q.FieldByName('firstname').AsString;
      Patronymic := q.FieldByName('patronymic').AsString;
    end;
    CB1.Items.AddObject(q.FieldByName('name').AsString, D5);
    CB1.ItemIndex := CB1.Items.Count-1;
    q.Next;
  end;
end;

procedure TfmOKOrder.ed2Change(Sender: TObject);
var d5 : tdata5;
    sub_query : string;
begin

  if ed2.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.personal_code='+ed2.Text;

  CB2.Clear;
// 1,2,3
  LoadData(q,'select a.personal_code id, a.family||'' ''||a.first_name||'' ''||a.patronymic name,'+
          ' a.family, a.first_name firstname, a.patronymic '+
          ' from ok_personal a where'+
           sub_query+
          ' and a.branch='''+Branch+'''',True);

  while not q.Eof do
  begin
    D5 := TData5.Create;
    with D5 do
    begin
      Id := q.FieldByName('id').AsString;
      Name := q.FieldByName('name').AsString;
      Family := q.FieldByName('family').AsString;
      FirstName := q.FieldByName('firstname').AsString;
      Patronymic := q.FieldByName('patronymic').AsString;
    end;
    CB2.Items.AddObject(q.FieldByName('name').AsString, D5);
    CB2.ItemIndex := CB2.Items.Count-1;
    q.Next;
  end;

end;

procedure TfmOKOrder.ed3Change(Sender: TObject);
var d5 : tdata5;
    sub_query : string;
begin

  if ed3.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.personal_code='+ed3.Text;

  CB3.Clear;
// 1,2,3
  LoadData(q,'select a.personal_code id, a.family||'' ''||a.first_name||'' ''||a.patronymic name,'+
          ' a.family, a.first_name firstname, a.patronymic '+
          ' from ok_personal a where'+
           sub_query+
          ' and a.branch='''+Branch+'''',True);

  while not q.Eof do
  begin
    D5 := TData5.Create;
    with D5 do
    begin
      Id := q.FieldByName('id').AsString;
      Name := q.FieldByName('name').AsString;
      Family := q.FieldByName('family').AsString;
      FirstName := q.FieldByName('firstname').AsString;
      Patronymic := q.FieldByName('patronymic').AsString;
    end;
    CB3.Items.AddObject(q.FieldByName('name').AsString, D5);
    CB3.ItemIndex := CB3.Items.Count-1;
    q.Next;
  end;

end;

procedure TfmOKOrder.ed4Change(Sender: TObject);
var d : tdata;
    sub_query : string;
begin
  CB4.Clear;
// 4,5
  if ed4.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' and a.department_code='+ed4.Text;

  LoadData(q,'select a.department_code id, a.department_name name'+
        ' from ss_ok_department a where'+
          ' a.state_notes=''A'' '+
            sub_query +
          ' and a.branch='+Branch,True);

  while not q.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
      end;
      CB4.Items.AddObject(q.FieldByName('name').AsString, D);
      CB4.ItemIndex := CB4.Items.Count-1;
      q.Next;
  end;

end;

procedure TfmOKOrder.ed5Change(Sender: TObject);
var d : tdata;
    sub_query : string;
begin
  CB5.Clear;
// 4,5
  if ed5.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' and a.department_code='+ed4.Text;

  LoadData(q,'select a.department_code id, a.department_name name from ss_ok_department a where'+
          ' a.state_notes=''A'' '+
          sub_query+
          ' and a.branch='+Branch,True);

  while not q.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
      end;
      CB5.Items.AddObject(q.FieldByName('name').AsString, D);
      CB5.ItemIndex := CB5.Items.Count-1;
      q.Next;
  end;

end;

procedure TfmOKOrder.ed6Change(Sender: TObject);
var d3 : tdata3;
    sub_query : string;
begin

  if ed6.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.institution_code='+ed6.Text;

  CB6.Clear;
  LoadData(q,'select a.institution_code id, a.institution_name name, '+
          ' a.institution_abbreviation abbr from ss_ok_institution a where'+
              sub_query+
          ' and a.state_notes=''A''',True);

  while not q.Eof do
  begin
      D3 := TData3.Create;
      with D3 do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
        FileName := q.FieldByName('abbr').AsString;
      end;
      CB6.Items.AddObject(q.FieldByName('name').AsString, D3);
      CB6.ItemIndex := CB6.Items.Count-1;
      q.Next;
  end;

end;

procedure TfmOKOrder.actTempClearExecute(Sender: TObject);
begin
  RefreshOrderTarget('ALL');
  words_all := '';
  memo2.clear;
  Memo_temp.Clear;

end;

procedure TfmOKOrder.ed7Change(Sender: TObject);
var d3 : tdata3;
    sub_query : string;
begin

  if ed7.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.article_code='+ed7.Text;
  CB7.Clear;

  LoadData(q,'select a.article_code id, a.article_name name, a.article_num anum '+
        ' from ss_ok_article a where'+
         sub_query+
         ' and a.state_notes=''A''',True);

  while not q.Eof do
  begin
      D3 := TData3.Create;
      with D3 do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
        FileName := q.FieldByName('anum').AsString;
      end;
      CB7.Items.AddObject(q.FieldByName('name').AsString, D3);
      q.Next;
  end;
end;

procedure TfmOKOrder.ed8Change(Sender: TObject);
var d3 : tdata3;
    sub_query : string;
begin

  if ed8.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.article_code='+ed8.Text;
  CB8.Clear;

    LoadData(q,'select a.article_code id, a.article_name name, a.article_num anum '+
         ' from ss_ok_article a where'+
           sub_query+
         ' and a.state_notes=''A''',True);

  while not q.Eof do
  begin
      D3 := TData3.Create;
      with D3 do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
        FileName := q.FieldByName('anum').AsString;
      end;
      CB8.Items.AddObject(q.FieldByName('name').AsString, D3);
      q.Next;
  end;
end;

procedure TfmOKOrder.ed9Change(Sender: TObject);
var d : tdata;
    sub_query : string;
begin
// 9

  if ed9.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.bank_id='+ed9.Text;
  CB9.Clear;

    LoadData(q,'select a.bank_id id, a.bank_name name from s_mfo a where'+
           sub_query+
          ' a.act=''A''',True);

  while not q.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
      end;
      CB9.Items.AddObject(q.FieldByName('name').AsString, D);
      q.Next;
  end;
end;

procedure TfmOKOrder.ed10Change(Sender: TObject);
var d : tdata;
    sub_query : string;
begin
// 10

  if ed10.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.bank_id='+ed10.Text;
  CB10.Clear;

    LoadData(q,'select a.bank_id id, a.bank_name name from s_mfo a where'+
           sub_query+
          ' and a.act=''A''',True);

  while not q.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
      end;
      CB10.Items.AddObject(q.FieldByName('name').AsString, D);
      q.Next;
  end;
end;

procedure TfmOKOrder.ed11Change(Sender: TObject);
var d : tdata;
    sub_query : string;
begin
// 11

  if ed11.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.post_code='+ed11.Text;
  CB11.Clear;

  LoadData(q,'select a.post_code id, a.post_name name from ss_ok_post a where'+
           sub_query+
          ' and a.state_notes=''A'' ',True);

  while not q.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
      end;
      CB11.Items.AddObject(q.FieldByName('name').AsString, D);
      q.Next;
  end;
end;

procedure TfmOKOrder.ed12Change(Sender: TObject);
var d : tdata;
    sub_query : string;
begin
// 12

  if ed12.Text = ''
  then sub_query := ' 1=1'
  else sub_query := ' a.post_code='+ed12.Text;
  CB12.Clear;

  LoadData(q,'select a.post_code id, a.post_name name from ss_ok_post a where'+
           sub_query+
          ' and a.state_notes=''A'' ',True);

  while not q.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := q.FieldByName('id').AsString;
        Name := q.FieldByName('name').AsString;
      end;
      CB12.Items.AddObject(q.FieldByName('name').AsString, D);
      q.Next;
  end;

end;

end.
