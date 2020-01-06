create or replace procedure send_ok_by_email(
--  Version constant char(12) := '#~08102019~#';
    branch_ ok_personal.branch%type,
    personal_code_ ok_personal.personal_code%type,
    email_type_ ok_period.id%type -- тип мейла
    -- 1 прием на работу
    -- 2 перемещение
    -- 3 увольнение
    -- 4 отпуск
    ) AUTHID CURRENT_USER
    is
  l_refcur        sys_refcursor;
  l_from          varchar2(80) ; -- введите е-мейл отправителя 'ildar@is.uz'
  l_recipient     varchar2(80) ; -- введите е-мейл получателя 'ildar-y@mail.ru'
  l_subject       varchar2(80) ; -- 'Оповещения ';
  l_mail_host     varchar2(30) ; -- '128.10.10.198';
  content_charset varchar2(20); -- 'windows-1251'; --'koi8-r';
  l_message       varchar2(4000); -- := 'Уважаемый пользователь';
  l_mail_conn     utl_smtp.connection;
--  l_user_name     users.user_name%type;
  l_refcur_tmp    sys_refcursor;
  l_message_tmp0  varchar2(2000);
  l_message_tmp1  varchar2(2000);
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
  department_code_ ok_personal.department_code%type;
  HIGH_DEP_CODE_ ok_personal.department_code%type;
  HIGH_HIGH_DEP_CODE_ ok_personal.department_code%type;
  post_code_ ok_personal.post_code%type;
  HIGH_post_CODE_ ok_personal.post_code%type;
  HIGH_HIGH_post_CODE_ ok_personal.post_code%type;
  in_office_date_ date;
  DATE_IN_LEAVE_ date;
  not_send_ number(1);
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
  not_send_:=0;
--  
  begin
    select   family ,  first_name ,  patronymic --, a.email
    into  family_ ,  first_name_ ,  patronymic_ --, l_recipient
    from ok_personal a
    where branch= branch_
    and personal_code= personal_code_;
  exception when others
  then
    family_ :='*';
    first_name_ :='*';
    patronymic_  :=sqlerrm;
    not_send_:= 1;
  end;
--
  begin
    select max(okpd.in_office_date)
    into in_office_date_
    from ok_period okpd
    where branch= branch_
    and personal_code= personal_code_;
  exception when others
  then
    in_office_date_ := null;
  end;
--
  if email_type_ = 1
  then
    begin
    select ESTABLISHED_DEPARTMENT, ESTABLISHED_POST ,BASIS_NUM,BASIS_date, post_code, department_code
    into dep_, post_,BASIS_NUM_,BASIS_date_, post_code_, department_code_
    from ok_period okpd
    where branch= branch_
    and personal_code= personal_code_
    and in_office_date= in_office_date_;
    EXCEPTION when NO_DATA_FOUND then
      null;
      not_send_:= 1;
    end;
-- текст письма
    l_message_tmp := substr(family_ ||' '||  first_name_ ||' '||  patronymic_ ,1,3950);
    l_message_tmp := l_message_tmp || chr(10) || 'Принят на работу '||to_char(date_begin_,'dd.mm.yyyy');
    l_message_tmp := l_message_tmp || chr(10) || 'Дата '||to_char(BASIS_date_,'dd.mm.yyyy')||' и номер '||BASIS_num_||' приказа ';
    l_message_tmp := l_message_tmp || chr(10) || 'Отдел '||dep_;
    l_message_tmp := l_message_tmp || chr(10) || 'Должность '||post_;
  end if;
--
  if email_type_ = 2
  then
    begin
    select ESTABLISHED_DEPARTMENT, ESTABLISHED_POST ,BASIS_NUM,BASIS_date, post_code, department_code
    into dep_, post_,BASIS_NUM_,BASIS_date_, post_code_, department_code_
    from ok_period okpd
    where branch= branch_
    and personal_code= personal_code_
    and in_office_date= in_office_date_;
    EXCEPTION when NO_DATA_FOUND then
      null;
      not_send_:= 1;
    end;
    -- 2 перемещение
    l_message_tmp := substr(family_ ||' '||  first_name_ ||' '||  patronymic_ ,1,3950);
    l_message_tmp := l_message_tmp || chr(10) || 'Перемещение'||to_char(date_begin_,'dd.mm.yyyy');
    l_message_tmp := l_message_tmp || chr(10) || 'Дата '||to_char(BASIS_date_,'dd.mm.yyyy')||' и номер '||BASIS_num_||' приказа '  ;
    l_message_tmp := l_message_tmp || chr(10) || 'Отдел '||dep_;
    l_message_tmp := l_message_tmp || chr(10) || 'Должность '||post_;
