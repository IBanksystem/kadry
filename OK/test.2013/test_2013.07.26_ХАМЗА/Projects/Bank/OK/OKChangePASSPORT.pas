unit OKChangePASSPORT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, SelDlg, Base, DB, DBClient,
  Utils, Registry, DBCtrls;

type
  TfmOKChangePassport = class(TBaseForm)
    OpenCenterPanel: TPanel;
    gbChangeFIO: TGroupBox;
    lbPatronymic: TLabel;
    lbName: TLabel;
    lbFamily: TLabel;
    lbStatus: TLabel;
    Label34: TLabel;
    lbSeriya: TLabel;
    medNum: TEdit;
    bOk: TButton;
    bCancel: TButton;
    bClear: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    medSeriya: TEdit;
    procedure bClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOKChangePassport: TfmOKChangePassport;

implementation

uses BOKMain;

{$R *.dfm}

procedure TfmOKChangePassport.bClearClick(Sender: TObject);
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

procedure TfmOKChangePassport.FormCreate(Sender: TObject);
begin
  BOKForm := TBOKForm(owner);

end;

end.
