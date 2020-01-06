create or replace procedure send_ok_by_email(
    branch_ ok_personal.branch%type, 
    personal_code_ ok_personal.personal_code%type,
    email_type_ ok_period.id%type -- тип мейла 
    -- 1 прием на работу
    -- 2 перемещение
    -- 3 увольнение
    -- 4 отпуск
    ) is
  l_refcur        sys_refcursor;
  l_from          varchar2(80) := 'ildar@is.uz';
  l_recipient     varchar2(80) := 'ildar-y@mail.ru';
  l_subject       varchar2(80) := 'Оповещения ';
  l_mail_host     varchar2(30) := '128.10.10.198';
  l_message       varchar2(4000) := 'Уважаемый пользователь :user_name у вас :message_cnt поступивших.';
  l_mail_conn     utl_smtp.connection;
  content_charset varchar2(20) := 'windows-1251'; --'koi8-r';
--  l_user_name     users.user_name%type;
  l_refcur_tmp    sys_refcursor;
  l_message_tmp   varchar2(2000);
  family_ ok_personal.family%type;
  first_name_ ok_personal.first_name%type;
  patronymic_  ok_personal.patronymic%type;
    BASIS_date_ date; -- дата приказа
    BASIS_num_ ok_period.BASIS_NUM%type; -- номер приказа
    PR_OFF_ ok_period.PR_OFF%type;-- статья (увольнения)
    dep_ ok_period.ESTABLISHED_DEPARTMENT%type; -- отдел
    post_ ok_period.ESTABLISHED_POST%type;-- должность
    date_begin_ date; -- начало
    date_end_ date; -- конец
--
  procedure send_single_motify(np_recipient      in varchar2
                              ,np_notify_message in varchar2) is
  begin
    l_mail_conn := utl_smtp.open_connection(l_mail_host, 25);
    utl_smtp.helo(l_mail_conn, l_mail_host);
    utl_smtp.mail(l_mail_conn, l_from);
    utl_smtp.rcpt(l_mail_conn, np_recipient);
    utl_smtp.open_data(l_mail_conn);

    utl_smtp.write_raw_data(l_mail_conn, utl_raw.cast_to_raw('Date: ' || to_char(sysdate, 'Dy, DD Mon YYYY hh24:mi:ss') || utl_tcp.crlf));
    utl_smtp.write_raw_data(l_mail_conn, utl_raw.cast_to_raw('From: ' || l_from || utl_tcp.crlf));
    utl_smtp.write_raw_data(l_mail_conn, utl_raw.cast_to_raw('To: ' || np_recipient || utl_tcp.crlf));
    utl_smtp.write_raw_data(l_mail_conn, utl_raw.cast_to_raw('Subject: ' || l_subject || utl_tcp.crlf));
    utl_smtp.write_raw_data(l_mail_conn, utl_raw.cast_to_raw('MIME-Version: ' || '1.0' || utl_tcp.crlf));
    utl_smtp.write_raw_data(l_mail_conn, utl_raw.cast_to_raw('Content-Type: ' || 'text/plain; charset="' || content_charset || '"' || utl_tcp.crlf));
    utl_smtp.write_raw_data(l_mail_conn, utl_raw.cast_to_raw(utl_tcp.crlf || np_notify_message));

    utl_smtp.close_data(l_mail_conn);
    utl_smtp.quit(l_mail_conn);
  end send_single_motify;
begin
--
  begin
    select   family ,  first_name ,  patronymic , a.email
    into  family_ ,  first_name_ ,  patronymic_ , l_recipient
    from ok_personal a
    where branch= branch_
    and personal_code= personal_code_;
  exception when others
  then
    family_ :='*';  
    first_name_ :='*';
    patronymic_  :=sqlerrm;
  end;
  if email_type_ = 1
  then