--
  end if;
--
  if email_type_ = 3
  then
--
    begin
    select okpd.out_office_date, num_pr_off,date_pr_off, pr_off, post_code, department_code
    into   date_end_, BASIS_NUM_,BASIS_date_, PR_OFF_, post_code_, department_code_
    from ok_period okpd
    where branch= branch_
    and personal_code= personal_code_
    and in_office_date= in_office_date_;
    EXCEPTION when NO_DATA_FOUND then
      null;
      not_send_:= 1;
    end;
--
    -- 3 увольнение
    l_message_tmp := substr(family_ ||' '||  first_name_ ||' '||  patronymic_ ,1,3950);
    l_message_tmp := l_message_tmp || chr(10) || 'Увольнение '||to_char(date_end_,'dd.mm.yyyy');
    l_message_tmp := l_message_tmp || chr(10) || 'Дата '||to_char(BASIS_date_,'dd.mm.yyyy')||' и номер '||BASIS_num_||' приказа '  ;
    l_message_tmp := l_message_tmp || chr(10) || 'Статья '||PR_OFF_;
--
  end if;
--
  if email_type_ = 4
  then
    begin
      select okpd.out_office_date, num_pr_off,date_pr_off, pr_off, post_code, department_code
      into   date_end_, BASIS_NUM_,BASIS_date_, PR_OFF_, post_code_, department_code_
      from ok_period okpd
      where branch= branch_
      and personal_code= personal_code_
      and in_office_date= in_office_date_;
    EXCEPTION when NO_DATA_FOUND then
      null;
      not_send_:= 1;
    end;
--
    begin
      select max(okpd.DATE_IN_LEAVE)
      into DATE_IN_LEAVE_
      from ok_leave okpd
      where branch= branch_
      and personal_code= personal_code_;
    exception when others
    then
      DATE_IN_LEAVE_ := null;
      not_send_:= 1;
    end;
--
    begin
      select okpd.date_in_leave, okpd.date_out_leave, okpd.NUM_BASIS, okpd.date_basis
      into   date_begin_, date_end_, BASIS_NUM_,BASIS_date_
      from ok_leave okpd
      where branch= branch_
      and personal_code= personal_code_
      and date_in_leave= DATE_IN_LEAVE_;
    EXCEPTION when NO_DATA_FOUND then
      null;
      not_send_:= 1;
    end;
--
    if date_begin_ is null and date_end_ is null and  BASIS_NUM_ is null and BASIS_date_ is null
    then
      not_send_:= 1;
    end if;  
    -- 4 отпуск прямо в модуле отдел кадров
    l_message_tmp := substr(family_ ||' '||  first_name_ ||' '||  patronymic_ ,1,3950);
    l_message_tmp := l_message_tmp || chr(10) || 'Отпуск';
    l_message_tmp := l_message_tmp || chr(10) || 'Дата '||to_char(BASIS_date_,'dd.mm.yyyy')||' и номер '||BASIS_num_||' приказа '  ;
    l_message_tmp := l_message_tmp || chr(10) || 'Период '||to_char(date_begin_,'dd.mm.yyyy')||' - '||to_char(date_end_,'dd.mm.yyyy');
--
  end if;
--
-- Отправка писем
--
  if not_send_ = 0
  then
    for rec in(select * from ok_mail where branch=branch_ or branch is null)
    loop
      if rec.l_message0 is not null
      then
        l_message_tmp0 := rec.l_message0||' '||branch_||chr(10);
      else
        l_message_tmp0 := ' ';
      end if;
    --
      l_message_tmp1 := rec.l_message1;
    --
      l_message    :=  l_message_tmp0||l_message_tmp1||l_message_tmp;
