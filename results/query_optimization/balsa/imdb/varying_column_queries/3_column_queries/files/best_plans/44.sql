/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code<20833 and title.kind_id>1 and title.series_years<917;

