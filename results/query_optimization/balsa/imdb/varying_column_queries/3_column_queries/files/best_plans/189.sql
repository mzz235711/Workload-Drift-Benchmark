/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.production_year>63 and title.series_years>0 and title.phonetic_code>0;

