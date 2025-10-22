/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.episode_nr<7901 and title.imdb_index>0;

