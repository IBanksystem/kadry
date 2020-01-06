unit OKAppoint;
{ ����� ������ 23 (�������� ������)}
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
    MemoPoisk: TMemo;
    Button2: TButton;
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
    procedure Button2Click(Sender: TObject);
    procedure CheckPoisk;
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
{ ����� ������ 23 (�������� ������)}
  IsVacantCode = '1'; // select * from ss_ok_vacancy
{
and a.vacancy_code = (��������_)
and a.branch = (branch_)
and b.branch = (branch_)
and d.branch = (branch_)
}
var
  fmOKAppoint: TfmOKAppoint;
//  SQL_AboutVacancy,  SQL_Vacancy: string;
  showmess_:string;
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
                 Then begin
                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := curBranch;
                        CreateParam(ftString,'p_2' ,ptInput);
                        ParamByName('p_2').Value := BossLevel;
                        CreateParam(ftString,'p_3' ,ptInput);
                        ParamByName('p_3').Value := 'A';
                        CreateParam(ftString,'p_4' ,ptInput);
                        ParamByName('p_4').Value := curbranch;
                    end;
                   BOKForm.LoadData(BOKForm.Source,'SELECT to_char(department_code) id,'+
                 ' department_name name'+
                     ' FROM ss_ok_department'+
                     ' WHERE branch=:p_1'+ // curBranch+
                     ' and level_department_code=:p_2'+ //BossLevel+
                     ' AND state_notes =:p_3'+ // ''A'''+
                     ' and department_code in ('+
                      ' select department_code from ok_stat where branch=:p_4'+ //curbranch+
                     ' )'+
                     ' order by department_code',True);
                 end;
                 If (Sender = CBPostDown) or (Sender = edPostDown)
                 Then begin
                    BOKForm.source.close;

                    with BOKForm.source.Params
                    do begin
                        clear;
                        if (headbranch_='09006')
                        then begin
                          mfo_category_type_code_VAR := BOKForm.getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
                            ' where branch=:p_1',branch);
                          if varisnull(mfo_category_type_code_VAR)
                          then begin
                            mfo_category_type_code :='';
                            showmessage('(213)������� ��������� ������� � ���� �����.(��������� ���������� ��������� ��������)');
                          end else begin
                            mfo_category_type_code :=vartostr(mfo_category_type_code_VAR) ;
                          end;
                          CreateParam(ftString,'p_1' ,ptInput);
                          ParamByName('p_1').Value := 'A';
                          CreateParam(ftString,'p_4' ,ptInput);
                          ParamByName('p_4').Value := mfo_category_type_code;
                        end else begin
                          CreateParam(ftString,'p_1' ,ptInput);
                          ParamByName('p_1').Value := 'A';
                          CreateParam(ftInteger,'p_2' ,ptInput);
                          ParamByName('p_2').Value := strtoint(BossLevel);
                          CreateParam(ftInteger,'p_3' ,ptInput);
                          ParamByName('p_3').Value := 4;
                        end;
                    end;

                        if (headbranch_='09006')
                        then begin
//                          sql_ := 'SELECT * FROM ss_ok_post d where d.state_notes like :p_1 '+
  //                          ' and post_code in (select post_code from ss_ok_post_category where mfo_category_type_code=:p_4)';
                    BOKForm.LoadData(BOKForm.Source,'SELECT to_char(post_code) id,'+
                     ' post_name name'+
                     ' FROM ss_ok_post'+
                     ' WHERE state_notes=:p_1'+ // ''A'''+
          ' and post_code in (select post_code from ss_ok_post_category where mfo_category_type_code=:p_4)'+
                     ' order by post_code',True);
                        end else begin
