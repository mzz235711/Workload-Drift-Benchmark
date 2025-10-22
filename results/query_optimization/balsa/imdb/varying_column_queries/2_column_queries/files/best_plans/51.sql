/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.series_years>0 and title.episode_nr<226;

