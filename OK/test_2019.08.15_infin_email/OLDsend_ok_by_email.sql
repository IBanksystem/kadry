create or replace procedure send_ok_by_email(
    branch_ ok_personal.branch%type, 
    personal_code_ ok_personal.personal_code%type
    ) is
  l_refcur        sys_refcursor;
  l_from          varchar2(80) := 'ildar@is.uz';
  l_recipient     varchar2(80) := 'ildar-y@mail.ru';
  l_subject       varchar2(80) := 'Оповещения ';
  l_mail_host     varchar2(30) := '128.10.10.198';
  l_message       varchar2(4000) := 'Уважаемый пользователь :user_name у вас :message_cnt поступивших.';
  l_mail_conn     utl_smtp.connection;
  content_charset varchar2(20) := 'windows-1251'; --'koi8-r';
  l_user_name     users.user_name%type;
  l_refcur_tmp    sys_refcursor;
  l_message_tmp   varchar2(200);

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
  open l_refcur for 'select p.email
                           ,''Уважаемый пользователь '' || tab.user_name || '' у вас '' || tab.message_cnt || '' поступивших.'' message_txt
                           ,tab.user_name
                       from persons p
                           ,(select n.user_name, count(*) message_cnt
                               from v_notifications n
                              group by n.user_name
                              order by 2 desc) tab
                      where p.email is not null
                        and upper(p.login) = upper(tab.user_name)';
  loop
    fetch l_refcur
      into l_recipient, l_message, l_user_name;
    exit when l_refcur%notfound;
    --||(2016-10-04) ...l_refcur_tmp statement for expand email message
    open l_refcur_tmp for 'select '' Рег.номер: '' || n.reg_num || '', от '' ||
                                  to_char(n.reg_date, ''dd.mm.yyyy'') || '', Пользователь: '' ||
                                  n.user_name || '', Отправленно '' ||
                                  to_char(n.send_date, ''dd.mm.yyyy'') || '', Срок исполнения '' ||
                                  to_char(n.date_execute, ''dd.mm.yyyy'') || '', '' || n.message
                             from v_notifications n
                            where n.user_name = :user_name'
      using l_user_name;
    loop
      fetch l_refcur_tmp
        into l_message_tmp;
      exit when l_refcur_tmp%notfound or length(trim(l_message)) + length(trim(l_message_tmp)) > 3950;
      l_message := l_message || chr(10) || trim(l_message_tmp);
      l_message_tmp := null; --||(2016-10-04) for expand email message
    end loop;
    close l_refcur_tmp;

    begin
      send_single_motify(np_recipient      => l_recipient
                        ,np_notify_message => l_message);
    exception
      when others then
        null;
    end;

    l_message := null; --||(2016-10-04) for expand email message
  end loop;
  close l_refcur;
exception
  when utl_smtp.transient_error or utl_smtp.permanent_error then
    raise_application_error(-20000, '(Otdel Kadrov)Unable to send mail', true);
end send_ok_by_email;
/