//                          sql_ := 'SELECT * FROM ss_ok_post d where d.state_notes like :p_1 '+
  //                          ' and d.level_department_code in(:p_2,:p_3) ';
                    BOKForm.LoadData(BOKForm.Source,'SELECT to_char(post_code) id,'+
                     ' post_name name'+
                     ' FROM ss_ok_post'+
                     ' WHERE state_notes=:p_1'+ // ''A'''+
                     ' and level_department_code in(:p_2,:p_3)'+ //('+BossLevel+',4)'+
                     ' order by post_code',True);
                        end;
                 end;
                 If (Sender = cbBaseMove) or (Sender = edBaseMove)
                 Then begin
                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   BOKForm.LoadData(BOKForm.Source,'SELECT to_char(base_move_code) id,'+
                        ' base_move_name name'+
                        ' FROM ss_ok_base_move'+
                        ' WHERE state_notes=:p_1'+ // ''A'''+
                        ' order by base_move_code',True);
                 end;
                 If (Sender = cbSpecial) or (Sender = edSpecial)
                 Then begin
                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
                   BOKForm.LoadData(BOKForm.Source,'SELECT to_char(Special_code) id,'+
                        ' Special_name name'+
                        ' FROM ss_ok_Special'+
                        ' WHERE state_notes=:p_1'+ //''A'''+
                        ' order by Special_code',True);
                 end;
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
//  inherited;
  If ModalResult = mrCancel Then Exit;
end;

