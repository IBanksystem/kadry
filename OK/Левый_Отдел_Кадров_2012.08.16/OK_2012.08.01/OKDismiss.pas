unit OKDismiss;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls, errDlg;

type
  TfmOKDismiss = class(TBaseForm)
    OpenCenterPanel: TPanel;
    gbDismiss: TGroupBox;
    lbPatronymic: TLabel;
    lbName: TLabel;
    lbFamily: TLabel;
    lbStatus: TLabel;
    Label34: TLabel;
    medOutOfficeDate: TMaskEdit;
    lbChangeMotive: TLabel;
    edArticle: TEdit;
    bOk: TButton;
    bCancel: TButton;
    bClear: TButton;
    Label1: TLabel;
    Label2: TLabel;
    medBasisNum: TEdit;
    medBasisDate: TMaskEdit;
    Label4: TLabel;
    lbDepartment: TLabel;
    lbPost: TLabel;
    Label3: TLabel;
    lbArtticleInfo: TLabel;
    cbArticle: TComboBox;
    edDismiss: TEdit;
    cbDismiss: TComboBox;
    Label5: TLabel;
    edSPrich: TEdit;
    cbSPrich: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    procedure bClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbArticleChange(Sender: TObject);
    procedure edArticleChange(Sender: TObject);
    procedure edDismissChange(Sender: TObject);
    procedure cbDismissChange(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure cbSPrichChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOKDismiss: TfmOKDismiss;

implementation

uses BOKMain;

{$R *.dfm}

procedure TfmOKDismiss.bClearClick(Sender: TObject);
var i: Integer;
    d: tdata;
begin

  For i := 0 to ComponentCount-1 do
  Begin
      If Components[i].ClassType = TEdit Then
        TEdit(Components[i]).Clear
      else If Components[i].ClassType = TMaskEdit Then
        TMaskEdit(Components[i]).Clear;
  End;


                   BOKForm.Source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
  BOKForm.LoadData(BOKForm.Source,'select a.article_code id,'+
  ' lpad(to_char(a.article_code),4,'' '')||'') ''||a.ARTICLE_CHARACTER name '+
  ' from ss_ok_article a where'+
  ' a.state_notes=:p_1',True);

  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBarticle.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

end;

procedure TfmOKDismiss.FormCreate(Sender: TObject);
var d : tdata;
begin
  BOKForm := TBOKForm(owner);

      BOKForm.source.close;
      with BOKForm.source.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := 'A';
      end;
  BOKForm.LoadData(BOKForm.Source,'select a.article_code id,'+
  ' lpad(to_char(a.article_code),4,'' '')||'') ''||a.ARTICLE_CHARACTER name '+
  ' from ss_ok_article a where'+
  ' a.state_notes=:p_1 ',True);

  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBarticle.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

      BOKForm.source.close;
      with BOKForm.source.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := 'A';
      end;
  BOKForm.LoadData(BOKForm.Source,'SELECT to_char(motive_dismissial_code) id,'+
                        ' lpad(to_char(motive_dismissial_code),3,'' '')||'') ''||motive_dismissial_name name'+
                        ' FROM ss_ok_motive_dismissial'+
                        ' WHERE state_notes =:p_1',True);

  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBdismiss.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;


      BOKForm.source.close;
      with BOKForm.source.Params
      do begin
          clear;
          CreateParam(ftString,'p_1' ,ptInput);
          ParamByName('p_1').Value := 'A';
      end;
  BOKForm.LoadData(BOKForm.Source,'SELECT prich_id id,'+
                        ' lpad(prich_id,3,'' '')||'') ''||name_pr name'+
                        ' FROM s_prich'+
                        ' WHERE act = :p_1',True);

  while not BOKForm.Source.Eof do
  begin
      D := TData.Create;
      with D do
      begin
        Id := BOKForm.Source.FieldByName('id').AsString;
        Name := BOKForm.Source.FieldByName('name').AsString;
      end;
      CBsprich.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
      BOKForm.Source.Next;
  end;

end;

procedure TfmOKDismiss.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var d:tdata;
begin

  Case Key of
    VK_RETURN: SelectNext(ActiveControl, True, True);
    VK_F9:
      Begin
        IF (Sender = cbArticle) or (Sender = edArticle)
        OR (Sender = cbDismiss) or (Sender = edDismiss)
        THEN BEGIN
                 If (Sender = cbArticle) or (Sender = edArticle)
                 Then begin
                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   BOKForm.LoadData(BOKForm.Source,'SELECT to_char(Article_code) id,'+
                        ' ARTICLE_CHARACTER name'+
                        ' FROM ss_ok_Article'+
                        ' WHERE state_notes=:p_1',True);
                 end;
                 If (Sender = cbDismiss) or (Sender = edDismiss)
                 Then begin
                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   BOKForm.LoadData(BOKForm.Source,'SELECT to_char(motive_dismissial_code) id,'+
                        ' motive_dismissial_name name'+
                        ' FROM ss_ok_motive_dismissial'+
                        ' WHERE state_notes=:p_1',True);
                 end;

                 BOKForm.Source.Edit;
                 With TSelectDialog.CreateEx(Self, BOKForm.Source, BOKForm.Source, BOKForm.Source.FindField('id').Index) do
                  Try
                    If ShowModal = mrOk Then begin

                      If (Sender = CBArticle) or (Sender = edArticle)
                      Then begin
                        D := TData.Create;
                        with D do
                        begin
                          Id := BOKForm.Source.FieldByName('id').AsString;
                          Name := BOKForm.Source.FieldByName('name').AsString;
                        end;
                        CBArticle.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
                        CBArticle.ItemIndex := CBArticle.Items.Count-1;
                        CBArticleChange(nil);
                      end;

                      If (Sender = CBDismiss) or (Sender = edDismiss)
                      Then begin
                        D := TData.Create;
                        with D do
                        begin
                          Id := BOKForm.Source.FieldByName('id').AsString;
                          Name := BOKForm.Source.FieldByName('name').AsString;
                        end;
                        CBDismiss.Items.AddObject(BOKForm.Source.FieldByName('name').AsString, D);
                        CBDismiss.ItemIndex := CBDismiss.Items.Count-1;
                        CBDismissChange(nil);
                      end;

                    end;

                  Finally
                    Destination.Filtered:=false;
                    Free;
                  End;
               End;
        END;
  End;

end;

procedure TfmOKDismiss.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
  If ModalResult = mrCancel Then Exit;

end;

procedure TfmOKDismiss.cbArticleChange(Sender: TObject);
begin
  if (CBArticle.ItemIndex<>-1)
  then
    edArticle.text := TData(CBArticle.Items.Objects[CBArticle.ItemIndex]).Id;

end;

procedure TfmOKDismiss.edArticleChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

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

end;

procedure TfmOKDismiss.edDismissChange(Sender: TObject);
var i : integer;
    is_found : boolean;
begin

  is_found := false;

  for i:=1 to CBDismiss.Items.Count
  do begin

    if edDismiss.text = TData(CBDismiss.Items.Objects[ i-1 ]).Id
    then begin
        is_found := true;
        CBDismiss.ItemIndex := i-1;
    end;

  end;

  if not is_found
  then begin
    CBDismiss.ItemIndex := -1;
  end;

end;

procedure TfmOKDismiss.cbDismissChange(Sender: TObject);
begin
  if (CBdismiss.ItemIndex<>-1)
  then
    eddismiss.text := TData(CBdismiss.Items.Objects[CBdismiss.ItemIndex]).Id;

end;

procedure TfmOKDismiss.bOkClick(Sender: TObject);
var erMessage, motive_dismissial_code, ArticleCode, str_param   : string;
//    sql_, DepartmentCode, PostCode : string;
//    v : variant;
const
  ERROR_NO = 'ORA-20000: ';
begin

  ErMessage:='';

  try
    strTOdate(medBasisDate.Text);
  except
    ErMessage := ErMessage+#13+'Дата приказа указана неверно:'+medBasisDate.Text;
  end;

  try
    strTOdate(medOutOfficeDate.Text);
  except
    ErMessage := ErMessage+#13+'Дата увольнения указана неверно:'+medOutOfficeDate.Text;
  end;

  if (CBdismiss.ItemIndex=-1) and (CBsprich.ItemIndex=-1)
  then begin
    ErMessage := ErMessage+#13+'Причина увольнения';
  end;

  if (cbArticle.ItemIndex=-1)
  then begin
    ErMessage := ErMessage+#13+'Статья КЗОТ ';
  end;

  if medBasisNum.Text=''
  then begin
    ErMessage := ErMessage+#13+'Номер приказа';
  end;

  if ErMessage<>''
  then begin
    showmessage('Не все поля заполнены'+#13+ErMessage);
    exit;
  end;

  try
//          execSQL('begin Param.SaveParam(1); end;');
    BOKForm.execSQL('begin param.ClearParam; end;');

//    BOKForm.execSQL('begin Param.SetParam(''PERSONAL_CODE'','+
//      BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString +'); end;');
    BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;',
      'PERSONAL_CODE',
      BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString );

//    BOKForm.execSQL('begin Param.SetParam(''BRANCH'',info.getbranch); end;');
    BOKForm.execSQLPAR('begin Param.SetParam(:p_1,info.getbranch); end;','BRANCH');

//    BOKForm.execSQL('begin Param.SetParam(''OUT_OFFICE_DATE'','''+ medOutOfficeDate.Text     + '''); end;');
    BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'OUT_OFFICE_DATE', medOutOfficeDate.Text );

    if (CBdismiss.ItemIndex<>-1)
    then begin
      MOTIVE_DISMISSIAL_CODE:= TData(CBdismiss.Items.Objects[CBdismiss.ItemIndex]).Id;
