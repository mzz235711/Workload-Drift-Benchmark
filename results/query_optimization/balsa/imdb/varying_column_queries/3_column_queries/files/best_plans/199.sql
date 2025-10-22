/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.season_nr<2 and title.episode_nr<10731 and title.series_years>0;

