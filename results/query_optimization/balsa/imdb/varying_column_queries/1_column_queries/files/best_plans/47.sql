/*+ SeqScan(cast_info)
 Leading(cast_info) */
select count(*) from cast_info where cast_info.nr_order>1;

