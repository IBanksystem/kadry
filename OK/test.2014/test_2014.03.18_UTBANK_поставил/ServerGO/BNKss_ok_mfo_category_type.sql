
delete from ss_ok_mfo_category_type where '09006'<>(select header_id from s_mfo where bank_id in (select max(branch) from sets));
commit;

delete from ss_ok_mfo_category where '09006'<>(select header_id from s_mfo where bank_id in (select max(branch) from sets));
commit;

delete from ss_ok_post_category where '09006'<>(select header_id from s_mfo where bank_id in (select max(branch) from sets));
commit;