procedure TfmOKAppoint.RefreshTarget(Target: String);
var d: tdata;
begin
//
//  if (Target='TOP') or (Target='ALL')
//  then LoadData(cdsOKVacancy,SQL_Vacancy);

                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                        CreateParam(ftString,'p_2' ,ptInput);
                        ParamByName('p_2').Value := BossLevel;
                    end;
    BOKForm.LoadData(BOKForm.Source,'select a.department_code id,'+
      ' lpad(to_char(a.department_code),3,'' '')||'') ''||a.department_name name '+
      ' from ss_ok_department a '+
      ' where a.department_code in (select department_code from ok_stat)'+
      ' and a.state_notes=:p_1'+ //''A'' '+
      ' and a.level_department_code=:p_2'+ //BossLevel+
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

                    BOKForm.source.close;

                    with BOKForm.source.Params
                    do begin
                        clear;
            if (headbranch_='09006')
            then begin
              mfo_category_type_code_VAR := BOKForm.getsqlresultpar('select mfo_category_type_code from ss_ok_mfo_category'+
                ' where branch=:p_1',branch);
              if varisnull(mfo_category_type_code_VAR)
              then begin
                mfo_category_type_code :='';
                showmessage('(405)������� ��������� ������� � ���� �����.(��������� ���������� ��������� ��������)');
              end else begin
                mfo_category_type_code :=vartostr(mfo_category_type_code_VAR) ;
              end;
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := 'A';
              CreateParam(ftString,'p_4' ,ptInput);
              ParamByName('p_4').Value := mfo_category_type_code;
            end else begin
              CreateParam(ftString,'p_1' ,ptInput);
              ParamByName('p_1').Value := 'A';
              CreateParam(ftInteger,'p_2' ,ptInput);
              ParamByName('p_2').Value := strtoint(BossLevel);
              CreateParam(ftInteger,'p_3' ,ptInput);
              ParamByName('p_3').Value := 4;
            end;
        end;

            if (headbranch_='09006')
            then begin
//              sql_ := 'SELECT * FROM ss_ok_post d where d.state_notes like :p_1 '+
  //              ' and post_code in (select post_code from ss_ok_post_category where mfo_category_type_code=:p_4)';
  BOKForm.LoadData(BOKForm.Source,'select a.post_code id, '+
  ' a.post_code||'') ''||a.post_name name '+
  ' from ss_ok_post a where'+
  ' a.state_notes=:p_1'+ //''A'' '+
          ' and post_code in (select post_code from ss_ok_post_category where mfo_category_type_code=:p_4)');
            end else begin
//              sql_ := 'SELECT * FROM ss_ok_post d where d.state_notes like :p_1 '+
  //              ' and d.level_department_code in(:p_2,:p_3) ';
  BOKForm.LoadData(BOKForm.Source,'select a.post_code id, '+
  ' a.post_code||'') ''||a.post_name name '+
  ' from ss_ok_post a where'+
  ' a.state_notes=:p_1'+ //''A'' '+
  ' and level_department_code in (:p_2,:p_3)');
            end;

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
                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
  BOKForm.LoadData(BOKForm.Source,'select a.base_move_code id,'+
  ' lpad(to_char(a.base_move_code),3,'' '')||'') ''||a.base_move_name name '+
  ' from ss_ok_base_move a where'+
  ' a.state_notes=:p_1'); //''A'' ',True);

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
                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                    end;
  BOKForm.LoadData(BOKForm.Source,'select a.special_code id,'+
  ' lpad(to_char(a.special_code),4,'' '')||'') ''||a.special_name name '+
  ' from ss_ok_special a where'+
  ' a.state_notes=:p_1'); //''A'' ',True);

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

                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
            //            CreateParam(ftInteger,'p_2' ,ptInput);
              //          ParamByName('p_2').Value := strToInt(BossLevel);
                //        CreateParam(ftInteger,'p_3' ,ptInput);
                  //      ParamByName('p_3').Value := 4;
                        CreateParam(ftString,'p_4' ,ptInput);
                        ParamByName('p_4').Value := curbranch;
                        CreateParam(ftInteger,'p_5' ,ptInput);
                        ParamByName('p_5').Value := strToInt(edDepDown.text);
                    end;
    BOKForm.LoadData(BOKForm.Source,'select a.post_code id, '+
          ' a.post_code||'') ''||a.post_name name '+
          ' from ss_ok_post a where'+
          ' a.state_notes=:p_1'+ //''A'
// �������� ��� ���� � ������� � �� �� ������         ' and a.level_department_code in (:p_2,:p_3)'+ //('+BossLevel+',4)'+
          ' and a.post_code in (select post_code from ok_stat where branch=:p_4'+
            ' and department_code=:p_5'+ //edDepDown.text+
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

                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                        CreateParam(ftString,'p_2' ,ptInput);
                        ParamByName('p_2').Value := edDepDown.text;
                        CreateParam(ftString,'p_3' ,ptInput);
                        ParamByName('p_3').Value := edPostDown.text;
                    end;
    BOKForm.LoadData(BOKForm.Source,'select a.special_code id,'+
          ' lpad(to_char(a.special_code),4,'' '')||'') ''||a.special_name name '+
          ' from ss_ok_special a where'+
          ' a.state_notes=:p_1'+ //''A'' '+
          ' and a.special_code in (select special_code'+
          ' from ok_stat where department_code=:p_2'+ // edDepDown.text+
          ' and post_code=:p_3'+ //edPostDown.text +
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
                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
             //           CreateParam(ftString,'p_2' ,ptInput);
               //         ParamByName('p_2').Value := BossLevel;
                 //       CreateParam(ftString,'p_3' ,ptInput);
                   //     ParamByName('p_3').Value := '4';
                        CreateParam(ftString,'p_4' ,ptInput);
                        ParamByName('p_4').Value := edDepDown.text;
                    end;
    BOKForm.LoadData(BOKForm.Source,'select a.post_code id, '+
          ' a.post_code||'') ''||a.post_name name '+
          ' from ss_ok_post a where'+
          ' a.state_notes=:p_1 '+ //and a.level_department_code in (:p_2,:p_3)'+ //('+BossLevel+',4)'+
          ' and a.post_code in (select post_code from ok_stat where department_code=:p_4'+ //edDepDown.text+
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

                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := 'A';
                        CreateParam(ftString,'p_2' ,ptInput);
                        ParamByName('p_2').Value := edDepDown.text;
                        CreateParam(ftString,'p_3' ,ptInput);
                        ParamByName('p_3').Value := edPostDown.text;
                    end;
    BOKForm.LoadData(BOKForm.Source,'select a.special_code id,'+
          ' lpad(to_char(a.special_code),4,'' '')||'') ''||a.special_name name '+
          ' from ss_ok_special a where'+
          ' a.state_notes=:p_1'+ //''A'' '+
          ' and a.special_code in (select special_code'+
          ' from ok_stat where department_code=:p_2'+ // edDepDown.text+
          ' and post_code=:p_3'+ //edPostDown.text +
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
var HeadBranch_,ErMessage : string;
    Specialcode, ArticleCode, BaseMoveCode, PostCode, DepCode: string;
    PersonalCode_,doljn_educ_,post_name_,educ_name_,educ_name_pers_: string;
    VAR_doljn_educ_ : variant;
const
  ERROR_NO = 'ORA-20000: ';
begin

        if BOKForm.cdsOKPersonal.fieldbyname('Education_Title_CODE').asstring=''
        then ErMessage:=ErMessage+' ����������� * ����������� ���������� ( ������������ ) �� ������� "���������� �� ����������" ';

        VAR_doljn_educ_ := BOKForm.getsqlresultpar('select Education_Title_CODE from ss_ok_post where post_code=:p_1',
            BOKForm.cdsOKPersonal.fieldbyname('POST_CODE_NEW').asstring
          );
        if varisnull(VAR_doljn_educ_)
        then doljn_educ_ :=''
        else doljn_educ_ := vartostr(VAR_doljn_educ_);

        if doljn_educ_<>''
        then begin
          if doljn_educ_<> BOKForm.cdsOKPersonal.fieldbyname('Education_Title_CODE').asstring
          then begin
            post_name_:=BOKForm.getsqlresultpar('select post_name from ss_ok_post where post_code=:p_1',BOKForm.cdsOKPersonal.fieldbyname('POST_CODE_NEW').asstring);
            educ_name_:=BOKForm.getsqlresultpar('select Education_Title_name from ss_ok_Education_Title where Education_Title_code=:p_1',
                doljn_educ_
              );
            educ_name_pers_:=BOKForm.getsqlresultpar('select Education_Title_name from ss_ok_Education_Title where Education_Title_code=:p_1',
              BOKForm.cdsOKPersonal.fieldbyname('Education_Title_CODE').asstring
              );
            ErMessage:=ErMessage+'��� ��������� '+post_name_+' ���������� ����������� '+educ_name_+' � �� '+educ_name_pers_;
          end;
        end;

  ErMessage := '';

// �������� ���������� ���� �����������
  try
    strtodate(medAppointmentDate.EditText);
  except
    ErMessage := ErMessage +'���� �����������'+#10#13;
  end;

  if edOfficeAddressNow.Text = '' then
  begin
    ErMessage := ErMessage +'����� �����'+#10#13;
  end;

  if edOfficeName.Text = '' then
  begin
    ErMessage := ErMessage +'������������ �����' +#10#13;
  end;

// �������� ���������� ���� �������/���-�:
  try
    strtodate(medBasisDate.EditText);
  except
    ErMessage := ErMessage +'���� �������/���������'+#10#13;
  end;

  if strtodate(medBasisDate.EditText) > strtodate(medAppointmentDate.EditText)
  then begin
    ErMessage := ErMessage +'���� ����������� ������ ���� ������ ��� ����� ���� �������/���������'+#10#13;
  end;

// �������� ���������� ���� ����� ����� �������:
  if edBasisNum.Text = '' then
  begin
    ErMessage := ErMessage +'����� ������� '+#10#13;
  end;


  if CBPostDown.ItemIndex = -1 then
  begin
    ErMessage := ErMessage +'���������'+#10#13;
  end;

  if (CBSpecial.ItemIndex = -1) and (CBSpecial.visible) then
  begin
    ErMessage := ErMessage +'�������������'+#10#13;
  end;

  if CBBaseMove.ItemIndex = -1 then
  begin
    ErMessage := ErMessage +'��������� �����������'+#10#13;
  end;

  if CBDepDown.ItemIndex  = -1 then
  begin
    ErMessage := ErMessage +'�������������'+#10#13;
  end;

/////////////////
// ���� ������� ���� �� ���������
  HeadBranch_:=BOKForm.getsqlresult('select header_id from s_mfo where bank_id=info.getbranch');
  if HeadBranch_='09049'
  then begin
    showmess_:='-';
    CheckPoisk;
    if showmess_<>'-'
    then ErMessage:=ErMessage+showmess_;
  end;
/////////////////
  if ErMessage <> ''  then
  begin
    ShowMessage('����������, ������� '+#10#13+ErMessage);
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

// ���������� ���������� � ������ ��������� (������� ���������� ����������� � ���������)
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

//    BOKForm.execSQLpar('begin Param.SetParam(''OFFICE_NAME'','''+ edOfficeName.Text +'''); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'OFFICE_NAME', edOfficeName.Text );

//    BOKForm.execSQLpar('begin Param.SetParam(''OFFICE_ADDRESS'','''+ edOfficeAddressNow.Text +'''); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'OFFICE_ADDRESS', edOfficeAddressNow.Text );

//    BOKForm.execSQLpar('begin Param.SetParam(''BRANCH'','''+Branch+'''); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'BRANCH',curBranch );

    PersonalCode_ := BOKForm.cdsOKPersonal.FieldByName('personal_code').AsString;
//    BOKForm.execSQLpar('begin Param.SetParam(''PERSONAL_CODE'','+ personalcode_ +'); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'PERSONAL_CODE', personalcode_ );

//    BOKForm.execSQLpar('begin Param.SetParam(''DEPARTMENT_CODE'','+ DepCode +'); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'DEPARTMENT_CODE', DepCode );

//    BOKForm.execSQLpar('begin Param.SetParam(''POST_CODE'','+ PostCode +'); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'POST_CODE', PostCode );

//    BOKForm.execSQLpar('begin Param.SetParam(''SPECIAL_CODE'','+ SpecialCode +'); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'SPECIAL_CODE', SpecialCode );

//    BOKForm.execSQLpar('begin Param.SetParam(''IN_OFFICE_DATE'','''+ medAppointmentDate.EditText + '''); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'IN_OFFICE_DATE', medAppointmentDate.EditText );

//    BOKForm.execSQLpar('begin Param.SetParam(''BASE_MOVE_CODE'','''+ BaseMoveCode + '''); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'BASE_MOVE_CODE', BaseMoveCode  );

//    BOKForm.execSQLpar('begin Param.SetParam(''BASIS_DATE'','''+ medBasisDate.EditText + '''); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'BASIS_DATE', medBasisDate.EditText );

//    BOKForm.execSQLpar('begin Param.SetParam(''BASIS_NUM'','''+ edBasisNum.Text + '''); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'BASIS_NUM', edBasisNum.Text );

//    BOKForm.execSQLpar('begin Param.SetParam(''STATUS_CODE'','''+ bokform.cdsOKPersonal.FieldByName('status_code').AsString + '''); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'STATUS_CODE', bokform.cdsOKPersonal.FieldByName('status_code').AsString );

//    BOKForm.execSQLpar('begin Param.SetParam(''ARTICLE_CODE'','''+ Articlecode + '''); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'ARTICLE_CODE', Articlecode );

//    BOKForm.execSQLpar('begin Param.SetParam(''EMP_CODE'','+ UserId +'); end;');
    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'EMP_CODE', UserId );

    BOKForm.execSQLpar('begin Param.SetParam(:p_1,:p_2); end;', 'ROTATION', '0' );

    BOKForm.execSQL('begin OK_SERVICE.APPOINT_COLLEAGUE; end;');

    BOKForm.ExecSQL('COMMIT');

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

                    BOKForm.source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := curBranch;
                        CreateParam(ftString,'p_2' ,ptInput);
                        ParamByName('p_2').Value := personalcode_;
                    end;
  BOKForm.LoadData(BOKForm.Source,'SELECT branch,family,first_name,patronymic,'+
                 ' ok_service.get_departmentname(department_code) department_show,'+
                 ' ok_service.get_postname(post_code) post_show,'+
                 ' ok_service.get_specialname(special_code) special_show'+
                     ' FROM ok_personal'+
                     ' WHERE branch=:p_1'+ //curBranch+
                     ' and personal_code=:p_2'); //+personalcode_,True);

  showmessage(
        '�������:   '+  BOKForm.Source.FieldByName('family').AsString+#13+
        '���:       '+  BOKForm.Source.FieldByName('first_name').AsString+#13+
        '��������:  '+  BOKForm.Source.FieldByName('patronymic').AsString+#13+
        '�����:     '+  BOKForm.Source.FieldByName('department_show').AsString+#13+
        '���������: '+  BOKForm.Source.FieldByName('post_show').AsString+#13+
        '�������������: '+  BOKForm.Source.FieldByName('special_show').AsString
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

procedure TfmOKAppoint.Button2Click(Sender: TObject);
begin
  showmess_:='-';
  CheckPoisk;
  if showmess_<>'-'
  then begin
    showmessage(  showmess_  );
  end else begin
    showmessage('�������� �� ������� ������������ ���������� � ����� �� ��� � ������ �������� - �������. ������ ���.');  
  end;
end;

procedure TfmOKAppoint.CheckPoisk;
var NPS_ID_:string;
begin
  MemoPoisk.Clear;
  showmess_:='-';
  NPS_ID_ := BOKForm.cdsOKPersonal.FieldByName('NPS_ID').AsString;

                    BOKForm.Source2.close;
                    with BOKForm.Source2.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := curBranch;
                    end;
  BOKForm.LoadData(BOKForm.Source2,'select * from ss_dblink_branch'+
                     ' WHERE branch<>:p_1');

  BOKForm.Source2.First;
     while not BOKForm.Source2.eof
     do begin
                    BOKForm.Source.close;
                    with BOKForm.source.Params
                    do begin
                        clear;
                        CreateParam(ftString,'p_1' ,ptInput);
                        ParamByName('p_1').Value := BOKForm.Source2.FieldByName('branch').AsString;
                        CreateParam(ftString,'p_2' ,ptInput);
                        ParamByName('p_2').Value := NPS_ID_;
                        CreateParam(ftString,'p_3' ,ptInput);
                        ParamByName('p_3').Value := '2';
                        CreateParam(ftString,'p_4' ,ptInput);
                        ParamByName('p_4').Value := '5';
                    end;

                    BOKForm.LoadData(BOKForm.Source,'SELECT branch,nps_id,family,first_name,patronymic,'+
                                 ' ok_service.get_departmentname(department_code) department_show,'+
                                 ' ok_service.get_postname(post_code) post_show,'+
                                 ' ok_service.get_specialname(special_code) special_show'+
                                     ' FROM ok_personal'+
                                     ' WHERE branch=:p_1'+
                                     ' and NPS_ID=:p_2'+
                                     ' and status_code in(:p_3,:p_4)');

                     while not BOKForm.Source.eof
                     do begin
                       showmess_:=showmess_+'������ ����������� ��������� '+#13+
                        '���:       '+  BOKForm.Source.FieldByName('branch').AsString+#13+
                        '�������:   '+  BOKForm.Source.FieldByName('family').AsString+#13+
                        '���:       '+  BOKForm.Source.FieldByName('first_name').AsString+#13+
                        '��������:  '+  BOKForm.Source.FieldByName('patronymic').AsString+#13+
                        '�����:     '+  BOKForm.Source.FieldByName('department_show').AsString+#13+
                        '���������: '+  BOKForm.Source.FieldByName('post_show').AsString+#13+
                        '�������������: '+  BOKForm.Source.FieldByName('special_show').AsString+#13+
                        '���:       '+  BOKForm.Source.FieldByName('NPS_ID').AsString+#13
                        ;
                       memopoisk.lines.add(
                        '  ���: "'+  BOKForm.Source.FieldByName('branch').AsString+'"'+
                        '  ���: "'+  BOKForm.Source.FieldByName('NPS_ID').AsString+'"'+
                        '  �������: "'+  BOKForm.Source.FieldByName('family').AsString+'"'
                       );
                       BOKForm.Source.next;
                     end;

       BOKForm.Source2.next;
     end;

end;

end.
