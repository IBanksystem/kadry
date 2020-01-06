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
    lbSeriya_: TLabel;
    bOk: TButton;
    bCancel: TButton;
    bClear: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    medSeriya: TMaskEdit;
    medNum: TMaskEdit;
    rgChangePassport: TRadioGroup;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbSeriya: TLabel;
    lbPassNum: TLabel;
    lbDateOfIssue: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label10: TLabel;
    medDateOfIssue: TMaskEdit;
    EdAuthority: TEdit;
    EdDistrAuthority: TEdit;
    cbDistrAuthority: TComboBox;
    procedure bClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure medSeriyaKeyPress(Sender: TObject; var Key: Char);
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
    cnt_ : integer;
const
  ERROR_NO = 'ORA-20000: ';
begin
      if medSeriya.Text='  '
      then begin
        showmessage('������� ����� �������� !' );
        exit;
      end;

      if medNum.Text='       '
      then begin
        showmessage('������� ����� �������� !' );
        exit;
      end;

      if length(medSeriya.Text)<>2
      then begin
        showmessage('����� �������� ������ ���� 2 �������, � �� '+IntToStr(length(medSeriya.Text)) );
        exit;
      end;

      if length(medNum.Text)<>7
      then begin
        showmessage('����� �������� ������ ���� 7 ����, � �� '+IntToStr(length(medNum.Text)) );
        exit;
      end;

      cnt_:= BOKForm.getsqlresultPAR('select count(c.id)'+
        ' from ok_personal c where c.pass_num =:P_1'+
        ' and upper(c.pass_seriya) = upper( trim(:P_2)) and rownum<:P_3',
        medNum.Text,medSeriya.Text,'2');

      if cnt_>0
      then begin
        showmessage(  '��������� � ��������� �����:'+
           medSeriya.Text +' �����:'+ medNum.Text+' ��� ��������������� � ���������� ��!');
        exit;
      end;

      try
//       --  ��������� ��������
//--
          BOKForm.execSqlPAR( 'update ok_personal '+
             ' set pass_seriya=:P_1,'+
             ' pass_num=:P_2,'+
             ' emp_code=:P_3'+
             ' cod_distr_uvd='+ EdDistrAuthority.text +
             ' cod_distr_prim='+  EdAuthority.text  +
             ' PASS_DATE='+ medDateOfIssue.text+
             ' where branch=info.getbranch '+
             ' and personal_code=:P_4',
             medSeriya.Text,medNUM.Text,UserId,
             BOKForm.cdsOKPERSONAL.FieldByName('PERSONAL_CODE').AsString);

//-- � �������-������� ��������� �������� ����� �������� 


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
              Else If pos('ORA-01400', E.Message) > 0 Then ShowMessage('������ ��� ����������. ����������, ��������� ������ ����!')
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


  if BOKForm.cdsOKPersonal.FieldByName('passport_type_code').asstring='1'
  then begin

    Str_Key:=Key;

    if key<>chr(vk_back)
    then begin

      is_good_:= false;

      if Key in ['a'..'z']
      then begin
        Str_Key := Key;
        Str_Key:= upperCase( Str_Key ); //  UpperCase �� �������� ��� Char
        Key := Str_Key[1];
      end;

      if Key in ['A'..'Z']
      then begin
        is_good_:=true;
      end else begin
        showmessage('����� �������� ������ ���� ������� ���������� �������!');
      end;

      if not is_good_
      then key:=#0;

    end;
  end;

end;

end.
