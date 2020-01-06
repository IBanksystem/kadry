unit OKChangePASPORT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls,errdlg;

type
  TfmOKChangePasport = class(TForm)
    OpenCenterPanel: TPanel;
    gbChangeFIO: TGroupBox;
    lbPatronymic: TLabel;
    lbName: TLabel;
    lbFamily: TLabel;
    lbStatus: TLabel;
    Label34: TLabel;
    lbSeriya: TLabel;
    bOk: TButton;
    bCancel: TButton;
    bClear: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    medSeriya: TMaskEdit;
    medNum: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    medPassDate: TMaskEdit;
    Label6: TLabel;
    Label7: TLabel;
    medPassDateEnd: TMaskEdit;
    procedure bClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure medSeriyaKeyPress(Sender: TObject; var Key: Char);
    procedure medNumKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOKChangePasport: TfmOKChangePasport;

implementation

uses BOKMain;

{$R *.dfm}

procedure TfmOKChangePasport.bClearClick(Sender: TObject);
var i: Integer;
begin

  For i := 0 to ComponentCount-1 do
  Begin
      If Components[i].ClassType = TEdit Then
        TEdit(Components[i]).Clear
      else If Components[i].ClassType = TMaskEdit Then
        TMaskEdit(Components[i]).Clear;
  End;


end;

procedure TfmOKChangePasport.FormCreate(Sender: TObject);
begin
  BOKForm := TBOKForm(owner);

end;

procedure TfmOKChangePasport.bOkClick(Sender: TObject);
var erMessage : string;
const
  ERROR_NO = 'ORA-20000: ';
begin
      if medSeriya.Text='  '
      then begin
        showmessage('Укажите Серию Паспорта !' );
        exit;
      end;

      if medNum.Text='       '
      then begin
        showmessage('Укажите Номер Паспорта !' );
        exit;
      end;

     if (BOKForm.cdsOKPERSONAL.FieldByName('PASSPORT_TYPE_CODE').AsString='1')
     or (BOKForm.cdsOKPERSONAL.FieldByName('PASSPORT_TYPE_CODE').AsString='6')
     then begin
      if length(medSeriya.Text)<>2
      then begin
        showmessage('Серия Паспорта должна быть 2 символа, а не '+IntToStr(length(medSeriya.Text)) );
        exit;
      end;

      if length(medNum.Text)<>7
      then begin
        showmessage('Номер Паспорта должен быть 7 цифр, а не '+IntToStr(length(medNum.Text)) );
        exit;
      end;
     end;

      try
//          BOKForm.execSQL('begin Param.SaveParam(1); end;');
//          BOKForm.execSQL('begin param.ClearParam; end;');

//          BOKForm.execSQL('begin Param.SetParam(''PERSONAL_CODE'','+ BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString +'); end;');
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'PERSONAL_CODE', BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString );

//          BOKForm.execSQL('begin Param.SetParam(''BRANCH'',info.getbranch); end;');
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,info.getbranch); end;', 'BRANCH' );

//          BOKForm.execSQL('begin Param.SetParam(''PASS_SERIYA'','''+ medSeriya.Text + '''); end;');
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'PASS_SERIYA', medSeriya.Text );

//          BOKForm.execSQL('begin Param.SetParam(''PASS_NUM'','''+ medNUM.Text   + '''); end;');
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'PASS_NUM', medNUM.Text );

//          BOKForm.execSQL('begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;');
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'EMP_CODE', UserId );

          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'PASS_DATE', medpassdate.Text );
          BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'PASS_DATE_END', medpassdateend.Text );

          BOKForm.execSQL('begin OK_SERVICE.OKChangePassport; end;');

//          BOKForm.execSQL('begin Param.ClearParam; end;');
//          BOKForm.execSQL('begin Param.LoadParam(1); end;');

          BOKForm.ExecSQL('COMMIT');
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
                  ShowErrorBox(erMessage , E.Message , Self.Caption);
                End
              Else If pos('ORA-01400', E.Message) > 0 Then ShowMessage('Ошибка при сохранении(127). Пожалуйста, заполните пустые поля!'+#13+e.message)
                   else ShowMessage(e.Message);
              exit;
            End;
          end;

    if ermessage=''
    then begin
      BOKForm.cdsOKPersonal.Refresh;
      bCancel.click;
    end;      


end;

procedure TfmOKChangePasport.medSeriyaKeyPress(Sender: TObject;
  var Key: Char);
var is_good_ :boolean;
    Str_Key : string;
begin


  if (BOKForm.cdsOKPersonal.FieldByName('PASSPORT_TYPE_CODE').asstring='1')
  or (BOKForm.cdsOKPersonal.FieldByName('PASSPORT_TYPE_CODE').asstring='6')
  or (BOKForm.cdsOKPERSONAL.FieldByName('PASSPORT_TYPE_CODE').isnull)
  then begin

    Str_Key:=Key;

    if key<>chr(vk_back)
    then begin

      is_good_:= false;

      if Key in ['a'..'z']
      then begin
        Str_Key := Key;
        Str_Key:= upperCase( Str_Key ); //  UpperCase не работает для Char
        Key := Str_Key[1];
      end;

      if Key in ['A'..'Z']
      then begin
        is_good_:=true;
      end else begin
        showmessage('Серия паспорта гражданина РУз должна быть введена латинскими буквами!');
      end;

      if not is_good_
      then key:=#0;

    end;
  end;

end;

procedure TfmOKChangePasport.medNumKeyPress(Sender: TObject;
  var Key: Char);
var is_good_ :boolean;
    Str_Key : string;
begin



    Str_Key:=Key;

    if  (key<>chr(vk_back))
    and (key<>chr(VK_ESCAPE))
    then begin

      is_good_:= false;

      if Key in ['0'..'9']
      then begin
        is_good_:=true;
      end else begin
        showmessage('Номер паспорта введите цифры.');
      end;

      if not is_good_
      then key:=#0;

    end;


end;

end.