//      BOKForm.execSQL('begin Param.SetParam(''MOTIVE_DISMISSIAL_CODE'',    '''+ MOTIVE_DISMISSIAL_CODE + '''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'MOTIVE_DISMISSIAL_CODE', MOTIVE_DISMISSIAL_CODE );

      str_param :=TData(CBsprich.Items.Objects[CBdismiss.ItemIndex]).name;
//      BOKForm.execSQL('begin Param.SetParam(''NAME_PR'','''+ str_param   + '''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'NAME_PR', str_param );
    end else begin
//      BOKForm.execSQL('begin Param.SetParam(''MOTIVE_DISMISSIAL_CODE'',    ''-1''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'MOTIVE_DISMISSIAL_CODE',    '-1' );
    end;
          ArticleCode := TData(CBArticle.Items.Objects[CBArticle.ItemIndex]).Id;

//    BOKForm.execSQL('begin Param.SetParam(''ARTICLE_CODE'','''+ ArticleCode   + '''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'ARTICLE_CODE' , ArticleCode );
//    BOKForm.execSQL('begin Param.SetParam(''BASIS_NUM'','''+ medBasisNum.Text      + '''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'BASIS_NUM', medBasisNum.Text );
//    BOKForm.execSQL('begin Param.SetParam(''BASIS_DATE'','''+ medBasisDate.Text + '''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'BASIS_DATE', medBasisDate.Text );
//    BOKForm.execSQL('begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'EMP_CODE', UserId );
//    BOKForm.execSQL('begin Param.SetParam(''OFFICE_ADDRESS'','''+BOKForm.edOfficeAddress.Text +'''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'OFFICE_ADDRESS',BOKForm.edOfficeAddress.Text );


    if (CBsprich.ItemIndex<>-1)
    then begin
      str_param :=TData(CBsprich.Items.Objects[CBsprich.ItemIndex]).Id;
