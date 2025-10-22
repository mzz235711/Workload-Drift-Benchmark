/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id>1 and title.season_nr<10;

