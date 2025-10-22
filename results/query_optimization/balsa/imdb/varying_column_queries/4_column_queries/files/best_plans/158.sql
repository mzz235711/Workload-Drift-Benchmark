/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id=7 and title.phonetic_code<19071 and title.production_year<127 and title.episode_nr<143;

