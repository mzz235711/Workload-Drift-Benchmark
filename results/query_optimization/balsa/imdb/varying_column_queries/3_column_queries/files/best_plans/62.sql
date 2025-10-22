/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code<17451 and title.series_years>0 and title.episode_nr<4;

