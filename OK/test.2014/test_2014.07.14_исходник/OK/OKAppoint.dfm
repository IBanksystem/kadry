�
 TFMOKAPPOINT 0�  TPF0TfmOKAppointfmOKAppointLeft� Top� BorderStylebsDialogCaption
   07=0G5=85ClientHeight�ClientWidthRColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreate	OnKeyDownFormKeyDownPixelsPerInch`
TextHeight TPanelOpenCenterPanelLeft Top WidthRHeight�AlignalClient
BevelOuterbvNoneTabOrder  	TGroupBox	gbAddressLeft Top WidthRHeighthAlignalTopCaption%    Необходимые данные Constraints.MinHeighthTabOrder  TLabelLabel7LeftTop� Width,HeightCaption   В Отдел:  TLabelLabel8LeftTop� WidthNHeightCaption   На Должность:  TLabelLabel9Left� Top� WidthRHeightCaption   Номер приказа:  TLabelLabel10LeftTopWidth� HeightCaption+   Основание (перемещения)  TLabelLabel1LeftTopUWidthgHeightCaption    Дата перемещения:  TLabelLabel2LeftTop� WidthjHeightCaption"   Дата приказа/осн-я:  TLabelLabel14LeftTopWidth7HeightCaption   Фамилия :  TLabelLabel12Left1TopcWidth@HeightCaption   /назначения  TDBTextDBText1Left� Top*Width�Height	DataField
first_NAME
DataSourceBOKForm.dsOKPersonal  TDBTextDBText2Left� TopAWidth�Height	DataField
PATRONYMIC
DataSourceBOKForm.dsOKPersonal  TDBTextDBText3Left� TopWidth�Height	DataFieldfamily
DataSourceBOKForm.dsOKPersonal  TLabelLabel11LeftTop*WidthHeightCaption   Имя :  TLabelLabel13LeftTopAWidth5HeightCaption   Отчество :  TLabelLabel3LeftTop� WidthrHeightCaption$   Наименование офиса:  TLabelLabel4LeftTop|WidthEHeightCaption   Адрес офиса:  TLabelLabel5LeftTop� WidthRHeightCaption   Специализация:  TButtonbClearLeft�TopKWidthFHeightCaption   G8AB8BLTabOrderOnClickbClearClick  TButtonbCancelLeft�TopKWidthFHeightCancel	Caption   K9B8ModalResultTabOrder  	TMaskEditmedAppointmentDateLeft� Top\Width?HeightEditMask!99/99/9999;	MaxLength
TabOrder Text
  .  .    	OnKeyDownFormKeyDown  	TMaskEditmedBasisDateLeft� Top� WidthIHeightEditMask!99/99/9999;	MaxLength
TabOrder	Text
  .  .    	OnKeyDownFormKeyDown  TEdit
edBasisNumLeftZTop� WidthIHeightTabOrder
	OnKeyDownFormKeyDown  	TComboBox	CBDepDownTagLeft� Top� Width�HeightStylecsDropDownList
ItemHeightTabOrderOnChangeCBDepDownChange	OnKeyDownFormKeyDown  	TComboBox
CBPostDownTagLeft� Top� Width�HeightStylecsDropDownList
ItemHeightTabOrderOnChangeCBDepDownChange	OnKeyDownFormKeyDown  TButtonButton4Left6TopKWidthFHeightCaption   1=>28BLTabOrderOnClickButton4Click  	TComboBox
cbBaseMoveTagLeft
Top(Width:HeightStylecsDropDownList
ItemHeightTabOrderOnChangeCBDepDownChange	OnKeyDownFormKeyDown  TButtonButton1LeftnTopKWidth� HeightCaption+   Назначить / ПереместитьTabOrderOnClickButton1Click  TEdit	edDepDownLeft`Top� Width<HeightTabOrderOnChangeedDepDownChange	OnKeyDownFormKeyDown  TEdit
edPostDownLeft`Top� Width<HeightTabOrderOnChangeedPostDownChange	OnKeyDownFormKeyDown  TEdit
edBaseMoveLeft� TopWidth?HeightTabOrderOnChangeedBaseMoveChange	OnKeyDownFormKeyDown  TEditedOfficeNameLeft� Top� Width�HeightTabOrder	OnKeyDownFormKeyDown  TEditedOfficeAddressNowLeft� TopvWidth�HeightTabOrder	OnKeyDownFormKeyDown  TEdit	edSpecialLeft`Top� Width<HeightTabOrderOnChangeedSpecialChange	OnKeyDownFormKeyDown  	TComboBox	CBSpecialTagLeft� Top� Width�HeightStylecsDropDownList
ItemHeightTabOrderOnChangeCBDepDownChange	OnKeyDownFormKeyDown  TButtonButton2Left
TopKWidthFHeightCaption	   @>25@8BLTabOrderOnClickButton2Click   TMemo	MemoPoiskLeft TophWidthRHeight6AlignalClientTabOrder    