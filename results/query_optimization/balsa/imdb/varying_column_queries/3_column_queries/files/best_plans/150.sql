/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code>0 and title.kind_id>1 and title.imdb_index=0;

