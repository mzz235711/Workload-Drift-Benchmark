/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.imdb_index>0 and title.series_years>0;

