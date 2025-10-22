/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<15 and title.kind_id=7 and title.production_year<125 and title.series_years>0;

