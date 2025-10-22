/*+ NestLoop(title movie_keyword cast_info movie_info)
 NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_keyword) cast_info) movie_info)) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<94 and cast_info.nr_order>6 and title.imdb_index>0;

