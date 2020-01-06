unit OKChangeFamilyStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls, errDlg;

type
  TfmOKChangeFamilyStatus = class(TForm)
    OpenCenterPanel: TPanel;
    gbChangeFIO: TGroupBox;
    lbPatronymic: TLabel;
    lbName: TLabel;
    lbFamily: TLabel;
    lbStatus: TLabel;
    Label34: TLabel;
    medChangeDate: TMaskEdit;
    lbChangeMotive: TLabel;
    medName: TEdit;
    bOk: TButton;
    bCancel: TButton;
    bClear: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    medChangeMotive: TEdit;
    medPatronymic: TEdit;
    medFamily: TEdit;
    procedure bClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOKChangeFamilyStatus: TfmOKChangeFamilyStatus;

implementation

uses BOKMain;

{$R *.dfm}

procedure TfmOKChangeFamilyStatus.bClearClick(Sender: TObject);
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

procedure TfmOKChangeFamilyStatus.FormCreate(Sender: TObject);
begin
  BOKForm := TBOKForm(owner);

end;

procedure TfmOKChangeFamilyStatus.bOkClick(Sender: TObject);
var
  ErMessage : string;
const
  ERROR_NO = 'ORA-20000: ';
begin

        if medFamily.Text=''
        then begin
          ErMessage := ErMessage +'Фамилия'+#13;
        end;

        if medName.Text=''
        then begin
          ErMessage := ErMessage +'Имя'+#13;
        end;




        if ErMessage <> ''
        then begin
          showmessage('Не заполнены поля:'+#13+ErMessage);
          exit;
        end;

        try

          BOKForm.execSQL('begin param.ClearParam; end;');


          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;',
                                                   'PERSONAL_CODE', BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString );

          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,info.getbranch); end;','BRANCH');

//          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;','FAMILY',AnsiUpperCase(medFamily.Text) );
          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;','FAMILY',medFamily.Text );

//          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'FIRST_NAME', AnsiUpperCase(medName.Text)  );
          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'FIRST_NAME', medName.Text  );

//          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'PATRONYMIC', AnsiUpperCase(medPatronymic.Text)     );
          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'PATRONYMIC', medPatronymic.Text     );

          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'CHANGE_DATE',  medChangeDate.Text     );

          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'CHANGE_MOTIVE',  medChangeMotive.Text  );

          BOKForm.execSQLPAR('begin Param.SetParam(:p_1,:p_2); end;', 'EMP_CODE', UserId );

          BOKForm.execSQL('begin OK_SERVICE.OKChangeFamilyStatus; end;');

          BOKForm.execSQL('begin Param.ClearParam; end;');
//          execSQL('begin Param.LoadParam(1); end;');

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
                  ShowErrorBox(erMessage,E.Message,Self.Caption);
                End
              Else If pos('ORA-01400', E.Message) > 0 Then ShowMessage('Ошибка при сохранении(147). Пожалуйста, заполните пустые поля!'+#13+e.message)
                   else ShowMessage(e.Message);
              exit;
            End;
          end;

  if ErMessage = ''
  then begin
    BOKForm.cdsOKPersonal.Refresh;
    bCancel.click;
  end;  

end;

end.
