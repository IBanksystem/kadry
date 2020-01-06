unit OKDekret;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls, errDlg;

type
  TfmOKDekret = class(TBaseForm)
    OpenCenterPanel: TPanel;
    gbDismiss: TGroupBox;
    lbPatronymic: TLabel;
    lbName: TLabel;
    lbFamily: TLabel;
    lbStatus: TLabel;
    medDateInLeave: TMaskEdit;
    lbChangeMotive: TLabel;
    bOk: TButton;
    bCancel: TButton;
    bClear: TButton;
    Label1: TLabel;
    medNumBasis: TEdit;
    medDateBasis: TMaskEdit;
    Label4: TLabel;
    lbDepartment: TLabel;
    lbPost: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    medDateOutLeave: TMaskEdit;
    procedure bClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOKDekret: TfmOKDekret;

implementation

uses BOKMain;

{$R *.dfm}

procedure TfmOKDekret.bClearClick(Sender: TObject);
var i: Integer;
//    d: tdata;
begin

  For i := 0 to ComponentCount-1 do
  Begin
      If Components[i].ClassType = TEdit Then
        TEdit(Components[i]).Clear
      else If Components[i].ClassType = TMaskEdit Then
        TMaskEdit(Components[i]).Clear;
  End;


end;

procedure TfmOKDekret.FormCreate(Sender: TObject);
//var d : tdata;
begin
  BOKForm := TBOKForm(owner);



end;

procedure TfmOKDekret.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var d:tdata;
begin

  Case Key of
    VK_RETURN: SelectNext(ActiveControl, True, True);
    VK_F9:
      Begin
{
        IF (Sender = cbArticle) or (Sender = edArticle)
        OR (Sender = cbDismiss) or (Sender = edDismiss)
        THEN BEGIN
                 If (Sender = cbArticle) or (Sender = edArticle)
                 Then BOKForm.LoadData(BOKForm.Source,'SELECT to_char(Article_code) id,'+
                        ' ARTICLE_CHARACTER name'+
                        ' FROM ss_ok_Article'+
                        ' WHERE state_notes = ''A''',True);
                 If (Sender = cbDismiss) or (Sender = edDismiss)
                 Then BOKForm.LoadData(BOKForm.Source,'SELECT to_char(motive_dismissial_code) id,'+
                        ' motive_dismissial_name name'+
                        ' FROM ss_ok_motive_dismissial'+
                        ' WHERE state_notes = ''A''',True);

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
}
        END;
  End;

end;

procedure TfmOKDekret.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  If ModalResult = mrCancel Then Exit;

end;

procedure TfmOKDekret.bOkClick(Sender: TObject);
var erMessage,sql_   : string;
//var  motive_dismissial_code, ArticleCode   : string;
//    sql_, DepartmentCode, PostCode : string;
//    v : variant;
const
  ERROR_NO = 'ORA-20000: ';
begin

  ErMessage:='';

  try
    strTOdate(medDateBasis.Text);
  except
    ErMessage := ErMessage+#13+'Дата приказа указана неверно:'+medDateBasis.Text;
  end;

  try
    strTOdate(medDateInLeave.Text);
  except
    ErMessage := ErMessage+#13+'Дата начала отпуска указана неверно:'+
      medDateInLeave.Text;
  end;

  try
    strTOdate(medDateOutLeave.Text);
  except
    ErMessage := ErMessage+#13+'Дата окончания отпуска указана неверно:'+
      medDateOutLeave.Text;
  end;


  if medNumBasis.Text=''
  then begin
    ErMessage := ErMessage+#13+'Номер приказа';
  end;

  if ErMessage<>''
  then begin
    showmessage('Не все поля заполнены'+#13+ErMessage);
    exit;
  end;

  try
    sql_:= 'begin param.ClearParam; end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin Param.SetParam(''PERSONAL_CODE'','+
      BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString +'); end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin Param.SetParam(''BRANCH'',info.getbranch); end;';
    BOKForm.execSQL(sql_);
    sql_:= 'begin Param.SetParam(''DATE_IN_LEAVE'','''+ medDateInLeave.EditText     + '''); end;';
    BOKForm.execSQL(sql_);
    sql_:= 'begin Param.SetParam(''DATE_OUT_LEAVE'','''+ medDateOutLeave.EditText     + '''); end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin Param.SetParam(''BEGIN_YEAR'','''+'01.01.'+copy(medDateInLeave.Text,7,4)     + '''); end;';
    BOKForm.execSQL(sql_);
    sql_:= 'begin Param.SetParam(''END_YEAR'','''+'31.12.'+copy(medDateOutLeave.Text,7,4)     + '''); end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin Param.SetParam(''NUM_BASIS'','''+ medNumBasis.Text      + '''); end;';
    BOKForm.execSQL(sql_);
    sql_:= 'begin Param.SetParam(''DATE_BASIS'','''+ medDateBasis.EditText + '''); end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin Param.SetParam(''LEAVE_CODE'',''5''); end;';
    BOKForm.execSQL(sql_);
    sql_:= 'begin Param.SetParam(''PERIOD_LEAVE'',''0''); end;';
    BOKForm.execSQL(sql_);
    sql_:= 'begin Param.SetParam(''MOTIVE_LEAVE'',''Декрет''); end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;';
    BOKForm.execSQL(sql_);

    sql_:= 'begin OK_SERVICE.Dekret; end;';
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

  showmessage(lbFamily.Caption+' '+
    lbName.Caption+' '+lbPatronymic.Caption+' в декретном отпуске.');

  bCancel.click;


end;

end.
