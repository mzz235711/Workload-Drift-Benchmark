/*+ NestLoop(title movie_keyword movie_info cast_info)
 NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info) cast_info)) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and title.imdb_index>1;

