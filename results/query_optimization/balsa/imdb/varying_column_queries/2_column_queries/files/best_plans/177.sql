/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.phonetic_code>0 and title.series_years<1400;

