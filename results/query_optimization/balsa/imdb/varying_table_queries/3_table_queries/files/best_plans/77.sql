/*+ NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((title movie_info) cast_info)) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and cast_info.role_id=10 and title.production_year<108 and title.imdb_index>0;

