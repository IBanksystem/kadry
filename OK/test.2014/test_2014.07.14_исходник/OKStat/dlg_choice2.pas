unit dlg_choice2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBClient, ToolWin, ComCtrls, DBCtrls, ExtCtrls, Mask, Grids,
  DBGrids, ActnList, ImgList, Menus, Base, Utils, DBActns, AboutDlg,
  Buttons, Variants,StrUtils;

type
  Tfrm_Choice2 = class(TBaseForm)
    Splitter: TSplitter;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn4: TBitBtn;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    meBranch: TMaskEdit;
    procedure meBranchChange(Sender: TObject);

  private
    { Private declarations }

  public

  end;






var
  frm_Choice2: Tfrm_Choice2;
implementation

uses bokmain;

{$R *.DFM}



procedure Tfrm_Choice2.meBranchChange(Sender: TObject);
begin
  BOKForm.cdsTemp2.filter:='branch='''+ meBranch.text+'''';
  BOKForm.cdsTemp2.filtered :=true;

end;

initialization
  RegisterClass(Tfrm_Choice2);
finalization
  UnRegisterClass(Tfrm_Choice2);
end.
