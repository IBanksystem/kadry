unit OKOPrev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls, Buttons;

type
  TfmOKOPrev = class(TBaseForm)
    OpenCenterPanel: TPanel;
    gbDismiss: TGroupBox;
    lbFamily: TLabel;
    lbStatus: TLabel;
    lbChangeMotive: TLabel;
    edText2: TEdit;
    bOk: TButton;
    bCancel: TButton;
    bExit: TButton;
    Label1: TLabel;
    Label2: TLabel;
    medMFO: TEdit;
    lbFIO: TLabel;
    Source: TClientDataSetEx;
    BitBtn1: TBitBtn;
    edText3: TEdit;
    edText1: TEdit;
    lbTabNo: TLabel;
    Label4: TLabel;
    edDate: TEdit;
    redTitle: TRichEdit;
    Edit1: TEdit;
    edPers: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bOkClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOKOPrev: TfmOKOPrev;

implementation

uses BOKMain, OKObiektivka2;
{$R *.dfm}

procedure TfmOKOPrev.FormCreate(Sender: TObject);
begin
  BOKForm := TBOKForm(owner);

end;

procedure TfmOKOPrev.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  Case Key of
    VK_RETURN: SelectNext(ActiveControl, True, True);
{        VK_F9: Begin
                 If Sender = medMFO
                 Then BOKForm.LoadData(Source,'SELECT article_num id, article_num||'' ''||article_name name'+
                                              '  FROM ss_ok_article'+
                                              ' WHERE state_notes = ''A''',True);

                 Source.Edit;
                 With TSelectDialog.CreateEx(Self, Source, Source, Source.FindField('id').Index) do
                  Try
                    If ShowModal = mrOk Then
                      TEdit(Sender).Text := Source.FieldByName('ID').AsString;

                      If Sender = medArticleNum
                      Then lbArtticleInfo.Caption := Source.FieldByName('NAME').AsString;

                  Finally
                    Destination.Filtered:=false;
                    Free;
                  End;
               End;
}
  End;

end;

procedure TfmOKOPrev.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  redTitleS : string;
begin
  inherited;
  If ModalResult = mrCancel Then Exit;

  try
//    redTitleS := redTitle.Lines[0].Text+' '+redTitle.Lines[1].Text+' '+redTitle.Lines[2].Text;
    redTitleS := redTitle.Lines.Text;
  except
    redTitleS := '';
  end;

  With Registry do
    Try
      OpenKey(INIT_KEY + Self.ClassName, True);

      WriteString('redTitle', redTitleS);
      WriteString('edText1', edText1.Text);
      WriteString('edText2', edText2.Text);
      WriteString('edText3', edText3.Text);
    Finally
      CloseKey;
    End;

end;

procedure TfmOKOPrev.FormShow(Sender: TObject);
begin

  With Registry do
  Try
      If OpenKey(INIT_KEY + Self.ClassName, False) Then
        Begin
          If ValueExists('redTitle')
          then begin
            redTitle.Clear;
            redTitle.Lines.Add(ReadString('redTitle'));
          end;

          If ValueExists('edText1') then edText1.Text := ReadString('edText1');
          If ValueExists('edText2') then edText2.Text := ReadString('edText2');
          If ValueExists('edText3') then edText3.Text := ReadString('edText3');
        End;
  Finally
      CloseKey;
  End;

end;

procedure TfmOKOPrev.bOkClick(Sender: TObject);
const
  Delta=24;
begin

  Obiektivka2 := TObiektivka2.Create(Self);
  with Obiektivka2 do
  try

    QRLbTEXT7a.Caption :='SELECT personal_code id, family||'' ''||first_name||'' ''||patronymic name FROM ok_personal'+
                         'SELECT personal_code id, family||'' ''||first_name||'' ''||patronymic name FROM ok_personal'+
                         'SELECT personal_code id, family||'' ''||first_name||'' ''||patronymic name FROM ok_personal';
showmessage(inttostr(QRmemo7.height)+' '+floattostr(QRmemo7.Size.height));
    QRmemo7.Lines.Add ('SELECT personal_code id, family||'' ''||first_name||'' ''||patronymic name FROM ok_personal'+
                         'SELECT personal_code id, family||'' ''||first_name||'' ''||patronymic name FROM ok_personal'+
                         'SELECT personal_code id, family||'' ''||first_name||'' ''||patronymic name FROM ok_personal');
showmessage(inttostr(QRmemo7.height)+' '+floattostr(QRmemo7.Size.height));
    QRLbTEXT6a.Caption := '�����6�__012345678901234567890 234567890 234567890 234567890 234567890 234567890';

    QRLbTEXT8a.Top := QRLbTEXT8a.Top + Delta;
    Preview;
  finally
    free;
  end;

end;

procedure TfmOKOPrev.BitBtn1Click(Sender: TObject);
begin

  BOKForm.LoadData(Source,'SELECT personal_code id, family||'' ''||first_name||'' ''||patronymic name, tabno'+
                                              '  FROM ok_personal'+
                                              ' WHERE branch='''+medMFO.Text+'''',True);

  Source.Edit;
  With TSelectDialog.CreateEx(Self, Source, Source, Source.FindField('id').Index) do
  Try
    If ShowModal = mrOk
    Then begin
      LbFIO.Caption := Source.FieldByName('NAME').AsString;
      edPers.Text :=  Source.FieldByName('ID').AsString;
      lbTabno.Caption := '��� N:'+ Source.FieldByName('tabno').AsString;
    end;

  Finally
    Destination.Filtered:=false;
    Free;
  End;

end;

end.
