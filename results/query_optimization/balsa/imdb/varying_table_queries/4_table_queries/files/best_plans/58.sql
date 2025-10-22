/*+ NestLoop(title movie_info movie_keyword cast_info)
 NestLoop(title movie_info movie_keyword)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.season_nr=12;

