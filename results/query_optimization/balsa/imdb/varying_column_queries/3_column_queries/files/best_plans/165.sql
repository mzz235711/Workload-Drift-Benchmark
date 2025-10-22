/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.episode_nr<26 and title.kind_id=4 and title.season_nr=0;