--
      l_from := rec.l_from;
      l_recipient := rec.l_recipient;
      l_subject := rec.l_subject;
      l_mail_host := rec.l_mail_host;
      content_charset := rec.content_charset;
--
      if (l_recipient is not null)
      then
        send_single_motify(np_recipient      => l_recipient
                        ,np_notify_message => l_message);
      end if;
    end loop;
  end if;

--
/*
-- письмо самому сотруднику
--
  if (l_recipient is not null)
  then
      send_single_motify(np_recipient      => l_recipient
                        ,np_notify_message => l_message);
  end if;
--
-- мейл начальника отдела сотрудника
  HIGH_DEP_CODE_ := department_code_; -- начальник отдела в том же отделе
--
  begin
    select a.post_code  into HIGH_POST_CODE_
    from ok_stat a,ss_ok_post b, ss_ok_category c
    where a.branch=BRANCH_
    and a.department_code= HIGH_DEP_CODE_
    and a.post_code=b.post_code
    and b.category_code=c.category_code
    and c.category_rate in (select max(f.category_rate) from ss_ok_category f
    where f.category_code in (select g.category_code
    from ss_ok_post g where g.post_code in (select e.post_code from ok_stat e where e.department_code=HIGH_DEP_CODE_)));
  EXCEPTION when NO_DATA_FOUND then
    HIGH_POST_CODE_:=null;
  end;
--
  begin
    select max(email) into l_recipient -- мейл начальника
    from ok_personal
    where branch=BRANCH_
    and department_code=HIGH_DEP_CODE_
    and post_code=HIGH_POST_CODE_;
  EXCEPTION when NO_DATA_FOUND then
    l_recipient:=null;
  end;
--
  l_message    := 'Сообщение из Отдела Кадров '|| chr(10) ||
    'Сотрудник '||family_ ||' '||  first_name_ ||' '||  patronymic_|| chr(10) ||
    l_message_tmp;
--
  if (HIGH_POST_CODE_<>post_code_) -- если такая же должность как у сотрудника то мейл не посылается
  and (l_recipient is not null)
  then
      send_single_motify(np_recipient      => l_recipient
                        ,np_notify_message => l_message);
  end if;
--
-- мейл начальника его начальника
  begin
    select HIGH_DEP_CODE into HIGH_HIGH_DEP_CODE_
      from ss_ok_department where department_code=HIGH_DEP_CODE_
    and state_notes='A'
    and rownum<2;
  EXCEPTION when NO_DATA_FOUND then
    HIGH_DEP_CODE_:=null;
  end;
--
  begin
    select a.post_code  into HIGH_HIGH_POST_CODE_
    from ok_stat a,ss_ok_post b, ss_ok_category c
    where a.department_code= HIGH_HIGH_DEP_CODE_
    and a.post_code=b.post_code
    and b.category_code=c.category_code
    and c.category_rate in (select max(f.category_rate) from ss_ok_category f
    where f.category_code in (select g.category_code
    from ss_ok_post g where g.post_code in (select e.post_code from ok_stat e where e.department_code=HIGH_HIGH_DEP_CODE_)));
  EXCEPTION when NO_DATA_FOUND then
    HIGH_HIGH_POST_CODE_:=null;
  end;
--
  begin
    select max(email) into l_recipient -- мейл начальника его начальника
    from ok_personal
    where branch=BRANCH_
    and department_code=HIGH_HIGH_POST_CODE_
    and post_code=HIGH_HIGH_DEP_CODE_;
  EXCEPTION when NO_DATA_FOUND then
    l_recipient:=null;
  end;
--
  l_message    := 'Сообщение из Отдела Кадров '|| chr(10) ||
    'Сотрудник '||family_ ||' '||  first_name_ ||' '||  patronymic_|| chr(10) ||
    l_message_tmp;
--
  if (HIGH_HIGH_POST_CODE_<>post_code_) -- если такая же должность как у сотрудника то мейл не посылается
  and (l_recipient is not null)
  then
      send_single_motify(np_recipient      => l_recipient
                        ,np_notify_message => l_message);
  end if;
*/
--
--
exception
  when utl_smtp.transient_error or utl_smtp.permanent_error then
    raise_application_error(-20000, '(Otdel Kadrov email error)'||sqlerrm, true);
end send_ok_by_email;
/
