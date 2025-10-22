/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.imdb_index>0 and title.phonetic_code>2989 and title.kind_id>2 and title.production_year<110;

