/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.episode_nr<51 and title.phonetic_code<20907 and title.season_nr=1;

