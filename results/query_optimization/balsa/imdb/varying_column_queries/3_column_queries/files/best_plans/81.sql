/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.season_nr>0 and title.kind_id>1 and title.phonetic_code<13660;