//      BOKForm.execSQL('begin Param.SetParam(''PRICH_ID'','''+ str_param   + '''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'PRICH_ID', str_param );

      str_param :=TData(CBsprich.Items.Objects[CBsprich.ItemIndex]).name;
//      BOKForm.execSQL('begin Param.SetParam(''NAME_PR'','''+ str_param   + '''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'NAME_PR', str_param );

    end else begin
//      BOKForm.execSQL('begin Param.SetParam(''PRICH_ID'',''-1''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'PRICH_ID','-1' );

//      BOKForm.execSQL('begin Param.SetParam(''NAME_PR'',''-1''); end;');
      BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'NAME_PR','-1' );

    end;
    BOKForm.execSQL('begin OK_SERVICE.Dismiss_Colleague; end;');

    BOKForm.execSQL('begin Param.ClearParam; end;');

    BOKForm.ExecSQL('COMMIT');
    BOKForm.cdsOKPersonal.Refresh;
          if     BOKForm.cdsOKPost.Active
          then begin
                BOKForm.cdsOKPost.Refresh;
          end;

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
              Else If pos('ORA-01400', E.Message) > 0 Then ShowMessage('Ошибка при сохранении(403). Пожалуйста, заполните пустые поля!'+#13+e.message)
                   else ShowMessage(e.Message);
              exit;
            End;
          end;

  showmessage('Сотрудник '+lbFamily.Caption+' '+
    lbName.Caption+' '+lbPatronymic.Caption+' уволен.');

  bCancel.click;


end;

procedure TfmOKDismiss.cbSPrichChange(Sender: TObject);
begin
  if (cbSPrich.ItemIndex<>-1)
  then
    edSPrich.text := TData(cbSPrich.Items.Objects[cbSPrich.ItemIndex]).Id;

end;

end.
