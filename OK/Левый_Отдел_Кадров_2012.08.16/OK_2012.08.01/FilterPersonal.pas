unit FilterPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, 
  ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls, Mask;

type
  TfmFilterPersonal = class(TBaseForm)
    OpenCenterPanel: TPanel;
    gbAddress: TGroupBox;
    Label25: TLabel;
    Label18: TLabel;
    Label34: TLabel;
    Label20: TLabel;
    dbeOK_HOME_ADDRESSFACT: TDBEdit;
    dbeOK_Home_Address: TDBEdit;
    dblcbOKRegType: TDBLookupComboBox;
    dbeOK_TELEFON: TDBEdit;
    gbPassport: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    dbeOK_PASS_SERIYA: TDBEdit;
    dbeOK_PASS_NUM: TDBEdit;
    dbeOK_PASS_REG: TDBEdit;
    gbPersonal: TGroupBox;
    Label21: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    lbStatus: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label24: TLabel;
    dbeOK_FAMILY: TDBEdit;
    dbeOK_PATRONYMIC: TDBEdit;
    dbeOK_FIRST_NAME: TDBEdit;
    dbeOKGender: TDBEdit;
    dblcbOKGender: TDBLookupComboBox;
    dblcbOKFamilyStatus: TDBLookupComboBox;
    dbeOKFamilyStatus: TDBEdit;
    dblcbOKNationality: TDBLookupComboBox;
    dbeOKNationality: TDBEdit;
    dbeOK_RECORD_BOOK_SERIES: TDBEdit;
    dbeOK_RECORD_BOOK_NUMBER: TDBEdit;
    bOk: TButton;
    bClear: TButton;
    bCancel: TButton;
    chbNationality: TCheckBox;
    chbFamilyStatus: TCheckBox;
    chbGender: TCheckBox;
    chbRegType: TCheckBox;
    medOK_BIRTHDAY: TMaskEdit;
    medOK_PASS_DATE: TMaskEdit;
    dbeOKStatus: TDBEdit;
    dblcbOKStatus: TDBLookupComboBox;
    chbStatus: TCheckBox;
    GroupBox1: TGroupBox;
    lbBasis: TLabel;
    lbEducation: TLabel;
    medOKDateEnd: TMaskEdit;
    medOKDateBegin: TMaskEdit;
    Source: TClientDataSetEx;
    Label3: TLabel;
    Label4: TLabel;
    lbPost: TLabel;
    lbDepartment: TLabel;
    edEducation: TEdit;
    edBasis: TEdit;
    edDepartment: TEdit;
    edPost: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dbeOKProfmember: TDBEdit;
    dblcbOKProfmember: TDBLookupComboBox;
    chbProfmember: TCheckBox;
    chbHighDepCode: TCheckBox;
    Label1: TLabel;
    edSpecial: TEdit;
    lbSpecial: TLabel;
    Label2: TLabel;
    edBranchFilter: TEdit;
    Label5: TLabel;
    edTabno: TEdit;
    edNPS_id: TEdit;
    procedure bClearClick(Sender: TObject);
    procedure edNumKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chbRegTypeClick(Sender: TObject);
    procedure chbNationalityClick(Sender: TObject);
    procedure chbFamilyStatusClick(Sender: TObject);
    procedure chbGenderClick(Sender: TObject);
    procedure chbStatusClick(Sender: TObject);
    procedure edCodeChange(Sender: TObject);
    procedure chbProfmemberClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFilterPersonal: TfmFilterPersonal;

implementation

uses BOKMain;

{$R *.dfm}

procedure TfmFilterPersonal.bClearClick(Sender: TObject);
var i: Integer;
begin

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

  BOKForm.cdsOKPersonal_NEW.Cancel;
  BOKForm.cdsOKPersonal_NEW.Insert;
  edBranchFilter.text:=branch;

end;

