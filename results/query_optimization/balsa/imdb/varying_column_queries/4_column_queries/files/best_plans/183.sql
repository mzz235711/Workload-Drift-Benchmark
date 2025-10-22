/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.imdb_index>0 and title.series_years>0 and title.production_year>122;

