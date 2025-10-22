/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id<7 and title.series_years>0;

