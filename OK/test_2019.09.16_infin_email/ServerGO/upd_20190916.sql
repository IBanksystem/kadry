create table ok_mail(
    branch           varchar2(5),  -- ���. ����� ��� ��� ���� ��� ����
    l_from          varchar2(80), -- ������� �-���� ����������� 'ildar@is.uz'
    l_recipient     varchar2(80),  -- ������� �-���� ���������� 'ildar-y@mail.ru'
    l_subject       varchar2(80),  -- '���������� '
    l_mail_host     varchar2(30),  -- '128.10.10.198'
    content_charset varchar2(20), -- 'windows-1251'; --'koi8-r'
  l_message0      varchar2(1000), --  '���'
  l_message1      varchar2(1000) --  '��������� �� ������ ������'|| chr(10) ||'���������(��) '|| chr(10)
);

create or replace public synonym ok_mail for ok_mail;

insert into ok_mail values ('01041', 'ildar@is.uz', 'ildar-y@mail.ru', '���������� ','128.10.10.198','windows-1251',
  '���', '��������� �� ������ ������'|| chr(10) ||'���������(��) '|| chr(10));
commit;
