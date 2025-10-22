/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id=7 and title.production_year>24 and title.series_years>0;

