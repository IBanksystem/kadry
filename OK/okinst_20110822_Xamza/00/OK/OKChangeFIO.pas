unit OKChangeFIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls, errDlg;

type
  TfmOKChangeFIO = class(TForm)
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
  fmOKChangeFIO: TfmOKChangeFIO;

implementation

uses BOKMain;

{$R *.dfm}

procedure TfmOKChangeFIO.bClearClick(Sender: TObject);
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

procedure TfmOKChangeFIO.FormCreate(Sender: TObject);
begin
  BOKForm := TBOKForm(owner);

end;

procedure TfmOKChangeFIO.bOkClick(Sender: TObject);
var
  ErMessage : string;
const
  ERROR_NO = 'ORA-20000: ';
begin

        if medFamily.Text=''
        then begin
          ErMessage := ErMessage +'�������'+#13;
        end;

        if medName.Text=''
        then begin
          ErMessage := ErMessage +'���'+#13;
        end;

//        if medPatronymic.Text=''
//        then begin
//          ErMessage := ErMessage +'��������'+#13;
//        end;

        if medChangeDate.Text=''
        then begin
          ErMessage := ErMessage +'���� ��������� ���'+#13;
        end;

        try
          StrToDate(medChangeDate.Text);
        except
          ErMessage := ErMessage +' ���� ��������� ��� "'+medChangeDate.Text+'" ������� �����������!'+#13;
        end;

        if medChangeMotive.Text=''
        then begin
          ErMessage := ErMessage +'������� ��������� ���'+#13;
        end;

        if ErMessage <> ''
        then begin
          showmessage('�� ��������� ����:'+#13+ErMessage);
          exit;
        end;

        try
//          execSQL('begin Param.SaveParam(1); end;');
          BOKForm.execSQL('begin param.ClearParam; end;');

          BOKForm.execSQL('begin Param.SetParam(''PERSONAL_CODE'','+ BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString +'); end;');

          BOKForm.execSQL('begin Param.SetParam(''BRANCH'',info.getbranch); end;');
          BOKForm.execSQL('begin Param.SetParam(''FAMILY'',    '''+ AnsiUpperCase(medFamily.Text) + '''); end;');
          BOKForm.execSQL('begin Param.SetParam(''FIRST_NAME'','''+ AnsiUpperCase(medName.Text)   + '''); end;');
          BOKForm.execSQL('begin Param.SetParam(''PATRONYMIC'','''+ AnsiUpperCase(medPatronymic.Text)      + '''); end;');
          BOKForm.execSQL('begin Param.SetParam(''CHANGE_DATE'','''+ medChangeDate.Text     + '''); end;');
          BOKForm.execSQL('begin Param.SetParam(''CHANGE_MOTIVE'','''+ medChangeMotive.Text + '''); end;');
          BOKForm.execSQL('begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;');

          BOKForm.execSQL('begin OK_SERVICE.OKChangeFIO; end;');

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
              Else If pos('ORA-01400', E.Message) > 0 Then ShowMessage('������ ��� ����������. ����������, ��������� ������ ����!')
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
