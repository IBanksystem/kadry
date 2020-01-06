unit OKObiektivka2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Printers, jpeg;

type
  TObiektivka2 = class(TQuickRep)
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    
    QRBand3: TQRBand;
    QRLbTEXT14a: TQRLabel;
    QRLbTEXT16a: TQRLabel;
    QRLbTEXT15a: TQRLabel;
    QRLbTEXT17a: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    Image: TQRImage;
    okQRLabel3: TQRLabel;
    QRLbTitle: TQRLabel;
    okQRLabel40: TQRLabel;
    QRLbTEXT13a: TQRLabel;
    QRLbTEXT1: TQRLabel;
    QRLbTEXT10_: TQRLabel;
    QRLbTEXT13: TQRLabel;
    QRLbTEXT11a: TQRLabel;
    QRLbTEXT11: TQRLabel;
    QRLbTEXT10a: TQRLabel;
    QRLbTEXT10: TQRLabel;
    QRLbTEXT9a: TQRLabel;
    QRLbTEXT13_: TQRLabel;
    QRLbTEXT12_: TQRLabel;
    QRLbTEXT13__: TQRLabel;
    QRLbTEXT8: TQRLabel;
    QRLbTEXT12: TQRLabel;
    QRLbTEXT11_: TQRLabel;
    QRLbTEXT5a: TQRLabel;
    QRLbTEXT5: TQRLabel;
    QRLbTEXT4a: TQRLabel;
    QRLbTEXT4: TQRLabel;
    QRLbTEXT2a: TQRLabel;
    QRLbTEXT2: TQRLabel;
    QRLbTEXT1a: TQRLabel;
    QRLbTEXT7: TQRLabel;
    QRLbTEXT8a: TQRLabel;
    QRLbTEXT3a: TQRLabel;
    QRLbTEXT3: TQRLabel;
    QRLbTEXT6a: TQRLabel;
    QRLbTEXT6: TQRLabel;
    QRLbTEXT9: TQRLabel;
    QRLbTEXT7a: TQRLabel;
    QRLbTEXT12a: TQRLabel;
    QRMemo7: TQRMemo;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    s, d1 :string;
    d, i1, i2 :double;
    CurrDate :TDateTime;
    i :integer;
  public

  end;

var
  Obiektivka2: TObiektivka2;

implementation

{$R *.DFM}
//uses frepmain, DB, Base;
uses DB, Base;

procedure TObiektivka2.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
{  frepform.LoadData(frepform.q,'select signature from client_signature'+
                               ' where branch='''+frepform.bran+''''+
                               ' and id=lpad(branch,8,0)'+
                               ' and signature_id=1');
  with Image.Picture, frepform.q do
  begin
    Graphic := nil;
    if FieldByName('signature').Value <> '' then
    begin
      Graphic := TJPEGImage.Create;
      Graphic.Assign(FieldByName('signature'));
    end;
  end;
  qrlabel13.Caption:=frepform.GetSqlResult('select const.getconst(9001, '''+frepform.bran+''') from dual');
  qrlabel14.Caption:=frepform.GetSqlResult('select const.getconst(9002, '''+frepform.bran+''') from dual');
  qrlabel30.Caption:=frepform.GetSqlResult('select const.getconst(9003, '''+frepform.bran+''') from dual');
  s:='';
  d1:='';
  i:=0;
  d:=0;
  i1:=0;
  i2:=0;
  QRBand1.Enabled:=true;
  //QRLabel12.Caption:=frepform.ClientDs11.FieldByName('v_Date').AsString;
  QRLabel10.caption:=FRepForm.td;
  FRepForm.ClientDS11.Last;
  d:=FRepForm.ClientDS11.FieldByName('id_1').Asfloat;
  d1:=FRepForm.ClientDS11.FieldByName('id').AsString;
  FRepForm.ClientDS11.First;
  s:=FRepForm.ClientDS11.FieldByName('id').AsString;
  CurrDate:=StrToDate(FRepForm.ClientDS11.FieldByName('v_Date').AsString);
}
end;

end.
