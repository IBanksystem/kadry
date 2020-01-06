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
        END;
  End;

end;

procedure TfmOKDekret.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  inherited;
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
//    sql_:= 'begin param.ClearParam; end;';
//    BOKForm.execSQL(sql_);

//    sql_:= 'begin Param.SetParam(''PERSONAL_CODE'','+BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString +'); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'PERSONAL_CODE',BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString );

//    sql_:= 'begin Param.SetParam(''BRANCH'',info.getbranch); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,info.getbranch); end;', 'BRANCH' );

//    sql_:= 'begin Param.SetParam(''DATE_IN_LEAVE'','''+ medDateInLeave.EditText     + '''); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'DATE_IN_LEAVE', medDateInLeave.EditText );

//    sql_:= 'begin Param.SetParam(''DATE_OUT_LEAVE'','''+ medDateOutLeave.EditText     + '''); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'DATE_OUT_LEAVE', medDateOutLeave.EditText );

//    sql_:= 'begin Param.SetParam(''BEGIN_YEAR'','''+'01.01.'+copy(medDateInLeave.Text,7,4)     + '''); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'BEGIN_YEAR','01.01.'+copy(medDateInLeave.Text,7,4) );

//    sql_:= 'begin Param.SetParam(''END_YEAR'','''+'31.12.'+copy(medDateOutLeave.Text,7,4)     + '''); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'END_YEAR','31.12.'+copy(medDateOutLeave.Text,7,4) );

//    sql_:= 'begin Param.SetParam(''NUM_BASIS'','''+ medNumBasis.Text      + '''); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'NUM_BASIS', medNumBasis.Text );

//    sql_:= 'begin Param.SetParam(''DATE_BASIS'','''+ medDateBasis.EditText + '''); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'DATE_BASIS', medDateBasis.EditText );

//    sql_:= 'begin Param.SetParam(''LEAVE_CODE'',''5''); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'LEAVE_CODE','5' );

//    sql_:= 'begin Param.SetParam(''PERIOD_LEAVE'',''0''); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'PERIOD_LEAVE','0' );

//    sql_:= 'begin Param.SetParam(''MOTIVE_LEAVE'',''Декрет''); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'MOTIVE_LEAVE','Декрет' );

//    sql_:= 'begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;';
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'EMP_CODE', UserId );

    sql_:= 'begin OK_SERVICE.Dekret; end;';
    BOKForm.execSQL(sql_);

//    sql_:= 'begin Param.ClearParam; end;';
//    BOKForm.execSQL(sql_);

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
              Else If pos('ORA-01400', E.Message) > 0 Then ShowMessage('Ошибка при сохранении(260). Пожалуйста, заполните пустые поля!'+#13+e.message)
                   else ShowMessage(e.Message);
              exit;
            End;
          end;

  showmessage(lbFamily.Caption+' '+
    lbName.Caption+' '+lbPatronymic.Caption+' в декретном отпуске.');

  bCancel.click;


end;

end.