-- текст письма
--      l_message_tmp := null; 
--      l_message := l_message || chr(10) || trim(l_message_tmp);   если несколько строк
    l_message_tmp := substr(family_ ||' '||  first_name_ ||' '||  patronymic_ ,1,3950);
    l_message_tmp := l_message_tmp || chr(10) || 'Принят на работу '||to_char(date_begin_,'dd.mm.yyyy');
    l_message_tmp := l_message_tmp || chr(10) || 'Дата и номер приказа '||to_char(BASIS_date_,'dd.mm.yyyy')||'  '||BASIS_num_;
    l_message_tmp := l_message_tmp || chr(10) || 'Отдел '||dep_;
    l_message_tmp := l_message_tmp || chr(10) || 'Должность '||post_;
  end if; 
--  
  if email_type_ = 2
  then
    -- 2 перемещение
    l_message_tmp := substr(family_ ||' '||  first_name_ ||' '||  patronymic_ ,1,3950);
    l_message_tmp := l_message_tmp || chr(10) || 'Перемещение'||to_char(date_begin_,'dd.mm.yyyy');
    l_message_tmp := l_message_tmp || chr(10) || 'Дата и номер приказа '||to_char(BASIS_date_,'dd.mm.yyyy')||'  '||BASIS_num_;
    l_message_tmp := l_message_tmp || chr(10) || 'Отдел '||dep_;
    l_message_tmp := l_message_tmp || chr(10) || 'Должность '||post_;
--  
  end if; 
--  
  if email_type_ = 3
  then
    -- 3 увольнение
    l_message_tmp := substr(family_ ||' '||  first_name_ ||' '||  patronymic_ ,1,3950);
    l_message_tmp := l_message_tmp || chr(10) || 'Увольнение '||to_char(date_end_,'dd.mm.yyyy');
    l_message_tmp := l_message_tmp || chr(10) || 'Дата и номер приказа '||to_char(BASIS_date_,'dd.mm.yyyy')||'  '||BASIS_num_;
    l_message_tmp := l_message_tmp || chr(10) || 'Статья '||PR_OFF_;
  
  end if; 
--  
  if email_type_ = 4
  then
    -- 4 отпуск
    l_message_tmp := substr(family_ ||' '||  first_name_ ||' '||  patronymic_ ,1,3950);
    l_message_tmp := l_message_tmp || chr(10) || 'Отпуск';
    l_message_tmp := l_message_tmp || chr(10) || 'Дата и номер приказа '||to_char(BASIS_date_,'dd.mm.yyyy')||'  '||BASIS_num_;
    l_message_tmp := l_message_tmp || chr(10) || 'Период '||to_char(date_begin_,'dd.mm.yyyy')||' - '||to_char(date_end_,'dd.mm.yyyy');
  
  end if; 
--      
-- письмо самому сотруднику
--  l_recipient  := ''; проставлено выше
  l_message    := 'Сообщение из Отдела Кадров'|| chr(10) ||'Уважаемый '|| chr(10) ||l_message_tmp;
--
      send_single_motify(np_recipient      => l_recipient
                        ,np_notify_message => l_message);
--
-- письмо начальнику отдела сотрудника
  l_recipient  := ''; -- мейл начальника
--  l_message    := 'Уважаемый '||high_post_||'    '||high_dep_|| chr(10) ||
  l_message    := 'Сообщение из Отдела Кадров '|| chr(10) ||
    'Сотрудник '||family_ ||' '||  first_name_ ||' '||  patronymic_|| chr(10) ||
    l_message_tmp;
--
      send_single_motify(np_recipient      => l_recipient
                        ,np_notify_message => l_message);
--
-- письмо начальнику департамента сотрудника
  l_recipient  := ''; -- мейл начальника его начальника
--  l_message    := 'Уважаемый '||high_high_post_||'    '||high_high_dep_|| chr(10) ||
  l_message    := 'Сообщение из Отдела Кадров '|| chr(10) ||
    'Сотрудник '||family_ ||' '||  first_name_ ||' '||  patronymic_|| chr(10) ||
    l_message_tmp;
--
      send_single_motify(np_recipient      => l_recipient
                        ,np_notify_message => l_message);
--
--
    l_message := null; 
exception
  when utl_smtp.transient_error or utl_smtp.permanent_error then
    raise_application_error(-20000, '(Otdel Kadrov)Unable to send mail', true);
end send_ok_by_email;
/
