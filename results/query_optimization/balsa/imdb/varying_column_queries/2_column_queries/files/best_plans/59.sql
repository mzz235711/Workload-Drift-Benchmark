/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.series_years>0 and title.season_nr=0;