procedure TfmFilterPersonal.edNumKeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in ['0'..'9',#8]) Then
    Begin Key := #0; MessageBeep(0); End;
end;

procedure TfmFilterPersonal.FormCreate(Sender: TObject);
//var i : integer;
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
end;

procedure TfmFilterPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    VK_RETURN: SelectNext(ActiveControl, True, True);
        VK_F9: Begin
                 If Sender = edDepartment
                 Then begin
                   Source.close;
                    with source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   BOKForm.LoadData(Source,'SELECT to_char(department_code) id, department_name name'+
                                              '  FROM ss_ok_department'+
                                              ' WHERE state_notes=:p_1',True);
                 end;
                 If Sender = edPost
                 Then begin 
                   Source.close;
                    with source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   BOKForm.LoadData(Source,'SELECT to_char(post_code) id, post_name name'+
                                              '  FROM ss_ok_post'+
                                              ' WHERE state_notes=:p_1',True);
                 end;
                 If Sender = edSpecial
                 Then begin 
                   Source.close;
                    with source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   BOKForm.LoadData(Source,'SELECT to_char(Special_code) id, Special_name name'+
                                              '  FROM ss_ok_Special'+
                                              ' WHERE state_notes=:p_1',True);
                 end;
                 If Sender = edEducation
                 Then begin 
                   Source.close;
                    with source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   BOKForm.LoadData(Source,'SELECT to_char(education_code) id, education_name name'+
                                              '  FROM ss_ok_education'+
                                              ' WHERE state_notes=:p_1',True);
                 end;
                 If Sender = edBasis
                 Then BOKForm.LoadData(Source,'SELECT to_char(basis_code) id, basis_name name FROM ss_ok_basis',True);

                 Source.Edit;
                 With TSelectDialog.CreateEx(Self, Source, Source, Source.FindField('id').Index) do
                  Try
                    If ShowModal = mrOk Then
                      TEdit(Sender).Text := Source.FieldByName('ID').AsString;

                      If Sender = edDepartment
                      Then lbDepartment.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = edPost
                      Then lbPost.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = edSpecial
                      Then lbSpecial.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = edEducation
                      Then lbEducation.Caption := Source.FieldByName('NAME').AsString;
                      If Sender = edBasis
                      Then lbBasis.Caption := Source.FieldByName('NAME').AsString;

                  Finally
                    Destination.Filtered:=false;
                    Free;
                  End;
               End;

  End;
end;

procedure TfmFilterPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i: Integer;
begin
//  inherited;
  If ModalResult = mrCancel Then Exit;
  if BOKForm.chbsavefiltr.checked
  then begin
    With BOKForm.Registry do
    Try
      OpenKey(INIT_KEY + TComponent(Self.Owner).ClassName + '\' + Self.ClassName, True);
//showmessage(INIT_KEY + TComponent(Self.Owner).ClassName + '\' + Self.ClassName);
      For i := 0 to ComponentCount-1 do
      Begin
          If Components[i].ClassType = TEdit Then
            WriteString(Components[i].Name, TEdit(Components[i]).Text);
          If Components[i].ClassType = TMaskEdit Then
            WriteString(Components[i].Name, TMaskEdit(Components[i]).Text);
          If Components[i].ClassType = TComboBox Then
            WriteInteger(Components[i].Name, TComboBox(Components[i]).ItemIndex);
          If Components[i].ClassType = TDBEdit Then
            WriteString(Components[i].Name, TDBEdit(Components[i]).Text);
          If Components[i].ClassType = TCheckBox Then
            WriteBool(Components[i].Name,  TCheckBox(Components[i]).Checked );
          If Components[i].ClassType = TDBLookUpCombobox Then
            WriteString(Components[i].Name, TDBLookUpCombobox(Components[i]).DataSource.DataSet.FieldByName(TDBLookUpCombobox(Components[i]).DataField).AsString);
      End;
    Finally
      CloseKey;
    End;
  end;
//  BOKForm.cdsOKPersonal_NEW.Cancel;

end;

procedure TfmFilterPersonal.FormShow(Sender: TObject);
var i  : Integer;
    s  : String ;
begin
//  inherited;
//showmessage(INIT_KEY + TComponent(Self.Owner).ClassName + '\' + Self.ClassName);
  if BOKForm.cdsOKPersonal_NEW.state in dsEditModes
  then BOKForm.cdsOKPersonal_NEW.cancel;

  BOKForm.cdsOKPersonal_NEW.Close;
  LoadData(BOKForm.cdsOKPersonal_NEW,      SQL_OKPersonal_EMPTY);
  BOKForm.cdsOKPersonal_NEW.Open;
  BOKForm.cdsOKPersonal_NEW.Insert;

  if BOKForm.chbsavefiltr.checked
  then begin
    With BOKForm.Registry do
    Try
      OpenKey(INIT_KEY + TComponent(Self.Owner).ClassName + '\' + Self.ClassName, False);
      For i := 0 to ComponentCount-1 do
      Begin
          If ValueExists(Components[i].Name) Then
          Begin

              If Components[i].ClassType = TEdit Then
                TEdit(Components[i]).Text := ReadString(Components[i].Name);
              If Components[i].ClassType = TMaskEdit Then
                TMaskEdit(Components[i]).Text := ReadString(Components[i].Name);
              If Components[i].ClassType = TComboBox Then
                TComboBox(Components[i]).ItemIndex := ReadInteger(Components[i].Name);
              If Components[i].ClassType = TDBEdit Then
              Begin
                s := ReadString(Components[i].Name);
                if s <> '' then BOKForm.cdsOKPERSONAL_NEW.FieldByName( TDBEdit    (Components[i]).DataField).AsString  := s;
//showmessage(Components[i].Name+' '+s);
              End;
              If Components[i].ClassType = TCheckBox Then
                TCheckBox(Components[i]).Checked := ReadBool(Components[i].Name);

              If Components[i].ClassType = TdbEdit Then
                TdbEdit(Components[i]).Text := ReadString(Components[i].Name);

              If Components[i].ClassType = TDBLookUpCombobox Then
              Begin
                s := ReadString(Components[i].Name);
                if s <> ''
                then begin
                  TDBLookUpCombobox(Components[i]).Enabled := true;
                  BOKForm.cdsOKPERSONAL_NEW.FieldByName( TDBLookUpCombobox(Components[i]).DataField).AsString  := s;

                end;
              End;

          End;
      End;
    Finally
      CloseKey;
    End;
  end;

    BOKForm.cdsOKPersonal_NEW.FieldByName('status_code').AsString        := '2';
  if BossLevel = '1'
  then begin
  // республика
    edBranchFilter.enabled := true;
  end else begin
  // рядовой филиал
    edBranchFilter.enabled := FALSE;
  end;


end;

procedure TfmFilterPersonal.chbRegTypeClick(Sender: TObject);
begin

  if chbRegType.Checked
    then dblcbOKRegType.Enabled := True
    else dblcbOKRegType.Enabled := False;

end;

procedure TfmFilterPersonal.chbNationalityClick(Sender: TObject);
begin

  if chbNationality.Checked then
  begin
    dbeOKNationality.Enabled   := True;
    dblcbOKNationality.Enabled := True;
  end else
  begin
    dbeOKNationality.Enabled   := False;
    dblcbOKNationality.Enabled := False;
  end;

end;

procedure TfmFilterPersonal.chbFamilyStatusClick(Sender: TObject);
begin

  if chbFamilyStatus.Checked then
  begin
    dbeOKFamilyStatus.Enabled   :=  True;
    dblcbOKFamilyStatus.Enabled :=  True;
  end else
  begin
    dbeOKFamilyStatus.Enabled   := False;
    dblcbOKFamilyStatus.Enabled := False;
  end;

end;

procedure TfmFilterPersonal.chbGenderClick(Sender: TObject);
begin

  if chbGender.Checked then
  begin
    dbeOKGender.Enabled   :=  True;
    dblcbOKGender.Enabled :=  True;
  end else
  begin
    dbeOKGender.Enabled   := False;
    dblcbOKGender.Enabled := False;
  end;

end;

procedure TfmFilterPersonal.chbStatusClick(Sender: TObject);
begin
  if chbStatus.Checked then
  begin
    dbeOKStatus.Enabled   :=  True;
    dblcbOKStatus.Enabled :=  True;
  end else
  begin
    dbeOKStatus.Enabled   := False;
    dblcbOKStatus.Enabled := False;
  end;

end;

procedure TfmFilterPersonal.edCodeChange(Sender: TObject);
begin
  try
    if (TEdit(Sender).Text)<>'' then StrToInt(TEdit(Sender).Text);
  except
    ShowMessage('При поиске пожалуйста используйте клавишу [F9], либо подставьте целочисленный код по памяти.');
    if Length(TEdit(Sender).Text)=1
    then TEdit(Sender).Text := ''
    else TEdit(Sender).Text := Copy( TEdit(Sender).Text , 0 , Length(TEdit(Sender).Text)-1 );
  end;

end;

procedure TfmFilterPersonal.chbProfmemberClick(Sender: TObject);
begin

  if chbProfmember.Checked then
  begin
    dbeOKProfmember.Enabled   :=  True;
    dblcbOKProfmember.Enabled :=  True;
  end else
  begin
    dbeOKProfmember.Enabled   := False;
    dblcbOKProfmember.Enabled := False;
  end;

end;

end.
