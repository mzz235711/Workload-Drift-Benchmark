/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.season_nr<10 and title.phonetic_code<22457 and title.imdb_index=0;

