/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.production_year<126 and title.season_nr=1;

